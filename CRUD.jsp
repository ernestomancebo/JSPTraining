<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sq"%>

<html>
<head>
	<title>CRUD hacia employees</title>
</head>
<body>
	<sq:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/test" user="test" password="test"/>
	<sq:query dataSource="${snapshot}" var="result">
		select * from employees
	</sq:query>
	<table border="1" width="100%">
		<tr>
			<th>Emp ID</th>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Edad</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.first}" /></td>
				<td><c:out value="${row.last}" /></td>
				<td><c:out value="${row.age}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>