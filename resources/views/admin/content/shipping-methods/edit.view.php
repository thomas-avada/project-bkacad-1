            
<div class="col-md-12 col-sm-12 col-xs-12">
  <div class="x_panel">
    <div class="x_title">
      <h1>Edit shipping method</h1>
      <ul class="nav navbar-right panel_toolbox">
        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
        </li>
        <li><a class="close-link"><i class="fa fa-close"></i></a>
        </li>
      </ul>
      <div class="clearfix"></div>
    </div>
    <div class="x_content">
      <br />
      <form id="edit-shipping-method-form" data-parsley-validate class="form-horizontal form-label-left" method="POST" enctype='multipart/form-data' action="/admin/shipping-method/update">
        <input type="hidden" name="id"  value="<?= $method['id'] ;?>">
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="display_name">Display Name<span class="required">*</span>
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="display_name" id="display_name" required="required" class="form-control col-md-7 col-xs-12" value="<?= $method['display_name']; ?>">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="shipping_method_code">Method Code<span class="required">*</span>
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="shipping_method_code" id="shipping_method_code" required="required" class="form-control col-md-7 col-xs-12" value="<?= $method['shipping_method_code']; ?>">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="description">Description</label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <textarea id="description" class="resizable_textarea form-control" name="description" ><?= $method['description']; ?></textarea>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="fee">Fee<span class="required">*</span>
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="number" name="fee" id="fee" required="required" class="form-control col-md-7 col-xs-12" min="0" value="<?= $method['fee']; ?>">
          </div>
        </div>
        <div class="ln_solid"></div>
        <div class="form-group">
          <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
            <a class="btn btn-primary" type="button" href="<?= $back; ?>">Back</a>
            <button class="btn btn-primary" type="reset">Reset</button>
            <a class="btn btn-primary" type="button" href="/admin/shipping-method/delete?id=<?=$method['id']?>">Delete</a>
            <button class="btn btn-primary"
                onclick="
                document.getElementById('edit-shipping-method-form').setAttribute('action', '/admin/shipping-method/update?back=1');
            ">
              Edit and continue
            </button>
            <button type="submit" class="btn btn-success">Save</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>