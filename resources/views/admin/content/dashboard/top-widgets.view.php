<div class="row top_tiles">
  <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="tile-stats">
      <div class="icon"><i class="fa fa-dollar"></i></div>
      <div class="count"><?=currency_price($total_revenue)?></div>
      <h3>Total revenue</h3>
      <p></p>
    </div>
  </div>
  <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="tile-stats">
      <div class="icon"><i class="fa fa-comments-o"></i></div>
      <div class="count"><?=$customer_count?></div>
      <h3>Customers</h3>
      <p>All customers you have</p>
    </div>
  </div>
  <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="tile-stats">
      <div class="icon"><i class="fa fa-sort-amount-desc"></i></div>
      <div class="count"><?=$order_count?></div>
      <h3>Orders</h3>
      <p><?=$invoiced_count?> order invoiced</p>
    </div>
  </div>
  <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="tile-stats">
      <div class="icon"><i class="fa fa-check-square-o"></i></div>
      <div class="count"><?=$product_count?></div>
      <h3>Products in store</h3>
      <!-- <p>Lorem ipsum psdea itgum rixt.</p> -->
    </div>
  </div>
</div>