<%@page import="java.util.Enumeration"%>

<html>
<head>
	<title>Probando form processing</title>
</head>
<body>
	<center>
		<table width="100%" border="1" align="center">
			<tr bgcolor="#949494">
				<td>Header</td>
				<td>Valor(es)</td>
			</tr>
			<%
			Enumeration parametros = request.getParameterNames();
			while(parametros.hasMoreElements()){
				String llave = (String) parametros.nextElement();
			%>
			<tr>
				<td>
					<%=llave%>
				</td>
				<td>
					<%= request.getParameter(llave)%>
				</td>
			</tr>
			<%
			}
			%>
		</table>
	</center>
</body>
</html>