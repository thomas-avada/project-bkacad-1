<!DOCTYPE html>
<html lang="en">
<head>
	<?php include 'partials/meta.view.php'; ?>
	<title>E-SHOP HTML Template</title>
	<?php include 'partials/css.view.php'; ?>
</head>


<body>
<!-- HEADER -->
<?php include 'partials/header.view.php'; ?>
<!-- /HEADER -->

<!-- NAVIGATION -->
<?php include 'partials/nav.view.php'; ?>
<!-- /NAVIGATION -->

<!-- BREADCRUMB -->
<?php include 'partials/breadcrumb.view.php'; ?>
<!-- /BREADCRUMB -->

<!-- Alert box -->
<?php include 'partials/alert.view.php'; ?>
<!--/Alert box -->

<?php if (session()->isLoggedIn()){
	echo "<pre>";
	print_r(session()->all());
	echo "</pre>";
} 
?>

<!-- FOOTER -->
<?php include 'partials/footer.view.php'; ?>
<!-- /FOOTER -->

<!-- jQuery Plugins -->
<?php include 'partials/script.view.php'; ?>

</body>

</html>
