<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

	<style>
		body {
 		 margin: 0;
  		 font-family: Arial, Helvetica, sans-serif;
		}

		.navi {
  		overflow: hidden;
  		background-color: SlateBlue;
		}

		.navi a {
  		float: Right;
  		color: #f2f2f2;
  		text-align: center;
  		padding: 14px 16px;
  		text-decoration: none;
  		font-size: 17px;
		}

		.navi a:hover {
  		background-color: #ddd;
  		color: black;
		}

	
		

		
		.site-footer {
		position: fixed;
  		left: 0;
  		bottom: 0;
  		width: 100%;
  		 margin-bottom: -17px;
		}

		#footer-content {
 		 background: SlateBlue;
 		 text-align: center;

		}

	</style>


</head>

<body>

<!--header-->

<div class="navi">
	
	<a href="user?page=logout">LogOut</a>
	<a href="user?page=contact">Contact</a>
	<a href="user?page=about">About</a>
  	<a  href="#home">Home</a>
 
  
  
</div>





</head>
<body>

<!-- footer -->


<footer class="site-footer">
  <div id="footer-content">
    <p>Copyright 2023 @ Domain - All Rights Reserved </p>
  </div>
</footer>


</body>
</html>