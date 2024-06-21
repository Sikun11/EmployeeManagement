package com.ix_edtech;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updatepos")
public class UpdatePosition extends HttpServlet{

	Connection con=null;
	@Override
	public void init() throws ServletException {
		 con= DB_con.getCon();
	}
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		String id=req.getParameter("id");
		String position=req.getParameter("position");
		
		try {
			
			String query = "update employee01 set position=? where id=?";
			PreparedStatement stm = con.prepareStatement(query);
			
			stm.setString(1, position);
			stm.setString(2, id);
			
			stm.execute();
		
			res.sendRedirect("updateData.jsp");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}

