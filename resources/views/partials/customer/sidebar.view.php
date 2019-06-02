<div class="col-md-3 db-menu-wrapper">
	<ul class="db-menu">
		<li class="<?=request()->url() == 'customer/dashboard' ? 'active': ''?>"><a href="/customer/dashboard">Account Dashboard</a></li>
		<li class="<?=request()->url() == 'customer/info' ? 'active': ''?>"><a href="/customer/info">Account Information</a></li>
		<li class="<?=request()->url() == 'customer/orders' || request()->url() == 'customer/order' ? 'active': ''?>"><a href="/customer/orders">Orders History</a></li>
		<li class="<?=request()->url() == 'wishlist' ? 'active': ''?>"><a href="/wishlist">Wishlist</a></li>
	</ul>
</div>