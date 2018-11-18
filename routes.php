<?php



$router->get([
	'' => 'PageController@home',
	'about' => 'PageController@about',
	'service' => 'PageController@service',
	'form' => 'FormController@create',
	'posts' => 'PostController@index',
	'some' => 'SomeController@index',
	'products' => 'ProductController@index',
    'test' => 'TestController@test'
]);

$router->post([
	'send' => 'controllers/formHandlerController.php',
    'test/testpost' => 'TestController@testpost'
]);

