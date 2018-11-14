<?php

use App\Core\Container;
use App\Core\Database\QueryBuilder;
use App\Core\Database\Connection;
use App\Core\Request;


Container::bind('config', require_once 'config.php');

Container::bind('QueryBuilder', (new QueryBuilder(
	Connection::make(Container::resolve('config')['database'])
))->create());

Container::bind('Request', new Request());

require_once "helper/helpers.php";

