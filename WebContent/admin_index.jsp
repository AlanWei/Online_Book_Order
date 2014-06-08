<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.BookOrdering.model.*"%>
<%@ page import="com.BookOrdering.db.*"%>
<%@ page import="java.util.*"%>
<%
	session = request.getSession();
	String name = (String) session.getAttribute("name");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-3.1.1-dist/css/bootstrap.css" />
<title>Manage Books</title>
</head>
<body>
	<div class="page-header">
		<h1>
			Online Book Order <small>Save your time and money</small>
		</h1>
	</div>
	<div>
		<h3>
			Welcome
			<%
			out.println(name);
		%>
		</h3>
	</div>

	<div>
		<table class="table table-hover">
			<thead>
				<tr class="bl_center">
					<th>Title</th>
					<th>Author</th>
					<th>Price</th>
					<th>Quantity</th>
				</tr>
			</thead>
			<tbody>
				<%
					DatabasaManager dm = new DatabasaManager();
											List<Book> bl = dm.bookList();
										      for(int i=0; i<bl.size(); i++)
										      {
										        String bookTitle = bl.get(i).getTitle();
										        String bookAuthor = bl.get(i).getAuthor();
										        float bookPrice = bl.get(i).getPrice();
										        int bookQuantity = bl.get(i).getQuantity();
				%>
				<tr class="sc_booklist">
					<td>
						<%
							out.print(bookTitle);
						%>
					</td>
					<td>
						<%
							out.print(bookAuthor);
						%>
					</td>
					<td>
						<%
							out.print(bookPrice);
						%>
					</td>
					<td>
						<%
							out.print(bookQuantity);
						%>
					</td>
					<%
						}
					%>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>