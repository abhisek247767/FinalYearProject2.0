<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>welcome to my kingdom</title>
<jsp:include page="template.jsp" />

</head>
<body bgcolor="cyan">
	<h1 align="center">Login Page</h1>
	<form action="login" method="post" align="center">

		<input type="text" name="uname" value="Name..."
			onclick="this.value=''" /><br /> <input type="text" name="umail"
			value="Email ID..." onclick="this.value=''" /><br /> <input
			type="password" name="upass" value="Password..."
			onclick="this.value=''" /><br /> <input type="submit" />

	</form>

</body>
</html>