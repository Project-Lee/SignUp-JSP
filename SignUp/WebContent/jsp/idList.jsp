<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.jy.user.Dao" %>
<%@ page import="com.jy.user.PeopleVO" %>

<%
	Dao dao = new Dao();
	
	List<PeopleVO> peopleList = new ArrayList();
	
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	String sql = " SELECT i_num, i_id, i_ps, i_name, i_email, i_gender FROM t_people "; 
	
	try {
		con = dao.getCon();
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		
		while(rs.next()) {
			int i_num = rs.getInt("i_num");
			String i_id = rs.getNString("i_id");
			String i_ps = rs.getNString("i_ps");
			String i_name = rs.getNString("i_name");
			String i_email = rs.getNString("i_email");
			String i_gender = rs.getNString("i_gender");
			
			PeopleVO vo = new PeopleVO();
			
			vo.setI_num(i_num);
			vo.setI_id(i_id);
			vo.setI_ps(i_ps);
			vo.setI_name(i_name);
			vo.setI_email(i_email);
			vo.setI_gender(i_gender);
			
			peopleList.add(vo);		
		}
		
		
	} catch(Exception e) {
		e.printStackTrace();
		out.println("idList.jsp Error!");
		
	} finally {
		if(rs != null) try{rs.close();} catch(Exception e) { }
		if(ps != null) try{ps.close();} catch(Exception e) { }
		if(con != null) try{con.close();} catch(Exception e) { }
	}

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table { width: 500px; border: 1px solid black; border-collapse: collapse;}
        td { border: 1px solid black; text-align:center;}
        tr { height: 60px;}
        #f { display: inline; color: red;} 
</style>
</head>
<body>
	<a href="menu.jsp"><button>메뉴로 돌아가기</button></a>
	<div id="f">
	</div>	
	
	<table><caption>아이디 리스트</caption>
		<tr>
			<th>No</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>성별</th>
		</tr>
		
		<% for(PeopleVO vo : peopleList) { %>
		<tr>
			<td><%=vo.getI_num() %></td>
			<td><%=vo.getI_id() %></td>
			<td><%=vo.getI_ps() %></td>
			<td><%=vo.getI_name() %></td>
			<td><%=vo.getI_email() %></td>
			<td><%=vo.getI_gender() %></td>			
		</tr>
		<% } %>
	</table>
	<h2>추후 업데이트 사항</h2>
	<p> 아이디 리스트는 관리자용 아이디로 접속시 관리자 아이디에서 기능을 만들어 볼수있게 변경하기 </p>
	<p> 테이블 꾸미기 </p>
	
</body>
</html>