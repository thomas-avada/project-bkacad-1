<?php



$router->get([
	'' => 'PageController@home',
	'about' => 'PageController@about',
	'service' => 'PageController@service',
	'form' => 'FormController@create',
	'posts' => 'PostController@index',
	'some' => 'SomeController@index',
	'products' => 'ProductController@index',
    'test' => 'TestController@test',
    'test/index' => 'TestController@index',
    'store' => 'StoreController@index'
]);

$router->post([
	'send' => 'controllers/formHandlerController.php',
    'test/testpost' => 'TestController@testpost'
]);

