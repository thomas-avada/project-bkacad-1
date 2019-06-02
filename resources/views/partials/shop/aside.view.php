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
        <h3 class="aside-title" data-toggle="collapse" data-target="#brand-filter">
            Filter by Brand <i class="fa fa-caret-down"></i>
        </h3>
        <ul class="list-links <?= $brands_selected ? '' :'collapse'?>" id="brand-filter">
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
        <h3 class="aside-title" data-toggle="collapse" data-target="#category-filter">
            Filter by Category <i class="fa fa-caret-down"></i>
        </h3>
        <ul class="list-links <?= $categories_selected ? '' :'collapse'?>" id="category-filter">
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
		<h3 class="aside-title" data-toggle="collapse" data-target="#gender-filter">
            Filter by Gender <i class="fa fa-caret-down"></i>
        </h3>
		<ul class="list-links <?= $gender_selected  ? '' :'collapse'?>" id="gender-filter">
			
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
	<div class="aside hidden-xs">
		<h3 class="aside-title">Top Rated Product</h3>
        <?php foreach ($top_rateds as $product): ?>
        <!-- widget product -->
        <div class="product product-widget">
            <div class="product-thumb">
                <a href="/products?s=<?=$product['slug']?>" >
                    <img class="img-responsive" src="<?=$product['img'];?>" alt=''>
                </a>
            </div>
            <div class="product-body">
                <h2 class="product-name"><a href="/products?s=<?=$product['slug']?>"><?=$product['product_name']?></a></h2>
                <h3 class="product-price"><?=currency_price($product['price'])?> 
                   <!--  <del class="product-old-price">$45.00</del> -->
                </h3>
                <div class="product-rating">
                    <?php for($i= 1; $i <= 5; $i++): ?>
                        <i class="<?= $i <= $product['rating'] ? 'fa fa-star' : 'fa fa-star-o empty' ?>"></i>
                    <?php endfor?>
                </div>
            </div>
        </div>
        <!-- /widget product --> 
        <?php endforeach ?>
		
	</div>
	<!-- /aside widget -->
</div>