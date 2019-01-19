<!-- HOME -->
<div id="home">
	<!-- container -->
	<div class="container">
		<!-- home wrap -->
		<div class="home-wrap">
			<!-- home slick -->
			<div id="home-slick">
				<!-- banner -->
				<div class="banner banner-1">
					<img src="/resources/assets/img/banner001.jpg" alt="">
					<div class="banner-caption text-center">
						<h1 style="color: white">Get your new shoes</h1>
						<h3 class="white-color font-weak">Up to 50% Discount</h3>
						<a class="primary-btn" href="/shop?keyword=&categories[]=Shoes&order=price&direction=asc&limit=9&page=1&minprice=0&maxprice=10000">Shop Now</a>
					</div>
				</div>
				<!-- /banner -->

				<!-- banner -->
				<div class="banner banner-1">
					<img src="/resources/assets/img/banner002.jpg" alt="">
					<div class="banner-caption">
						<h1 class="primary-color">HOT DEAL<br><span class="white-color font-weak">Up to 50% OFF</span></h1>
						<button class="primary-btn">Shop Now</button>
					</div>
				</div>
				<!-- /banner -->

				<!-- banner -->
				<div class="banner banner-1">
					<img src="/resources/assets/img/banner003.jpg" alt="">
					<div class="banner-caption">
						<h1 class="white-color">New Product <span>Collection</span></h1>
						<button class="primary-btn">Shop Now</button>
					</div>
				</div>
				<!-- /banner -->
			</div>
			<!-- /home slick -->
		</div>
		<!-- /home wrap -->
	</div>
	<!-- /container -->
</div>
<!-- /HOME -->
<!-- section -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<!-- section title -->
			<div class="col-md-12">
				<div class="section-title">
					<h2 class="title">Latest Products</h2>
					<div class="pull-right">
						<div class="latest-product-slick-dots custom-dots"></div>
					</div>
				</div>
			</div>
			<!-- section title -->
			<div class="col-md-3 col-sm-6 col-xs-6">
				<div class="banner banner-2">
					<img src="/resources/assets/img/bannerx1.jpg" alt="">
					<div class="banner-caption">
						<h2 class="white-color">NEW<br>COLLECTION</h2>
						<button class="primary-btn">Shop Now</button>
					</div>
				</div>
			</div>
			
			<!-- Product Slick -->
			<div class="col-md-9 col-sm-6 col-xs-6">
				<div class="row">
					<div id="latest-product-slick" class="product-slick">
						<?php foreach ($latest_products as $product): ?>
						<!-- Product Single -->
						<div class="col-md-3 col-sm-6 col-xs-6">
							<?php component('product', compact('product')); ?>
						</div>
						<!-- /Product Single -->
						<?php endforeach ?>
					</div>
				</div>
			</div>
			<!-- /Product Slick -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /section -->
<!-- section -->
<div class="section section-grey">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<!-- banner -->
			<div class="col-md-8">
				<div class="banner banner-1">
					<img src="/resources/assets/img/bannerx2.jpg" alt="">
					<div class="banner-caption text-center">
						<h1 class="primary-color">HOT DEAL<br><span class="white-color font-weak">Up to 50% OFF</span></h1>
						<button class="primary-btn">Shop Now</button>
					</div>
				</div>
			</div>
			<!-- /banner -->

			<!-- banner -->
			<div class="col-md-4 col-sm-6">
				<a class="banner banner-1" href="#">
					<img src="/resources/assets/img/collect2.jpg" alt="">
					<div class="banner-caption text-center">
						<h2 class="white-color">NEW COLLECTION</h2>
					</div>
				</a>
			</div>
			<!-- /banner -->

			<!-- banner -->
			<div class="col-md-4 col-sm-6">
				<a class="banner banner-1" href="#">
					<img src="/resources/assets/img/collect3.jpg" alt="">
					<div class="banner-caption text-center">
						<h2 class="white-color">NEW COLLECTION</h2>
					</div>
				</a>
			</div>
			<!-- /banner -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /section -->

<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<!-- section title -->
			<div class="col-md-12">
				<div class="section-title">
					<h2 class="title">Best Seller</h2>
					<div class="pull-right">
						<div class="latest-product-slick-dots custom-dots"></div>
					</div>
				</div>
			</div>
			<!-- section title -->			
			<!-- Product Slick -->
			<div class="col-md-12 col-sm-6 col-xs-6">
				<div class="row">
					<div id="latest-product-slick" class="product-slick">
						<?php foreach ($best_sellers as $product): ?>
						<!-- Product Single -->
						<div class="col-md-3 col-sm-6 col-xs-6">
							<?php component('product', compact('product')); ?>
						</div>
						<!-- /Product Single -->
						<?php endforeach ?>
					</div>
				</div>
			</div>
			<!-- /Product Slick -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /section -->

