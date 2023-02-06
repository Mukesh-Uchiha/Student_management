<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import = "java.sql.*" %>
 <%@page import = "com.studentManagementSystem.test" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>test 3 jsp</title>
</head>
<body>
	<%! Connection con;
		Statement stmt;
		ResultSet rs;
		String uname1,pass,email;
		%>>
	<!-- 
	<%
	Class.forName("com.mysql.jdbc.Driver");
	
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_schema1","root","Steve07@mysql");
	stmt = con.createStatement();
    rs = stmt.executeQuery("select * from sms_stdlogin");
    boolean flag1= false;
    
    while(rs.next()) {
    	if(rs.getString("username").compareTo(request.getParameter("uname"))==0) {
    		break;
    	}
    }
    
	%>
 	-->
	 <table>
  <tr>
    <th>username</th>
    <th>email</th>
    <th>pass</th>
  </tr>
  <!-- 
  <tr>
    <td> <%out.println(rs.getString("username")); %> </td>
    <td> <%out.println(rs.getString("email"));%> </td>
    <td> <%out.println(rs.getString("password"));%> </td>
  </tr>
 -->
</table> 
</body>
</html>