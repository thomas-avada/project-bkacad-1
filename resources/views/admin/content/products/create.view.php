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
      <form id="newproduct-form" class="form-horizontal form-label-left" method="POST" enctype='multipart/form-data' action="/admin/products">
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
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="description">Rich Description</label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <div id="alerts"></div>
            <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-one">
              <div class="btn-group">
                <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                <ul class="dropdown-menu">
                </ul>
              </div>

              <div class="btn-group">
                <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li>
                    <a data-edit="fontSize 5">
                      <p style="font-size:17px">Huge</p>
                    </a>
                  </li>
                  <li>
                    <a data-edit="fontSize 3">
                      <p style="font-size:14px">Normal</p>
                    </a>
                  </li>
                  <li>
                    <a data-edit="fontSize 1">
                      <p style="font-size:11px">Small</p>
                    </a>
                  </li>
                </ul>
              </div>

              <div class="btn-group">
                <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="fa fa-bold"></i></a>
                <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
              </div>

              <div class="btn-group">
                <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
              </div>

              <div class="btn-group">
                <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
              </div>

              <div class="btn-group">
                <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                <div class="dropdown-menu input-append">
                  <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                  <button class="btn" type="button">Add</button>
                </div>
                <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
              </div>
              <div class="btn-group">
                <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
              </div>
            </div>

            <div id="editor-one" class="editor-wrapper"></div>

            <textarea name="rich_description" id="rich_description" style="display:none;"></textarea>
            
            <br />
            <script>
              document.getElementById('editor-one').innerHTML = '<?=$product['rich_description']?>';
            </script>
            <div class="ln_solid"></div>
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
            <input type="file" id="product_img" name="product_img" class="file-input form-control col-md-7 col-xs-12" required="required">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product_img">Product Images Gallery
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
                onclick="
                document.getElementById('rich_description').innerHTML = document.getElementById('editor-one').innerHTML;
                document.getElementById('newproduct-form').setAttribute('action', '/admin/products?back=1');
            ">
              Create and continue
            </button>
            <button type="submit" class="btn btn-success btn-save" 
            onclick="
            document.getElementById('rich_description').innerHTML = document.getElementById('editor-one').innerHTML;
            ">Create</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>