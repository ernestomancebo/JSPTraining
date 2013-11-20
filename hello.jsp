<html>
<head>
	<title>Hello</title>
</head>
<body>
	<%--Declaraciones --%>
	<%!int a  = 2 + 2 ;
	int fontSize = 3;
	 %>

<%--Scriptlets--%>
<%

	out.print("Scriplet:<br/>La IP es: " + request.getRemoteAddr() + "<br/>Declaracion: " + a);
%>



<p>
Expresion<br/>
<%--Expresiones--%>
Hoy es : <%= (new java.util.Date()).toLocaleString()%>
</p>

<\%

<%
out.print("Probando  \' \" ");
%>

\%>


<p>If .. Else test</p>

<%
if (a == 1 || a == 7) {
	out.print("Fin de semana");
} else { %>
	
<p>No fin de semana</p>
<%
}
%>

<p>Switch test</p>

<%
switch(a%2){
	case 0:
	out.print("Par");
	break;
	default:
	%>
	<p>Impar</p>
	<%
	break;
}
%>

<p>For..</p>

<%
for(fontSize = 3; fontSize < 6; fontSize++){
	%>
	<font color="blue" size="<%=fontSize%>">
		Hola!
	</font>
	<%
}
%>

<br/>
<p>While..</p>
<%
fontSize = 2;
while(fontSize < 6) {
	%>
	<font color="red" size="<%=fontSize%>">
		Hey!
	</font>
	<%
	fontSize++;
}
%>
</body>
</html>