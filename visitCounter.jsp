<%@page %>
<html>
<head>
	<title>Contador de visitas con el objeto application</title>
</head>
<body>
	<%
		Integer counter = (Integer) application.getAttribute("hitCounter");
		if(counter == null || counter == 0){
	%>
		<p>Bienvenido a mi sitio</p>
	<%
		counter = 1;
		}  else { 
	%>
		<p>Bienvenido nuevamente a mi sitio</p>
	<%
		counter += 1;
		}
		application.setAttribute("hitCounter", counter);
	%>
	<p>Numero de visitas: <%=counter%></p>
</body>
</html>