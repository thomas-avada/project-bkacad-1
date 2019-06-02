<!-- store top filter -->
<div class="store-filter clearfix">
    <div class="pull-left">
        <?php component('sortby', compact('order', 'direction')); ?>
    </div>
    <div class="pull-right">
        <?php component('show-items', compact('limit')); ?>
        <?php component('pagination', compact('pagination', 'page'));?>
    </div>
</div>
<!-- /store top filter -->

<!-- STORE -->
<div id="store">
    <!-- row -->
    <div class="row">
        <?php foreach ($products as $product): ?>
            <!-- Product Single -->
            <div class="col-md-4 col-sm-6 col-xs-6">
                <?php component('product', compact('product', 'wishlists')); ?>
            </div>
            <!-- /Product Single -->
        <?php endforeach ?> 
    </div>
    <!-- /row -->
</div>