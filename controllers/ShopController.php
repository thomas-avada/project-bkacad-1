<?php
namespace App\Controllers;

use App\Model\Product;

class ShopController
{
	public function index()
	{
        $products = Product::filter(request()->all())->get();
//
//        dd($products);
        $per_page = request()->has('limit') ? request('limit') : 9;
        $count = Product::filter(request()->all())->count();
        $pagination = [
            'last' => ceil($count / $per_page)
        ];
		return view('shop', [
		    'products' => $products,
            'limit' => $per_page,
            'page' => request('page'),
            'order' => request('order'),
            'direction' => request('direction'),
            'minprice' => request('minprice'),
            'maxprice' => request('maxprice'),
            'brand_selected' => request('brand'),
            'category_selected' => request('category'),
            'pagination' => $pagination
        ]);
	}
}