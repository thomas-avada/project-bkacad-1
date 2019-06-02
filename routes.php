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
    'wishlist' => 'WishlistController@index',

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
    'admin/customer/view' => 'Admin\CustomerController@show',
    'admin/customer/create' => 'Admin\CustomerController@create',
    // 'admin/customer/delete' => 'Admin\CustomerController@delete',
    // 
    'admin/payment-methods' => 'Admin\PaymentMethodController@index',
    'admin/payment-method/create' => 'Admin\PaymentMethodController@create',
    'admin/payment-method/delete' => 'Admin\PaymentMethodController@delete',
    'admin/payment-method/edit' => 'Admin\PaymentMethodController@edit',

    'admin/shipping-methods' => 'Admin\ShippingMethodController@index',
    'admin/shipping-method/create' => 'Admin\ShippingMethodController@create',
    'admin/shipping-method/delete' => 'Admin\ShippingMethodController@delete',
    'admin/shipping-method/edit' => 'Admin\ShippingMethodController@edit',

    'admin/configuration/currency' => 'Admin\ConfigController@currency'
]);

$router->post([
    'loginPost' => 'AuthController@loginPost',
    'logout' => 'AuthController@logout',
    'registerPost' => 'AuthController@registerPost',
    'password/change' => 'AuthController@changePwd',

    'test' => 'TestController@index',

    'cart/add' => 'CartController@add',

    'wishlist' => 'WishlistController@store',

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

    'admin/customer/update' => 'Admin\CustomerController@update',
    'admin/customers' => 'Admin\CustomerController@store',

    'admin/order/invoice' => 'Admin\OrderController@invoice',
    'admin/order/ship' => 'Admin\OrderController@ship',
    'admin/order/cancel' => 'Admin\OrderController@cancel',

    'admin/shipping-methods' => 'Admin\ShippingMethodController@store',
    'admin/shipping-method/update' => 'Admin\ShippingMethodController@update',

    'admin/payment-methods' => 'Admin\PaymentMethodController@store',
    'admin/payment-method/update' => 'Admin\PaymentMethodController@update',

    'reviews' => 'ReviewController@store',

    'admin/configuration/currency' => 'Admin\ConfigController@currencyPost'
]);

