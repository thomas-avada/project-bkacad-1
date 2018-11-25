<?php
namespace App\Model;

use App\Core\Database\Facade\Model;

class Product extends Model
{
	protected static $tablename = 'products';

    public static function getFive()
    {
        return self::select()->limit(5)->get();
    }
}