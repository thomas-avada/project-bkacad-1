<?php

namespace App\Controllers;

use App\Model\User;
use App\Core\Facade\DB;

class AuthController
{
    public function login()
    {
        if(session()->isLoggedIn()){
            flash()->error('Your are already logged in');
            return redirect()->toRoute();
        }
        return view('login');
    }

    public function loginPost()
    {
        if(!session()->isLoggedIn()){
            if(User::isValid(request('email'), request('password'))){
                return redirect()->toRoute();
            }
            return redirect()->back();
        }
        flash()->error('You are already logined');
        return redirect()->toRoute();

    }

    public function logout()
    {
        session()->logout();
    }

    public function register()
    {
        return view('register');
    }

    public function registerPost()
    {
        $customer = User::select()->find(request('email'), 'email');
        if(!session()->isLoggedIn() && !$customer){
            User::insert()->values([
                 'user_name' => request('customer_name'),
                 'role_id' => 2,
                 'email' =>request('email'),
                 'password' => password_hash(request('password'), PASSWORD_BCRYPT)
            ])->execute();
            $customer = User::select()->find(request('email'), 'email');
            User::login($customer);
            return redirect()->home();
        }        
    }
}