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
	
	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<form id="checkout-form" class="clearfix" action="checkout" method="POST">


					<div class="col-md-6">
						<?php include('partials/checkout/shipping-methods.view.php')?>	
					</div>

					<div class="col-md-6">
						<?php include('partials/checkout/billing.view.php') ?>

						<?php include('partials/checkout/payment-methods.view.php')?>
					</div>

					<div class="col-md-12">
						<div class="order-summary clearfix">
							<div class="section-title">
								<h3 class="title">Order Review</h3>
							</div>
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
									<?php
									use App\Core\Facade\Cart;
									use App\Core\Facade\Total;
									if(session()->isLoggedIn()){
									    $cartItems = Cart::all();
									}
									?>
									<?php foreach ($cartItems as $item) :?>										
										<?php component('checkout/product', compact('item')) ?>
									<?php endforeach; ?>
								</tbody>
								<tfoot style="position: relative;">
									<div class="loader-block" style="display: none" >
										<img class="loader" src="/public/storage/loader/loader.gif">
									</div>
									<tr>
										<th class="empty" colspan="3"></th>
										<th>SUBTOTAL</th>
										<th colspan="2" class="sub-total"><?=currency_price(Cart::total())?></th>
									</tr>
									<tr>
										<th class="empty" colspan="3"></th>
										<th>SHIPING</th>
										<td colspan="2" class="shipping-fee"><?=currency_price(Total::getShippingFee())?></td>
									</tr>
									<tr>
										<th class="empty" colspan="3"></th>
										<th>TOTAL</th>
										<th colspan="2" class="total"><?=currency_price(Total::getGrandTotal())?></th>
									</tr>
								</tfoot>
							</table>
							<div class="pull-right">
								<button class="primary-btn" type="submit">Place Order</button>
							</div>
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
