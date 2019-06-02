<?php
namespace App\Controllers;

use App\Core\Facade\Cart;
use App\Core\Facade\Total;
use App\Model\Order;
use App\Model\Shipping;
use App\Model\Billing;
use App\Model\OrderDetail;
use App\Core\Container;
use App\Core\Database\Connection;
use App\Model\User;
use App\Model\ShippingMethod;
use App\Model\PaymentMethod;
use App\Core\Facade\Validator;

class CheckoutController
{
	public function index()
	{
        $payment_methods = PaymentMethod::all();
        $shipping_methods = ShippingMethod::all();
	    if(Cart::isEmpty()){
            return redirect()->toRoute('checkout/cart');
        }
		return view('checkout', [
            'payment_methods' => $payment_methods, 
            'shipping_methods' => $shipping_methods,
            'selected_shipping' => Total::getShippingMethod(),
            'selected_payment' => Total::getPaymentMethod()
        ]);
	}

	public function cart()
	{
		return view('cart');
	}

    public function updateShipping()
    {
        Total::setShippingMethod(request('method'));
        Total::setShippingFee(request('fee'));
        echo json_encode([
            'grand_total' => Total::getGrandTotal(),
            'shipping_fee' => Total::getShippingFee()
        ]);
    }

    public function updatePayment()
    {
        Total::setPaymentMethod(request('method'));
        echo json_encode([
            'grand_total' => Total::getGrandTotal(),
            'shipping_fee' => Total::getShippingFee()
        ]);
    }

	public function store()
	{
        $rules = [
            'shipping.email'  => 'required|email',
            'shipping.firstname' => 'required',
            'shipping.lastname' => 'required',
            'shipping.address' => 'required',
            'shipping.city' => 'required',
            'shipping.country' => 'required',
            'shipping.tel' => 'required',
        ];
        if(!request('is_the_same')){
            $rules = array_merge($rules, [
                'billing.email'  => 'required|email',
                'billing.firstname' => 'required',
                'billing.lastname' => 'required',
                'billing.address' => 'required',
                'billing.city' => 'required',
                'billing.country' => 'required',
                'billing.tel' => 'required',
            ]);
        }
        $validation = Validator::make(request()->all(), $rules);
        $validation->validate();
        
        if ($validation->fails()) {
            flash()->error($validation->errors()->all());
            return redirect()->back();
        }


		$shipping_id = Shipping::insert(request('shipping'))->execute();
		if(request('is_the_same')){
			$billing_id = Billing::insert(request('shipping'))->execute();
		} else {
            $billing_id = Billing::insert(request('billing'))->execute();
		}
        $order_id = Order::insert([
            'user_id' => session()->customer()['id'],
            'billing_id' => $billing_id,
            'shipping_id' => $shipping_id,
            'subtotal' => Cart::total(),
            'shipping_fee' => Total::getShippingFee(),
            'grand_total' => Total::getGrandTotal(),
            'shipping_method_id' => request('shipping_method'),
            'payment_method_id' => request('payment_method')
        ])->execute();
        foreach (Cart::all() as $item){
            OrderDetail::insert([
                'product_id' => $item->getId(),
                'order_id' => $order_id,
                'item_qty' => $item->getQty(),
                'product_name' => $item->getName(),
                'price' => $item->getPrice()
            ])->execute();
        }
        Cart::destroy();

        session()->setCustomer('address', request('shipping')['address']);
        session()->setCustomer('tel', request('shipping')['tel']);
        session()->setCustomer('city', request('shipping')['city']);
        session()->setCustomer('country', request('shipping')['country']);
        session()->setCustomer('tel', request('shipping')['tel']);

        User::update([
            'address' => request('shipping')['address'],
            'tel' => request('shipping')['tel'],
            'city' => request('shipping')['city'],
            'country' => request('shipping')['country']
        ])->where('id', auth()['id'])->execute();

        return redirect()->toRoute('checkout/success');
	}

    public function success()
    {
        return view('success');
    }


}