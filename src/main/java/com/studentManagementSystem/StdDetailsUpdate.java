package com.studentManagementSystem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class StdDetailsUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			func1(request, response);
		} catch (ClassNotFoundException | ServletException | IOException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			func1(request, response);
		} catch (ClassNotFoundException | ServletException | IOException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
	
	public static void func1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException{
			
		ResultSet rs;
		String uname1,pass,email;
		PrintWriter out = response.getWriter();
		Connection con=null;
		
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_schema1","root","Steve07@mysql");
			  //out.print("success !");
	     String name = request.getParameter("name");
	     String rollno = request.getParameter("rollno");
	     String degree = request.getParameter("Degree");
	     String dpt = request.getParameter("Course");
	     String joindate = request.getParameter("joindate");   
		 String dob = request.getParameter("birth_date");
	     String bloodgp = request.getParameter("bloodgp");
	     String mobile = request.getParameter("mobile");
	     String gender= request.getParameter("gender");
	     String address = request.getParameter("address");
	     
	     String tenth = request.getParameter("10");
	     String twelvth = request.getParameter("12");
	     String diploma = request.getParameter("Diploma");
	     email = request.getParameter("email");
	     
	     		String sql = "update sms_stddatabase set name = ?, RollNo =?,Degree=?,Dept=?,joindate=?,dob=?,bloodgp=?,mobile=?,gender=?,address=?,email=?,tenth=?,twelvth=?,diploma=? where RollNo = ?";
	            PreparedStatement statement1 = con.prepareStatement(sql);
	            statement1.setString(1, name);
	            statement1.setString(2, rollno);
	            statement1.setString(3, degree);
	            statement1.setString(4, dpt);
	            statement1.setString(5, joindate);
	            statement1.setString(6, dob);
	            statement1.setString(7, bloodgp);
	            statement1.setString(8, mobile);
	            statement1.setString(9, gender);
	            statement1.setString(10, address);
	            statement1.setString(11, email);
	            statement1.setInt(12,Integer.parseInt(tenth));
	            if(twelvth!=null){
	            	statement1.setInt(13, Integer.parseInt(twelvth));
	            	statement1.setInt(14, 0);
	            		
	            }
	            else if(diploma!=null){
	            	statement1.setInt(14, Integer.parseInt(diploma));
	            	statement1.setInt(13, 0);
	            	}
	            statement1.setString(15, rollno);
	            String message;
	            
	            int row = statement1.executeUpdate();
	            
	            //out.print("success !");
	            if (row > 0) {
	            	//out.print("success !");
	            	response.sendRedirect(request.getContextPath() + "/jsp/UpdateDtlsRes.jsp");
	            }
	            
	            
	            
	     	
	     }
		
	}


