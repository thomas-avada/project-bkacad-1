<?php
namespace App\Core\Foundation;

class CollectionBag implements BagInterface{
    /**
     * @var array $items
     */
    protected $items;

    /**
     * CollectionBag constructor.
     * @param array $items
     */
    public function __construct(array $items = array())
    {
        $this->items = $items;
    }

    /**
     * 
     * All bag items
     * @return array
     */
    public function all()
    {
        return $this->items;
    }

    /**
     * Get item in the bag by key
     * @param $key
     * @param null $default
     * @return null
     */
    public function get($key, $default = null)
    {
        return array_key_exists($key, $this->items) ? $this->items[$key] : $default;
    }

    /**
     * Set item by name
     * @param $key
     * @param $value
     */
    public function set($key, $value)
    {
        $this->items[$key] = $value;
    }

    /**
     * Check if has an item
     * @param $key
     * @return bool
     */
    public function has($key)
    {
        return array_key_exists($key, $this->items);
    }

    /**
     * Remove an item
     * @param $key
     */
    public function remove($key)
    {
        unset($this->items[$key]);
    }

    /**
     * Unset all the items
     */
    public function unsetAll()
    {
        $this->items = [];
    }
}