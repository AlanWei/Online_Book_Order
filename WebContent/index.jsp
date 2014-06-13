<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-3.1.1-dist/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/customize/index.css" />
<link rel="icon" href="static/favicon.ico" type="image/x-icon">
<title>Online Book Ordering</title>
</head>
<body>
	<div class="container">
		<div class="masthead">
			<a href="index.jsp"><img src="static/red-book-logo.png"
				class="logo"></a>
			<ul class="nav nav-pills pull-right top-nav">
				<li class="top-nav-item"><a href="#hot-books">Hot books</a></li>
				<li class="top-nav-item"><a href="#hot-books">Shopping cart</a></li>
				<li class="top-nav-item"><a href="#hot-books">Your order</a></li>
				<li class="top-nav-item"><a href="#hot-books">Sign in</a></li>
			</ul>
		</div>
	</div>

	<div class="home"
		style="background-image: url(static/Library-Books.jpg)">
		<div class="intro">
			<h3>Your Personal Book Library</h3>
			<p class="subtitle">Enrich your knowledge and experience.</p>
			<button id="start-btn" class="btn btn-success btn-lg">Get
				Started Free</button>
		</div>
	</div>

	<div class="container book-list" id="hot-books">
		<div class="book-title">
			<h4 class="col-md-4">
				<img src="static/book-icon.png" class="icon"> Design of
				Everyday Things
			</h4>
			<h4 class="col-md-4">
				<img src="static/book-icon.png" class="icon"> Emotional Design
			</h4>
			<h4 class="col-md-4">
				<img src="static/book-icon.png" class="icon">What the Dog Saw
			</h4>
		</div>
		<div class="book-intro">
			<div class="col-md-4">I consider this the canonical product
				design book, and it's a great place for anyone to start, especially
				if you don't already have a background in design. It will show you
				how to look at the world in terms of design. After reading this book
				you'll start to notice good and bad designs all around you.</div>
			<div class="col-md-4">After writing The Design of Everyday
				Things, Norman realized that his clarity & utility based view of the
				world wasn't complete - there's something more. In this book, he
				talks about how to create an emotional connection to products.</div>
			<div class="col-md-4">There's a lot of great articles in this
				book, but the one that's really inspirational for PMs is "The
				Pitchman". It profiles Ron Popeil, an infomercial salesman, and how
				he would build marketing into his products so that they would sell
				themselves.</div>
		</div>
	</div>

	<div class="container row2">
		<div class="book-title">
			<h4 class="col-md-4">
				<img src="static/book-icon.png" class="icon"> The Mythical
				Man-Mouth
			</h4>
			<h4 class="col-md-4">
				<img src="static/book-icon.png" class="icon"> Crossing the
				Chasm
			</h4>
			<h4 class="col-md-4">
				<img src="static/book-icon.png" class="icon"> The Lean Startup
			</h4>
		</div>
		<div class="book-intro">
			<div class="col-md-4">This is a classic book on how teams come
				together to build software. The book explains how each additional
				person you add to the team adds complexity - so a project that one
				person could do in a month would not go 4 times faster if you put 4
				people on it.</div>
			<div class="col-md-4">Learn about the gap between early
				adopters and the mainstream, along with techniques to bridge the
				gap.</div>
			<div class="col-md-4">One of the worst things a PM can do is
				build a product that nobody wants. This book shows you how to avoid
				that by building a minimum viable product and paying attention to
				the metrics that matter.</div>
		</div>
	</div>
	
	<div class="footer">
		<div class="container">
			<div class="row contact1">
			<!--
				<div class="col-md-2">Blog</div>
				<div class="col-md-2">Contact Us</div>
			-->
				<div class="col-md-12" id="social">
				<img src="static/32/mail.png">
				<img src="static/32/facebook.png">
				<img src="static/32/twitter.png">
				</div>
			</div>
			<div class="row contact2">
				<div class="col-md-12" id="copyright">Made by Alan Wei in Hangzhou China, June 2014</div>
				<!--<div class="col-md-6" id="copyright">© 2012-2014</div>-->
			</div>
		</div>
	</div>
</body>
</html>