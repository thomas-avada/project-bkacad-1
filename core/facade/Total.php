<?php
namespace App\Core\Facade;


use App\Core\Facade\Session;

class Total
{
    public static function __callStatic($method, $arguments)
    {
    	return Session::get('total')->$method(...$arguments);
    }
}