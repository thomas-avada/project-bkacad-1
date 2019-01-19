<?php
namespace App\Model;

use App\Core\Database\Facade\Model;

class Billing extends Model
{
    use \App\Model\QueryTrait\Filterable;
    
	protected static $tablename = 'billings';

	
}