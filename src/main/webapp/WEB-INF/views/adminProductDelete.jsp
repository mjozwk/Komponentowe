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
			<th>Nazwa</th>
			<th>Opis</th>
			<th>Cena</th>
			<th>Kategoria</th>
			<th>Akcja</th>
		</tr>
		<c:forEach var="product" items="${products}">
			<tr>
				<td>${product.name}</td>
				<td>${product.description}</td>
				<td>${product.price}</td>
				<td>${product.category.name}</td>
				<td><a href="/myshop/admin/product/delete/${product.id}">Usuń produkt</a></td>
			</tr>
		</c:forEach>
	</table>


</body>
</html>