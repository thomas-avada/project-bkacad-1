<?php

namespace App\Core\Database;

use PDO;

class Connection
{
	public static function make($config)
	{
		try{
			return new PDO(
				$config['driver'].":host=".$config['host'].";dbname=".$config['dbname'],
				$config['login'],
				$config['password']
			);
		}catch (PDOException $e){
			die($e->getMessage());
		}
	}
}