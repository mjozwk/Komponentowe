<%@page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logowanie</title>
</head>
<body onload='document.loginForm.username.focus();'>
	<h1>Logowanie</h1>
	<div id="login-box">
		<c:if test="${not empty errorMessage}">
			<div class="error">${errorMessage}</div>
		</c:if>
		<form name='loginForm'
			action="<c:url value='j_spring_security_check' />" method='POST'>
			<table>
				<tr>

					<td>Nazwa użytkownika:</td>
					<td><input type='text' name='username' value=''></td>
				</tr>
				<tr>
					<td>Hasło:</td>
					<td><input type='password' name='password' /></td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit"
						value="Zaloguj się" /></td>
				</tr>
			</table>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
	</div>
</body>
</html>