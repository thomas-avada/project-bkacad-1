<?php
namespace App\Core\Facade;

use App\Core\Container;

class DB
{
    public static function __callStatic($method, $arguments)
    {
        return Container::resolve('QueryBuilder')->$method(...$arguments);
    }
}