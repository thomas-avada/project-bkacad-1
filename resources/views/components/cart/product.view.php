<tr>
    <td class="thumb"><img src="/<?=$item->getOption('img')?>" alt=""></td>
    <td class="details">
        <a href="/products?s=<?=$item->getOption('slug')?>"><?=$item->getName();?></a>
    </td>
    <td class="price text-center"><strong><?=currency_price($item->getPrice())?></strong><br><del class="font-weak"></td>
    <td class="qty text-center"><input class="input" type="number" min="0" value="<?=$item->getQty();?>" name="<?=$item->getId()?>"></td>
    <td class="total text-center"><strong class="primary-color"><?=currency_price($item->getItemAmount())?></strong></td>
    <td class="text-right"><a class="main-btn icon-btn" href="/cart/remove?id=<?=$item->getId()?>"><i class="fa fa-close"></i></a></td>
</tr>`