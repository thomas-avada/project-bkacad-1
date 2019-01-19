<div class="single-review">
	<div class="review-heading">
		<div>
			<a href="#"><i class="fa fa-user-o"></i> <?=$review['firstname']?></a>
		</div>
		<div>
			<a href="#">
				<i class="fa fa-clock-o"></i> 
				<?=$review['created_at']?>
			</a>
		</div>
		<div class="review-rating pull-right">
			<?php for($i =0; $i < $review['votes']; $i ++): ?>
				<i class="fa fa-star"></i>	
			<?php endfor ?>
			<?php for($i =0; $i < 5- $review['votes']; $i ++): ?>
				<i class="fa fa-star-o empty"></i>
			<?php endfor ?>
		</div>
	</div>
	<div class="review-body">
		<p><?=$review['body']?></p>
	</div>
</div>