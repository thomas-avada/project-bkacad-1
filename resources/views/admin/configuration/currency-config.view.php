<!DOCTYPE html>
<html lang="en">
  <head>
    <?php include view_apath('partials/meta.view.php'); ?>

    <title>Admin | Configuration</title>

    <?php include view_apath('partials/css.view.php'); ?>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <?php include view_apath('partials/sidebar.view.php'); ?>

        <!-- top navigation -->
        <?php include view_apath('partials/topnav.view.php'); ?>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="row">
            <!-- Alert box -->
            <?php include view_apath('partials/alert.view.php'); ?>
            <!--/Alert box -->
            <?php include view_apath('content/configuration/currency.view.php'); ?>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <?php include view_apath('partials/footer.view.php'); ?>
        <!-- /footer content -->
      </div>
    </div>
    <?php include view_apath('partials/script.view.php'); ?>
  </body>
</html>