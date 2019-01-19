<?php

namespace App\Controllers;

use App\Model\Product;
use App\Model\Review;
use ClanCats\Hydrahon\Query\Sql\Func as F;

class PageController
{
	public function home()
	{
		$latest_products = Product::getLatestProducts();

		$best_sellers = Product::getBestSellers();
		
		return view('home', compact('latest_products', 'best_sellers'));
	}

}
