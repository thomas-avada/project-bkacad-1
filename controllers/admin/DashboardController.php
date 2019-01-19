<?php
namespace App\Controllers\Admin;

use App\Model\Order;
use App\Model\Product;
use App\Model\User as Customer;
use ClanCats\Hydrahon\Query\Sql\Func as F;

class DashboardController extends AdminController
{
	public function index()
	{
		$total_revenue = Order::select()->addField(new F('SUM', 'grand_total'), 'total_revenue')->one()['total_revenue'];
		$customer_count = Customer::select()->addField(new F('COUNT', 'id'), 'customer_count')->one()['customer_count'];
		$order_count = Order::select()->addField(new F('COUNT', 'id'), 'order_count')->one()['order_count'];
		$invoiced_count = Order::select()->addField(new F('COUNT', 'id'), 'invoiced_count')->where('invoiced', 1)->one()['invoiced_count'];
		$product_count = Product::select()->addField(new F('COUNT', 'id'), 'product_count')->one()['product_count'];
		return view('admin/dashboard', [
			'total_revenue' => $total_revenue,
			'customer_count' => $customer_count, 
			'order_count' => $order_count,
			'invoiced_count' => $invoiced_count,
			'product_count' => $product_count
		]);
	}
}