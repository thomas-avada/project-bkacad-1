<?php
namespace App\Model;

use App\Core\Database\Facade\Model;

class Wishlist extends Model
{
    use \App\Model\QueryTrait\Filterable;

    protected static $tablename = 'wishlists';

}