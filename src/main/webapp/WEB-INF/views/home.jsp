<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<!-- csrt for log out-->
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>
	<h1>
		<center>MyShop</center>
	</h1>

	
	<c:choose>
		<c:when test="${pageContext.request.userPrincipal.name != null}">
		<a href="/myshop/products"><center>Wybierz produkty</center></a></br>
			<a href="/myshop/cart"> <center>Koszyk</center></a></br>
			<a href="javascript:formSubmit()"> <center>Wyloguj się</center></a></br>
		</c:when>
		<c:otherwise>
			<a href="/myshop/login"><center>Zaloguj się</center></a></br>
			<a href="/myshop/registration"><center>Zarejestruj</center></a></br>
		</c:otherwise>
	</c:choose>
	<a href="/myshop/admin"><center>Panel administracyjny</center>
</body>
</html>
