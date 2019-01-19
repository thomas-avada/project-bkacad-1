<?php

namespace App\Controllers;

use App\Model\Product;

class CompareController
{
	public function add()
	{
		if(!isset($_SESSION['compare'])){
			$_SESSION['compare'] = [];
		}
		if(!in_array($_GET['product_id'], $_SESSION['compare'])){
			$_SESSION['compare'][] = $_GET['product_id'];
		}
		// $_SESSION['compare'][] = $_GET['product_id'];
		dd($_SESSION);
	}

	public function index()
	{
		//SELECT * FROM products WHERE id in (1, 2)
		$products= Product::select()->whereIn('id', $_SESSION['compare'])->get();
		dd($products);
	}
}