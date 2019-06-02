
<!--section -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<!--  Product Details -->
			<div class="product product-details clearfix">
				<?php component('product-detail', compact('product', 'review_count', 'wishlists'));?>
				<div class="col-md-12">
					<div class="product-tab">
						<ul class="tab-nav">
							<li class="active"><a data-toggle="tab" href="#tab1">Reviews (<?=$review_count?>)</a></li>
							<li ><a data-toggle="tab" href="#tab2">Product Description</a></li>
						</ul>
						<div class="tab-content">		
							<div id="tab1" class="tab-pane fade in active">
								<div class="row">
									<div class="col-md-6">
										<div class="product-reviews">
											<?php if($review_count > 0):?>
												<?php foreach ($reviews as $review): ?>
													<?php component('review', compact('review'));?>
												<?php endforeach ?>
												<?php component('pagination', compact('pagination', 'page'));?>		
											<?php else: ?>
												<p>There is no reviews yet</p>
											<?php endif ?>
										</div>
									</div>
									<div class="col-md-6">
										<?php if (session()->isLoggedIn()): ?>
										<h4 class="text-uppercase">Write Your Review</h4>
										<p>Your email address will not be published.</p>
										<form class="review-form" action="/reviews" method="POST">
											<input type="hidden" name="product_id" value="<?=$product['product_id']?>">
											<div class="form-group">
												<textarea class="input" placeholder="Your review" name="body" required></textarea>
											</div>
											<div class="form-group">
												<div class="input-rating">
													<strong class="text-uppercase">Your Rating: </strong>
													<div class="stars">
														<input type="radio" id="star5" name="rating" value="5" /><label for="star5"></label>
														<input type="radio" id="star4" name="rating" value="4" /><label for="star4"></label>
														<input type="radio" id="star3" name="rating" value="3" /><label for="star3"></label>
														<input type="radio" id="star2" name="rating" value="2" /><label for="star2"></label>
														<input type="radio" id="star1" name="rating" value="1" /><label for="star1"></label>
													</div>
												</div>
											</div>
											<button class="primary-btn" type="submit">Submit</button>
										</form>
										<?php else: ?>
										<h4 class="text-uppercase">Write Your Review</h4>
										<a href="javascript:void(0)" data-toggle="modal" data-target="#loginBackModal">Login first to leave review</a>

										<?php component('modal/login-review') ?>
										<?php endif ?>
									</div>
								</div>
							</div>
							<div id="tab2" class="tab-pane fade in ">
								<?=$product['rich_description'] ?>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- /Product Details -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /section