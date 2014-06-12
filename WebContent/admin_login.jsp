<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-3.1.1-dist/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="css/customize/admin_login.css" />
<title>Admin Login</title>
</head>
<body>
	
	<div class="container">
		<form class="form-signin" role="form" action="admin.login" method="get">
			<h2>Admin Login</h2>
			<input type="text" class="form-control" placeholder="Admin Name" name="name" required autofocus>
			<input type="password" class="form-control" placeholder="Password" name="password">
			<button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
		</form>
	</div>
	
</body>
</html>