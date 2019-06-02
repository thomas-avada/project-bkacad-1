<?php
namespace App\Model;

use App\Core\Database\Facade\Model;

class Brand extends Model
{
    use \App\Model\QueryTrait\Filterable;
    
	protected static $tablename = 'brands';

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

    public static function loadForEdit($id)
    {
    	// dd($id);
    	return self::select()
	    ->where('id', $id)
		->one();
    }
}