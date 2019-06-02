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
		$count = Order::adminFilter(request()->all(), true)->count();
		$pagination = [
            'last' => ceil($count / 10)
        ];
        $filters = array_merge([
        	'page' => 1,
        	'direction' => 'asc',
        	'order' => 'product_id'
        ], request()->all());
		return view('admin/orders', [
			'orderItems' => $orderItems, 
			'pagination' => $pagination, 
			'filters' => $filters
		]);
	}

	public function show()
	{
		$orderItem = Order::loadforView();
		if(!$orderItem){
			flash()->error('The order does not exist');
			return redirect()->toRoute('admin/orders');
		}
		$products = OrderDetail::select()
		->where('order_id', request('id'))
		// ->join('products', 'order_details.product_id', '=', 'products.id')
		->get();
		return view('admin/order-view', [
			'order' => $orderItem,
			'products' => $products
		]);
	}

	public function invoice()
	{
		$order = Order::select()->find(request()->post('order_id'));
		if($order['invoiced']){
			flash()->error('The order has been invoiced already');
			return redirect()->back();
		} 
		if($order['status'] > 1){
			flash()->error('The order has been completed already');
			return redirect()->back();
		} 
		if($order['status'] == 1 && $order['shipped']){
			$updated = Order::update([
				'invoiced' => 1,
				'status' => 2
			])
			->where('id', request()->post('order_id'))
			->execute();

			

			flash()->success('The order has been invoiced');
			return redirect()->back();
		}

		$updated = Order::update([
			'invoiced' => 1,
			'status' => 1
		])
		->where('id', request()->post('order_id'))
		->execute();

		flash()->success('The order has been invoiced');
		return redirect()->back();
	}

	public function ship()
	{
		$order = Order::select()->find(request()->post('order_id'));
		if($order['shipped']){
			flash()->error('The order has been marked as shipped already');
			return redirect()->back();
		} 
		if($order['status'] > 1){
			flash()->error('The order has been completed already');
			return redirect()->back();
		} 
		if($order['status'] == 1 && $order['invoiced']){
			$updated = Order::update([
				'shipped' => 1,
				'status' => 2
			])
			->where('id', request()->post('order_id'))
			->execute();

			flash()->success('The order has been marked as shipped');
			return redirect()->back();
		}

		$updated = Order::update([
			'shipped' => 1,
			'status' => 1
		])
		->where('id', request()->post('order_id'))
		->execute();

		flash()->success('The order has been marked as shipped');
		return redirect()->back();
	}

	public function cancel()
	{
		if(!request()->hasPost('order_id')){
			flash()->error('The order does not exist');
			return redirect()->back();
		}

		$canceled = Order::update([
			'status' => 3
		])
		->where('id', request()->post('order_id'))
		->execute();
		if($canceled){
			flash()->success('The order has been canceled');
			return redirect()->back();
		}
		flash()->error('The order cancellation is not completed');
		return redirect()->back();
	}
}