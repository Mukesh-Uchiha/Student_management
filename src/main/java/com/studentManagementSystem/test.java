package com.studentManagementSystem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.concurrent.TimeUnit;

public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;
    String uname;
    int testt;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			PrintWriter out= response.getWriter();
			out.print("YEAAA !");
			
			func1(request, response);
		} catch (ServletException | IOException | SQLException | InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out= response.getWriter();
			out.print("YEAAA !");
//			TimeUnit.SECONDS.sleep(5);
			func1(request, response);
		} catch (ServletException | IOException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	void func1 (HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException,SQLException, InterruptedException {
			
			resp.sendRedirect(req.getContextPath() + "/jsp/AddDtlsRes.jsp");
			
	}

}
