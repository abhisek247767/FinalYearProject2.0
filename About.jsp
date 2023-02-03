<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About</title>
<jsp:include page="template.jsp"/>
</head>
<body>
	<p>
	My name is <strong>-----------------</strong><br>
	I am  a ------------<br>
	<br>
	<% java.util.Date d = new java.util.Date();
        out.println("You are login in "+d.toString()); %>
</body>
</html>