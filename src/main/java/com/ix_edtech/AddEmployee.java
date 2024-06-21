package com.ix_edtech;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/add")
public class AddEmployee extends HttpServlet {
	Connection con=null;
	@Override
	public void init() throws ServletException {
		con= DB_con.getCon();
        System.out.println(con+"init");
	}
	
	
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
    	
    	System.out.println(con);
    	
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String position = req.getParameter("position");
        String department = req.getParameter("department");
        String email = req.getParameter("email");
        String contact = req.getParameter("contact");

        System.out.println("Employee name : " + name);

        String query = "INSERT INTO employee01 (id, name, position, department, contact, email) VALUES (?, ?, ?, ?, ?, ?)";

        try {
        	PreparedStatement stm = con.prepareStatement(query);
            stm.setString(1, id);
            stm.setString(2, name);
            stm.setString(3, position);
            stm.setString(4, department);
            stm.setLong(5, Long.parseLong(contact));
            stm.setString(6, email);

            stm.execute();
            
			/*
			 * RequestDispatcher rd=req.getRequestDispatcher("home.jsp"); rd.forward(req,
			 * res);
			 */
            
            res.sendRedirect("home.jsp");
            
        } catch (SQLException e) {
            e.printStackTrace();
       
        }
      
        
    }
    
    
}
