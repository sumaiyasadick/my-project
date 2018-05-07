<?php  include 'header.php'; ?>
  <title></title>
</head>
<body>

<!--naweka bar ya juu -->


<?php  include 'adminnav.php'; ?>
<!--naweka bar ya juu -->
<?php  include 'sidebar.php'; ?>
    
    <div class="col-md-9">
      <div class="well">
        <div class="row">
          
  <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
   
    </div>
    <ul class="nav navbar-nav">
      <li class=""> <button class="btn btn-success navbar-btn" data-target="#myModal" data-toggle="modal"><i class="fas fa-folder-open "></i> Create File</button></li>
        
    </ul> 
    <form class="navbar-form navbar-right" action="/action_page.php">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>

  </div>
</nav>
        </div>
        
         <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>#</th>
        <th>FIlename</th>
        <th>type</th>
        <th>Bracode</th>
        <th>Delete</th>
        <th>Update</th>
        <th>Send</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Anna</td>
        <td>Pitt</td>
        <td>35</td>
        <td><button type="button" class="btn btn-danger active"><i class="fas fa-trash  "></i> Delete</button></td>
        <td><button type="button" class="btn btn-success active"><i class="fas fa-edit "></i> update</button></td>
        <td><button class="btn btn-primary " data-target="#myModal" data-toggle="modal"><i class="fas fa-arrow-alt-circle-right"></i> Send</button></td>
      </tr>
    </tbody>
  </table>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
           <?php include 'createfile.php' ?>
    </div>
  
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  <!-- mwisho wa model -->
<!--mwisho wa bar juu -->

<?php  include 'footer.php'; ?>