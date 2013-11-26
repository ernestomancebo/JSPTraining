<%@page %>
<html>
<head>
	<title>Registro de usuario</title>
</head>
<body>
	<form action="cookies.jsp" method="GET">
		Nombre: <input type="text" name="nombre"/><br/>
		Apellido: <input type="text" name="apellido">
		<input type="checkbox" name="habilitado" checked="true">Habilitado
		<input type="checkbox" name="trabaja" checked="true">Trabaja
		<input type="submit" value="Enviar">
	</form>
</body>
</html>