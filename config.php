<?php

return [
	'database' => [
		'driver' => 'mysql',
		'host' => 'localhost',
		'dbname' => 'bkacad_ecommerce',
		'login' => 'root',
		'password' => '',
		'options' => [
			PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
		]
	]
];