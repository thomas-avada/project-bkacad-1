<?php
namespace App\Controllers\Admin;

use App\Model\Product;
use App\Model\Brand;
use App\Model\Category;
use App\Model\Order;
use App\Model\OrderDetail;

class OrderController extends AdminController
{
	public function index()
	{
		$orderItems = Order::adminFilter(request()->all())->get();
		$count = Order::select()->count();
		$pagination = [
            'last' => ceil($count / 10)
        ];
		return view('admin/orders', [
			'orderItems' => $orderItems, 
			'pagination' => $pagination, 
			'page' => request('page'),
            'order' => request('order'),
            'direction' => request('direction')
		]);
	}

	public function show()
	{
		$orderItem = Order::loadforView();
		$products = OrderDetail::select()
		->where('order_id', request('id'))
		->join('products', 'order_details.product_id', '=', 'products.id')
		->get();
		return view('admin/order-view', [
			'order' => $orderItem,
			'products' => $products
		]);
	}

	public function invoice()
	{
		$updated = Order::update(['invoiced' => 1])
		->where('id', request()->post('order_id'))
		->execute();

		flash()->success('The order has been invoiced');
		return redirect()->back();
	}
}