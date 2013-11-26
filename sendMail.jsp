<%@page import="java.util.Properties"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="javax.activation.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>

<%!
String result = "";
String to = "ernesto_mancebo_t@claro.com.do";
String from = "ats@claro.com.do";
Properties prop = System.getProperties();
%>

<%
prop.setProperty("mail.smtp.host", "corp-smtp.corp.codetel.com.do");
// prop.setProperty("mail.user", from);
// prop.setProperty("mail.password", "em251993");
Session mailSession = Session.getDefaultInstance(prop);

try{
	MimeMessage message = new MimeMessage(mailSession);
	message.setFrom(new InternetAddress(from));
	message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
	message.setSubject("Probando mail desde JSP...");

	BodyPart msjBodyPart = new MimeBodyPart();
	msjBodyPart.setText("Este es el cuerpo");

	Multipart multiPart = new MimeMultipart();
	multiPart.addBodyPart(msjBodyPart);

	msjBodyPart = new MimeBodyPart();
	String archivo  = "C:\\Users\\Ernesto Mancebo T\\Documents\\apache\\webapps\\JSPTraining\\cookies.jsp";
	DataSource source = new FileDataSource(archivo);
	msjBodyPart.setDataHandler(new DataHandler(source));
	msjBodyPart.setFileName(archivo);
	multiPart.addBodyPart(msjBodyPart);
	message.setContent(multiPart);

	Transport.send(message);
	result = "Mensaje Enviado";
} catch(MessagingException mex) {
	mex.printStackTrace();
	result = "No se pudo enviar";
}
%>

<html>
<head>
	<title>Enviado archivo con JSP</title>
</head>
<body>
	<center>
		<h2>Enviando archivo con JSP</h2>
		<h3>Resultado: <%=result%></h3>
	</center>
</body>
</html>
