<?php
namespace App\Model;

use App\Core\Database\Facade\Model;
use App\Model\Brand;
use App\Model\Category;
use ClanCats\Hydrahon\Query\Sql\Func as F;

class Product extends Model
{
    use \App\Model\QueryTrait\Filterable;
    
	protected static $tablename = 'products';

    public static function getTenPerPage($page)
    {
        return self::select([
			'products.id as product_id',
			'products.product_name',
			'categories.category_name',
			'brands.brand_name',
			'products.price',
			'products.quantity',
            'products.img'
		])
		->join('brands', 'brands.id', '=', 'products.brand_id')
		->join('categories', 'categories.id', '=', 'products.category_id')
		->orderBy('products.id', 'desc')
		->page($page, 10)->get();
    }

    public static function loadForEdit($id)
    {
    	// dd($id);
    	return self::select([
			'products.id as product_id',
            'products.category_id',
            'products.brand_id',
			'products.product_name',
			'products.description',
            'products.rich_description',
			'categories.category_name',
			'brands.brand_name',
			'products.price',
			'products.quantity',
            'products.img',
            'products.images',
            'products.created_at',
            'products.updated_at'
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
    
    public static function shopFilter($filters, $count = false)
    {
        $query = self::select([
            'products.id',
            'products.slug',
            'products.product_name',
            'products.price',
            'products.img',
            'products.created_at',
        ]);
        if(!$count){
            $query = $query->addField(new F('avg', 'reviews.votes'), 'rating')
            ->leftJoin('reviews', 'reviews.product_id', '=', 'products.id');
        }

        if(isset($filters['brands'])){
            $brand_ids = array_column(
                Brand::select()->whereIn('brand_name', $filters['brands'])->get(),
                'id'
            );
            $query = $query->whereIn('brand_id', $brand_ids);
        }
        if(isset($filters['categories'])){
            $category_ids = array_column(
                Category::select()->whereIn('category_name', $filters['categories'])->get(),
                'id'
            );
            $query = $query->whereIn('category_id', $category_ids);
        }
        if(isset($filters['gender']) && $filters['gender'] != 3){
            $query = $query->where('gender', $filters['gender']);
        }
        if(isset($filters['maxprice'])){
            $query = $query->where('price', '<', $filters['maxprice'] * 1000);
        }
        if(isset($filters['minprice'])){
            $query = $query->where('price', '>', $filters['minprice'] *1000);
        }

        if(!$count){
            $query = $query->groupBy('products.id');
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

    public static function selectToShow($slug)
    {
        return self::select([
            'products.id as product_id',
            'products.product_name',
            'products.slug',
            'products.description',
            'products.rich_description',
            'products.img',
            'products.images',
            'categories.category_name',
            'brands.brand_name',
            'products.price',
            'products.quantity',
            'products.status',
            'products.created_at',
            'products.updated_at'
        ])
        ->addField(new F('avg', 'reviews.votes'), 'rating')->leftJoin('reviews', 'reviews.product_id', '=', 'products.id')

        ->where('products.slug', $slug)
        ->join('brands', 'brands.id', '=', 'products.brand_id')
        ->join('categories', 'categories.id', '=', 'products.category_id')
        ->groupBy('products.id')
        ->one();
    }

    public static function selectColumns()
    {
        return self::select([
            'products.id as product_id',
            'products.product_name',
            'products.description',
            'categories.category_name',
            'brands.brand_name',
            'products.price',
            'products.quantity',
            'products.img',
            'products.created_at',
            'products.updated_at'
        ])
        ->join('brands', 'brands.id', '=', 'products.brand_id')
        ->join('categories', 'categories.id', '=', 'products.category_id');
    }

    public static function adminFilter($filters, $count = false)
    {
        $query  = self::selectColumns();
        
        if(isset($filters['product_name'])){
            $name = $filters['product_name'];
            $query = $query->where('product_name', 'like', "%$name%");
        }
        if(isset($filters['maxprice']) && $filters['maxprice'] != ''){
            $query = $query->where('price', '<', $filters['maxprice']);
        }
        if(isset($filters['minprice']) && $filters['minprice'] != ''){
            $query = $query->where('price', '>', $filters['minprice']);
        }
        if(isset($filters['maxqty']) && $filters['maxqty'] != ''){
            $query = $query->where('quantity', '<', $filters['maxqty']);
        }
        if(isset($filters['minqty']) && $filters['minqty'] != ''){
            $query = $query->where('quantity', '>', $filters['minqty']);
        }
        if(isset($filters['created_at_from']) && $filters['created_at_from'] != ''){
            $query = $query->where('products.created_at', '>=', $filters['created_at_from']);
        }
        if(isset($filters['created_at_to']) && $filters['created_at_to'] != ''){
            $query = $query->where('products.created_at', '<=', $filters['created_at_to']);
        }

        if(!$count){
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

    public static function getLatestProducts()
    {
        return self::select([
            'products.id',
            'products.slug',
            'products.product_name',
            'products.price',
            'products.img',
            'products.created_at',
        ])
        ->addField(new F('avg', 'reviews.votes'), 'rating')->leftJoin('reviews', 'reviews.product_id', '=', 'products.id')
        ->leftJoin('order_details', 'order_details.product_id', '=', 'products.id')
        ->groupBy('products.id')
        ->orderBy('created_at', 'desc')
        ->limit(4)
        ->get();
    }

    public static function getBestSellers()
    {
        return self::select([
            'products.id',
            'products.slug',
            'products.product_name',
            'products.price',
            'products.img',
            'products.created_at'
        ])    
        ->addField(new F('count', 'order_details.product_id'), 'sale_num')
        ->addField(new F('avg', 'reviews.votes'), 'rating')
        ->leftJoin('reviews', 'reviews.product_id', '=', 'products.id')
        ->leftJoin('order_details', 'order_details.product_id', '=', 'products.id')
        ->groupBy('products.id')
        ->orderBy('sale_num', 'desc')
        ->limit(8)
        ->get();
    }

    public static function getTopRateds()
    {
        return self::select([
            'products.id',
            'products.slug',
            'products.product_name',
            'products.price',
            'products.img',
            'products.created_at'
        ])
        ->addField(new F('avg', 'reviews.votes'), 'rating')
        ->leftJoin('reviews', 'reviews.product_id', '=', 'products.id')
        ->leftJoin('order_details', 'order_details.product_id', '=', 'products.id')
        ->groupBy('products.id')
        ->orderBy('rating', 'desc')
        ->limit(4)
        ->get();   
    }
}