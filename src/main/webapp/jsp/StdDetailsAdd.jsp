<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import = "java.sql.*,java.io.*,java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  response.addHeader("Pragma", "no-cache");
  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  response.addHeader("Cache-Control", "pre-check=0, post-check=0");
%>
<% if( String.valueOf(session.getAttribute("logged")).compareTo("true")!=0){
		 response.sendRedirect("first.jsp");	
	}
	%>
	<%! Connection con;
		Statement stmt;
		ResultSet rs;
		String uname1,pass,email;
		String message;
		
		%>>
	<%

	Class.forName("com.mysql.jdbc.Driver");
	
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_schema1","root","Steve07@mysql");
	stmt = con.createStatement();
	 message = null;
	 String name = request.getParameter("name");
     String rollno = request.getParameter("rollno");
     String degree = request.getParameter("Degree");
     String dpt = request.getParameter("Course");
     String joindate = request.getParameter("joindate");   
     /*SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
     java.sql.Date startDate = sdf.parse(request.getParameter("joindate"));*/
	 String dob = request.getParameter("birth_date");
     String bloodgp = request.getParameter("bloodgp");
     String mobile = request.getParameter("mobile");
     String gender= request.getParameter("gender");
     String address = request.getParameter("address");
     String pincode = request.getParameter("pincode");
     String tenth = request.getParameter("10");
     String twelvth = request.getParameter("12");
     String diploma = request.getParameter("Diploma");
     email = request.getParameter("email");
      
     	
     String sql = "INSERT INTO sms_stddatabase values (?, ?, ?,?, ?, ?,?, ?, ?,?, ?, ?,?,?)";
     PreparedStatement statement = con.prepareStatement(sql);
     statement.setString(1, name);
     statement.setString(2, rollno);
     statement.setString(3, degree);
     statement.setString(4, dpt);
     statement.setString(5, joindate);
     statement.setString(6, dob);
     statement.setString(7, bloodgp);
     statement.setString(8, mobile);
     statement.setString(9, gender);
     statement.setString(10, address);
     statement.setString(11, email);
     statement.setInt(12,Integer.parseInt(tenth));
   	 if(twelvth.length()>1){
     	statement.setInt(13, Integer.parseInt(twelvth));
     	statement.setInt(14, 0);
   	 }
   	 else if(diploma.length()>1){
     	statement.setInt(14, Integer.parseInt(diploma));
     	statement.setInt(13, 0);}
		
     String message;
     // sends the statement to the database server
     int row = statement.executeUpdate();
     if (row > 0) {
     	response.sendRedirect(request.getContextPath() + "/jsp/AddDtlsRes.jsp");
     }
     else {
			message = "couldn't register";
		}
	%>
	
</body>
</html>