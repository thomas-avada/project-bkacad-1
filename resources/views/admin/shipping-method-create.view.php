<!DOCTYPE html>
<html lang="en">
<head>
    <?php include 'partials/meta.view.php'; ?>

    <title>Admin | Shipping Methods</title>

    <?php include 'partials/css.view.php'; ?>
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <?php include 'partials/sidebar.view.php'; ?>

        <!-- top navigation -->
        <?php include 'partials/topnav.view.php'; ?>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="row">
                <!-- Alert box -->
                <?php include 'partials/alert.view.php'; ?>
                <!--/Alert box -->
                <!--Main content -->
                <?php include 'content/shipping-methods/create.view.php'; ?>
                <!--/Main content -->
            </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <?php include 'partials/footer.view.php'; ?>
        <!-- /footer content -->
    </div>
</div>

<?php include 'partials/script.view.php'; ?>
</body>
</html>