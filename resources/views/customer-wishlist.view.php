<!DOCTYPE html>
<html lang="en">

<head>
    <?php include 'partials/meta.view.php'; ?>
    <title>Wishlist</title>
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
                <?php include 'partials/customer/sidebar.view.php';?>
                <?php include 'content/customer/account-wishlist.view.php'; ?>
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
