<div class="col-md-12 col-sm-12 col-xs-12">
  <div class="x_panel">
    <div class="x_title">
        <h1>Categories</h1>
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
                    <option value="id" <?= $order == 'category_name' ? 'selected' : ''; ?>>ID</option>
                    <option value="category_name" <?= $order == 'category_name' ? 'selected' : ''; ?>>Category Name</option>
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
          <a href="/admin/category/create" class="btn btn-md btn-default">New Category</a>
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
              <th class="column-title">Category Name </th>
              <th class="column-title">Created at </th>
              <th class="column-title">Updated at</th>
              <th class="column-title no-link last"><span class="nobr">Action</span>
              </th>
            </tr>
          </thead>

          <tbody>
            <?php foreach ($categories as $category): ?>
              <tr class="even pointer">
                <td class="a-center ">
                  <input type="checkbox" class="flat" name="table_records">
                </td>
                <td class=" "><?= $category['id'];?></td>
                <td class=" "><?= $category['category_name'] ;?></td>
                <td class=" "><?= $category['created_at'] ;?></i></td>
                <td class=" "><?= $category['updated_at'] ;?></td>
                <td class=" last">
                    <?php
                    component('admin/bulk-actions', [
                        'actions' => [
                            ['name' => 'Edit', 'link' => "/admin/category/edit?id=".$category['id']],
                            ['name' => 'Delete', 'link' => "/admin/category/delete?id=".$category['id']]
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