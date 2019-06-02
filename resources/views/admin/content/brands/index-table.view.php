<div class="col-md-12 col-sm-12 col-xs-12">
  <div class="x_panel">
    <div class="x_title">
      <h1>Brands</h1>
      <button data-toggle="collapse" data-target="#filter-tab" class="btn btn-primary btn-md">Toggle Filter</button>
      <br>
      <ul id="filter-tab" class="nav navbar-left panel_toolbox action_toolbar <?=isset($filters) ? '' : 'collapse'?>">
          <li>
              <label for="orderBy">Order By: </label>
              <select class="input form-control" id="orderBy" name="order"> 
                  <option value="id" <?= $filters['order'] == 'id' ? 'selected' : ''; ?>>ID</option>
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
          <a href="/admin/brand/create" class="btn btn-md btn-default">New Brand</a>
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
              <th class="column-title">Brand Code </th>
              <th class="column-title">Created at </th>
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
                <td class=" "><?= $brand['brand_code'] ;?></td>
                <td class=" "><?= $brand['created_at'] ;?></i></td>
                <td class=" last">
                    <?php
                    component('admin/bulk-actions', [
                        'actions' => [
                            ['name' => 'Edit', 'link' => "/admin/brand/edit?id=".$brand['id']],
                            ['name' => 'Delete', 'link' => "/admin/brand/delete?id=".$brand['id']]
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