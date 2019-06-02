<?php
namespace App\Model\Backend;

use App\Core\Database\Facade\Model;

class Config extends Model
{
    protected static $tablename = 'core_config';

    protected $_cache = [];

    public static function getCurrencyConfig()
    {
    	$rows = self::select()->where('path', 'like', "%/config/currency/%")->get();
    	$configData = [];
    	foreach ($rows as $row) {
    		$configData[$row['path']] = $row['value'];
    	}
    	return $configData;
    }
}