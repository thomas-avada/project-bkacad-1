<!DOCTYPE html>
<html>
<head>
	<title>PHP back to basic</title>
</head>
<body>	
	<?php include 'partials/nav.view.php'; ?>
	<form method="POST" action="/send">
		<label>Type in something</label>
		<input type="text" name="body">
		<button type="submit">Submit</button>
	</form>
</body>
</html>