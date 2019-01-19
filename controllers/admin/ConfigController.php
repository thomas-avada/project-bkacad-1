<?php
namespace App\Controllers\Admin;

use App\Model\Backend\Config;

class ConfigController
{
    public function currency()
    {
    	$configs = Config::select()->where('path', 'like', '%/config/currency/%')->get();
    	$configData = [];
    	foreach($configs as $config){
    		$configData[$config['path']] = $config['value'];
    	}
        return view('admin/configuration/currency-config', compact('configData'));
    }

    public function currencyPost()
    {
    	$fields = request()->all();
        $config = Config::select()->where('path', 'like', "%/config/currency/%")->get();
        if(!$config){
        	foreach ($fields as $key => $value) {
        		Config::insert([
        			'path' => $key,
        			'value' => $value
        		])->execute();
        	}
        	return redirect()->back();
        } else {
        	foreach ($fields as $key => $value) {
        		Config::update([
        			'value' => $value
        		])->where('path', $key)->execute();
        		
        	}
        	return redirect()->back();
        }
    }
}