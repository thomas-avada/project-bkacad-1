<?php
 namespace App\Core\Cart;

use App\Core\Cart\CartItem;

 class CartRepository
 {
 	protected $items = [];

    public function all()
    {
    	return $this->items;
    }

    public function pluckIds()
    {
        $ids = [];
        foreach ($this->items  as $item){
            $ids[] = $item->getId();
        }
        return $ids;
    }
    
 	public function add($id, $name = null, $price = null, $qty = 1, $options = [])
 	{
        if(!isset($id)){
            return $this;
        }
 		if(isset($this->items[$id])){
 			$this->items[$id]->addQty($qty);
 			return $this;
 		}
 		$this->items[$id] = new CartItem($id, $name, $price, $qty, $options);
 		return $this;
 	}

 	public function update($key =null, $qty= null)
 	{
 		if(is_null($key) || is_null($qty)){
 			return $this;
 		}
 		if(!array_key_exists($key, $this->items)){
 			return $this;
 		}
        if($qty == 0){
            unset($this->items[$key]);
            return $this;
        }
 		$this->items[$key]->setQty($qty);
 	}

 	public function remove($key = null)
 	{
 		if(is_null($key)){
 			return $this;
 		}
 		unset($this->items[$key]);
 		return $this;
 	}

 	public function destroy()
 	{
 		$this->items = [];
 	}

 	public function total()
    {
        $total = 0;
        foreach ($this->items as $item) {
            $total += $item->getItemAmount();
        }
        return $total;
    }

    public function count()
    {
        $total = 0;
        foreach ($this->items as $item) {
            $total += $item->getQty();
        }
        return $total;
    }

    public function isEmpty()
    {
        return empty($this->items);
    }
 }
