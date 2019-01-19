<!DOCTYPE html>
<html lang="en">

<head>
    <?php include 'partials/meta.view.php'; ?>
    <title>Success</title>
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
                <div class="alert alert-success">
                  <strong>Your order has been recorded successfully!</strong> Click <a href="/">here</a> to continue shopping
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
