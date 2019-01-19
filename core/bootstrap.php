<?php

use App\Core\Container;
use App\Core\Database\QueryBuilder;
use App\Core\Database\Connection;
use App\Core\Http\Request;
use App\Core\Http\Redirect;
use App\Core\Session\Session;
use App\Core\Cart\CartRepository as Cart;

Container::bind('config', require_once 'config.php');

Container::bind('QueryBuilder', (new QueryBuilder(
	Connection::make(Container::resolve('config')['database'])
))->create());



Container::bind('Session', new Session());

Container::bind('Request', new Request());

Container::bind('Redirect', new Redirect(
    Container::resolve('Request')
));

Container::resolve('Session')->start();

// Container::bind('Cart', new Cart());

require_once "helper/helpers.php";

