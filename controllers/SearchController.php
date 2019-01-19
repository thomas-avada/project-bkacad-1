<?php

namespace App\Controllers;

use App\Model\Product;

class SearchController
{
	public function index()
	{
		//SELECT * FROM products WHERE product_name LIKE "%$keyword%"
		$keyword = request('keyword');
		$products = Product::select()->where('product_name', 'like', "%$keyword%")->get();
		$count = Product::select()->where('product_name', 'like', "%$keyword%")->count();
		return view('search-result', compact('products', 'count'));
	}
}