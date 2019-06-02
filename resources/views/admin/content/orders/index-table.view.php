<div class="col-md-12 col-sm-12 col-xs-12">
  <div class="x_panel">
    <div class="x_title">
        <h1>Orders</h1>
        <button data-toggle="collapse" data-target="#filter-tab" class="btn btn-primary btn-md">Toggle Filter</button>
        <br>
        <ul id="filter-tab" class="nav navbar-left panel_toolbox action_toolbar <?=isset($filters) ? '' : 'collapse'?>">
            <li>
              <label for="orderBy">Status: </label>
                <select class="input form-control" id="status" name="status"> 
                    <?php if (isset($filters['status'])): ?>
                      <option value="">None</option>
                      <option value="0" <?= $filters['status'] == 0 ? 'selected' : ''; ?>>Pending</option>
                      <option value="1" <?= $filters['status'] == 1 ? 'selected' : ''; ?>>Processing</option>
                      <option value="2" <?= $filters['status'] == 2 ? 'selected' : ''; ?>>Completed</option>
                      <option value="3" <?= $filters['status'] == 3 ? 'selected' : ''; ?>>Cancelled</option>
                    <?php else: ?>
                    <option value="">None</option>
                    <option value="0" >Pending</option>
                    <option value="1" >Processing</option>
                    <option value="2" >Completed</option>
                    <option value="3" >Cancelled</option>
                    <?php endif ?>
                </select>
            </li>
            <li>
                <label>Grand Total Range: </label>
                <input type="number" name="mingrand" id="mingrand" class="form-control" step="1000" min="0" value="<?=isset($filters['mingrand']) ? $filters['mingrand'] : ''?>">
                <span>-</span>
                <input type="number" name="maxgrand" id="maxgrand" class="form-control" step="1000" min="0"  value="<?=isset($filters['maxgrand']) ? $filters['maxgrand'] : ''?>">
            </li>
            <li>
                <label>Date Range </label>
                <input type="text" name="created_at_from" id="create_at_from" class="form-control datepicker" value="<?=isset($filters['created_at_from']) ? $filters['created_at_from'] : ''?>" />
                <span>-</span>
                <input type="text" name="created_at_to" id="create_at_to" class="form-control datepicker" value="<?=isset($filters['created_at_to']) ? $filters['created_at_to'] : ''?>" />
            </li>
            <li>
                <label for="orderBy">Order By: </label>
                <select class="input form-control" id="orderBy" name="order"> 
                    <option value="order_id" <?= $filters['order'] == 'order_id' ? 'selected' : ''; ?>>ID</option>
                    <option value="grand_total" <?= $filters['order'] == 'grand_total' ? 'selected' : ''; ?>>Grand Total</option>
                    <option value="created_at" <?= $filters['order'] == 'created_at' ? 'selected' : ''; ?>>Time</option>
                </select>
                <span>-</span>
                <select class="input form-control" id="sort-direction" name="direction">
                    <option value="asc" <?= ($filters['direction'] == 'asc') ? 'selected' : ''; ?>>Ascending</option>
                    <option value="desc" <?= ($filters['direction'] == 'desc') ? 'selected' : ''; ?>>Descending</option>
                </select>
            </li>
            <div class="clearfix"></div>
            <button class="btn btn-primary btn-filter btn-md">
                Filter
            </button>
            <div class="clearfix"></div>
        </ul>
        <div class="clearfix"></div>
        <label for="pagination">Page: </label>
        <select name="page" id="pagination" class="form-control" style="width: 120px;">
            <?php for($i = 1; $i <= $pagination['last']; $i++): ?>
                <option value="<?= $i;?>" <?= ($filters['page'] == $i) ? 'selected' : ''; ?>><?=$i;?></option>
            <?php endfor; ?>
        </select>
<!--         <ul class="nav navbar-right panel_toolbox">
            <li>
              <a href="/admin/product/create" class="btn btn-lg btn-default">New Order</a>
            </li>
        </ul> -->
      <div class="clearfix"></div>
    </div>

    <div class="x_content">

      <div class="table-responsive">
        <table class="table table-striped jambo_table bulk_action" id="datatable">
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
              <th class="column-title">Status</th>
              <th class="column-title">Created at</th>
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
                <td><?=order_status($order['status'])?></td>
                <td><?=$order['created_at']?></td>
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