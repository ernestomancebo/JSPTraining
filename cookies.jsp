<%!
final int hora = 60*60;
%>

<%
Cookie nombre = new Cookie("nombre", request.getParameter("nombre"));
Cookie apellido = new Cookie("apellido", request.getParameter("apellido"));

nombre.setMaxAge(hora*2);
apellido.setMaxAge(hora*2);

response.addCookie(nombre);
response.addCookie(apellido);
%>

<html>
<head>
	<title>Probando con Cookies</title>
</head>
<body>
	<ul>
		<li><b>Nombre: </b> <%=request.getParameter("nombre")%></li>
		<li><b>Apellido: </b> <%=request.getParameter("apellido")%></li>
	</ul>
</body>
</html>