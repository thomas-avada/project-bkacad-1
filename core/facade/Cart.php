<?php
namespace App\Core\Facade;


use App\Core\Facade\Session;

class Cart
{
    public static function __callStatic($method, $arguments)
    {
    	return Session::get('cart')->$method(...$arguments);
    }
}