<?php
namespace App\Model;

use App\Core\Database\Facade\Model;
use App\Core\Facade\DB;
use App\Core\Cart\CartRepository as Cart;
use App\Core\Container;
use App\Core\Total\Total;

class User extends Model
{
    use \App\Model\QueryTrait\Filterable;

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

    public static function isAdminValid($email, $password)
    {
        $user = self::select()->find($email, 'email');
        if(!$user){
            flash()->error('You have failed to login!');
            return false;
        }
        if(!in_array($user['role_id'], [1,3])){
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
        session()->set('cart', new Cart());
        session()->set('total', new Total());
    }

    public static function createNewUser(array $params)
    {
        $hash = password_hash($params['password'], PASSWORD_BCRYPT);
        $user = DB::table('users')->insert()->values([
             'user_name' => $params['customer_name'],
             'role_id' => static::ROLE_NORMAL,
             'email' => $params['email'],
             'password' => $hash
        ])->execute();
    }

    public static function adminFilter($filters, $count = false)
    {
        $query = static::selectColumns();
        if(isset($filters['email'])){
            $email = $filters['email'];
            $query = $query->where('email', 'like', "%$email%");
        }
        if(isset($filters['tel'])){
            $tel = $filters['tel'];
            $query = $query->where('tel', 'like', "%$tel%");
        }
        if(isset($filters['address'])){
            $address = $filters['address'];
            $query = $query->where('address', 'like', "%$address%");
        }
        if($count){
            if(isset($filters['order'])){
                $direction = isset($filters['direction']) ? $filters['direction'] : 'desc';
                $query = $query->orderBy($filters['order'], $direction);
            }
            $page = isset($filters['page']) ? request('page') - 1 : 0;
            $limit = isset($filters['limit']) ? request('limit') : 10;
            $query = $query->page($page, $limit);
        }
        return $query;
    }

    public static function getTenPerPage($page)
    {
        return self::select()
        ->orderBy('id', 'desc')
        ->page($page, 10)->get();
    }

}