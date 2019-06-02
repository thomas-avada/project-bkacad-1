<div class="product product-single">
    <div class="product-thumb">
        <div class="product-label">
            <?php
                if(Carbon\Carbon::now()->subweek() < new DateTime($product['created_at'])){
                    echo "<span>New</span>";
                }
            ?>          
            <!-- <span class="sale">-20%</span> -->
        </div>
        <a href="/products?s=<?=$product['slug']?>" class="product-img-wrapper">
            <img class="img-responsive" src="<?=$product['img'];?>" alt=''>
        </a>
    </div>
    <div class="product-body">
        <h3 class="product-price"><?=currency_price($product['price'])?></h3>
        <div class="product-rating">
            <?php for($i= 1; $i <= 5; $i++): ?>
                <i class="<?= $i <= $product['rating'] ? 'fa fa-star' : 'fa fa-star-o empty' ?>"></i>
            <?php endfor?>
        </div>
        <h2 class="product-name"><a href="/products?s=<?=$product['slug']?>"><?= $product['product_name'] ?></a></h2>
        <div class="product-btns">
            <?php if (session()->isLoggedIn()): ?>
            <button class="main-btn icon-btn add-wishlist-btn <?=in_array($product['id'], $wishlists) ? 'active': ''?>"
            data-id="<?=$product['id']?>"
            >
                <i class="fa fa-heart"></i>
            </button>
<!--             <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button> -->
            <?php endif ?>         
            <button class="primary-btn add-to-cart"
                data-id="<?=$product['id']?>"
                data-name="<?=$product['product_name']?>"
                data-price="<?=$product['price']?>"
                data-img="<?=$product['img']?>"
                data-slug="<?=$product['slug']?>"
            >
                <i class="fa fa-shopping-cart"></i> Add to Cart
            </button>
        </div>
    </div>
</div>