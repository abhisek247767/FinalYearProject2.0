<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="template.jsp"/>
</head>
<body>
	<h1 align="center"> Thanks For Reaching me</h1>

	<form action = "login.jsp" method = "POST", align="center">
         Enter Your Name: <input type = "text" name = "Name">
         <br />
         Enter your email id : <input type = "text" name = "mailId" />
         <br>
         <br>
         <input type = "submit" value = "Submit" />
      </form>

</body>
</html>