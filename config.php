<?php

return [
	'database' => [
		'driver' => 'mysql',
		'host' => 'localhost',
		'dbname' => 'electro-ecommerce',
		'login' => 'admin',
		'password' => 'tuananhnd99',
		'options' => [
			PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
		]
	]
];