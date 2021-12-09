<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="customer" class="classic.web.app.CustomerBean" scope="session"/>
<jsp:setProperty name="customer" property="*"/>
<c:if test="${param.signout}">
	<c:set target="${customer}" property="id"/>
</c:if>
<html>
	<head>
		<title>ClassicWebApp</title>
	</head>
	<body>
		<h1>Welcome Customer</h1>
		<form method="POST" action="customer.jsp">
			<p>
				<b>Customer ID</b><br/>
				<input type="text" name="id"/>
			</p>
			<p>
				<b>Password</b><br/>
				<input type="password" name="password"/>
			</p>
			<input type="submit" name="submit" value="Login"/>
		</form>
		<c:if test="${param.submit == 'Login'}">
			<c:choose>
				<c:when test="${customer.authenticate()}">
					<c:redirect url="invoice.jsp"/>
				</c:when>
				<c:otherwise>
					<i>Authentication failed</i>
				</c:otherwise>
			</c:choose>
		</c:if>
	</body>
</html>

