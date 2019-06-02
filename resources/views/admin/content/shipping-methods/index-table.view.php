<div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
        <div class="x_title">
            <h1>Shipping Methods</h1>
        <div class="clearfix"></div>
            <ul class="nav navbar-right panel_toolbox">
                <li>
                    <a href="/admin/shipping-method/create" class="btn btn-md btn-default">New method</a>
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
                        <th class="column-title">Method Name</th>
                        <th class="column-title">Method Code </th>
                        <th class="column-title">Description </th>
                        <th class="column-title">Fee </th>
                        <th class="column-title">Created at </th>
                        <th class="column-title no-link last"><span class="nobr">Action</span>
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($methods as $method): ?>
                      <tr class="even pointer">
                        <td class="a-center ">
                          <input type="checkbox" class="flat" name="table_records">
                        </td>
                        <td class=" "><?= $method['id'];?></td>
                        <td class=" "><?= $method['display_name'];?></td>
                        <td class=" "><?= $method['shipping_method_code'] ;?></i></td>
                        <td class=" "><?= $method['description'] ;?></i></td>
                        <td class=" "><?= $method['fee'] ;?></i></td>
                        <td class=" "><?= $method['created_at'] ;?></td>
                        <td class=" last">
                            <?php
                            component('admin/bulk-actions', [
                                'actions' => [
                                    ['name' => 'View', 'link' => "/admin/shipping-method/edit?id=".$method['id']],
                                    ['name' => 'Delete', 'link'=> "/admin/shipping-method/delete?id=".$method['id']]
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