<?php
namespace App\Controllers\Admin;

use App\Controllers\AuthController as FrontAuthController;
use App\Model\User;

class AuthController extends FrontAuthController
{

	public function login()
	{
		if(session()->isLoggedIn()){
			if(session()->isAdmin()){
	            flash()->error('Your are already logged in as admin');
	            return redirect()->toRoute('admin');
	        }
	        flash()->error('Customer is not allowed for admin');
	        return redirect()->toRoute();
		}
		
		return view('admin/auth/login');
	}

    public function loginPost()
    {
    	if(!session()->isLoggedIn()){
            if(User::isAdminValid(request('email'), request('password'))){
                return redirect()->toRoute('admin');
            }
            return redirect()->back();
    	}
        if(session()->isAdmin()){
        	flash()->error('You are already logined');
        	return redirect()->toRoute('admin');
        }
        flash()->error('You are already logined');
        return redirect()->toRoute('admin');

    }
}