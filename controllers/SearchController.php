<?php

namespace App\Controllers;

use App\Model\Product;

class SearchController
{
	public function index()
	{
		//SELECT * FROM products WHERE product_name LIKE "%$keyword%"
		$keyword = request('keyword');
		$page = request()->has('page') ? request('page') - 1 : 0;
		$products = Product::select()->where('product_name', 'like', "%$keyword%")->page($page, 4)->get();
		$count = Product::select()->where('product_name', 'like', "%$keyword%")->count();
		$pagination = [
            'last' => ceil($count / 4)
        ];
		return view('search-result', [
			'products' => $products, 
			'count' => $count,
			'keyword' => $keyword,
			'pagination' => $pagination,
			'page' => request('page') ? request('page') : 1
		]);
	}
}