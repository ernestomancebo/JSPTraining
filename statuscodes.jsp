<%@page %>
<html>
<head>
	<title>Probando Status codes</title>
</head>
<body>
	<%
	response.sendError(404, "que pasa papa??");
	%>
</body>
</html>