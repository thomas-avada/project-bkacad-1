<?php



$router->get([
	'' => 'PageController@home',
	'about' => 'PageController@about',
	'service' => 'PageController@service',
	'form' => 'FormController@create',
	'posts' => 'PostController@index',
	'some' => 'SomeController@index',
	'products' => 'ProductController@index'
]);

$router->post([
	'send' => 'controllers/formHandlerController.php'
]);

