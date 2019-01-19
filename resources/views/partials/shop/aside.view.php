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
                    <?= in_array($brand['brand_name'], $brands_selected) ? 'checked' : '' ;?>
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
                    <?= in_array($category['category_name'], $categories_selected) ? 'checked' : '' ;?>
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
		<h3 class="aside-title">Filter by Gender</h3>
		<ul class="list-links">
			
            <div class="input-radio">
                <input type="radio" name="gender" value="0" <?= $gender_selected == 0 ? 'checked' : ''?>>
                <label>Female</label>
            </div>
            <div class="input-radio">
                <input type="radio" name="gender" value="1" <?= $gender_selected == 1 ? 'checked' : ''?>>
                <label>Male</label>
            </div>
            <div class="input-radio">
                <input type="radio" name="gender" value="2" <?= $gender_selected == 2 ? 'checked' : ''?>>
                <label>Bi-sexual</label>
            </div>
            <div class="input-radio">
                <input type="radio" name="gender" value="3" <?= $gender_selected === 3 ? 'checked' : ''?> >
                <label>None</label>
            </div>
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