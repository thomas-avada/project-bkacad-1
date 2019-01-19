<?php

namespace App\Controllers;

use App\Core\Facade\Session;
use App\Model\Product;
use App\Model\Brand;
use App\Model\Category;
use Ausi\SlugGenerator\SlugGenerator;

class TestController
{

    public function index()
    {
        //update slugs
        // $generator = new SlugGenerator;

        // $products = Product::all();
        // foreach ($products as $product) {
        //     Product::update(['slug' => $generator->generate($product['product_name'])])
        //     ->where('id', $product['id'])->execute();
        // }
        // 
        dd(session()->all());
    }
    public function test()
    {
        var_dump(Session::all());
        die();
        return view('test/form');
    }

    public function testPost()
    {
//        var_dump(request()->all());
        return redirect('products');
    }
}