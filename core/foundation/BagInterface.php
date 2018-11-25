<?php
namespace App\Core\Foundation;

interface BagInterface {
    /**
     *
     * All bag items
     * @return array
     */
    public function all();

    /**
     * Get item in the bag by key
     * @param $key
     * @param null $default
     * @return null
     */
    public function get($key, $default = null);

    /**
     * Set item by name
     * @param $key
     * @param $value
     */
    public function set($key, $value);

    /**
     * Check if has an item
     * @param $key
     * @return bool
     */
    public function has($key);

    /**
     * Remove an item
     * @param $key
     */
    public function remove($key);

    /**
     * Unset all the items
     */
    public function unsetAll();


}