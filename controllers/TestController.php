<?php

namespace App\Controllers;

use App\Core\Facade\Session;
use App\Model\Product;
use App\Model\Brand;
use App\Model\Category;
use App\Model\OrderDetail;
use Ausi\SlugGenerator\SlugGenerator;

class TestController
{

    public function index()
    {
        session_unset();
        
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