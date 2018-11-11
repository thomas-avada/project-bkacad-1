<!DOCTYPE html>
<html>
<head>
	<title>PHP back to basic</title>
</head>
<body>	
	<?php include 'partials/nav.view.php'; ?>
	<?php foreach($products as $product): ?>
		<p><?= $product->product_name ?></p>
	<?php endforeach;?>
</body>
</html>