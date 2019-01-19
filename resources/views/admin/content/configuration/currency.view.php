<div class="col-md-12 col-sm-12 col-xs-12">
  <div class="x_panel">
    <div class="x_title">
      <h1>Currency configuration</h1>
    </div>
    <div class="x_content">
      <br />
      <form id="currency-config-form" data-parsley-validate class="form-horizontal form-label-left" method="POST" enctype='multipart/form-data' action="/admin/configuration/currency">
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12" for="product-name">Currency Symbol<span class="required">*</span>
          </label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="/config/currency/currency_symbol" id="currency_symbol" required="required" class="form-control col-md-7 col-xs-12" value="<?php echo $configData['/config/currency/currency_symbol'] ? $configData['/config/currency/currency_symbol'] :'' ;?>">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-md-3 col-sm-3 col-xs-12">Currency symbol placement<span class="required">*</span></label>
          <div class="col-md-6 col-sm-6 col-xs-12">
            <select class="select2_single form-control" tabindex="-1" name="/config/currency/currency_order">
              <option value="before" <?=$configData['/config/currency/currency_order'] == 'before' ? 'selected' : '' ?>>Before</option>
              <option value="after"  <?=$configData['/config/currency/currency_order'] == 'after' ? 'selected' : '' ?>>After</option>
            </select>
          </div>
        </div>
        
        <div class="ln_solid"></div>
        <div class="form-group">
          <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
            <a class="btn btn-primary" type="button" href="<?=$back;?>">Back</a>
            <button class="btn btn-primary" type="reset">Reset</button>
            <button type="submit" class="btn btn-success">Save config</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>