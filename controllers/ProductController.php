<?php

namespace App\Controllers;

use App\Model\Product;
use App\Model\Review;

class ProductController
{
    public function show()
    {
    	if(!request()->has('s')){
    		flash()->error('Product not found');
    		return redirect()->home();
    	}
    	// $product = Product::select()->find(request()->get('id'));
    	$product = Product::selectToShow(request()->get('s'));

    	if(!$product){
    		flash()->error('Product does not exist');
    		return redirect()->home();
    	}
        $page = request('page') ? request('page') : 0;
        $review_count = Review::select()->where('product_id', request()->get('id'))
        ->count();
        $pagination = [
            'last' => ceil($review_count / 3)
        ];
    	$reviews = Review::select()->where('product_id', request()->get('id'))
    	->join('users', 'users.id', '=', 'reviews.user_id')
        ->orderBy('reviews.created_at', 'desc')
    	->page($page -1 , 3)
    	->get();
 
    	return view('product', [
            'product' => $product, 
            'reviews' => $reviews, 
            'review_count' => $review_count,
            'page' => $page,
            'pagination' => $pagination
        ]);
    }

}