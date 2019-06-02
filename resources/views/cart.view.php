<!DOCTYPE html>
<html lang="en">

<head>
	<?php include 'partials/meta.view.php'; ?>
	<title>Checkout</title>
	<?php include 'partials/css.view.php';?>
</head>

<body>
	<!-- HEADER -->
	<?php include 'partials/header.view.php'; ?>
	<!-- /HEADER -->

	<!-- NAVIGATION -->
	<?php include 'partials/nav.view.php';?>
	<!-- /NAVIGATION -->

	<!-- Alert box -->
	<?php include 'partials/alert.view.php'; ?>
	<!--/Alert box -->

    <?php
        use App\Core\Facade\Cart;
        if(session()->isLoggedIn()){
            $cartItems = Cart::all();
        }
    ?>
	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<form id="cart-form" class="clearfix">
					<div class="col-md-12">
						<div class="order-summary clearfix">
							<div class="section-title">
								<h3 class="title">Cart Summary</h3>
							</div>
                            <?php if (!Cart::isEmpty()): ?>
							<table class="shopping-cart-table table">
								<thead>
									<tr>
										<th>Product</th>
										<th></th>
										<th class="text-center">Price</th>
										<th class="text-center">Quantity</th>
										<th class="text-center">Total</th>
										<th class="text-right"></th>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($cartItems as $item) :?>										
										<?php component('cart/product', compact('item')) ?>
									<?php endforeach; ?>
								</tbody>
								<tfoot>
									<tr>
										<th class="empty" colspan="3">
											<a class="primary-btn btn-update-cart" href="javascript:void(0)">Update Cart</a>
											<a class="btn-empty-cart" href="javascript:void(0)">Empty Cart</a>
										</th>
										<th>SUBTOTAL</th>
										<th colspan="2" class="sub-total"><?=currency_price(Cart::total())?></th>
									</tr>
								</tfoot>
							</table>
                            <div class="pull-right">
                                <a class="primary-btn" href="/checkout">Go to Checkout</a>
                            </div>
                            <?php else: ?>
                            <h2>Your cart is currently empty.</h2>
                            <?php endif;?>
						</div>
					</div>
				</form>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	<!-- FOOTER -->
	<?php include 'partials/footer.view.php'; ?>
	<!-- /FOOTER -->

	<!-- jQuery Plugins -->
	<?php include 'partials/script.view.php'; ?>

</body>

</html>
