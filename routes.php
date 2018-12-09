<?php
$router->get([
	'' => 'PageController@home',
    'login' => 'AuthController@login',
    'register' => 'AuthController@register',
    'shop' => 'ShopController@index',
    'admin' => 'Admin\DashboardController@index',
    'admin/login' => 'Admin\AuthController@login',

    'admin/products' => 'Admin\ProductController@index',
    'admin/product/delete' => 'Admin\ProductController@delete',
    'admin/product/create' => 'Admin\ProductController@create',
    'admin/product/edit' => 'Admin\ProductController@edit',

    'admin/categories' => 'Admin\CategoryController@index',
    'admin/category/delete' => 'Admin\CategoryController@delete',
    'admin/category/create' => 'Admin\CategoryController@create',
    'admin/category/edit' => 'Admin\CategoryController@edit',

    'admin/brands' => 'Admin\BrandController@index',
    'admin/brand/delete' => 'Admin\BrandController@delete',
    'admin/brand/create' => 'Admin\BrandController@create',
    'admin/brand/edit' => 'Admin\BrandController@edit'
]);

$router->post([
    'loginPost' => 'AuthController@loginPost',
    'logout' => 'AuthController@logout',
    'registerPost' => 'AuthController@registerPost',
    
    'admin/loginPost' => 'Admin\AuthController@loginPost',
    'admin/products' => 'Admin\ProductController@store',
    'admin/product/update' => 'Admin\ProductController@update',

    'admin/categories' => 'Admin\CategoryController@store',
    'admin/category/update' => 'Admin\CategoryController@update',

    'admin/brands' => 'Admin\BrandController@store',
    'admin/brand/update' => 'Admin\BrandController@update',
]);

