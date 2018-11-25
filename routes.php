<?php



$router->get([
	'' => 'PageController@home',
    'login' => 'AuthController@login',
    'register' => 'AuthController@register',
    'shop' => 'ShopController@index'
]);

$router->post([
    'loginPost' => 'AuthController@loginPost',
    'logout' => 'AuthController@logout',
    'registerPost' => 'AuthController@registerPost'
]);

