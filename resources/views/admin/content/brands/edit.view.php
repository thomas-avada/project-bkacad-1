            
<div class="col-md-12 col-sm-12 col-xs-12">
  <div class="x_panel">
    <div class="x_title">
      <h1>Edit brand</h1>
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
      <form id="edit-brand-form" data-parsley-validate class="form-horizontal form-label-left" method="POST" enctype='multipart/form-data' action="/admin/brand/update">
        <input type="hidden" name="id"  value="<?= $brand['id'] ;?>">
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product-name">Brand name<span class="required">*</span>
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="brand_name" id="brand-name" required="required" class="form-control col-md-7 col-xs-12" value="<?= $brand['brand_name']; ?>">
          </div>
        </div>
        <div class="ln_solid"></div>
        <div class="form-group">
          <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
            <a class="btn btn-primary" type="button" href="<?= $back; ?>">Back</a>
            <button class="btn btn-primary" type="reset">Reset</button>
            <a class="btn btn-primary" type="button" href="/admin/brand/delete?id=<?=$brand['id']?>">Delete</a>
            <button class="btn btn-primary"
                onclick="
                document.getElementById('edit-brand-form').setAttribute('action', '/admin/brand/update?back=1');
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