<ul class="pagination">
          
  <?php for($i = 1; $i <= $pagination['last']; $i++): ?>
  <li class="<?= ($page == $i) ? 'active' : ''; ?>"><a href="/admin/products?page=<?= $i;?>"><?= $i;?></a></li>
  <?php endfor; ?>
</ul>