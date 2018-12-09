<?php
namespace App\Model;

use App\Core\Database\Facade\Model;

class Category extends Model
{
	protected static $tablename = 'categories';

    public static function getTenPerPage($page)
    {
        return self::select()
		->orderBy('created_at', 'desc')
		->page($page, 10)->get();
    }

    public static function destroy($id)
    {
    	return self::delete()->where('id', $id)->execute();
    }

    public function loadForEdit($id)
    {
    	// dd($id);
    	return self::select()
	    ->where('id', $id)
		->one();
    }
}