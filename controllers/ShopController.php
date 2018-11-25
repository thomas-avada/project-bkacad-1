<?php
namespace App\Controllers;

use App\Model\Product;

class ShopController
{
	public function index()
	{
		$products = Product::select()->limit(9)->get();
		return view('shop', compact('products'));
	}
}