<?php

namespace App\Controllers;

use App\Model\Product;

class ProductController
{
    public function index()
	{
	    $result = Product::getFive();
	    var_dump($result);
	    die();
		
        
//       	$products = DB::table('products')->select()
//       	 ->join('categories', 'categories.id', '=', 'products.category_id')
//       	 ->join('brands', 'brands.id', '=', 'products.brand_id')
//       	->limit(2)
//       	->get();
//       	$ids = array_column($products, 'id');
//       	$reviews = DB::table('reviews')->select()
//       	->whereIn('product_id', $ids)
//       	->get();
//       	oneToMany($products, $reviews, 'reviews');
//       	var_dump($products);
//       	die();

		return view('posts/index', compact('posts'));
	}


}