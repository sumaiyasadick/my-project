<?php  include 'header.php'; ?>
<body>

<!-- hapa ndo contena la page zote    -->
<div class="container-fluid">

<!-- hapa ndo row ya navbar    -->
	<div class="row">

			<nav class="navbar navbar-inverse">
			  <div class="container-fluid">
			    <div class="navbar-header">
			      <a class="navbar-brand" href="#">FILE TRACKING SYSTEM</a>
			    </div>

			    <ul class="nav navbar-nav">
			      
			     
			    </ul>
			    <ul class="nav navbar-nav navbar-right">
			       <li class=""> <button class="btn btn-success navbar-btn" data-target="#myModal" data-toggle="modal"><i class="fas fa-user "></i> Sign up</button></li>
			      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			    </ul>
			  </div>
			</nav> 
  </div>

<!-- Row ya navbar imeishia hapa   -->


<!-- hcontainer la login    -->
<div class="container">
  <div class="row">

					
			<div class="col-lg-4 col-md-4 col-md-offset-4">
				 <div class="panel panel-primary active login">
			      <div class="panel-heading">

                       <div class="log"> </div>
			       </div>
			      <div class="panel-body">
			      	

		<form action="/action_page.php">
			  <div class="form-group form">
			    <label for="email">Email address:</label>
			    <input type="email" class="form-control" id="email">
			  </div>
			  <div class="form-group">
			    <label for="pwd">Password:</label>
			    <input type="password" class="form-control" id="pwd">
			  </div>
			  <div class="checkbox">
			    <label><input type="checkbox"> Remember me</label>
			  </div>
			  <button type="submit" class="btn btn-success">Submit</button>
	    </form> 
			</div>
			      </div>
			 
				

			</div>

	</div>
</div>
<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog" style="background:#009edf;">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
           <?php include 'register.php' ?>
    </div>
  
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  <!-- mwisho wa model -->

<!-- container la login linaishia hapa   -->

<!--   -->
	
</div>

<!-- Tunafunga container lote    -->



















<?php  include 'footer.php'; ?>