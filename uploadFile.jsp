<%@page import="java.io.*, java.util.*, javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="org.apache.commons.fileupload.disk.*"%>
<%@page import="org.apache.commons.fileupload.servlet.*"%>
<%@page import="org.apache.commons.io.output.*"%>

<%
File file;
final int maxFileSize = 5000 * 1024;
final int maxMemSize =  5000 * 1024;

ServletContext context = pageContext.getServletContext();
String filePath = context.getInitParameter("file-upload");

String contentType = request.getContentType();

if(contentType != null && contentType.indexOf("multipart/form-data") >= 0){
	DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
	//Max size in memory
	fileItemFactory.setSizeThreshold(maxMemSize);
	//Path for files larger than maxMemSize
	fileItemFactory.setRepository(new File("C:\\temp"));

	ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
	//Max size to upload
	upload.setSizeMax(maxFileSize);

	try{
		List fileItems = upload.parseRequest(request);
		Iterator i  = fileItems.iterator();
		%>
		<html>
		<head>
			<title>Subida de archivo con JSP</title>
		</head>
		<body>
		
		<%
		while(i.hasNext()){
			FileItem fi = (FileItem) i.next();
			if(!fi.isFormField()){
				String fieldName = fi.getFieldName();
				String fileName = fi.getName();
				boolean inMemory = fi.isInMemory();
				long sizeInBytes = fi.getSize();

				if(fileName.lastIndexOf("\\") >= 0){
					file = new File(filePath + "\\" + fileName.substring(fileName.lastIndexOf("\\")));
				} else {
					file = new File(filePath + "\\" + fileName.substring(fileName.lastIndexOf("\\") + 1));
				}

				fi.write(file);
					%>
					<p>Archivo cargado <%=filePath + fileName%></p>
					<%
				}
			}
		%>
		</body>
		</html>
		<%
	}catch(Exception ex){
		System.out.println(ex);
	}
} else {
	%>
	<html>
	<head>
		<title>Subida de archivo con JSP</title>
	</head>
	<body>
		<p>No hay archivo enviado</p>
	</body>
	</html>
	<%
}
%>
