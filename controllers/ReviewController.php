<?php

namespace App\Controllers;

use App\Model\Review;

class ReviewController
{
	public function store()
	{
		if(!session()->isLoggedIn()){
			flash()->error('You need to login to leave a review');
			return redirect()->back();
		}
		if(!request('rating')){
			flash()->error('You need to leave a rating point');
			return redirect()->back();
		}
		Review::insert([
			'user_id' => auth()['id'],
			'product_id' => request('product_id'),
			'body' => request('body'),
			'votes' => request('rating')
		])->execute();
		flash()->success('Your review has been recorded');
		return redirect()->back();
	}
}