package com.ix_edtech;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class DeleteEmployee extends HttpServlet{
	Connection con=null;
	@Override
	public void init() throws ServletException {
		 con= DB_con.getCon();
	}
	
    protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
    	String id=req.getParameter("id");
    	
    	System.out.println("id: "+id);
    	
    	try {
			
			String query = "delete from employee01 where id=?";
			PreparedStatement stm = con.prepareStatement(query);
			
			stm.setString(1, id);
			stm.execute();
			
            
			res.sendRedirect("deleteData.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    }
	
}
