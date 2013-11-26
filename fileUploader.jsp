<%@page %>
<html>
<head>
	<title>Subir archivo</title>
</head>
<body>
	<h3>Prueba de subir un archivo</h3>
	<form action="uploadFile.jsp" method="post" 	enctype="multipart/form-data">
		<input type="file" name="archivo" size="50"/><br/>
		<input type="submit" value="Enviar archivo"/>
	</form>
</body>
</html>