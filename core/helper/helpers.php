<?php

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