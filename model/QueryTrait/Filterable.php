<?php
namespace App\Model\QueryTrait;

trait Filterable
{
    public static function adminFilter($filters)
    {
        $query = static::selectColumns();
        if(isset($filters['order'])){
            $direction = isset($filters['direction']) ? $filters['direction'] : 'desc';
            $query = $query->orderBy($filters['order'], $direction);
        }
        $page = isset($filters['page']) ? request('page') - 1 : 0;
        $limit = isset($filters['limit']) ? request('limit') : 10;
        $query = $query->page($page, $limit);
        return $query;
    }

    public static function selectColumns()
    {
        return self::select();
    }
}