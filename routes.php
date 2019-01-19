<?php
$router->get([
	'' => 'PageController@home',
    'login' => 'AuthController@login',
    'register' => 'AuthController@register',
    'shop' => 'ShopController@index',
    'products' => 'ProductController@show',
    'checkout' => 'CheckoutController@index',
    'test' => 'TestController@index',
    'search' => 'SearchController@index',

    'compare/add' => 'CompareController@add',
    'compare' => 'CompareController@index',

    'customer/dashboard' => 'CustomerController@dashboard',
    'customer/info' => 'CustomerController@info',
    'customer/orders' => 'CustomerController@orders',
    'customer/order' => 'CustomerController@orderView',

    'checkout/cart' => 'CheckoutController@cart',
    'checkout/success' => 'CheckoutController@success',
    // 'cart/add' => 'CartController@add',
    'cart/empty' => 'CartController@destroy',
    'cart' => 'CartController@index',
    'cart/update' => 'CartController@update',
    'cart/massupdate' => 'CartController@massupdate',
    'cart/remove' => 'CartController@delete',
    'cart/total' => 'CartController@total',

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
    'admin/brand/edit' => 'Admin\BrandController@edit',

    'admin/orders' => 'Admin\OrderController@index',
    'admin/orders/view' => 'Admin\OrderController@show',
    // 'admin/brand/create' => 'Admin\BrandController@create',
    // 'admin/brand/edit' => 'Admin\BrandController@edit',

    'admin/customers' => 'Admin\CustomerController@index',

    'admin/configuration/currency' => 'Admin\ConfigController@currency'
]);

$router->post([
    'loginPost' => 'AuthController@loginPost',
    'logout' => 'AuthController@logout',
    'registerPost' => 'AuthController@registerPost',

    'cart/add' => 'CartController@add',

    'shipping-methods/update' => 'CheckoutController@updateShipping',
    'payment-method/update' => 'CheckoutController@updatePayment',

    'checkout' => 'CheckoutController@store',

    'customer/info/update' => 'CustomerController@updateInfo',
    
    'admin/loginPost' => 'Admin\AuthController@loginPost',
    'admin/products' => 'Admin\ProductController@store',
    'admin/product/update' => 'Admin\ProductController@update',

    'admin/categories' => 'Admin\CategoryController@store',
    'admin/category/update' => 'Admin\CategoryController@update',

    'admin/brands' => 'Admin\BrandController@store',
    'admin/brand/update' => 'Admin\BrandController@update',

    'admin/order/invoice' => 'Admin\OrderController@invoice',

    'reviews' => 'ReviewController@store',

    'admin/configuration/currency' => 'Admin\ConfigController@currencyPost'
]);

