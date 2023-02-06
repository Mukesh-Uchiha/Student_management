<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import = "java.io.FileInputStream,java.io.File,java.io.FileOutputStream" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Image jsp</title>
</head>
<body>
	<%!String bindata="" ; %>>
	<% 
	FileInputStream fis =new FileInputStream(request.getParameter("img"));
	int ch=fis.read();
	while(ch!=-1)
    {
        bindata+=ch;
        ch=fis.read();
    }
	%>
	image : <br>
	<img src="data:image/gif;base64,<%out.print(bindata);%> >">
</body>
</html>