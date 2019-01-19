<?php
namespace App\Controllers\Admin;

use App\Model\User;

class CustomerController
{
    public function index()
    {
		$customers = User::adminFilter(request()->all())->get();
		$count = User::adminFilter(request()->all())->count();
		$pagination = [
            'last' => ceil($count / 10)
        ];

        return view('admin/customers', [
        	'customers' => $customers,
        	'pagination' => $pagination,
        	'page' => request('page'),
            'order' => request('order'),
            'direction' => request('direction')
        ]);
    }
}