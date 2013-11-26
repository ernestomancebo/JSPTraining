<%@page import="java.io.*, java.util.*"%>
<html>
<head>
	<title>Redireccionando pagina</title>
</head>
<body>
	<h3>Redireccionando..</h3>
	<%
	String location = "fileUploader.jsp";
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", location);
	%>
</body>
</html>