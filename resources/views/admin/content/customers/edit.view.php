<div class="col-md-12 col-sm-12 col-xs-12">
  <div class="x_panel">
    <div class="x_title">
      <h1>Edit customer</h1>
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
      <form id="edit-customer-form" class="form-horizontal form-label-left" method="POST" enctype='multipart/form-data' action="/admin/customer/update?id=<?= $customer['id'] ;?>">
        <input type="hidden" name="id"  value="<?= $customer['id'] ;?>">
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="firstname">Firstname<span class="required">*</span>
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="firstname" id="firstname" required="required" class="form-control col-md-7 col-xs-12" value="<?= $customer['firstname']; ?>">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="lastname">Lastname <span class="required">*</span></label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="lastname" id="lastname" required="required" class="form-control col-md-7 col-xs-12" value="<?= $customer['lastname']; ?>">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12">Email <span class="required">*</span></label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="email" name="email" id="email" required="required" class="form-control col-md-7 col-xs-12" value="<?= $customer['email']; ?>">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12">Tel</label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="tel" id="tel" class="form-control col-md-7 col-xs-12" value="<?= $customer['tel']; ?>">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12">Address</label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="address" id="address" class="form-control col-md-7 col-xs-12" value="<?= $customer['address']; ?>">
          </div>  
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12">City</label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="city" id="city" class="form-control col-md-7 col-xs-12" value="<?= $customer['city']; ?>">
          </div>  
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12">Country</label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="country" id="country" class="form-control col-md-7 col-xs-12" value="<?= $customer['country']; ?>">
          </div>  
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12">Role</label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <select class="select2_single form-control" 
              tabindex="-1" name="role_id" 
              value="<?= $customer['role_id']; ?>"
              <?= auth()['role_id'] != 3 ? 'disabled' : ''?>
            >
              <?php foreach ($roles as $role): ?>
                  <option value="<?= $role['id'] ;?>" <?=$role['id'] == $customer['role_id'] ? 'selected' : ''?>><?= $role['display_name'];?></option>
              <?php endforeach ?>
            </select>
          </div>  
        </div>
        <div class="ln_solid"></div>
        <div class="form-group">
          <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
            <a class="btn btn-primary" type="button" href="<?= $back; ?>">Back</a>
            <button class="btn btn-primary" type="reset">Reset</button>
            <a class="btn btn-primary" type="button" href="/admin/customer/delete?id=<?=$customer['id']?>">Delete</a>
            <button class="btn btn-primary"
                onclick="
                document.getElementById('edit-customer-form').setAttribute('action', '/admin/customer/update?back=1');
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