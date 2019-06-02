<div class="col-md-12 col-sm-12 col-xs-12">
  <div class="x_panel">
    <div class="x_title">
        <h1>Products</h1>
        <button data-toggle="collapse" data-target="#filter-tab" class="btn btn-primary btn-md">Toggle Filter</button>
        <br>
        <ul id="filter-tab" class="nav navbar-left panel_toolbox action_toolbar <?=isset($filters) ? '' : 'collapse'?>">
            <li>
                <label for="product_name">Name: </label>
                <input type="text" name="product_name" id="product-name" class="form-control" value="<?=isset($filters['product_name']) ? $filters['product_name'] : ''?>">
            </li>
            <li>
                <label>Price Range: </label>
                <input type="number" name="minprice" id="minprice" class="form-control" step="1000" min="0" value="<?=isset($filters['minprice']) ? $filters['minprice'] : ''?>">
                <span>-</span>
                <input type="number" name="maxprice" id="maxprice" class="form-control" step="1000" min="0"  value="<?=isset($filters['maxprice']) ? $filters['maxprice'] : ''?>">
            </li>
            <li>
                <label>Quantity Range: </label>
                <input type="number" name="minqty" id="minqty" class="form-control" min="0" value="<?=isset($filters['minqty']) ? $filters['minqty'] : ''?>">
                <span>-</span>
                <input type="number" name="maxqty" id="maxqty" class="form-control" min="0" value="<?=isset($filters['maxqty']) ? $filters['maxqty'] : ''?>">
            </li>
            <li>
                <label for="orderBy">Order By: </label>
                <select class="input form-control" id="orderBy" name="order"> 
                    <option value="product_id" <?= $filters['order'] == 'product_id' ? 'selected' : ''; ?>>ID</option>
                    <option value="price" <?= $filters['order'] == 'price' ? 'selected' : ''; ?>>Price</option>
                    <option value="created_at" <?= $filters['order'] == 'created_at' ? 'selected' : ''; ?>>Time</option>
                </select>
                <span>-</span>
                <select class="input form-control" id="sort-direction" name="direction">
                    <option value="asc" <?= ($filters['direction'] == 'asc') ? 'selected' : ''; ?>>Ascending</option>
                    <option value="desc" <?= ($filters['direction'] == 'desc') ? 'selected' : ''; ?>>Descending</option>
                </select>
            </li>
            <li>
                <label>Date Range </label>
                <input type="text" name="created_at_from" id="create_at_from" class="form-control datepicker" value="<?=isset($filters['created_at_from']) ? $filters['created_at_from'] : ''?>" />
                <span>-</span>
                <input type="text" name="created_at_to" id="create_at_to" class="form-control datepicker" value="<?=isset($filters['created_at_to']) ? $filters['created_at_to'] : ''?>" />
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
              <th class="column-title">Created at</th>
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
                <td class=""><?= $product['created_at'] ;?></td>
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