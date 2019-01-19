<!DOCTYPE html>
<html>
<head>
	<title>Test products</title>
</head>
<body>
	<!-- PHTML -->
	<?php foreach ($products as $product): ?>
		<li><?php echo $product['product_name']?></li>
	<?php endforeach ?>
</body>
</html>