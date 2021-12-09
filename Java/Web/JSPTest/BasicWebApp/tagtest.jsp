<%@taglib prefix="my" uri="http://java.met.edu/basicwebapp" %>
<html>
	<head>
		<title>BasicWebApp</title>
	</head>
	<body>
		<h1>Welcome Visitor</h1>
		<b>Time on server: </b><my:clock format="hh:mm:ss a"/>
		<p>
			<b>WINNER: </b>
			<my:lotto id="dgt" digits="10">
				<i>${dgt}</i>
			</my:lotto>
		</p>
	</body>
</html>

