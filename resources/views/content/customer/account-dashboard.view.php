
<div class="col-md-9">
	<div class="row">
		<div class="col-md-12">
			<div class="section-title">
				<h4 class="title">Account Information</h4>
			</div>
			<div class="row">
				<div class="col-md-9">
					<p>
						<strong>Customer Name: </strong>
						<?= $user['firstname'] ?> <?= $user['lastname'] ?>
					</p>
					<p>
						<strong>Customer Email: </strong>
						<?= $user['email'] ?>
					</p>
					<p>
						<strong>Customer Tel: </strong>
						<?= $user['tel'] ?>
					</p>
				</div>
				<div class="col-md-3">
					<img src="/public/storage/<?= $user['avatar'] ?>" class="img-circle img-responsive">
				</div>
			</div>
		</div>
		<div class="col-md-12">
			<div class="section-title">
				<h4 class="title">Account Address</h4>
			</div>
			<p>
				<strong>Address: </strong>
				<?= $user['address'] ?>
			</p>
			<p>
				<strong>City: </strong>
				<?= $user['city'] ?>
			</p>
			<p>
				<strong>Country: </strong>
				<?= $user['country'] ?>
			</p>
		</div>
		<div class="col-md-12">
			<div class="section-title">
				<h4 class="title">Order History</h4>
			</div>
			<table class="table table-striped">
			    <thead>
			      <tr>
			        <th>ID</th>
			        <th>Ship To Name</th>
			        <th>Bill to Name</th>
			        <th>Subtotal</th>
			        <th>Date</th>
			      </tr>
			    </thead>
			    <tbody>
			    <?php foreach ($orders as $order): ?>
				    <tr>
				        <td><?=$order['order_id']?></td>
				        <td><?=$order['shipping_firstname']?> <?=$order['shipping_lastname']?></td>
				        <td><?=$order['billing_firstname']?> <?=$order['billing_lastname']?></td>
				        <td><?=currency_price($order['subtotal'])?></td>
				        <td><?=$order['created_at']?></td>
				     </tr>
			    <?php endforeach ?>
			    </tbody>
			  </table>
			  <?php component('pagination', compact('pagination', 'page'));?>
		</div>
	</div>

</div>