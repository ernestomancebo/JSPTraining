<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<html>
<head>
	<title>Parseando XMLs</title>
</head>
<body>
	<h2>Info de libros</h2>
	<c:import var="bookInfo" url="http://localhost:8080/JSPTraining/books.xml"/>

	<x:parse xml="${bookInfo}" var="output"/>
	<b>El primer libro se llama: </b> <x:out select="$output/books/book[1]/name"/> <br/>
	<b>El segundo libro cuesta: </b> <x:out select="$output/books/book[2]/price"/>
</body>
</html>