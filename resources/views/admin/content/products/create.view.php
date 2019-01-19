<div class="col-md-12 col-sm-12 col-xs-12">
  <div class="x_panel">
    <div class="x_title">
      <h1>New product</h1>
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
      <form id="newproduct-form" data-parsley-validate class="form-horizontal form-label-left" method="POST" enctype='multipart/form-data' action="/admin/products">
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product-name">Product name<span class="required">*</span>
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="product_name" id="product-name" required="required" class="form-control col-md-7 col-xs-12">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="description">Description</label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <textarea id="description" class="resizable_textarea form-control" name="description"></textarea>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12">Category</label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <select class="select2_single form-control" tabindex="-1" name="category">
              <?php foreach ($categories as $category): ?>
                  <option value="<?= $category['id'] ;?>"><?= $category['category_name'];?></option>
              <?php endforeach ?>
            </select>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12">Brand</label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <select class="select2_single form-control" tabindex="-1" name="brand">
              <?php foreach ($brands as $brand): ?>
                  <option value="<?= $brand['id'] ;?>"><?= $brand['brand_name'];?></option>
              <?php endforeach ?>
            </select>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="price">Price<span class="required">*</span>
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="number" id="price" name="price" required="required" class="form-control col-md-7 col-xs-12">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12">Stock Status</label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <select class="select2_single form-control" tabindex="-1" name="status">
              <option value="1">In stock</option>
              <option value="0">Out of stock</option>
            </select>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender</label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <select class="select2_single form-control" tabindex="-1" name="gender">
              <option value="2">Bi-sexual</option>
              <option value="0">Female</option>
              <option value="1">Male</option>
            </select>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12">Featured Product</label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="checkbox">
              <label>
                <input type="checkbox" value="1" name="featured">
              </label>
            </div>
          </div>
        </div>

        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="quantity">Quantity<span class="required">*</span>
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="number" id="quantity" name="quantity" required="required" class="form-control col-md-7 col-xs-12">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product_img">Product Image<span class="required">*</span>
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="product-edit-img-wrapper img-preview ">
              
            </div>
            <input type="file" id="product_img" name="product_img" class="file-input form-control col-md-7 col-xs-12">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product_img">Product Images Gallery<span class="required">*</span>
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div class="product-edit-img-wrapper img-preview">
              
            </div>
            <input type="file" id="product_images" name="product_images[]" multiple="" class="form-control col-md-7 col-xs-12 file-input">
          </div>
        </div>
        
        <div class="ln_solid"></div>
        <div class="form-group">
          <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
            <a class="btn btn-primary" type="button" href="<?=$back;?>">Back</a>
            <button class="btn btn-primary" type="reset">Reset</button>
            <button class="btn btn-primary"
                onclick="event.preventDefault();
                document.getElementById('newproduct-form').setAttribute('action', '/admin/products?back=1');
                document.getElementById('newproduct-form').submit();
            ">
              Create and continue
            </button>
            <button type="submit" class="btn btn-success">Create</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>