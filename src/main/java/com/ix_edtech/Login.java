package com.ix_edtech;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/log")
public class Login extends HttpServlet{
	
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		// read form fields
		String uname=req.getParameter("uname");
		String pwd=req.getParameter("pwd");
		
		System.out.println("Username admin: " + uname);
        System.out.println("Password admin: " + pwd);
        PrintWriter writer = res.getWriter();
        
        if(uname.equals("dev")&& pwd.equals("12345")) {
        	res.sendRedirect("home.jsp");
        }
        else {
        	String htmlResponse="<html>";
        	htmlResponse +="<h2>Invalid creditional</h2>";
        	htmlResponse+="</html>";
        	writer.println(htmlResponse);
        }
        
	}

}
