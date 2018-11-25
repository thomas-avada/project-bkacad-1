<?php
namespace App\Core\Facade;

use App\Core\Container;

class Session {
    public static function __callStatic($method, $arguments)
    {
        return Container::resolve('Session')->$method(...$arguments);
    }
}