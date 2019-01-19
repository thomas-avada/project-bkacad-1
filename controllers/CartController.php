<?php

namespace App\Controllers;

use App\Core\Session\Session;
use App\Core\Facade\Cart;
use App\Model\Product;

class CartController
{

	public function index()
	{
		dd(Cart::all());
	}
    
    public function add()
    {
        if(!session()->isLoggedIn()){
            flash()->error('You need to login to add product to cart');
            return $this;
        }
        $product = Product::select()->find(request('id'));
        if(request('qty') < 0){
            flash()->error('Cannot have negative quantity');
            return $this;
        }
        if(request('qty') > $product['quantity']){
            flash()->error('We don\'t have enough of '.$product['product_name']. ' as you require');
            return $this;
        }
        Cart::add(
            request('id'),
            request('name'),
            request('price'),
            request('qty'),
            ['img' => request('img'), 'slug' => request('slug')]
        );
        flash()->success('Added product to cart successfully');
        // return redirect()->home();
    }

    public function destroy()
    {
    	Cart::destroy();
    	return redirect()->toRoute('checkout/cart');
    }

    public function update()
    {
        Cart::update(request('id'), request('qty'));
        return redirect()->home();
    }

    public function massupdate()
    {
        $items = request()->all();
        foreach ($items as $id => $qty) {
            Cart::update($id, $qty);
        }
        return redirect()->back();
    }

    public function delete()
    {
        Cart::remove(request('id'));
        return redirect()->back();
    }

    public function total()
    {
        dd(Cart::total());
    }
}