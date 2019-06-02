<div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
        <div class="x_title">
            <h1>Customers</h1>
            <button data-toggle="collapse" data-target="#filter-tab" class="btn btn-primary btn-md">Toggle Filter</button>
        <br>
        <ul id="filter-tab" class="nav navbar-left panel_toolbox action_toolbar <?=isset($filters) ? '' : 'collapse'?>">
            <li>
                <label for="email">Email: </label>
                <input type="text" name="email" id="email" class="form-control" value="<?=isset($filters['email']) ? $filters['email'] : ''?>">
            </li>
            <li>
                <label for="tel">Tel: </label>
                <input type="text" name="tel" id="tel" class="form-control" value="<?=isset($filters['tel']) ? $filters['tel'] : ''?>">
            </li>
            <li>
                <label for="address">Address: </label>
                <input type="text" name="address" id="address" class="form-control" value="<?=isset($filters['address']) ? $filters['address'] : ''?>">
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
                    <option value="product_id" <?= $filters['order'] == 'id' ? 'selected' : ''; ?>>ID</option>
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
            <ul class="nav navbar-right panel_toolbox">
                <li>
                    <a href="/admin/customer/create" class="btn btn-md btn-default">New Customer</a>
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
                        <th class="column-title">Customer Name </th>
                        <th class="column-title">Email </th>
                        <th class="column-title">Tel </th>
                        <th class="column-title">Address </th>
                        <th class="column-title">Created at </th>
                        <th class="column-title no-link last"><span class="nobr">Action</span>
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($customers as $customer): ?>
                      <tr class="even pointer">
                        <td class="a-center ">
                          <input type="checkbox" class="flat" name="table_records">
                        </td>
                        <td class=" "><?= $customer['id'];?></td>
                        <td class=" "><?= $customer['firstname'];?> <?= $customer['lastname'];?></td>
                        <td class=" "><?= $customer['email'] ;?></i></td>
                        <td class=" "><?= $customer['tel'] ;?></i></td>
                        <td class=" "><?= $customer['address'] ;?></i></td>
                        <td class=" "><?= $customer['created_at'] ;?></td>
                        <td class=" last">
                            <?php
                            component('admin/bulk-actions', [
                                'actions' => [
                                    ['name' => 'View', 'link' => "/admin/customer/view?id=".$customer['id']],
                                    ['name' => 'Delete', 'link'=> "/admin/customer/delete?id=".$customer['id']]
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