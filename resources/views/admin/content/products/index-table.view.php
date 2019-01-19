<div class="col-md-12 col-sm-12 col-xs-12">
  <div class="x_panel">
    <div class="x_title">
        <h1>Products</h1>
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
                    <option value="product_id" <?= $order == 'product_id' ? 'selected' : ''; ?>>ID</option>
                    <option value="price" <?= $order == 'price' ? 'selected' : ''; ?>>Price</option>
                    <option value="created_at" <?= $order == 'created_at' ? 'selected' : ''; ?>>Time</option>
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
              <a href="/admin/product/create" class="btn btn-lg btn-default">New Product</a>
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
              <th class="column-title">Product Name </th>
              <th class="column-title">Image </th>
              <th class="column-title">Category </th>
              <th class="column-title">Brand</th>
              <th class="column-title">Price </th>
              <th class="column-title">Quantity</th>
              <th class="column-title no-link last"><span class="nobr">Action</span>
              </th>
            </tr>
          </thead>

          <tbody>
            <?php foreach ($products as $product): ?>
              <tr class="even pointer">
                <td class="a-center ">
                  <input type="checkbox" class="flat" name="table_records">
                </td>
                <td><?= $product['product_id'];?></td>
                <td><?= $product['product_name'] ;?></td>
                <td>
                    <img class="responsive-img cell-img" src="<?= "/".$product['img']; ?>" alt="<?=$product['product_name']. ' image' ;?>"></td>
                <td><?= $product['category_name'] ;?></i></td>
                <td><?= $product['brand_name'] ;?></td>
                <td class="a-right a-right "><?= currency_price($product['price']) ;?></td>
                <td class=""><?= $product['quantity'] ;?></td>
                <td class=" last">
                    <?php
                    component('admin/bulk-actions', [
                        'actions' => [
                            ['name' => 'Edit', 'link' => "/admin/product/edit?id=".$product['product_id']],
                            ['name' => 'Delete', 'link' => "/admin/product/delete?id=".$product['product_id']]
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