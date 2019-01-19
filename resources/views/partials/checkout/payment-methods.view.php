<div class="payments-methods">
	<div class="section-title">
		<h4 class="title">Payments Methods</h4>
	</div>
	<?php foreach ($payment_methods as $method): ?>
		<div class="input-checkbox">
			<input type="radio" name="payment_method" class="payment-method"
				id="<?=$method['payment_method_code']?>" 
				<?=$selected_payment == $method['payment_method_code']? 'checked' :  ''?> 
				value="<?=$method['id']?>"
				data-code="<?=$method['payment_method_code']?>" 
			>
			<label for="payments-1"><?=$method['display_name']?></label>
			<div class="caption">
				<p><?=$method['description']?><p>
			</div>
		</div>
	<?php endforeach ?>
</div>