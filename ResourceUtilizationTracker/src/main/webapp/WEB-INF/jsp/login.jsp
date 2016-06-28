<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<script src="js/jquery-1.12.3.js"></script>
<script src="js/window.js"></script>
<style>
	.well-lg { 
		background-color: #99b3ff; /* Blue */
		color: #ffffff;
	}
	.head { 
		color: #2e6da4;
	}
		
	h3 {
		font-size: 28px;
		font-style: normal;
		font-variant: normal;
		font-weight: 500;
		line-height: 15.4px;
	}
	
	.well-custom { 
		background-color: #99b3ff; /* Blue */
		color: #ffffff;
	}
	
	.float-extreme-left {
		float: left 
	}
	
	.float-mid-left {
		float: left;
		margin-left	: 25px;	
	}
	.top-10{
		top: 5px 
	}
	.label-pad{
		padding-top: 4px;

	}
	.hide{
		display : none;
	}
</style>
</head>
<body>
<div class="container">
<h3 class="text-center">Status Tracker</h3>
<div class="well well-lg" id="content-replaceable">
<div class="col-sm-12 text-center"><h4 class="head"> Login </h4></div>
<div class="col-sm-12">&nbsp;</div>
<form role="form" name="login" id="login">
    <div class="form-group">
      <label for="username">Username:</label>
      <input type="text" class="form-control" id="username" placeholder="Username" name="username">
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Password" name="password">
    </div>
	<div class="col-sm-12" id="display">&nbsp;</div>
	<div class="col-sm-12"><button class="btn btn-primary btn-block" id="login-button">Login!</button></div>
</form>
</div>
</div>
</body>
</html>