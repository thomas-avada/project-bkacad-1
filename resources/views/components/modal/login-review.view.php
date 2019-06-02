<!-- Modal -->
<div id="loginBackModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Login to leave a review</h4>
      </div>
      <form action="/loginPost" method="POST">
      	<input type="hidden" name="back" value="1">
      	<div class="modal-body">
        	<div class="form-group">
		        <label for="email">Email address:</label>
		        <input type="email" class="form-control" id="email" name="email">
		    </div>
		    <div class="form-group">
		        <label for="password">Password:</label>
		        <input type="password" class="form-control" id="password" name="password">
		    </div>
	    </div>
		<div class="modal-footer">
			<button type="submit" class="btn btn-default">Login</button>
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
		</form>
      </div>
    </div>

  </div>
</div>