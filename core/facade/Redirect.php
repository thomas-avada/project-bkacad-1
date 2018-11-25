<?php
namespace App\Core\Facade;

use App\Core\Container;

class Redirect
{
    public static function __callStatic($method, $arguments)
    {
        return Container::resolve('Redirect')->$method(...$arguments);
    }
}