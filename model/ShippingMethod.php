<?php
namespace App\Model;

use App\Core\Database\Facade\Model;

class ShippingMethod extends Model
{
    use \App\Model\QueryTrait\Filterable;

    protected static $tablename = 'shipping_methods';

}