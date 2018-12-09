<?php
namespace App\Model;

use App\Core\Database\Facade\Model;
use App\Model\Brand;
use App\Model\Category;

class Product extends Model
{
	protected static $tablename = 'products';

    public static function getTenPerPage($page)
    {
        return self::select([
			'products.id as product_id',
			'products.product_name',
			'categories.category_name',
			'brands.brand_name',
			'products.price',
			'products.quantity'
		])
		->join('brands', 'brands.id', '=', 'products.brand_id')
		->join('categories', 'categories.id', '=', 'products.category_id')
		->orderBy('products.id', 'desc')
		->page($page, 10)->get();
    }

    public function loadForEdit($id)
    {
    	// dd($id);
    	return self::select([
			'products.id as product_id',
			'products.product_name',
			'products.description',
			'categories.category_name',
			'brands.brand_name',
			'products.price',
			'products.quantity'
		])
	    ->where('products.id', $id)
		->join('brands', 'brands.id', '=', 'products.brand_id')
		->join('categories', 'categories.id', '=', 'products.category_id')
		->one();
    }

    public static function destroy($id)
    {
    	return self::delete()->where('id', $id)->execute();
    }

    public static function filter($filters)
    {
        $query = self::select();
        if(isset($filters['brands'])){
            $brand_ids = array_column(
                Brand::select()->whereIn('brand_name', $filters['brands'])->get(),
                'id'
            );
//            dd(array_column($brand_ids, 'id'));
            $query = $query->whereIn('brand_id', array_column($brand_ids, 'id'));
        }
        if(isset($filters['categories'])){
            $category_ids = array_column(
                Category::select()->whereIn('category_name', $filters['categories'])->get(),
                'id'
            );
            $query = $query->whereIn('category_id', $category_ids);
        }
        if(isset($filters['maxprice'])){
            $query = $query->where('price', '<', $filters['maxprice']);
        }
        if(isset($filters['minprice'])){
            $query = $query->where('price', '>', $filters['minprice']);
        }

        if(isset($filters['order'])){
            $direction = isset($filters['direction']) ? $filters['direction'] : 'desc';
            $query = $query->orderBy($filters['order'], $direction);
        }
        $page = isset($filters['page']) ? request('page') - 1 : 0;
        $limit = isset($filters['limit']) ? request('limit') : 9;
        $query = $query->page($page, $limit);

        return $query;
    }
}