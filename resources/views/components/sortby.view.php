<div class="sort-filter">
    <span class="text-uppercase">Sort By:</span>
    <select class="input" id="orderBy" name="order">
        <option value="price" <?= $order == 'price' ? 'selected' : ''; ?>>Price</option>
        <option value="created_at" <?= $order == 'created_at' ? 'selected' : ''; ?>>Time</option>
    </select>
    <select class="input" id="sort-direction" name="direction">
        <option value="asc" <?= ($direction == 'asc') ? 'selected' : ''; ?>>Ascending</option>
        <option value="desc" <?= ($direction == 'desc') ? 'selected' : ''; ?>>Descending</option>
    </select>
</div>