<%@ page import="java.util.Date" %>

<%!
String title = "Bienvenido de vuelta a mi sitio";
String conteoVisitaLlave = "conteoVisita";
Integer conteoVisita = new Integer(0);
String userIDLlave = "userID";
String userID = "elne";
%>

<%
Date creationTime = new Date(session.getCreationTime());
Date lastAccesstime = new Date(session.getLastAccessedTime());

if(session.isNew()){
	title = "Bienvenido a mi sitio";
	session.setAttribute(userIDLlave, userID);
	session.setAttribute(conteoVisitaLlave, conteoVisita);
}

userID = (String) session.getAttribute(userIDLlave);
conteoVisita = (Integer) session.getAttribute(conteoVisitaLlave);
conteoVisita = conteoVisita + 1;
session.setAttribute(conteoVisitaLlave, conteoVisita);
%>

<html>
<head>
	<title>Haciendo tracking de sesiones</title>
</head>
<body>
	<h2>Trackin de sesiones</h2>
	<table border="1", aling="center">
		<tr bgcolor="#949494">
			<th>Info de sesion</th>
			<th>Data</th>
		</tr>
		<tr>
			<td>ID Sesion</td>
			<td><%=session.getId()%></td>
		</tr>
		<tr>
			<td>Creacion</td>
			<td><%= creationTime%></td>
		</tr>
		<tr>
			<td>Ultima Visita</td>
			<td><%= lastAccesstime%></td>
		</tr>
		<tr>
			<td>ID Usuario</td>
			<td><%= userID%></td>
		</tr>
		<tr>
			<td>Visitas anteriores</td>
			<td><%= conteoVisita%></td>
		</tr>
	</table>
</body>
</html>