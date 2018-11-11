<?php

namespace App\Core;

class Request 
{
    public function input($key)
    {
        return $_REQUEST[$key];
    }
    public function all()
    {
        return $_REQUEST;
    }
	public function url()
	{
		return trim(strtok($_SERVER["REQUEST_URI"],'?'), '/');
	}

	public function method()
	{
		return $_SERVER['REQUEST_METHOD'];
	} 
}