<?php
namespace App\Model;

use App\Core\Database\Facade\Model;

class Order extends Model
{
    use \App\Model\QueryTrait\Filterable;
    
	protected static $tablename = 'orders';

	public static function selectColumns()
    {
        return self::select([
			'orders.id as order_id',
			'shippings.firstname as shipping_name',
			// 'shippings.email as shipping_email',
			'shippings.address as shipping_address',
			'shippings.tel as shipping_tel',
			// 'billings.email as billing_email',
			'billings.firstname as billing_name',
			'billings.address as billing_address',
			'billings.tel as billing_tel',
			'orders.grand_total',
			'orders.status',
			'orders.created_at',
			'orders.updated_at'
		])
		->join('shippings', 'shippings.id', "=", 'orders.shipping_id')
		->join('billings', 'billings.id', "=", 'orders.billing_id');
    }

	public static function getAdminGrid()
	{
		return self::select([
			'orders.id as order_id',
			'shippings.firstname as shipping_name',
			// 'shippings.email as shipping_email',
			'shippings.address as shipping_address',
			'shippings.tel as shipping_tel',
			// 'billings.email as billing_email',
			'billings.firstname as billing_name',
			'billings.address as billing_address',
			'billings.tel as billing_tel',
			'orders.grand_total',
			'orders.status',
			'orders.created_at',
			'orders.updated_at'
		])
		->join('shippings', 'shippings.id', "=", 'orders.shipping_id')
		->join('billings', 'billings.id', "=", 'orders.billing_id')
		->get();
	}

	public static function loadForView()
	{
		return self::select([
			'orders.id as order_id',
			'shippings.firstname as shipping_firstname',
			'shippings.lastname as shipping_lastname',
			'shippings.email as shipping_email',
			'shippings.address as shipping_address',
			'shippings.tel as shipping_tel',
			'shippings.city as shipping_city',
			'shippings.country as shipping_country',
			'billings.email as billing_email',
			'billings.firstname as billing_firstname',
			'billings.lastname as billing_lastname',
			'billings.address as billing_address',
			'billings.tel as billing_tel',
			'billings.city as billing_city',
			'billings.country as billing_country',
			'orders.subtotal',
			'orders.grand_total',
			'orders.shipping_fee',
			'orders.created_at',
			'orders.updated_at',
			'orders.invoiced',
			'orders.shipped',
			'orders.status',
			'shipping_methods.display_name as shipping_method',
			'payment_methods.display_name as payment_method'

		])
		->where('orders.id', request('id'))
		->join('shippings', 'shippings.id', "=", 'orders.shipping_id')
		->join('billings', 'billings.id', "=", 'orders.billing_id')
		->join('shipping_methods', 'shipping_methods.id', '=', 'orders.shipping_method_id')
		->join('payment_methods', 'payment_methods.id', '=', 'orders.payment_method_id')
		->one();
	}

	public static function getCustomerGrid()
	{
		$page = request()->has('page') ? request('page') - 1 : 0;
		return self::select([
			'orders.id as order_id',
			'shippings.firstname as shipping_firstname',
			'shippings.lastname as shipping_lastname',
			// 'shippings.email as shipping_email',
			'shippings.address as shipping_address',
			'shippings.tel as shipping_tel',
			// 'billings.email as billing_email',
			'billings.firstname as billing_firstname',
			'billings.lastname as billing_lastname',
			'billings.address as billing_address',
			'billings.tel as billing_tel',
			'orders.subtotal',
			'orders.grand_total',
			'orders.invoiced',
			'orders.shipped',
			'orders.status',
			'orders.created_at',
			'orders.updated_at'
		])
		->where('user_id', auth()['id'])
		->join('shippings', 'shippings.id', "=", 'orders.shipping_id')
		->join('billings', 'billings.id', "=", 'orders.billing_id')
		->orderBy('orders.created_at', 'DESC')
		->page($page, 10);
	}

	public static function loadForCustomerView()
	{
		return self::select([
			'orders.id as order_id',
			'shippings.firstname as shipping_firstname',
			'shippings.lastname as shipping_lastname',
			'shippings.email as shipping_email',
			'shippings.address as shipping_address',
			'shippings.tel as shipping_tel',
			'shippings.city as shipping_city',
			'shippings.country as shipping_country',
			'billings.email as billing_email',
			'billings.firstname as billing_firstname',
			'billings.lastname as billing_lastname',
			'billings.address as billing_address',
			'billings.tel as billing_tel',
			'billings.city as billing_city',
			'billings.country as billing_country',
			'orders.subtotal',
			'orders.grand_total',
			'orders.shipping_fee',
			'orders.created_at',
			'orders.updated_at',
			'orders.invoiced',
			'orders.shipped',
			'orders.status',
			'shipping_methods.display_name as shipping_method',
			'payment_methods.display_name as payment_method'
		])
		->where('orders.id', request('id'))
		->where('user_id', auth()['id'])
		->join('shippings', 'shippings.id', "=", 'orders.shipping_id')
		->join('billings', 'billings.id', "=", 'orders.billing_id')
		->join('shipping_methods', 'shipping_methods.id', '=', 'orders.shipping_method_id')
		->join('payment_methods', 'payment_methods.id', '=', 'orders.payment_method_id')
		->one();
	}

	public static function adminFilter($filters, $count = false)
    {
        $query = static::selectColumns();
        if(isset($filters['maxgrand']) && $filters['maxgrand'] != ''){
            $query = $query->where('grand_total', '<', $filters['maxgrand']);
        }
        if(isset($filters['mingrand']) && $filters['mingrand'] != ''){
            $query = $query->where('grand_total', '>', $filters['mingrand']);
        }
        if(isset($filters['status']) && $filters['status'] != ''){
            $query = $query->where('orders.status',  $filters['status']);
        }
        if(isset($filters['created_at_from']) && $filters['created_at_from'] != ''){
            $query = $query->where('orders.created_at', '>=', $filters['created_at_from']);
        }
        if(isset($filters['created_at_to']) && $filters['created_at_to'] != ''){
            $query = $query->where('orders.created_at', '<=', $filters['created_at_to']);
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
	
}