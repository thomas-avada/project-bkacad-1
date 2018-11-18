<?php
use App\Core\Facade\Request;
use App\Core\Container;

if(!function_exists('view')){
    /**
     * @param $view
     * @param array $data
     */
    function view ($view, $data = [])
    {
        extract($data);
        require_once "views/".$view.".view.php";
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
        return Container::resolve('Redirect')->toRoute($route);
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