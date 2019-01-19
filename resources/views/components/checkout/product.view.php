<tr>
	<td class="thumb"><img src="/<?=$item->getOption('img')?>" alt=""></td>
	<td class="details">
		<a href="#"><?=$item->getName();?></a>
	</td>
	<td class="price text-center"><strong><?=currency_price($item->getPrice())?></strong><br><del class="font-weak"></td>
	<td class="qty text-center"><input class="input" type="number" value="<?=$item->getQty();?>" name="<?=$item->getId()?>" disabled></td>
	<td class="total text-center"><strong class="primary-color"><?=currency_price($item->getItemAmount())?></strong></td>
</tr>