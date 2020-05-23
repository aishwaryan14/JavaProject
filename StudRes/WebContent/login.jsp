<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <title>Login</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
	<a class="navbar-brand" href="#"><img src="" width="100" height="50" alt=""></a>
	 <a class="navbar-brand" href="homePage.jsp">Home</a>
  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    	<span class="navbar-toggler-icon"></span>
  	</button>
</nav>  
<div class="container-fluid bg">  
    <div class="row">  
        <div class="col-md-4 col-sm-4 col-xs-12"></div>
            <div class="col-md-4 col-sm-4 col-xs-12">
			<form action="Login" method="post" style="border: 1px solid black;
    				padding: 30px 40px;
    				background-color: white;
    				-webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
    				-moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
    				box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);">
    			User name : <input type="text" name="uname" class="form-control"><br><br>
    			Password  : <input type="password" name="pass" class="form-control"><br><br>
    			<input type="submit" class="btn btn-lg btn-primary btn-block" value="Login">
			</form>
			</div>
	</div>
</div>

</body>
</html>