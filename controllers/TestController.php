<?php

namespace App\Controllers;

class TestController
{
    public function test()
    {
        session_start();
        echo
        var_dump($_SESSION);
        die();
        return view('test/form');
    }

    public function testPost()
    {
//        var_dump(request()->all());
        return redirect('products');
    }
}