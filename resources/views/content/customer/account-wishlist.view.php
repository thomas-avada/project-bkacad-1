<div class="col-md-9">
	<div class="row">
		<div class="col-md-12">
			<div class="section-title">
				<h4 class="title">Wishlist</h4>
			</div>
			<table class="table table-striped">
			    <thead>
			      <tr>
			        <th>ID</th>
			        <th>Product Name</th>
			        <th>Price</th>
			        <th>Action</th>
			      </tr>
			    </thead>
			    <tbody>
			    <?php foreach ($products as $product): ?>
				    <tr>
				        <td><?=$product['id'] ?></td>
				        <td><?=$product['product_name']?></td>
				        <td><?=currency_price($product['price'])?></td>
				        <td><a href="/products?s=<?=$product['slug']?>">
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