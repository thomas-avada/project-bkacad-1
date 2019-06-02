<?php
namespace App\Controllers\Admin;

use App\Model\PaymentMethod;

class PaymentMethodController
{
    public function index()
    {
    	$methods = PaymentMethod::all();
        return view('admin/payment-methods', compact('methods'));
    }

    public function create()
    {
        $back = request()->getHttpReferer();
        return view('admin/payment-method-create', compact('back'));
    }

    public function store()
    {
        $method = PaymentMethod::insert(request()->all())->execute();
        if($method){
            flash()->success('New payment method created successfully');
            if(request()->get('back')){
                return redirect()->toRoute("admin/payment-method/edit?id=$method");
            }
            return redirect()->toRoute('admin/payment-methods');
        }
        flash()->success('Something went wrong');
        return redirect()->toRoute('admin/payment-methods');
    }

    public function delete()
    {
        $id = request('id');
        if($id){
            $method = PaymentMethod::delete()->where('id', $id)->execute();
            if($method){
                flash()->success("The payment method with id: $id has been deleted");
                return redirect()->toRoute('admin/payment-methods');
            }
            flash()->error('Something went wrong while deleting');
            return redirect()->toRoute('admin/payment-methods');
        }
        flash()->error('Something went wrong');
        return redirect()->toRoute('admin/payment-methods');
    }

    public function edit()
    {
        if(request()->has('id')){
            $method = PaymentMethod::select()->where('id', request('id'))->one();
            if($method){
                $back = request()->getHttpReferer();
                return view('admin/payment-method-view', compact('method', 'back'));
            } 
            flash()->error('Method does not exist');
            return redirect()->toRoute('admin/payment-methods');
        }
    }

    public function update()
    {
        if(!request('id')){
            flash()->error('Payment method does not exist');
            return redirect()->toRoute('admin/payment-methods');
        }
        $method = PaymentMethod::update(request()->all())->where('id', request('id'))
        ->execute();
        if($method){
            if(request()->get('back')){
                return redirect()->back();
            }
            flash()->success('Updating the shipping method successfully');
            return redirect()->toRoute('admin/payment-methods');
        }
        flash()->error('Something went wrong or nothing changed');
        return redirect()->toRoute('admin/payment-methods');      
    }
}