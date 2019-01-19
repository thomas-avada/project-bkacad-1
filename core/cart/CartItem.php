<?php
namespace App\Core\Cart;

class CartItem {
	protected $id;

	protected $name = null;

	protected $price = null;

	protected $qty = 1;

	protected $options = [];

	public function __construct($id, $name, $price, $qty = 1, $options = [])
	{
		$this->id = $id;
		$this->name = $name;
		$this->price = $price;
		$this->qty = $qty;
		$this->options[] = $options;
	}

	public function addQty($num = 1)
	{
		$this->qty = $this->qty + $num;
	}

	public function setQty($num)
	{
		$this->qty = $num;
		return $this;
	}

	public function getId()
	{
		return $this->id;
	}

	public function getName()
	{
		return $this->name;
	}

	public function getQty()
	{
		return $this->qty;
	}

	public function getPrice()
	{
		return $this->price;
	}

	public function getItemAmount()
	{
		return $this->qty * $this->price;
	}

	public function getOptions()
	{
		return $this->options[0];
	}

	public function getOption($key)
	{
		return $this->options[0][$key];
	}
}
