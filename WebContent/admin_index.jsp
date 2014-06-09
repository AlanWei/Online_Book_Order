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
<script src="css/jquery/jquery-1.11.1.js"></script>
<script src="css/bootstrap-3.1.1-dist/js/bootstrap.js"></script>
<title>Manage Books</title>
</head>
<body>
	<div class="page-header">
		<h1>
			Online Book Order <small>Save your time and money</small>
		</h1>
	</div>
	<div class="welcome">
		<h3 class="welcome">
			Welcome
			<%
			out.println(name);
		%>!
		</h3>
	</div>

	<!-- Button trigger modal -->
	<div class="add_btn">
		<button class="btn btn-primary" data-toggle="modal"
			data-target="#add_new_book">Add new book</button>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="add_new_book" tabindex="-1" role="dialog"
		aria-labelledby="add_new_bookLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="add_new_bookLabel">Add a new book</h4>
				</div>
				<form role="form" action="book.add" method="post">
					<div class="modal-body">
						<div class="form-group">
							<lable>Title</lable>
							<input type="text" class="form-control"
								placeholder="Enter the book title" name="title">
						</div>
						<div class="form-group">
							<lable>Author</lable>
							<input type="text" class="form-control"
								placeholder="Enter the author name" name="author">
						</div>
						<div class="form-group">
							<lable>Price</lable>
							<input type="text" class="form-control"
								placeholder="Enter the price for a single book"
								name="price">
						</div>
						<div class="form-group">
							<lable>Quantity</lable>
							<input type="text" class="form-control"
								placeholder="Enter the stock quantity" name="quantity">
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">Add</button>
						<button type="reset" class="btn btn-primary">Reset</button>
						<!--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>-->
					</div>
				</form>
			</div>
		</div>
	</div>

	<div>
		<table class="table table-hover">
			<thead>
				<tr class="bl_center">
					<th>BookID</th>
					<th>Title</th>
					<th>Author</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<%
					DatabaseManager dm = new DatabaseManager();
											List<Book> bl = dm.bookList();
											for(int i=0; i<bl.size(); i++)
											{
												String bookId = bl.get(i).getId();
												String bookTitle = bl.get(i).getTitle();
												String bookAuthor = bl.get(i).getAuthor();		
												float bookPrice = bl.get(i).getPrice();
												int bookQuantity = bl.get(i).getQuantity();
				%>
				<tr>
					<td class="sc_booklist">
						<%
							out.print(bookId);
						%>
					</td>
					<td class="sc_booklist">
						<%
							out.print(bookTitle);
						%>
					</td>
					<td class="sc_booklist">
						<%
							out.print(bookAuthor);
						%>
					</td>
					<td class="sc_booklist">
						<%
							out.print(bookPrice);
						%>
					</td>
					<td class="sc_booklist">
						<%
							out.print(bookQuantity);
						%>
					</td>
					<td>
					<!-- button -->
					<span style="float: left;">
							<button class="btn btn-default" data-toggle="modal"
								data-target="#edit_book">Edit</button>
								</span>
					<!-- Modal -->
					<form role="form" action="book.edit" method="post">
						<div class="modal fade" id="edit_book" tabindex="-1" role="dialog"
							aria-labelledby="edit_bookLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="edit_bookLabel">Edit book
											info</h4>
									</div>
									
										<div class="modal-body">
											<div class="form-group">
												<lable>Title</lable>
												<input type="text" class="form-control"
													placeholder="Enter the book title" name="title">
											</div>
											<div class="form-group">
												<lable>Author</lable>
												<input type="text" class="form-control"
													placeholder="Enter the author name" name="author">
											</div>
											<div class="form-group">
												<lable>Price</lable>
												<input type="text" class="form-control"
													placeholder="Enter the price for a single book"
													name="price">
											</div>
											<div class="form-group">
												<lable>Quantity</lable>
												<input type="text" class="form-control"
													placeholder="Enter the stock quantity" name="quantity">
											</div>
										</div>
										<div class="modal-footer">
											<button type="submit" class="btn btn-primary">Save</button>
											<button type="reset" class="btn btn-primary">Reset</button>
										</div>
									
								</div>
							</div>
						</div>
						</form>
						
						<form action="book.delete?<%out.print(bookId);%>" method="post">
						<span style="float: right">
							<button type="submit" class="btn btn-default">Delete</button>
							</span>
						</form>
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