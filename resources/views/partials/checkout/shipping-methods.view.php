<div class="shiping-methods">
	<div class="section-title">
		<h3 class="title">Shipping Details</h3>
	</div>
	<div class="form-group">
		<input class="input" type="text" name="shipping[firstname]" placeholder="First Name" value="<?=auth()['firstname'] ? auth()['firstname'] : ''?>">
	</div>
	<div class="form-group">
		<input class="input" type="text" name="shipping[lastname]" placeholder="Last Name" value="<?=auth()['lastname'] ? auth()['lastname'] : ''?>">
	</div>
	
	<div class="form-group">
		<input class="input" type="text" name="shipping[address]" placeholder="Address" value="<?=auth()['address'] ? auth()['address'] : ''?>">
	</div>
	<div class="form-group">
		<input class="input" type="text" name="shipping[city]" placeholder="City" value="<?=auth()['city'] ? auth()['city'] : ''?>">
	</div>
	<div class="form-group">
		<input class="input" type="text" name="shipping[country]" placeholder="Country" value="<?=auth()['country'] ? auth()['country'] : ''?>">
	</div>
	<div class="form-group">
		<input class="input" type="text" name="shipping[zip_code]" placeholder="ZIP Code">
	</div>
	<div class="form-group">
		<input class="input" type="text" name="shipping[tel]" placeholder="Telephone" value="<?=auth()['tel'] ? auth()['tel'] : ''?>">
	</div>
	<div class="section-title">
		<h4 class="title">Shiping Methods</h4>
	</div>
	<?php foreach ($shipping_methods as $index => $method): ?>
		<div class="input-checkbox">
			<input class="shipping-method" type="radio" name="shipping_method" 
				id="<?=$method['shipping_method_code']?>" 
				<?=$selected_shipping == $method['shipping_method_code'] ? 'checked' : ''?> 
				value="<?=$method['id']?>" 
				data-code="<?=$method['shipping_method_code']?>" 
				data-fee="<?=$method['fee']?>"
			>
			<label for="<?=$method['shipping_method_code']?>"><?=$method['display_name']?> -  <?=currency_price($method['fee'])?></label>
			<div class="caption">
				<p><?=$method['description']?><p>
			</div>
		</div>
	<?php endforeach ?>
</div>