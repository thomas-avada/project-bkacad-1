<script src="/resources/assets/js/jquery.min.js"></script>
<script src="/resources/assets/js/bootstrap.min.js"></script>
<script src="/resources/assets/js/slick.min.js"></script>
<script src="/resources/assets/js/nouislider.min.js"></script>
<script src="/resources/assets/js/jquery.zoom.min.js"></script>
<script src="/resources/assets/js/main.js"></script>
<script src="/resources/assets/js/app.js"></script>
<?php if (isset($minprice) && isset($maxprice)) : ?>
    <script>
        slider.noUiSlider.set([<?= $minprice ?>, <?= $maxprice ?>])
    </script>
<?php endif; ?>