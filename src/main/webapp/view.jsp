<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- Table to display employees -->
		<div class="card">
			<div class="card-header">
				<h2>Employee List</h2>
			</div>
			<div class="card-body">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Id</th>
							<th>Name</th>
							<th>Position</th>
							<th>Department</th>
							<th>Contact No</th>
							<th>Email</th>
						</tr>
					</thead>
					<tbody>
               <%
				Class.forName("oracle.jdbc.driver.OracleDriver");
				 Connection con = null;
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","hyd","nit");
				Statement stmt = null;
				stmt = con.createStatement();
				String query = "select * from employee01";
				ResultSet rs = null;
				rs = stmt.executeQuery(query);
				
				while (rs.next()) {
				%>
				<tr>
				<%
					String id = rs.getString("id");
					String name = rs.getString("name");
					String position = rs.getString("position");
					String department = rs.getString("department");
					String contact = rs.getString("contact");
					String email = rs.getString("email");
			    %>

				<tr>
				
					<td><%=id%></td>
					<td><%=name%></td>
					<td><%=position%></td>
					<td><%=department%></td>
					<td><%=contact%></td>
					<td><%=email%></td>
				</tr>
				<%
				}con.close();
				
				%>


                </tbody>
			</table>
		</div>
	</div>
</div>



</body>
</html>