<div class="btn-group">
    <button data-toggle="dropdown" class="btn btn-primary btn-action dropdown-toggle btn-sm" type="button" aria-expanded="false">Actions<span class="caret"></span>
    </button>
    <ul role="menu" class="dropdown-menu">
        <?php foreach ($actions as $item): ?>
        <li>
            <a href="<?= $item['link'] ?>" class="btn-<?=$item['name']?>"><?= $item['name'] ?></a>
        </li>
        <?php endforeach ?>
    </ul>
</div>