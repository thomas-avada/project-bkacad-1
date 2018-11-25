<div id="alert-box" class="container">
    <?php
        if(flash()->hasMessages()){
            echo flash()->display();
        }
    ?>
</div>
