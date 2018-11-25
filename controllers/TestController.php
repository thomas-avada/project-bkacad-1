<?php

namespace App\Controllers;

use App\Core\Facade\Session;

class TestController
{
    public function index()
    {
        return view('test/index');
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