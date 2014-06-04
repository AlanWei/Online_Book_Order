<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-3.1.1-dist/css/bootstrap.css" />
<title>Online Book Ordering</title>
</head>
<body>
	<div class="page-header">
		<h1>
			Online Book Order <small>Save your time and money</small>
		</h1>
	</div>
	<ul class="nav nav-tabs">
		<li class="active"><a href="index.jsp">Home</a>
		<li><a href="purchase.jsp">My Shopping Cart</a>
		<li><a href="about.jsp">About</a>
	</ul>

	<table class="table table-hover">
		<caption id="table_header">Books Available</caption>
		<thead>
			<tr class="bl_center">
				<th>Cover</th>
				<th>Title</th>
				<th>Author</th>
				<th>Price</th>
				<th>Buy</th>
			</tr>
		</thead>
		<tbody>
			<tr class="bl_center">
				<th><img class="pic" src="static/The Ides of March.jpg"
					height="200"></th>
				<th>The Ides of March</th>
				<th>Valerio Massimo Manfredi</th>
				<th>$13.40</th>
				<th><form action="book.do" method="get">
						<input name="button" type="submit" class="btn btn-primary"
							value="Buy it now!" />
					</form></th>
			</tr>
			<tr class="bl_center">
				<th><img class="pic" src="static/The Ides of March.jpg"
					height="200"></th>
				<th>The Ides of March</th>
				<th>Valerio Massimo Manfredi</th>
				<th>$13.40</th>
				<th><form action="book.do" method="get">
						<input name="button" type="submit" class="btn btn-primary"
							value="Buy it now!" />
					</form></th>
			</tr>
		</tbody>
	</table>



	<!-- JS -->
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="css/bootstrap-3.1.1-dist/js/bootstrap.js"></script>
</body>
</html>