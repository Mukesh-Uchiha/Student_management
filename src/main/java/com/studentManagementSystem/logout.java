package com.studentManagementSystem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		func1(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		func1(request, response);	
	}
	void func1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate"); 
		response.setHeader("pragma","no-cache");
		HttpSession session = request.getSession();
		session.removeAttribute("logged");
		session.invalidate();
        response.sendRedirect("first.jsp");
        
		
	}

}
