<div class="product product-widget">
    <div class="product-thumb">
        <img src="/<?=$item->getOption('img')?>" alt="">
    </div>
    <div class="product-body">
        <h3 class="product-price"><?=currency_price($item->getPrice());?><span class="qty">x<?=$item->getQty();?></span></h3>
        <h2 class="product-name"><a href="/products?s=<?=$item->getOption('slug')?>"><?=$item->getName();?></a></h2>
    </div>
    <button class="cancel-btn"><i class="fa fa-trash"></i></button>
</div>