<div class="col-md-12 col-sm-12 col-xs-12">
  <div class="x_panel">
    <div class="x_title">
      <h1>Products</h1>
      <ul class="nav navbar-right panel_toolbox">
        <li>
          <a href="/admin/product/create" class="btn btn-lg btn-default">New Product</a>
        </li>
        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
        </li>
      
        <li><a class="close-link"><i class="fa fa-close"></i></a>
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
                <td class=" "><?= $product['product_id'];?></td>
                <td class=" "><?= $product['product_name'] ;?></td>
                <td class=" "><?= $product['category_name'] ;?></i></td>
                <td class=" "><?= $product['brand_name'] ;?></td>
                <td class="a-right a-right "><?= $product['price'] ;?></td>
                <td class=""><?= $product['quantity'] ;?></td>
                <td class=" last">
                  <a href="/admin/product/edit?id=<?= $product['product_id']; ?>">Edit</a>
                  <a href="/admin/product/delete?id=<?= $product['product_id']; ?>">Delete</a>
                </td>
              </tr>
            <?php endforeach ?>
            
          </tbody>
        </table>
        <ul class="pagination">
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
        </ul>
      </div>


    </div>
  </div>
</div>