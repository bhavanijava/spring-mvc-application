<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Home</title>
  </head>
 <body>

	<div>
    		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  				<a class="navbar-brand" href="/">SpringBoot MVC Application</a>
  					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    				<span class="navbar-toggler-icon"></span>
  					</button>

  				<div class="collapse navbar-collapse" id="navbarSupportedContent">
    				<ul class="navbar-nav mr-auto">
      					<li class="nav-item active">
        					<a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
      					</li> 
      					<li class="nav-item active">
        					<a class="nav-link" href="/viewall">View All<span class="sr-only">(current)</span></a>
      					</li>      
    				</ul>
  				</div>
			</nav>
   	</div>
   	
   	<div class="container">
   	<h2>Product Registration Form:</h2>
   	<div class="container" align="center"><h2>WELCOME TO TV PRODUCT REGISTER </h2></div>
  
  <div class="card">
   <div class="card-body">
    <form action="<%=request.getContextPath()%>/saveproduct" method="post">
    
    <div class="form-group row">
      <label for="code" class="col-sm-2 col-form-label">Product Code:</label>
       
      <div class="col-sm-7"><input type="text" class="form-control" name="code" placeholder="Enter Product Code"></div>
    </div>
    	

    <div class="form-group row">
      <label for="name" class="col-sm-2 col-form-label">Product Name:</label>
       
      <div class="col-sm-7"> <input type="text" class="form-control" name="name" placeholder="Enter Product Name"></div>
     </div>
     
     
     <div class="form-group row">
      <label for="cost" class="col-sm-2 col-form-label">Product Cost:</label>
       
      <div class="col-sm-7"> <input type="number" class="form-control" name="cost" placeholder="Enter Product Cost"></div>
     </div>
     
     <div class="form-group row">
      <label for="gst" class="col-sm-2 col-form-label">GST:</label>
       
      <div class="col-sm-7"> <input type="text" class="form-control" name="gst" placeholder="Enter GST "></div>
     </div>
     
     
     <div class="form-group row">
      <label for="note" class="col-sm-2 col-form-label">Product Description:</label>
       
      <div class="col-sm-7"> <input type="text" class="form-control" name="note" placeholder="Enter Product Description"></div>
     </div>
     
     
     
     <div align="center">
     
      <button type="submit" class="btn btn-success">Create Product</button>
      </div>

    
  
</div>
   	
   	
  
  
  
  
  
  
  

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>