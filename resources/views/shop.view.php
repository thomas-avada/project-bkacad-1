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

<!-- Main content -->
<main>
    <!-- section -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- ASIDE -->
                <?php include('partials/shop/aside.view.php'); ?>
                <!-- /ASIDE -->

                <!-- MAIN -->
                <?php include ('partials/shop/main.view.php'); ?>
                <!-- /MAIN -->
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
