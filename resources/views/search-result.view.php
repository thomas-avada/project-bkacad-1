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

<!-- Alert box -->
<?php include 'partials/alert.view.php'; ?>
<!--/Alert box -->

<!-- Main content -->
<main>
    <!-- section -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
            	<div id="main" class="col-md-12">
            		<!-- STORE -->
					<div id="store">
						<!--row-->
						<?php if($count): ?>
						<p><?=$count?> products found</p>
						<?php endif ?>
						<p></p>
						<!--/row-->
					    <!-- row -->
					    <div class="row">
					    	<?php foreach ($products as $product): ?>
				            	<!-- Product Single -->
					            <div class="col-md-3 col-sm-6 col-xs-6">
					                <?php component('product', compact('product')); ?>
					            </div>
					            <!-- /Product Single -->
				            <?php endforeach ?>
					    </div>
					</div>	
            	</div>  
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /section -->
</main>
<!-- /Main content -->

<!-- FOOTER -->
<?php include 'partials/footer.view.php'; ?>
<!-- /FOOTER -->

<!-- jQuery Plugins -->
<?php include 'partials/script.view.php'; ?>

</body>

</html>
