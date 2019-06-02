<?php
use App\Core\Facade\Cart;
if(session()->isLoggedIn()){
    $cartItems = Cart::all();
}

?>
<header>
    <!-- header -->
    <div id="header">
        <div class="container">
            <div class="pull-left">
                <!-- Logo -->
                <div class="header-logo">
                    <a class="logo" href="/">
                        <img src="/public/storage/images/logon.png" alt="">
                    </a>
                </div>
                <!-- /Logo -->

                <!-- Search -->
                <div class="header-search">
                    <form action="/search" method="GET">
                        <input class="input search-input" name="keyword" type="text" placeholder="Enter your keyword">
                        <button class="search-btn"><i class="fa fa-search"></i></button>
                    </form>
                </div>
                <!-- /Search -->
            </div>
            <div class="pull-right">
                <ul class="header-btns">
                    <!-- Account -->
                    <li class="header-account dropdown default-dropdown">
                        <?php if (!session()->isLoggedIn()): ?>
                        <div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
                            <div class="header-btns-icon">
                                <i class="fa fa-user-o"></i>
                            </div>
                            <strong class="text-uppercase">My Account <i class="fa fa-caret-down"></i></strong>
                        </div>
                        <a href="javascript:void(0)" data-toggle="modal" data-target="#loginModal" class="text-uppercase">Login</a> / <a href="javascript:void(0)" data-toggle="modal" data-target="#registerModal" class="text-uppercase">Join</a>
                        <ul class="custom-menu">
                            <li><a href="javascript:void(0)" data-toggle="modal" data-target="#loginModal"><i class="fa fa-unlock-alt"></i> Login</a></li>
                            <li><a href="/register"><i class="fa fa-user-plus"></i> Create An Account</a></li>
                        </ul>

                        <?php else: ?>
                        <div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
                            <div class="header-btns-icon">
                                <i class="fa fa-user-o"></i>
                            </div>
                            <strong class="text-uppercase"><?= session()->customer()['firstname'];?><i class="fa fa-caret-down"></i></strong>
                        </div>

                        <form id="logout-form" action="/logout" method="POST" style="display: none;">
                        </form>
                        <ul class="custom-menu">
                            <li><a href="/customer/dashboard"><i class="fa fa-user-o"></i>My Account</a></li>
                            <li><a href="/wishlist"><i class="fa fa-heart-o"></i> My Wishlist</a></li>
                            <li><a href="/checkout"><i class="fa fa-check"></i> Checkout</a></li>
                            <li><a href="/logout" class="text-uppercase""
                               onclick="event.preventDefault();
                                             document.getElementById('logout-form').submit();">
                                Logout
                            </a></li>
                        </ul>
                        <?php endif ?>
                        
                    </li>
                    <!-- /Account -->
                    <?php if (session()->isLoggedIn()): ?>
                    <!-- Cart -->
                    <li class="header-cart dropdown default-dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                            <div class="header-btns-icon">
                                <i class="fa fa-shopping-cart"></i>
                                <span class="qty"><?=Cart::count();?></span>
                            </div>
                            <strong class="text-uppercase">My Cart:</strong>
                            <br>
                            <span><?=currency_price(Cart::total())?></span>
                        </a>
                        <div class="custom-menu">
                            <div id="shopping-cart">
                                <div class="shopping-cart-list">
                                    <?php if(Cart::isEmpty()): ?>
                                    <span>Your cart is empty</span>
                                    <?php endif ?>
                                    <?php foreach ($cartItems as $item): ?>
                                        <?php component('minicart/product', compact('item')) ?>
                                    <?php endforeach ?>
                                </div>
                                <div class="shopping-cart-btns">
                                    <a class="main-btn" href="/checkout/cart">View Cart</a>
                                    <a class="primary-btn" href="/checkout">Checkout <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <!-- /Cart -->
                    <?php endif ?>
                    

                    <!-- Mobile nav toggle-->
                    <li class="nav-toggle">
                        <button class="nav-toggle-btn main-btn icon-btn"><i class="fa fa-bars"></i></button>
                    </li>
                    <!-- / Mobile nav toggle -->
                </ul>
            </div>
        </div>
        <!-- header -->
    </div>
    <!-- container -->
</header>
<?php component('modal/login') ?>
<?php component('modal/register') ?>