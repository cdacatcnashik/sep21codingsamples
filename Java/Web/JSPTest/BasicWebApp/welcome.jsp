<jsp:useBean id="now" class="java.util.Date"/>
<html>
	<head>
		<title>BasicWebApp</title>
	</head>
	<body>
		<h1>Welcome ${empty param.id ? 'Visitor' : param.id}</h1>
		<b>Time on server: </b>${now}
	</body>
</html>

