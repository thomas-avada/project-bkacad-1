<?php
namespace App\Controllers\Admin;

use App\Model\ShippingMethod;

class ShippingMethodController
{
    public function index()
    {
    	$methods = ShippingMethod::all();
        return view('admin/shipping-methods', compact('methods'));
    }

    public function create()
    {
        $back = request()->getHttpReferer();
        return view('admin/shipping-method-create', compact('back'));
    }

    public function store()
    {

        $method = ShippingMethod::insert(request()->all())->execute();
        if($method){
            flash()->success('New shipping method created successfully');
            if(request()->get('back')){
                return redirect()->toRoute("admin/shipping-method/edit?id=$method");
            }
            return redirect()->toRoute('admin/shipping-methods');
        }
        flash()->success('Something went wrong');
        return redirect()->toRoute('admin/shipping-methods');
    }

    public function delete()
    {
        $id = request('id');
        if($id){
            $method = ShippingMethod::delete()->where('id', $id)->execute();
            if($method){
                flash()->success("The payment method with id: $id has been deleted");
                return redirect()->toRoute('admin/shipping-methods');
            }
            flash()->error('Something went wrong while deleting');
            return redirect()->toRoute('admin/shipping-methods');
        }
        flash()->error('Something went wrong');
        return redirect()->toRoute('admin/shipping-methods');
    }

    public function edit()
    {
        if(request()->has('id')){
            $method = ShippingMethod::select()->where('id', request('id'))->one();
            if($method){
                $back = request()->getHttpReferer();
                return view('admin/shipping-method-view', compact('method', 'back'));
            } 
            flash()->error('Method does not exist');
            return redirect()->toRoute('admin/shipping-methods');
        }
    }

    public function update()
    {
        if(!request('id')){
            flash()->error('Shipping method does not exist');
            return redirect()->toRoute('admin/shipping-methods');
        }
        $method = ShippingMethod::update(request()->all())->where('id', request('id'))
        ->execute();
        if($method){
            if(request()->get('back')){
                return redirect()->back();
            }
            flash()->success('Updating the shipping method successfully');
            return redirect()->toRoute('admin/shipping-methods');
        }
        flash()->error('Something went wrong or nothing changed');
        return redirect()->toRoute('admin/shipping-methods');        
    }
}