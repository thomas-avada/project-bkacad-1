<?php
namespace App\Core\Database;

use PDO;
use \ClanCats\Hydrahon\Builder;
use \ClanCats\Hydrahon\Query\Sql\FetchableInterface;

class QueryBuilder
{
	public $conn;

	public function __construct(PDO $conn)
	{
		$this->conn = $conn;
	}

    /**
     * @return \ClanCats\Hydrahon\Builder
     */
    public function create()
    {
        $connection = $this->conn;
        return new Builder('mysql', function($query, $queryString, $queryParameters) use ($connection)
        {
            $statement = $connection->prepare($queryString);
            $statement->execute($queryParameters);

            // when the query is fetchable return all results and let hydrahon do the rest
            if ($query instanceof FetchableInterface)
            {
                return $statement->fetchAll(\PDO::FETCH_ASSOC);
            }
            if(get_class($query) == "ClanCats\Hydrahon\Query\Sql\Update" || 
            get_class($query) == "ClanCats\Hydrahon\Query\Sql\Delete"){
                return $statement->rowCount();
            }
            if(get_class($query) == "ClanCats\Hydrahon\Query\Sql\Insert"){
                return $this->conn->lastInsertId();
            }
            
        });
    }

    public function getConnection()
    {
        return $this->conn;
    }

}