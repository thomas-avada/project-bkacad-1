<?php
namespace App\Controllers;

use App\Model\Product;
use App\Model\Wishlist;

class ShopController
{
	public function index()
	{
        
        $products = Product::shopFilter(request()->all())->get();

        $per_page = request()->has('limit') ? request('limit') : 9;

        $count = Product::shopFilter(request()->all(), true)->count();
        // dd($count);
        $pagination = [
            'last' => ceil($count / $per_page)
        ];

        $top_rateds = Product::getTopRateds();

        $wishlists = [];
        if(session()->isLoggedIn()){
            $wishlists = array_column(
                Wishlist::select()->where('user_id', auth()['id'])->get(),
                'product_id'
            );
        }

		return view('shop', [
		    'products' => $products,
            'wishlists' => $wishlists, 
            'top_rateds' => $top_rateds,
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