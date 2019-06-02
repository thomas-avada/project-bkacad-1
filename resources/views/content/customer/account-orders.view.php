
<div class="col-md-9">
	<div class="row">
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
			        <th>Grand Total</th>
			        <th>Status</th>
			        <th>Date</th>
			        <th>Action</th>
			      </tr>
			    </thead>
			    <tbody>
			    <?php foreach ($orders as $order): ?>
				    <tr>
				        <td><?=$order['order_id']?></td>
				        <td><?=$order['shipping_firstname']?> <?=$order['shipping_lastname']?></td>
				        <td><?=$order['billing_firstname']?> <?=$order['billing_lastname']?></td>
				        <td><?=currency_price($order['grand_total'])?></td>
				        <td><?=order_status($order['status']) ?></td>
				        <td><?=$order['created_at']?></td>
				        <td><a href="/customer/order?id=<?=$order['order_id']?>">
				        	View
				        </a></td>
				     </tr>
			    <?php endforeach ?>
			    </tbody>
			  </table>
			  <?php component('pagination', compact('pagination', 'page'));?>
		</div>
	</div>

</div>