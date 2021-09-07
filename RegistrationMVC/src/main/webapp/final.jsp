<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "customers";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<style>
body {
  background-color: lightblue;
}
table, td, th {  
  border: 1px solid black;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 15px;
}
</style>
<body>

	<h1 style=color:blue>Your Details here...</h1>
	
	<table border="1">
		<tr>
			<td><b>fullName</b></td>
			<td><b>FatherName</b></td>
			<td><b>Gender</b></td>
			<td><b>Email</b></td>
			<td><b>Phone</b></td>
			<td><b>RoomNo</b></td>

		</tr>
		<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM users WHERE RoomNo=(SELECT max(RoomNo) FROM Users);";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
		<tr>
			<td><%=resultSet.getString("fullName") %></td>
			<td><%=resultSet.getString("FatherName") %></td>
			<td><%=resultSet.getString("Gender") %></td>
			<td><%=resultSet.getString("Email") %></td>
			<td><%=resultSet.getString("Phone") %></td>
			<td><%=resultSet.getString("RoomNo") %></td>
		</tr>
		<%
		
}

connection.close();

} catch (Exception e) {
e.printStackTrace();
}
%>
	</table>
	
</body>
</html>