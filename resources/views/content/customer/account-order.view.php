
<div class="col-md-9">
	<div class="row">
		<div class="col-md-12">
			<div class="section-title">
				<h4 class="title">Order ID: #<?=$order['order_id']?> - <?=$order['invoiced'] ? 'Complete' : 'Processing' ?></h4>
			</div>
			<div class="row">
				<div class="col-md-4">
					<h4>Shipping Information</h4>
					<p>
						<strong>Shipping Method: </strong>
						<?= $order['shipping_method'] ?>
					</p>
					<p>
						<strong>Ship To Name: </strong>
						<?= $order['shipping_firstname'] ?> <?= $order['shipping_lastname'] ?>
					</p>
					<p>
						<strong>Ship Email: </strong>
						<?= $order['shipping_email'] ?>
					</p>
					<p>
						<strong>Shipping address: </strong>
						<address><?= $order['shipping_address'] ?></address>
						<address><?=$order['shipping_city'] ?>, <?=$order['shipping_country']?></address>
					</p>
					<p>
						<strong>Shipping Tel: </strong>
						<?= $order['shipping_tel'] ?>
					</p>

				</div>
				<div class="col-md-4">
					<h4>Billing Information</h4>
					<p>
						<strong>Payment Method: </strong>
						<?= $order['payment_method'] ?>
					</p>
					<p>
						<strong>Bill To Name: </strong>
						<?= $order['billing_firstname'] ?> <?= $order['billing_lastname'] ?>
					</p>
					<p>
						<strong>Billing Email: </strong>
						<?= $order['billing_email'] ?>
					</p>
					<p>
						<strong>Billing address: </strong>
						<address><?= $order['billing_address'] ?></address>
						<address><?=$order['billing_city'] ?>, <?=$order['billing_country']?></address>
					</p>
					<p>
						<strong>Billing Tel: </strong>
						<?= $order['billing_tel'] ?>
					</p>

				</div>
				<div class="col-md-4">
					<h4>Extra</h4>
					<p>
						<strong>Order Date: </strong>
						<?= $order['created_at'] ?>
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h4>Order Summary</h4>
					<table class="table table-striped">
					    <thead>
					      <tr>
					        <th>ID</th>
					        <th>Product Name</th>
					        <th>Price</th>
					        <th>Quantity</th>
					        <th>Subtotal</th>
					      </tr>
					    </thead>
					    <tbody>
					    <?php foreach ($products as $index => $product): ?>
						    <tr>
						        <td><?=$index +1 ?></td>
						        <td><?=$product['product_name']?></td>
						        <td><?=currency_price($product['price'])?></td>
						        <td><?=$product['item_qty']?></td>
						        <td><?=currency_price($product['price'] * $product['item_qty'])?></td>
						     </tr>
					    <?php endforeach ?>
					    	<tfoot>
								<tr>
									<th class="empty" colspan="3"></th>
									<th>SUBTOTAL</th>
									<th colspan="2" class="sub-total"><?=currency_price($order['subtotal'])?></th>
								</tr>
								<tr>
									<th class="empty" colspan="3"></th>
									<th>SHIPING</th>
									<td colspan="2" class="shipping-fee"><?=currency_price($order['shipping_fee'])?></td>
								</tr>
								<tr>
									<th class="empty" colspan="3"></th>
									<th>TOTAL</th>
									<th colspan="2" class="total"><?=currency_price($order['grand_total'])?></th>
								</tr>
							</tfoot>
					    </tbody>
					  </table>
				</div>
			</div>
		</div>
	</div>

</div>