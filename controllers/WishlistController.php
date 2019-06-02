<?php

namespace App\Controllers;

use App\Model\Wishlist;
use App\Model\Product;

class WishlistController
{
	public function index()
	{
		$ids = array_column(
            Wishlist::select()->where('user_id', auth()['id'])->get(),
            'product_id'
        );
        if(empty($ids)){
        	$products = [];
        	return view('customer-wishlist', [
				'products' => $products,
				'page' => request('page') ? request('page') : 1
			]);
        }
        $page = request()->has('page') ? request('page') - 1 : 0;
		$products = Product::select()->whereIn('id', $ids)->page($page, 10)->get();
		// dd($products);
		$count = Product::select()->whereIn('id', $ids)->count();
		$pagination = [
            'last' => ceil($count / 10)
        ];
		return view('customer-wishlist', [
			'products' => $products,
			'page' => request('page') ? request('page') : 1,
			'pagination' => $pagination
		]);
	}
	public function store()
	{
		if(!session()->isLoggedIn()){
			echo 'You need to login to add to wishlist';
			return flash()->error('You need to login to add to wishlist');
		}
		$exist = Wishlist::select()->where('product_id', request()->post('product_id'))
		->where('user_id', auth()['id'])->count();
		if($exist){
			$removed = Wishlist::delete()->where('product_id', request()->post('product_id'))
			->where('user_id', auth()['id'])->execute();
			if($removed){
				flash()->success('Remove product from your wishlist successfully');
				echo "Remove successfully";
			} else {
				flash()->error('Failed to remove the product from your wishlist');
			}
		} else {
			$wishlisted = Wishlist::insert([
			'product_id' => request()->post('product_id'),
			'user_id' => auth()['id']
			])->execute();
			if($wishlisted){
				flash()->success('Add product to your wishlist successfully');
				echo "Insert successfully";
			} else {
				flash()->error('Failed to add the product to your wishlist');
			}
		}
		
		
	}
}