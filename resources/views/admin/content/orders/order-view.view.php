<div class="page-title">
    <div class="title_left">
      <h3>Order <small>View order to invoice</small></h3>
    </div>

    <div class="title_right">
      <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Search for...">
          <span class="input-group-btn">
            <button class="btn btn-default" type="button">Go!</button>
          </span>
        </div>
      </div>
    </div>
  </div>

  <div class="clearfix"></div>

  <div class="row">
    <div class="col-md-12">
      <div class="x_panel">
        <div class="x_title">
          <h2>Order ID: #<?=$order['order_id']?></h2>
<!--           <ul class="nav navbar-right panel_toolbox">
            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
            </li>
          </ul> -->
          <div class="clearfix"></div>
        </div>
        <div class="x_content">

          <section class="content invoice">
            <!-- title row -->
            <div class="row">
              <div class="col-xs-12 invoice-header">
                <h1>
                    <i class="fa fa-globe"></i> Order
                    <small class="pull-right">Date: <?=$order['created_at']?></small>
                </h1>
              </div>
              <!-- /.col -->
            </div>
            <!-- info row -->
            <div class="row invoice-info">
              <div class="col-sm-4 invoice-col">
                <h4>Shipping Information <?=$order['shipped'] ? '(Shipped)': '' ?></h4>
                <strong>Shipping Method: </strong><?= $order['shipping_method'] ?>
                <br><strong><?= $order['shipping_firstname'] ?> <?= $order['shipping_lastname'] ?></strong>
                <br><?= $order['shipping_address']?>
                <br><?=$order['shipping_city']?>, <?=$order['shipping_country']?>
                <br>Phone: <?=$order['shipping_tel']?>
                <br>Email: <?=$order['shipping_email']?>
              </div>
              <!-- /.col -->
              <div class="col-sm-4 invoice-col">
                <h4>Billing Information <?=$order['invoiced'] ? '(Invoiced)': '' ?></h4>
                <strong>Payment Method: </strong><?= $order['payment_method'] ?>
                <br><strong><?= $order['billing_firstname'] ?> <?= $order['billing_lastname'] ?></strong>
                <br><?= $order['billing_address']?>
                <br><?=$order['billing_city']?>, <?=$order['billing_country']?>
                <br>Phone: <?=$order['billing_tel']?>
                <br>Email: <?=$order['billing_email']?>
              </div>
              <!-- /.col -->
              <div class="col-sm-4 invoice-col">
                <div style="font-size: 24px">
                  <b >Status:</b> <?=order_status($order['status']) ?>
                </div>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->

            <!-- Table row -->
            <div class="row">
              <div class="col-xs-12 table">
                <table class="table table-striped">
                  <thead>
                    <tr>              
                      <th>Product</th>
                      <th>Qty</th>
                      <th>Price</th>
                      <th>Subtotal</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php foreach ($products as $product): ?>
                      <tr>
                        <td><?=$product['product_name']?></td>
                        <td><?=$product['item_qty']?></td>
                        <td><?=currency_price($product['price'])?></td>
                        <td><?=currency_price($product['price']*$product['item_qty'])?></td>
                      </tr>
                    <?php endforeach ?>
                  </tbody>
                </table>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->

            <div class="row">
              <div class="col-xs-6 col-xs-push-6">
                <div class="table-responsive">
                  <table class="table">
                    <tbody>
                      <tr>
                        <th style="width:50%">Subtotal:</th>
                        <td><?=currency_price($order['subtotal'])?></td>
                      </tr>
                      <tr>
                        <th>Shipping:</th>
                        <td><?=currency_price($order['shipping_fee'])?></td>
                      </tr>
                      <tr>
                        <th>Total:</th>
                        <td><?=currency_price($order['grand_total'])?></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->

            <!-- this row will not appear when printing -->
            <div class="row no-print">
              <div class="col-xs-12">
            <!--     <button class="btn btn-default">Submit Order</button>
                <button class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> Submit Payment</button> -->
                
                <?php if($order['status'] < 2): ?>
                <button class="btn btn-primary pull-right" style="margin-right: 5px;"
                  onclick="event.preventDefault();
                  document.getElementById('invoice-form').submit();"
                >Invoice</button>
                <button class="btn btn-primary pull-right" style="margin-right: 5px;"
                  onclick="event.preventDefault();
                  document.getElementById('shipment-form').submit();"
                >Ship</button>
                <button class="btn btn-primary pull-right" style="margin-right: 5px;"
                  onclick="event.preventDefault();
                  document.getElementById('cancel-form').submit();"
                >Cancel</button> 
                <form id="cancel-form" action="/admin/order/cancel" method="POST" style="display: none;">
                    <input type="hidden" name="order_id" value="<?=$order['order_id']?>">
                </form>
                <form id="invoice-form" action="/admin/order/invoice" method="POST" style="display: none;">
                    <input type="hidden" name="order_id" value="<?=$order['order_id']?>">
                </form>
                <form id="shipment-form" action="/admin/order/ship" method="POST" style="display: none;">
                    <input type="hidden" name="order_id" value="<?=$order['order_id']?>">
                </form>
                  
                <?php endif; ?>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>
  </div>
</div>