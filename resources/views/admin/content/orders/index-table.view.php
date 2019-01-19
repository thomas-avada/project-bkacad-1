<div class="col-md-12 col-sm-12 col-xs-12">
  <div class="x_panel">
    <div class="x_title">
        <h1>Orders</h1>
        <ul class="nav navbar-left panel_toolbox action_toolbar">
            <li>
                <label for="pagination">Page: </label>
                <select name="page" id="pagination">
                    <?php for($i = 1; $i <= $pagination['last']; $i++): ?>
                        <option value="<?= $i;?>" <?= ($page == $i) ? 'selected' : ''; ?>><?=$i;?></option>
                    <?php endfor; ?>
                </select>
            </li>
            <li>
                <label for="orderBy">Order By: </label>
                <select class="input" id="orderBy" name="order">
                    <option value="order_id" <?= $order == 'order_id' ? 'selected' : ''; ?>>ID</option>
                    <option value="created_at" <?= $order == 'created_at' ? 'selected' : ''; ?>>Time</option>
                    <option value="grand_total" <?= $order == 'grand_total' ? 'selected' : ''; ?>>Grand Total</option>
                </select>
                <select class="input" id="sort-direction" name="direction">
                    <option value="asc" <?= ($direction == 'asc') ? 'selected' : ''; ?>>Ascending</option>
                    <option value="desc" <?= ($direction == 'desc') ? 'selected' : ''; ?>>Descending</option>
                </select>
            </li>
            <div class="clearfix"></div>
            <button class="btn btn-primary btn-filter btn-sm">
                Filter
            </button>
        </ul>
        <ul class="nav navbar-right panel_toolbox">
            <li>
              <a href="/admin/product/create" class="btn btn-lg btn-default">New Order</a>
            </li>
        </ul>
      <div class="clearfix"></div>
    </div>

    <div class="x_content">

      <div class="table-responsive">
        <table class="table table-striped jambo_table bulk_action">
          <thead>
            <tr class="headings">
              <th>
                <input type="checkbox" id="check-all" class="flat">
              </th>
              <th class="column-title">ID </th>
              <th class="column-title">Billing Name </th>
              <th class="column-title">Shipping Name </th>
              <th class="column-title">Billing Address </th>
              <th class="column-title">Shipping Address</th>
              <th class="column-title">Grand Total </th>
<!--               <th class="column-title">Quantity</th> -->
              <th class="column-title no-link last"><span class="nobr">Action</span>
              </th>
            </tr>
          </thead>

          <tbody>
            <?php foreach ($orderItems as $order): ?>
              <tr class="even pointer">
                <td class="a-center ">
                  <input type="checkbox" class="flat" name="table_records">
                </td>
                <td><?= $order['order_id'];?></td>
                <td><?= $order['billing_name'] ;?></td>
                <td><?= $order['shipping_name'] ;?></td>
                <td><?= $order['billing_address'] ;?></i></td>
                <td><?= $order['shipping_address'] ;?></td>
                <td><?= currency_price($order['grand_total']) ;?></td>
<!--                 <td class="a-right a-right "><?= $product['price'] ;?></td>
                <td class=""><?= $product['quantity'] ;?></td> -->
                <td class=" last">
                    <?php
                    component('admin/bulk-actions', [
                        'actions' => [
                            ['name' => 'View', 'link' => "/admin/orders/view?id=".$order['order_id']],
                        ]
                    ]) ?>
                </td>
              </tr>
            <?php endforeach ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>