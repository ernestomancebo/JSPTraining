<%!
Cookie cookie = null;
Cookie[] cookies = null;
%>
<html>
<head>
	<title>Obteniendo cookies</title>
</head>
<body>
<%
cookies  = request.getCookies();
if(cookies != null){
%>
<h2>Tenemos cookies bebeh</h2>
<%
	for(byte i = 0; i < cookies.length; i++){
		cookie = cookies[i];
		%>
		<p><b><%=cookie.getName()%></b>: <%=cookie.getValue()%></p> 
		<%
		if(cookie.getName().equals("nombre")){			
			cookie.setMaxAge(0);
			response.addCookie(cookie);
			out.print("La cookie <b>"+cookie.getName()+"</b> tiene que morir..");
		}
	}
} else{
	%>
	<h2>No tenemos cookies</h2>
	<%
}
%>
</body>
</html>