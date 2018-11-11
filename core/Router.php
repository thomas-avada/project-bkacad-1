<?php

namespace App\Core;

class Router
{
	public $routes = [];

	//methods

	public function get($routes)
	{
		$this->routes['GET'] = $routes;
	}

	public function post($routes)
	{
		$this->routes['POST'] = $routes;
	}

	public static function load($file)
	{
		$router = new self;

		require_once $file;

		return $router;
	}

	public function define($routes)
	{
		$this->routes = $routes;
	}

	public function direct($url, $method)
	{
		if (array_key_exists($url, $this->routes[$method]))
		{
			// return $this->routes[$method][$url];
			$this->callAction(
				...explode('@', $this->routes[$method][$url])
			);

		}
		else{
			throw new Exception;
		}
	}

	public function callAction($controller, $action)
	{
		$controller = "App\\Controllers\\".$controller;
		$controllerInstance = new $controller;
		if(method_exists($controllerInstance, $action))
		{
			$controllerInstance->$action();
		}
		else{
			throw new Exception("No method $action() in $controller");
		}
	}
}