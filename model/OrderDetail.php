<?php
namespace App\Model;

use App\Core\Database\Facade\Model;

class OrderDetail extends Model
{
    use \App\Model\QueryTrait\Filterable;
    
	protected static $tablename = 'order_details';

	
}