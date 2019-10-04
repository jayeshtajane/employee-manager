<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>User login page</p>
	<form name="f" action="emp_login" method="POST">   
		<table>
			<tr>
				<td>User:</td>
				<td><input type="text" name="username" value=""></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td><input name="submit" type="submit" value="submit" /></td>
			</tr>
		</table>
	</form>
</body>
</html>