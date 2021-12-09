<jsp:useBean id="counter" class="basic.web.app.CounterBean" scope="application"/>
<jsp:useBean id="greeter" class="basic.web.app.GreeterBean" scope="session"/>
<jsp:setProperty name="greeter" property="*"/>
<html>
	<head>
		<title>BasicWebApp</title>
	</head>
	<body>
		<h1>${greeter.message}</h1>
		<b>Number of greetings: </b>${counter.nextCount}
		<p>
			<form method="POST" action="beantest.jsp">
				<p>
					<b>Person: </b>
					<input type="text" name="person"/>
				</p>
				<p>
					<b>Period: </b>
					<select name="period">
						<option>Night</option>
						<option>Morning</option>
						<option>Afternoon</option>
						<option>Evening</option>
					</select>
				</p>
				<input type="submit" value="Greet"/>
			</form>
		</p>
	</body>
</html>

