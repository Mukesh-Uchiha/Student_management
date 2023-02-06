package com.studentManagementSystem;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.cj.protocol.Resultset;

public class AdmAccCreate extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String uname;
    String email;
    String pass;
    String pass1;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	try {
			func1(req,resp);
		} catch (ServletException | IOException | InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    	@Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    		try {
				func1(req,resp);
			} catch (ServletException | IOException | InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
    	void func1(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, InterruptedException {
    		uname=req.getParameter("uname");
            email=req.getParameter("email");
            pass=req.getParameter("pass");
            pass1=pass;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con= null;
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_schema1","root","Steve07@mysql");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("select * from sms_adminlogin");
                PrintWriter out = resp.getWriter();
                if(!rs.next()) {
                	if(pass.compareTo(pass1)==0) {
                    PreparedStatement pst= con.prepareStatement("insert into sms_adminlogin(username,email,password) values(?,?,?)");
                    pst.setString(1,uname);
                    pst.setString(2,email);
                    pst.setString(3,pass);
                    if(pst.executeUpdate()>0)
                    	out.println("account created for admin successfully !");
                	}else {
						out.println("password didn't match!");
						wait(2000);//
						RequestDispatcher requestDispatcher = req.getRequestDispatcher("/adminAcc.jsp");
			            requestDispatcher.forward(req, resp);
					}
                }else {
    				out.println("admin already exists!");
    			}
                } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
    	}
}
