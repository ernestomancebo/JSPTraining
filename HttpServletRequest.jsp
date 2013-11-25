<%@page import="java.io.*, java.util.Enumeration" %>

<html>
<head>
	<title>Prueba respuesta HTTP Servlet Request</title>
</head>
<body>
	<center>
		<h3>Atributos del Header Request</h3>
		<table width="100%" border="1" align="center">
			<tr bgcolor="#949494">
				<td>Header</td>
				<td>Valor(es)</td>
			</tr>
			<%
			Enumeration header = request.getHeaderNames();
			while(header.hasMoreElements()){
				String elemento = (String) header.nextElement();
				out.print("<tr>");
				out.print("<td>"+elemento+"</td>");
				out.print("<td>"+request.getHeader(elemento)+"</td>");
				out.print("</tr>");
			}

			out.print("<tr>");
			out.print("<td>Via</td>");
			out.print("<td>"+request.getProtocol()+"</td>");
			out.print("</tr>");

			out.print("<tr>");
			out.print("<td>Path</td>");
			out.print("<td>"+request.getServletPath()+"</td>");
			out.print("</tr>");
			%>
		</table>
	</center>
</body>
</html>