<?php
namespace App\Core\Database\Facade;

use App\Core\Facade\DB;
use App\Core\Helper\Inflect;

abstract class Model {

    protected static $tablename;

    public static function __callStatic($method, $arguments)
    {
        if(!isset(static::$tablename)){
            static::$tablename = Inflect::pluralize(
                basename($_SERVER['PHP_SELF'],".php")
            );
        }
        try {
            $staticMethod = (new \ReflectionMethod(get_class(), $method))->isStatic();
            if($staticMethod){
                return static::$method();
            }
        } catch (\ReflectionException $e) {
        }
        return DB::table(static::$tablename)->$method(...$arguments);
    }
}