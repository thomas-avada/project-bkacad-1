<div class="col-md-6">
	<div id="product-main-view">
		<?php $images = json_decode($product['images']); ?>
		<?php if(!is_null($images)): ?>
			<?php foreach($images as $image): ?>
			<div class="product-view">
				<img src="<?=$image?>" alt="">
			</div>
			<?php endforeach?>
		<?php else: ?>
		<div class="product-view">
			<img src="<?=$product['img'];?>" alt="">
		</div>
		<?php endif ?>
	</div>
	<div id="product-view">
		<?php if(!is_null($images)): ?>
			<?php foreach($images as $image): ?>
			<div class="product-view">
				<img src="<?=$image?>" alt="">
			</div>
			<?php endforeach?>
		<?php else: ?>
		<div class="product-view">
			<img src="<?=$product['img'];?>" alt="">
		</div>
		<?php endif ?>
	</div>
</div>
<div class="col-md-6">
	<div class="product-body">
		<div class="product-label">
			<?php
                if(Carbon\Carbon::now()->subweek() < new DateTime($product['created_at'])){
                    echo "<span>New</span>";
                }
            ?> 
	<!-- 		<span class="sale">-20%</span> -->
		</div>
		<h2 class="product-name"><?=$product['product_name'];?></h2>
		<h3 class="product-price"><?=currency_price($product['price']);?></h3>
		<div>
			<div class="product-rating">
			<?php for($i= 1; $i <= 5; $i++): ?>
                <i class="<?= $i <= $product['rating'] ? 'fa fa-star' : 'fa fa-star-o empty' ?>"></i>
            <?php endfor?>
			</div>
			<a href="#"><?=$review_count?> Review(s) / Add Review</a>
		</div>
		<p><strong>Availability:</strong> 
			<?= $product['status'] ? 'In Stock' : 'Out of stock'; ?>
		</p>
		<p><strong>Brand:</strong> <?= $product['brand_name'];?></p>
		<p><strong>Category:</strong> <?= $product['category_name'];?></p>
		<p><?=$product['description']?></p>
<!-- 		<div class="product-options">
			<ul class="size-option">
				<li><span class="text-uppercase">Size:</span></li>
				<li class="active"><a href="#">S</a></li>
				<li><a href="#">XL</a></li>
				<li><a href="#">SL</a></li>
			</ul>
			<ul class="color-option">
				<li><span class="text-uppercase">Color:</span></li>
				<li class="active"><a href="#" style="background-color:#475984;"></a></li>
				<li><a href="#" style="background-color:#8A2454;"></a></li>
				<li><a href="#" style="background-color:#BF6989;"></a></li>
				<li><a href="#" style="background-color:#9A54D8;"></a></li>
			</ul>
		</div> -->

		<div class="product-btns">
			<div class="qty-input">
				<span class="text-uppercase">QTY: </span>
				<input class="input" type="number" name="qty" min='1'>
			</div>
			<button class="primary-btn add-to-cart"
                data-id="<?=$product['product_id']?>"
                data-name="<?=$product['product_name']?>"
                data-price="<?=$product['price']?>"
                data-img="<?=$product['img']?>"
            >
                <i class="fa fa-shopping-cart"></i> Add to Cart
            </button>
            <?php if (session()->isLoggedIn()): ?>
            <div class="pull-right">
				<button class="main-btn icon-btn add-wishlist-btn <?=in_array($product['product_id'], $wishlists) ? 'active': ''?>"
	            data-id="<?=$product['product_id']?>"
	            >
	                <i class="fa fa-heart"></i>
	            </button>
			</div>
            <?php endif ?>
			
		</div>
	</div>
</div>