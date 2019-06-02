
<div class="col-md-9">
	<div class="row">
		
		<div class="col-md-6">
			<div class="section-title">
				<h4 class="title">Account Information</h4>
			</div>
			<div class="row">
				<div class="col-md-9">
					<p>
						<strong>Customer Name: </strong>
						<?= $user['firstname'] ?> <?= $user['lastname'] ?>
					</p>
					<p>
						<strong>Customer Email: </strong>
						<?= $user['email'] ?>
					</p>
					<p>
						<strong>Customer Tel: </strong>
						<?= $user['tel'] ?>
					</p>
				</div>
				<div class="col-md-3">
					<img src="/public/storage/<?= $user['avatar'] ?>" class="img-circle img-responsive">
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="section-title">
				<h4 class="title">Account Address</h4>
			</div>
			<p>
				<strong>Address: </strong>
				<?= $user['address'] ?>
			</p>
			<p>
				<strong>City: </strong>
				<?= $user['city'] ?>
			</p>
			<p>
				<strong>Country: </strong>
				<?= $user['country'] ?>
			</p>
		</div>
		<div class="col-md-12">
			<button class="primary-btn" data-toggle="modal" data-target="#update-info-modal">Update Information</button>
			<button class="btn btn-link" data-toggle="modal" data-target="#change-pwd-modal">Change password</button>
		</div>
	</div>
</div>

<!-- Modal -->
<div id="update-info-modal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Customer Infomation Update</h4>
      </div>
      <form action="/customer/info/update" method="POST">
      	<div class="modal-body">
	        <div class="form-group">
			    <label for="firstname">Firstname:</label>
			    <input type="text" class="form-control" id="firstname" name="firstname" value="<?=$user['firstname'] ? $user['firstname'] : ''?>" required>
		    </div>
		    <div class="form-group">
			    <label for="lastname">Lastname:</label>
			    <input type="text" class="form-control" id="lastname" name="lastname" value="<?=$user['lastname'] ? $user['lastname'] : ''?>" required>
		    </div>
		    <div class="form-group">
			    <label for="tel">Tel:</label>
			    <input type="text" class="form-control" id="tel" name="tel" value="<?=$user['tel'] ? $user['tel'] : ''?>">
		    </div>
		    <div class="form-group">
			    <label for="address">Address:</label>
			    <input type="text" class="form-control" id="address" name="address" value="<?=$user['address'] ? $user['address'] : ''?>">
		    </div>
		    <div class="form-group">
			    <label for="city">City:</label>
			    <input type="text" class="form-control" id="city" name="city" value="<?=$user['city'] ? $user['city'] : ''?>">
		    </div>
		    <div class="form-group">
			    <label for="country">Country:</label>
		    <input type="text" class="form-control" id="country" name="country" value="<?=$user['country'] ? $user['country'] : ''?>">
		    </div>
		</div>
		<div class="modal-footer">
			<button type="submit" class="btn btn-primary">Submit</button>
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
      </form>
      
    </div>

  </div>
</div>
<!-- Modal -->
<div id="change-pwd-modal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Change password</h4>
      </div>
      <form action="/password/change" method="POST">
      	<div class="modal-body">
	        <div class="form-group">
			    <label for="old-password">Old password:</label>
			    <input type="password" class="form-control" id="old-password" name="old-password" required>
		    </div>
		    <div class="form-group">
			    <label for="password">New password:</label>
			    <input type="password" class="form-control" id="firstpassword" name="password" minlength="6" required>
		    </div>
		    <div class="form-group">
			    <label for="repassword">Re-password:</label>
			    <input type="password" class="form-control" id="repassword" name="repassword" required>
		    </div>
		</div>
		<div class="modal-footer">
			<button type="submit" class="btn btn-primary">Submit</button>
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
      </form>
      
    </div>

  </div>
</div>