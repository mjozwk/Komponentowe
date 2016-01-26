<%@page language="Java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MyShop</title>
</head>
<body>
	<center>
		<h1>DODAJ PRODUKT</h1>
	</center>

	<form:form action="/myshop/admin/product/insert" method="post" modelAttribute="product">
		<table>
			<tr>
				<td>Nazwa:</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>Opis:</td>
				<td><form:input path="description" /></td>
			</tr>
			<tr>
				<td>Cena:</td>
				<td><form:input path="price" /></td>
			</tr>
			<tr>
				<td>ID kategorii(1 - Elektronika, 2 - Moda i uroda, 3 - Kultura i rozrywka, 4 - Dom i zdrowie):</td>
				<td><form:input path="cat_id" /></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Dodaj"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>