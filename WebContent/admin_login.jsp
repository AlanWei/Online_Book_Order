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

	<!-- login modal -->
	
	<div class="modal-backdrop" id="admin_login" role="dialog"
		aria-labelledby="admin_loginLabel">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="admin_loginLabel">Admin Login</h4>
				</div>
				<form role="form" action="admin.login" method="get">
					<div class="modal-body">
						<div class="form-group">
							<lable>Admin Name</lable>
							<input type="text" class="form-control"
								placeholder="Enter the admin name" name="name">
						</div>
						<div class="form-group">
							<lable>Password</lable>
							<input type="password" class="form-control"
								placeholder="Enter the password" name="password">
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">Login</button>
						<button type="reset" class="btn btn-primary">Reset</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
</body>
</html>