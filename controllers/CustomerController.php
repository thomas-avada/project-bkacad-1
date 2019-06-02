<?php
namespace App\Controllers;

use App\Model\User;
use App\Model\Order;
use App\Model\OrderDetail;

class CustomerController
{
	public function dashboard()
	{
		$user = User::select()->where('id', auth()['id'])->one();
		$orders = Order::getCustomerGrid()->get();
		$count = Order::getCustomerGrid()->count();
		$pagination = [
            'last' => ceil($count / 10)
        ];
		return view('customer-dashboard', [
			'user' => $user, 
			'orders' => $orders, 
			'pagination' => $pagination,
			'page' => request('page') ? request('page') : 1 
		]);
	}

	public function orders()
	{
		$orders = Order::getCustomerGrid()->get();
		$count = Order::getCustomerGrid()->count();
		$pagination = [
            'last' => ceil($count / 10)
        ];
		return view('customer-orders', [
			'orders' => $orders,
			'pagination' => $pagination,
			'page' => request('page') ? request('page') : 1 
		]);
	}

	public function orderView()
	{
		$order = Order::loadForCustomerView();
		$products = OrderDetail::select()
		->where('order_id', request('id'))
		// ->join('products', 'order_details.product_id', '=', 'products.id')
		->get();
		return view('customer-order', compact('order', 'products'));
	}

	public function info()
	{
		$user = User::select()->where('id', auth()['id'])->one();
		return view('customer-info', compact('user'));
	}

	public function updateInfo()
	{
		$updated = User::update(request()->all())->where('id', auth()['id'])->execute();
		if($updated){
			$user = User::select()->find(auth()['id']);
			$user = array_diff_key($user, [
	            'password' => '',
	            'remember_token' => '',
	            'settings' => ''
	        ]);
	        session()->set('customer', $user);
			flash()->success('Your information has been updated successfully');
			return redirect()->back();
		}
		flash()->error('There is something wrong updating your information');
		return redirect()->back();
	}
}