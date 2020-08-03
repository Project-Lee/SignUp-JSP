<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%

	 

	String i_num = request.getParameter("i_num");
	String i_name = request.getParameter("i_name");
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title><%=i_num%></title>
</head>
<body>
	i_num값 : <%=i_num %>
	i_name값 : <%=i_name %>
	
</body>
</html>