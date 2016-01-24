<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rejestracja</title>
</head>
<body>
	<center>
		<h1>REJESTRACJA</h1>
	</center>

	<form:form action="/myshop/registration" method="post" modelAttribute="user">
		<table>
		<form:hidden path="id" />
			<tr>
				<td>Nick:</td>
				<td><form:input path="username" /></td>
			</tr>
			<tr>
				<td>Hasło:</td>
				<td><form:input type="password" path="password" /></td>
			</tr>
			<tr>
				<td>Nr telefonu:</td>
				<td><form:input path="phone" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Zarejestruj"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>