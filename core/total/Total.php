<?php
namespace App\Core\Total;

use App\Core\Facade\Cart;

class Total {
	protected $payment_method = '';

	protected $shipping_method = '';

	protected $shipping_fee = 0;

	public function getGrandTotal()
	{
		
		return Cart::total() + $this->shipping_fee;
	}

	public function getShippingFee()
	{
		return $this->shipping_fee;
	}

	public function setShippingFee($fee = 0)
	{
		$this->shipping_fee = $fee;
		return $this;
	}

	public function getShippingMethod()
	{
		return $this->shipping_method;
	}

	public function setShippingMethod($code = '')
	{
		$this->shipping_method = $code;
		return $this;
	}

	public function getPaymentMethod()
	{
		return $this->payment_method;
	}

	public function setPaymentMethod($code = '')
	{
		$this->payment_method = $code;
		return $this;
	}

}
