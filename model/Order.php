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
			'orders.created_at',
			'orders.updated_at'
		])
		->join('shippings', 'shippings.id', "=", 'orders.shipping_id')
		->join('billings', 'billings.id', "=", 'orders.billing_id')
		->get();
	}

	public function loadForView()
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

	public function getCustomerGrid()
	{
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
			'orders.created_at',
			'orders.updated_at'
		])
		->where('user_id', auth()['id'])
		->join('shippings', 'shippings.id', "=", 'orders.shipping_id')
		->join('billings', 'billings.id', "=", 'orders.billing_id')
		->get();
	}

	public function loadForCustomerView()
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
	
}