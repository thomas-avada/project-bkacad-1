<?php

namespace App\Controllers;

use App\Core\App;
use App\Core\Database\QueryBuilder;
use App\Core\Facade\DB;
use App\Core\Request;

class ProductController
{
    public function index()
	{
        $posts = DB::table('products')
            ->select()
            ->join('categories', 'categories.id', '=', 'products.category_id')
            ->limit(5)
            ->get();

		return view('posts/index', compact('posts'));
	}
}