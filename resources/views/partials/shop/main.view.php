<div id="main" class="col-md-9">
    <!-- store top filter -->
    <div class="store-filter clearfix">
        <div class="pull-left">
            <div class="sort-filter">
                <span class="text-uppercase">Sort By:</span>
                <select class="input" id="orderBy" name="order">
                    <option value="price" <?= $order == 'price' ? 'selected' : ''; ?>>Price</option>
                    <option value="created_at" <?= $order == 'created_at' ? 'selected' : ''; ?>>Time</option>
                </select>
                <select class="input" id="sort-direction" name="direction">
                    <?php if($direction == 'desc') ?>
                    <option value="asc" <?= ($direction == 'asc') ? 'selected' : ''; ?>>Ascending</option>
                    <option value="desc" <?= ($direction == 'desc') ? 'selected' : ''; ?>>Descending</option>
                </select>
<!--                <button class="primary-btn btn-sort">Sort</button>-->
            </div>
        </div>
        <div class="pull-right">
            <div class="page-filter">
                <span class="text-uppercase">Show:</span>
                <select class="input" name="limit">
                    <option value="9" <?= ($limit == 9) ? 'selected' : ''; ?>>9</option>
                    <option value="6" <?= ($limit == 6) ? 'selected' : ''; ?>>6</option>
                    <option value="3" <?= ($limit == 3) ? 'selected' : ''; ?>>3</option>
                </select>
            </div>
            <div class="page-filter">
                <span class="text-uppercase">Page:</span>
                <select class="input" name="page">
                    <?php for($i = 1; $i <= $pagination['last']; $i++): ?>
                    <option value="<?= $i;?>" <?= ($page == $i) ? 'selected' : ''; ?>><?=$i;?></option>
                    <?php endfor; ?>
                </select>
            </div>
<!--            <ul class="store-pages">-->
<!--                <li><span class="text-uppercase">Page:</span></li>-->
<!--                <li class="active">1</li>-->
<!--                <li><a href="#">2</a></li>-->
<!--                <li><a href="#">3</a></li>-->
<!--                <li><a href="#"><i class="fa fa-caret-right"></i></a></li>-->
<!--            </ul>-->
        </div>
    </div>
    <!-- /store top filter -->

    <!-- STORE -->
    <div id="store">
        <!-- row -->
        <div class="row">
            <?php foreach ($products as $product): ?>
                <!-- Product Single -->
                <div class="col-md-4 col-sm-6 col-xs-6">
                    <div class="product product-single">
                        <div class="product-thumb">
                            <div class="product-label">
                                <span>New</span>
                                <span class="sale">-20%</span>
                            </div>
                            <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
                            <img src="<?=$product['img'];?>" alt=''>
                        </div>
                        <div class="product-body">
                            <h3 class="product-price">$<?= $product['price'] ?> <del class="product-old-price">$45.00</del></h3>
                            <div class="product-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o empty"></i>
                            </div>
                            <h2 class="product-name"><a href="#"><?= $product['product_name'] ?></a></h2>
                            <div class="product-btns">
                                <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                                <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
                                <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Product Single -->
            <?php endforeach ?>
            
        </div>
        <!-- /row -->
    </div>
    <!-- /STORE -->

    <!-- store bottom filter -->
    <div class="store-filter clearfix">
        <div class="pull-left">
            <div class="row-filter">
                <a href="#"><i class="fa fa-th-large"></i></a>
                <a href="#" class="active"><i class="fa fa-bars"></i></a>
            </div>
            <div class="sort-filter">
                <span class="text-uppercase">Sort By:</span>
                <select class="input">
                        <option value="0">Position</option>
                        <option value="0">Price</option>
                        <option value="0">Rating</option>
                    </select>
                <a href="#" class="main-btn icon-btn"><i class="fa fa-arrow-down"></i></a>
            </div>
        </div>
        <div class="pull-right">
            <div class="page-filter">
                <span class="text-uppercase">Show:</span>
                <select class="input">
                        <option value="0">10</option>
                        <option value="1">20</option>
                        <option value="2">30</option>
                    </select>
            </div>
            <ul class="store-pages">
                <li><span class="text-uppercase">Page:</span></li>
                <li class="active">1</li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#"><i class="fa fa-caret-right"></i></a></li>
            </ul>
        </div>
    </div>
    <!-- /store bottom filter -->
</div>