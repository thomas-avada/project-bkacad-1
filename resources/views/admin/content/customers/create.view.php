<div class="col-md-12 col-sm-12 col-xs-12">
  <div class="x_panel">
    <div class="x_title">
      <h1>New customer</h1>
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
      <form id="newcustomer-form" data-parsley-validate class="form-horizontal form-label-left" method="POST" enctype='multipart/form-data' action="/admin/customers">
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="firstname">First name<span class="required">*</span>
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="firstname" id="firstname" required="required" class="form-control col-md-7 col-xs-12">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="lastname">Last name<span class="required">*</span>
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="lastname" id="lastname" required="required" class="form-control col-md-7 col-xs-12">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Email<span class="required">*</span>
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="email" name="email" id="email" required="required" class="form-control col-md-7 col-xs-12">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="tel">Tel
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="tel" id="tel" class="form-control col-md-7 col-xs-12">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="address">Address
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="address" id="address" class="form-control col-md-7 col-xs-12">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="city">City
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="city" id="city" class="form-control col-md-7 col-xs-12">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="country">Country
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="country" id="country" class="form-control col-md-7 col-xs-12">
          </div>
        </div>
        
        <div class="ln_solid"></div>
        <div class="form-group">
          <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
            <a class="btn btn-primary" type="button" href="<?=$back;?>">Back</a>
            <button class="btn btn-primary" type="reset">Reset</button>
            <button class="btn btn-primary"
                onclick="
                document.getElementById('newcustomer-form').setAttribute('action', '/admin/customers?back=1');
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