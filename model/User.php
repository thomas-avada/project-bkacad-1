<?php
namespace App\Model;

use App\Core\Database\Facade\Model;
use App\Core\Facade\DB;

class User extends Model
{
    protected static $tablename = 'users';

    const ROLE_ADMIN = 1;

    const ROLE_NORMAL = 2;

    public static function isValid($email, $password)
    {
        $user = self::select()->find($email, 'email');
        if(!$user){
            flash()->error('You have failed to login!');
            return false;
        }
        if(password_verify($password, $user['password'])){
            flash()->success('Login successfully!');
            static::login($user);
            return true;
        }
        flash()->error('You have failed to login!');
        return false;
    }

    public static function login($user)
    {
        $user = array_diff_key($user, [
            'password' => '',
            'remember_token' => '',
            'settings' => ''
        ]);
        session()->set('customer', $user);
    }

    public static function createNewUser(array $params)
    {
        $hash = password_hash($params['password'], PASSWORD_BCRYPT);
        var_dump($hash);
        die();
        $user = DB::table('users')->insert()->values([
             'user_name' => $params['customer_name'],
             'role_id' => static::ROLE_NORMAL,
             'email' => $params['email'],
             'password' => $hash
        ])->execute();
        var_dump($user);
        die();
    }

}