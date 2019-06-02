<?php
    $categories = App\Model\Category::select()->get();
?>
<nav id="navigation">
    <!-- container -->
    <div class="container">
        <div id="responsive-nav">
            <!-- category nav -->
            <div class="category-nav show-on-click">
                <span class="category-header">Categories <i class="fa fa-list"></i></span>
                <ul class="category-list">
                    <?php foreach ($categories as $category): ?>
                    <li><a href="/shop?categories[]=<?= $category['category_name'] ;?>"><?= $category['category_name'] ;?></a></li>
                    <?php endforeach ?>
                </ul>
            </div>
            <!-- /category nav -->

            <!-- menu nav -->
            <div class="menu-nav">
                <span class="menu-header">Menu <i class="fa fa-bars"></i></span>
                <ul class="menu-list">
                    <li><a href="/">Home</a></li>
                    <li><a href="/shop">Shop</a></li>
                </ul>
            </div>
            <!-- menu nav -->
        </div>
    </div>
    <!-- /container -->
</nav>