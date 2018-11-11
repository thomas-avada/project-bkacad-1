<?php

//Boot the composer autoload file of this app
use App\Core\Router;
use App\Core\Facade\Request;

require_once 'vendor/autoload.php';

// Boot all Database interraction interface, connection, and router

require_once 'core/bootstrap.php';

Router::load('routes.php')
->direct(Request::url(), Request::method());


//require_once 'vendor\autoload.php';
//use App\Helper\Inflect;
//$name= basename($_SERVER['PHP_SELF'],".php");
//echo Inflect::pluralize($name);


