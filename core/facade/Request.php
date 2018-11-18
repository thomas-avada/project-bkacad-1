<?php
namespace App\Core\Facade;

use App\Core\Container;

class Request
{
    public static function __callStatic($method, $arguments)
    {
        return Container::resolve('Request')->$method(...$arguments);
    }
}