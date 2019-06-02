<!-- Modal -->
<div id="registerModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Become a member:</h4>
      </div>
      <form action="/registerPost" method="POST">
      	<div class="modal-body">
    	  <div class="form-group">
		    <label for="firstname">Firstname:</label>
		    <input type="text" class="form-control" id="firstname" name="firstname" required>
		  </div>
		  <div class="form-group">
		    <label for="lastname">Lastname:</label>
		    <input type="text" class="form-control" id="lastname" name="lastname" required>
		  </div>
		  <div class="form-group">
		    <label for="email">Email address:</label>
		    <input type="email" class="form-control" id="email" name="email" required>
		  </div>
		  <div class="form-group">
		    <label for="password">Password:</label>
		    <input type="password" class="form-control" id="firstpassword" name="password" minlength="6" required>
		  </div>
		  <div class="form-group">
		    <label for="repassword">Re-Password:</label>
		    <input type="password" class="form-control" id="repassword" name="repassword" required>
		  </div>
	    </div>
		<div class="modal-footer">
			<button type="submit" class="btn btn-default">Register</button>
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
		</form>
      </div>
    </div>
  </div>
</div>