<%@page language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Produkty</title>
</head>
<body>
	<center>
		<h1>WYBIERZ PRODUKTY</h1>
	</center>

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
		<th><a href="products/electronics">ElEKTRONIKA</a></th>
		<th><a href="products/beauty">MODA I URODA</a></th>
		<th><a href="products/culture">KULTURA I ROZRYWKA</a></th>
		<th><a href="products/house">DOM I ZDROWIE</a></th>
	</table>
	<a href="/myshop">Strona główna</a>


</body>
</html>