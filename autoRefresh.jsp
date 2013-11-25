<%@page import="java.io.*, java.util.Calendar, java.util.GregorianCalendar"%>
<html>
<head>
	<title>Prueba asignando valores al header del cliente</title>
</head>
<body>
	<center>
		<h2>Asignando autorefresh al header response</h2>
		<%
			response.setIntHeader("Refresh", 5);
			response.setHeader("Allow", "GET");
			Calendar cal = new GregorianCalendar();

			int hora = cal.get(Calendar.HOUR);
			int minuto = cal.get(Calendar.MINUTE);
			int segundo = cal.get(Calendar.SECOND);
			String am_pm = (cal.get(Calendar.AM_PM) == 0? "AM" : "PM") ;

			String ct = hora + ":" + minuto  + ":" + segundo + " " + am_pm;

			out.println("La hora es: " + ct);
			out.print("\nQue permite: " + request.getHeader("Allow"));
		%>
	</center>
</body>
</html>