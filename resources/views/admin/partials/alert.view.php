<div id="alert-box" class="col-sm-12">
    <?php
        if(flash()->hasMessages()){
            echo flash()->display();
        }
    ?>
</div>
