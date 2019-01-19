<div class="page-filter">
    <span class="text-uppercase">Page:</span>
    <select class="input" name="page" id="pagination">
        <?php for($i = 1; $i <= $pagination['last']; $i++): ?>
        <option value="<?= $i;?>" <?= ($page == $i) ? 'selected' : ''; ?>><?=$i;?></option>
        <?php endfor; ?>
    </select>
</div>