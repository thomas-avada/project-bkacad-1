<?php
    use App\Model\Brand;
    use App\Model\Category;
    $brands = Brand::all();
    $categories = Category::all();

?>
<div id="aside" class="col-md-3">
	<!-- aside widget -->
	<div class="aside">
		<button class="primary-btn btn-filter" style="width: 100%">Filter</button>
	</div>
	<!-- /aside widget -->

    <!-- aside widget -->
    <div class="aside">
        <h3 class="aside-title">Filter by Brand</h3>
        <ul class="list-links">
            <?php foreach ($brands as $brand) : ?>
                <div class="input-radio">
                    <input
                    type="checkbox"
                    name="brands[]"
                    value="<?= $brand['brand_name'] ;?>"
                    <?= $brand['brand_name'] == $brand_selected ? 'checked' : '' ;?>
                    >
                    <label>
                        <?= $brand['brand_name'] ;?>
                    </label>
                </div>
            <?php endforeach;?>
        </ul>
    </div>
    <!-- /aside widget -->
    <!-- aside widget -->
    <div class="aside">
        <h3 class="aside-title">Filter by Category</h3>
        <ul class="list-links">
            <?php foreach ($categories as $category) : ?>
                <div class="input-radio">
                    <input
                    type="checkbox"
                    name="categories[]"
                    value="<?= $category['category_name'] ;?>"
                    <?= $category['category_name'] == $category_selected ? 'checked' : '' ;?>
                    >
                    <label>
                        <?= $category['category_name'] ;?>
                    </label>
                </div>
            <?php endforeach;?>
        </ul>
    </div>
    <!-- /aside widget -->

    <!-- aside widget -->
	<div class="aside">
		<h3 class="aside-title">Filter by Price</h3>
		<div id="price-slider"></div>
	</div>


	<!-- aside widget -->

	<!-- aside widget -->
	<div class="aside">
		<h3 class="aside-title">Filter By Color:</h3>
		<ul class="color-option">
			<li><a href="#" style="background-color:#475984;"></a></li>
			<li><a href="#" style="background-color:#8A2454;"></a></li>
			<li class="active"><a href="#" style="background-color:#BF6989;"></a></li>
			<li><a href="#" style="background-color:#9A54D8;"></a></li>
			<li><a href="#" style="background-color:#675F52;"></a></li>
			<li><a href="#" style="background-color:#050505;"></a></li>
			<li><a href="#" style="background-color:#D5B47B;"></a></li>
		</ul>
	</div>
	<!-- /aside widget -->

	<!-- aside widget -->
	<div class="aside">
		<h3 class="aside-title">Filter By Size:</h3>
		<ul class="size-option">
			<li class="active"><a href="#">S</a></li>
			<li class="active"><a href="#">XL</a></li>
			<li><a href="#">SL</a></li>
		</ul>
	</div>
	<!-- /aside widget -->

	<!-- aside widget -->
	<div class="aside">
		<h3 class="aside-title">Filter by Gender</h3>
		<ul class="list-links">
			<li class="active"><a href="#">Men</a></li>
			<li><a href="#">Women</a></li>
		</ul>
	</div>
	<!-- /aside widget -->

	<!-- aside widget -->
	<div class="aside">
		<h3 class="aside-title">Top Rated Product</h3>
		<!-- widget product -->
		<div class="product product-widget">
			<div class="product-thumb">
				<img src="/resources/assets/img/thumb-product01.jpg" alt="">
			</div>
			<div class="product-body">
				<h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
				<h3 class="product-price">$32.50 <del class="product-old-price">$45.00</del></h3>
				<div class="product-rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o empty"></i>
				</div>
			</div>
		</div>
		<!-- /widget product -->

		<!-- widget product -->
		<div class="product product-widget">
			<div class="product-thumb">
				<img src="/resources/assets/img/thumb-product01.jpg" alt="">
			</div>
			<div class="product-body">
				<h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
				<h3 class="product-price">$32.50</h3>
				<div class="product-rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o empty"></i>
				</div>
			</div>
		</div>
		<!-- /widget product -->
	</div>
	<!-- /aside widget -->
</div>