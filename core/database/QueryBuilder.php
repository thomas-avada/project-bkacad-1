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
        // $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return new Builder('mysql', function($query, $queryString, $queryParameters) use ($connection)
        {
            // dd($queryParameters);
            // dd($queryString);
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
                if(!$connection->lastInsertId()){
                    return $statement->rowCount();
                }
                return $connection->lastInsertId();
            }
            
        });
    }

    public function getConnection()
    {
        return $this->conn;
    }

}