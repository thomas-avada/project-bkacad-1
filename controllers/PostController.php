<?php

namespace App\Controllers;

use App\Core\App;

class PostController
{
	public function index()
	{
		// $posts = App::resolve('QueryBuilder')->selectAll('posts');
		$posts = App::resolve('QueryBuilder')->getPost(2);
		return view('posts/index', compact('posts'));
	}
}