<?php

namespace App\Controllers;

use App\Model\User;
use App\Core\Facade\DB;
use App\Core\Facade\Validator;

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
            $validation = Validator::make(request()->all(), [
                'email'                 => 'required|email'
            ]);
            $validation->validate();
            
            if ($validation->fails()) {
                flash()->error($validation->errors()->all());
                return redirect()->back();
            }
            if(User::isValid(request('email'), request('password'))){
                if(request('back')){
                    return redirect()->back();
                }
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
        $validation = Validator::make(request()->all(), [
            'email'                 => 'required|email',
            'password'              => 'required|min:6',
            'repassword'      => 'required|same:password',
        ]);
        $validation->validate();

        if ($validation->fails()) {
            flash()->error($validation->errors()->all());
            return redirect()->back();
        }

        $customer = User::select()->find(request('email'), 'email');
        if($customer){
            flash()->error('Email already exists');
            return redirect()->back();
        }
        if(!session()->isLoggedIn() && !$customer){
            User::insert()->values([
                 'firstname' => request('firstname'),
                 'lastname' => request('lastname'),
                 'role_id' => 2,
                 'email' =>request('email'),
                 'password' => password_hash(request('password'), PASSWORD_BCRYPT)
            ])->execute();
            $customer = User::select()->find(request('email'), 'email');
            User::login($customer);
            flash('Register sucessfully');
            return redirect()->home();
        }        
    }

    public function changePwd()
    {
        if(!session()->isLoggedIn()){
            flash()->error('You are not authorized');
            return redirect()->home();
        }
        $user = User::select()->find(auth()['id']);
        if(password_verify(request()->post('old-password'), $user['password'])){
            if(request()->post('password') === request()->post('repassword')){
                $updated = User::update([
                    'password' => password_hash(request()->post('password'), PASSWORD_BCRYPT)
                ])->where('id', $user['id'])->execute();
                if($updated){
                    flash()->success('New password updated');
                    return redirect()->back();
                }
                flash()->error('New password cannot be updated');
                return redirect()->back();
            }
            flash()->error('Password confirmation is not correct');
            return redirect()->back();
        }
        flash()->error('Old password confirmation is not correct');
        return redirect()->back();
    }
}