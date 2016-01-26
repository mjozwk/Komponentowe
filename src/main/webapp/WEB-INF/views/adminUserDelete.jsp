<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MyShop</title>
</head>
<body>
<table border="1">
			<tr>
				<th>ID</th>
				<th>Użytkownik</th>
				<th>Nr telefonu</th>
				<th>E-mail</th>
				<th>Akcja</th>
			</tr>
			<c:forEach var="it" items="${users}">
				<td>${it.id}</td>
				<td>${it.username}</td>
				<td>${it.phone}</td>
				<td>${it.email}</td>
				<td><a href="user/delete/${it.id}">Usuń klienta</a></td>

				</tr>
			</c:forEach>
		</table>
		<br>
<a href="/myshop">Cofnij</a>
</body>
</html>