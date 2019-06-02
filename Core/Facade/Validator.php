<?php
namespace App\Core\Facade;

use App\Core\Container;

class Validator
{
    public static function __callStatic($method, $arguments)
    {
    	return Container::resolve('Validator')->$method(...$arguments);
    }
}