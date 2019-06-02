<?php
use App\Core\Facade\Request;
use App\Core\Container;
use App\Model\Backend\Config;

if(!function_exists('view')){
    /**
     * @param $view
     * @param array $data
     */
    function view ($view, $data = [])
    {
        extract($data);
        require_once "resources/views/".$view.".view.php";
    }
}

if(!function_exists('view_path')){
    /**
     * @param $view
     * @param array $data
     */
    function view_path ($path)
    {
        return __DIR__. "/../../resources/views/".$path;
    }
}

if(!function_exists('view_apath')){
    /**
     * @param $view
     * @param array $data
     */
    function view_apath ($path)
    {
        return __DIR__. "/../../resources/views/admin/".$path;
    }
}

if(!function_exists('partial_path')){
    /**
     * @param $view
     * @param array $data
     */
    function partial_path ($path)
    {
        return __DIR__. "/../../resources/views/partials/".$path;
    }
}

if(!function_exists('partial_apath')){
    /**
     * @param $view
     * @param array $data
     */
    function partial_apath ($path)
    {
        return __DIR__. "/../../resources/views/admin/partials".$path;
    }
}

if(!function_exists('component')){
    /**
     * @param $view
     * @param array $data
     */
    function component ($component, $data = [])
    {
        extract($data);
        include "resources/views/components/".$component.".view.php";
    }
}

if(!function_exists('dd')){
    function dd ($data)
    {
        var_dump($data);
        die();
    }
}

if(!function_exists('auth')){
    function auth ()
    {
        return session()->customer();
    }
}

if(!function_exists('request')){
    /**
     * @param null $key
     * @return mixed
     */
    function request ($key= null)
    {
        if(is_null($key)){
            return Container::resolve('Request');
        }
        if(Request::isGetMethod()){
            return Request::get($key);
        }
        if(Request::isPostMethod()) {
            return Request::post($key);
        }
    }
}
if(!function_exists('session')){
    /**
     * @param null $key
     * @return mixed
     */
    function session ($key = null, $value = null)
    {
        if(is_null($key)){
            return Container::resolve('Session');
        }
        if(!is_null($key && !is_null($value))){
            return Container::resolve('Session')->set($key, $value);
        }
        return Container::resolve('Session')->get($key);
    }
}
if(!function_exists('redirect')){
    /**
     * @param null $key
     * @return mixed
     */
    function redirect ($route = null)
    {
        if(is_null($route)){
            return Container::resolve('Redirect');
        }
        return Container::resolve('Redirect');
    }
}

if(!function_exists('currency_price')){
    /**
     * @param null $key
     * @return mixed
     */
    function currency_price($price)
    {
        $configs = Config::getCurrencyConfig();
        $price = number_format($price, 0, ',', '.');
        if($configs['/config/currency/currency_order'] == 'after'){
            return $price . $configs['/config/currency/currency_symbol'];
        }
        if($configs['/config/currency/currency_order'] == 'before'){
            return $configs['/config/currency/currency_symbol'] . $price ;
        }
    }
}

if(!function_exists('order_status')){
    /**
     * @param null $key
     * @return mixed
     */
    function order_status($status)
    {
        switch ($status) {
            case 0:
                return 'Pending';
                break;
            case 1:
                return 'Processing';
                break;
            case 2:
                return 'Completed';
                break;
            case 3:
                return 'Cancelled';
                break;
        }
    }
}



/* =========================================Relationship Helpers===================================*/

if(!function_exists('oneToMany')){
    /**
     * @param $hasManies
     * @param $belongs
     * @param $property
     */
    function oneToMany(&$hasManies, $belongs, $property)
    {
        foreach ($hasManies as $key => &$hasMany) {
            $data = [];
            foreach($belongs as $belong){
                if($belong['product_id'] == $hasMany['id']){
                    $data[] = $belong;
                }
            }
            $hasMany[$property] = $data;
        }
    }
}