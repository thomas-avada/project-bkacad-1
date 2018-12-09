<div class="col-md-12 col-sm-12 col-xs-12">
  <div class="x_panel">
    <div class="x_title">
      <h1>Brands</h1>
      <ul class="nav navbar-right panel_toolbox">
        <li>
          <a href="/admin/brand/create" class="btn btn-md btn-default">New Brand</a>
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
              <th class="column-title">Brand Name </th>
              <th class="column-title">Created at </th>
              <th class="column-title">Updated at</th>
              <th class="column-title no-link last"><span class="nobr">Action</span>
              </th>
            </tr>
          </thead>

          <tbody>
            <?php foreach ($brands as $brand): ?>
              <tr class="even pointer">
                <td class="a-center ">
                  <input type="checkbox" class="flat" name="table_records">
                </td>
                <td class=" "><?= $brand['id'];?></td>
                <td class=" "><?= $brand['brand_name'] ;?></td>
                <td class=" "><?= $brand['created_at'] ;?></i></td>
                <td class=" "><?= $brand['updated_at'] ;?></td>
                <td class=" last">
                  <a href="/admin/brand/edit?id=<?= $brand['id']; ?>">Edit</a>
                  <a href="/admin/brand/delete?id=<?= $brand['id']; ?>">Delete</a>
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