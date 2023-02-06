package com.studentManagementSystem;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.IOException;
import java.sql.*;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import java.io.*;

@WebServlet("/StdDetailsAdding")
@MultipartConfig(maxFileSize = 16177215)
public class StdDetailsAdding extends HttpServlet {
private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		try {
			
			func1(request, response);
		} catch (ServletException | IOException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			func1(request, response);
		} catch (ServletException | IOException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	void func1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, InterruptedException{
		
		
		Statement stmt;
		ResultSet rs;
		String uname1,pass,email;
		
		PrintWriter out = response.getWriter();
		Connection con=null;
//		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_schema1","root","Steve07@mysql");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		 
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
	     
//	     ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
//	     List<FileItem> multifiles = sf.parseRequest(request);
	     
	     
//	        filePart = request.getPart("tenth");
//	     	filePart2 = request.getPart("twelvth");
//	     	filePart3 = request.getPart("aadhar");
	     	
//	     	
//	        if (filePart != null&&filePart2 != null&&filePart3 != null) {
//	    		
//	            System.out.println(filePart.getName());
//	            System.out.println(filePart.getSize());
//	            System.out.println(filePart.getContentType());
//	            System.out.println("");
//	            System.out.println(filePart2.getName());
//	            System.out.println(filePart2.getSize());
//	            System.out.println(filePart2.getContentType());
//	            System.out.println("");
//	            System.out.println(filePart3.getName());
//	            System.out.println(filePart3.getSize());
//	            System.out.println(filePart3.getContentType());
//	            is = filePart.getInputStream();
//	            is2 = filePart2.getInputStream();
//	            is3 = filePart3.getInputStream();
//	        }
	        
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
	            if(twelvth!=null)
	            	statement.setInt(13, Integer.parseInt(twelvth));
	            else if(diploma!=null)
	            	statement.setInt(14, Integer.parseInt(diploma));
				
	            String message;
	            // sends the statement to the database server
	            int row = statement.executeUpdate();
	            if (row > 0) {
	            	response.sendRedirect(request.getContextPath() + "/jsp/AddDtlsRes.jsp");
	            }
	            else {
					out.print("couldn't register");
				}
	            
	}
}
