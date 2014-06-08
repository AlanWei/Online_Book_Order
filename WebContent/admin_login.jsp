<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-3.1.1-dist/css/bootstrap.css" />
<title>Admin Login</title>
</head>
<body>
	<div class="page-header">
		<h1>
			Online Book Order <small>Save your time and money</small>
		</h1>
	</div>
	<form role="form" action="admin.login" method="get">
		<div class="form-group">
			<lable for="name">Admin Name</lable>
			<input type="text" class="form-control" id="enter" placeholder="Enter the admin name here" name="name">
		</div>
		<div class="form-group">
			<lable for="name">Password</lable>
			<input type="text" class="form-control" id="enter" placeholder="Enter the password here" name="password">
		</div>
		<button type="submit" class="btn btn-primary">Login</button>
		<button type="reset" class="btn btn-primary">Reset</button>
	</form>
</body>
</html>