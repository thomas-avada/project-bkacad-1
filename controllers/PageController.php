<?php

namespace App\Controllers;

use App\Model\Product;
use App\Model\Review;
use App\Model\Wishlist;
use ClanCats\Hydrahon\Query\Sql\Func as F;

class PageController
{
	public function home()
	{
		$latest_products = Product::getLatestProducts();

		$best_sellers = Product::getBestSellers();

		$wishlists = [];
		if(session()->isLoggedIn()){
			$wishlists = array_column(
				Wishlist::select()->where('user_id', auth()['id'])->get(),
				'product_id'
			);
		}
		
		
		return view('home', [
			'latest_products' => $latest_products, 
			'best_sellers' => $best_sellers,
			'wishlists' => $wishlists
		]);
	}

}
