<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MyShop</title>
</head>
<body>
	<center>
		<h1>LISTA PRZEDMIOTÓW W KOSZYKU</h1>

		<table>
			<tr>
				<th>ID</th>
				<th>Nazwa</th>
				<th>Opis</th>
				<th>Cena</th>
				<th>Ilość</th>
				<th>Cena całkowita</th>
			</tr>
			<c:set var="s" value="0"></c:set>
			<c:forEach var="it" items="${sessionScope.cart}">
				<c:set var="s" value="${s + it.product.price * it.quantity }"></c:set>
				<tr>
					<td>${it.product.id}</td>
					<td>${it.product.name}</td>
					<td>${it.product.description}</td>
					<td>${it.product.price}</td>
					<td>${it.quantity}</td>
					<td>${it.product.price * it.quantity}</td>
					<td><a
						href="${pageContext.request.contextPath}/shoppingcart/delete/${it.product.id}">Usuń
							z koszyka</a></td>

				</tr>
			</c:forEach>
			<tr>
				<td coldspan="5" align="right">Razem</td>
				<td>${s}</td>
			</tr>
		</table>
		<br>

	</center>
	<a href="${pageContext.request.contextPath}/products">Kontynuuj
		zakupy</a>
</body>
</html>