<?php

namespace App\Core;

class Container
{

	public static $registry = [];

	public static function bind($key, $value)
	{
		static::$registry[$key] = $value;
	}

	public static function resolve($key)
	{
		return static::$registry[$key];
	}

	public static function all()
	{
		return static::$registry;
	}

}