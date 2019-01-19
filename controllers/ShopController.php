<?php
namespace App\Controllers;

use App\Model\Product;

class ShopController
{
	public function index()
	{
        
        $products = Product::shopFilter(request()->all())->get();

        $per_page = request()->has('limit') ? request('limit') : 9;
        $count = Product::shopFilter(request()->all())->count();
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
            'brands_selected' => request('brands') ? request('brands') :[],
            'categories_selected' => request('categories') ? request('categories') : [],
            'gender_selected' => request('gender') ? request('gender') : 3,
            'pagination' => $pagination
        ]);
	}
}