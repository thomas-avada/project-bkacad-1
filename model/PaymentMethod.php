<?php
namespace App\Model;

use App\Core\Database\Facade\Model;

class PaymentMethod extends Model
{
    use \App\Model\QueryTrait\Filterable;

    protected static $tablename = 'payment_methods';

}