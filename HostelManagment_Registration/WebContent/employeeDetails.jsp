<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align: center"> successfully registered </h1>
<%

String fullName = request.getAttribute("fullName").toString();
String fatherName = request.getAttribute("fatherName").toString();
String gender = request.getAttribute("gender").toString();
String email = request.getAttribute("email").toString();
String address = request.getAttribute("address").toString();
String phone = request.getAttribute("phone").toString();

%>
<table border="1" style="width: 80%; margin-left: auto; margin-right:
auto; ">
	<tr>
	<td><b>FullName</b>
	<td><%= fullName %></td>
	</tr>
	<tr>
	<td><b>fatherName</b>
	<td><%= fatherName %></td>
	</tr>
	<tr>
	<td><b>gender</b>
	<td><%= gender %></td>
	</tr>
	<tr>
	<td><b>email</b>
	<td><%= email %></td>
	</tr>
	<tr>
	<td><b>address</b>
	<td><%= address %></td>
	</tr>
	<tr>
	<td><b>phone</b>
	<td><%= phone %></td>
	</tr>
	
	</table>
	
	


</body>
</html>