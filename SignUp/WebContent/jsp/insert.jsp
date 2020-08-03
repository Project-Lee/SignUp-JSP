<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.jy.user.Dao" %>
<%@ page import="com.jy.user.PeopleVO" %>

<%
	Dao dao = new Dao();	
	String gender = "";
	

	String strI_id = request.getParameter("i_id");
	String strI_ps = request.getParameter("i_ps");
	String strI_name = request.getParameter("i_name");
	String strI_email = request.getParameter("i_email");
	
	
	String strI_genderMan = request.getParameter("i_genderMan");
	
	if(strI_genderMan.equals(request.getParameter("i_genderMan"))) {
		gender = "남자";		
	} else {
		gender = "여자";
	}
	String strI_genderGirl = request.getParameter("i_genderGirl");
	
	
	
	Connection con = null;
	PreparedStatement ps = null;
	
	String sql = " INSERT INTO t_people(i_num, i_id, i_ps, i_name, i_email, i_gender) "
		+ " SELECT nvl(max(i_num),0) + 1,?,?,?,?,? " 
		+ " FROM t_people ";
	
	try {
		con = dao.getCon();
		ps = con.prepareStatement(sql);
		ps.setNString(1, strI_id);
		ps.setNString(2, strI_ps);
		ps.setNString(3, strI_name);
		ps.setNString(4, strI_email);
		ps.setNString(5, gender);
		ps.executeUpdate();
%>
	<script>
		alert("회원가입 성공!");
		location href="menu.jsp";
	</script>
<%		
		
	} catch(Exception e) {
		e.printStackTrace();
		out.println("insert.jsp Error!!");
	} finally {
		if(ps != null) try{ps.close();} catch(Exception e) {}
		if(con != null) try{con.close();} catch(Exception e) {}
	}
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<script>
		alert("회원가입 성공!");
		location href="menu.jsp";
	</script>
</body>
</html>