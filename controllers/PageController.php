<?php

namespace App\Controllers;

use App\Model\Product;

class PageController
{
	public function home()
	{
		$products = Product::select()->orderBy('created_at', 'DESC')->limit(7)->get();
		return view('home', compact('products'));
	}

}
