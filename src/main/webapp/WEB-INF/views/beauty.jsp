<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Produkty</title>
</head>
<body>

	<style type="text/css">
table.sample {
	border-width: 5px;
	border-spacing: 5px;
	border-style: none;
	border-color: gray;
	border-collapse: separate;
	background-color: white;
}

table.sample th {
	border-width: thick;
	padding: 5px;
	border-style: outset;
	border-color: gray;
	background-color: white;
	-moz-border-radius:;
}

table.sample td {
	border-width: thick;
	padding: 5px;
	border-style: outset;
	border-color: gray;
	background-color: white;
	-moz-border-radius:;
}
</style>

	<table class="sample">
		<th><a href="electronics">ElEKTRONIKA</a></th>
		<th><a href="beauty">MODA I URODA</a></th>
		<th><a href="culture">KULTURA I ROZRYWKA</a></th>
		<th><a href="house">DOM I ZDROWIE</a></th>
	</table>

	<table border="1">
		<tr>
			<th>Nazwa</th>
			<th>Opis</th>
			<th>Cena</th>
			<th>Akcja</th>
		</tr>
		<c:forEach var="product" items="${products}">
			<c:choose>
				<c:when test="${product.getCategory().getId() == 2 }">
					<tr>
						<td>${product.name}</td>
						<td>${product.description}</td>
						<td>${product.price}</td>
						<td><a
							href="${pageContext.request.contextPath}/shoppingcart/ordernow/${product.id}">Dodaj
								do koszyka</a></td>

					</tr>
				</c:when>
			</c:choose>

		</c:forEach>
	</table>

</body>
</html>