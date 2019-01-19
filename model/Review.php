<?php
namespace App\Model;

use App\Core\Database\Facade\Model;

class Review extends Model
{
    use \App\Model\QueryTrait\Filterable;

    protected static $tablename = 'reviews';

}