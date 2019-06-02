<?php
namespace App\Controllers\Admin;

use App\Model\User as Customer;
use App\Model\Role;
use App\Core\Facade\Validator;

class CustomerController
{
    public function index()
    {
		$customers = Customer::adminFilter(request()->all())->get();
		$count = Customer::adminFilter(request()->all(), true)->count();
		$pagination = [
            'last' => ceil($count / 10)
        ];
        $filters = array_merge([
            'page' => 1,
            'direction' => 'asc',
            'order' => 'product_id'
        ], request()->all());
        return view('admin/customers', [
        	'customers' => $customers,
        	'pagination' => $pagination,
        	'filters' => $filters
        ]);
    }

    public function show()
    {
        if(!request()->has('id')){
            flash()->error('Customer ID is required');
            return redirect()->back();
        }
        $customer = Customer::select()->where('id', request('id'))->one();
        if(!$customer){
            flash()->error('Customer does not exist');
            return redirect()->toRoute('admin/customers');        }
        $back = request()->getHttpReferer();
        $roles = Role::all();
        // dd($roles);
        return view('admin/customer-view', compact('customer', 'back', 'roles'));
    }

    public function update()
    {
        $validation = Validator::make(request()->all(), [
            'firstname' => 'required',
            'lastname' => 'required',
            'email' => 'required|email'
        ]);
        $validation->validate();
        
        if ($validation->fails()) {
            flash()->error($validation->errors()->all());
            return redirect()->back();
        }

        $updated = Customer::update(request()->all())->where('id', request('id'))->execute();
        if($updated){
            flash()->success('The customer has been updated successfully');
            if(request()->get('back')){
                return redirect()->back();
            }
            return redirect()->toRoute('admin/customers');
        }
        flash()->error('Failed to update customer infomation or customer infomartion does not change');
        return redirect()->back();
    }

    public function create()
    {
        $back = request()->getHttpReferer();
        return view('admin/customer-create', compact('back'));
    }

    public function store()
    {
        $validation = Validator::make(request()->all(), [
            'firstname' => 'required',
            'lastname' => 'required',
            'email' => 'required'
        ]);
        $validation->validate();
        
        if ($validation->fails()) {
            flash()->error($validation->errors()->all());
            return redirect()->back();
        }

        $customer = Customer::insert(request()->all())->execute();
        if($customer){
            flash()->success('Customer created successfully');
            if(request()->get('back')){
                return redirect()->toRoute("admin/customer/edit?id=$customer");
            }
            return redirect()->toRoute('admin/customers');
        }
        flash()->error('Something went wrong');
        return redirect()->toRoute('admin/customers');
    }
}