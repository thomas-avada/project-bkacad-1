<div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
        <div class="x_title">
            <h1>Customers</h1>
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
                        <option value="id" <?= $order == 'id' ? 'selected' : ''; ?>>ID</option>
                        <option value="brand_name" <?= $order == 'user_name' ? 'selected' : ''; ?>>Customer Name</option>
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
                        <th class="column-title">Created at </th>
                        <th class="column-title">Updated at</th>
<!--                        <th class="column-title no-link last"><span class="nobr">Action</span>-->
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
                        <td class=" "><?= $customer['created_at'] ;?></td>
                        <td class="a-right a-right "><?= $customer['updated_at'] ;?></td>
                      </tr>
                    <?php endforeach ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>