<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<html>
<head>
	<title>Formateando XMLs</title>
</head>
<body>
	<h2>Info de libros</h2>
	<c:set var="xmltext">
		<books>
			<book>
				<name>La importancia de llamarse Ernesto</name>
				<author>Oscar Wilde</author>
				<price>150</price>
			</book>
			<book>
				<name>El Viejo y el Mar</name>
				<author>Ernest Hemingway</author>
				<price>125</price>
			</book>
		</books>
	</c:set>
	<!-- <c:import var="xmltext" url="http://localhost:8080/JSPTraining/books.xml"/> -->
	<c:import url="http://localhost:8080/JSPTraining/style.xsl" var="xslt" />
	<x:transform xml="${xmltext}" xslt="${xslt}"/>
</body>
</html>