<?php

namespace App\Controllers;

use App\Core\App;

class PageController
{
	public function home()
	{

		$products = App::resolve('QueryBuilder')->selectAll('products');

		return view('index', compact('products'));
	}

	public function service()
	{
		return view('service');
	}

	public function about()
	{
		return view('about');
	}

}