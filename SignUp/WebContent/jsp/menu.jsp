<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.jy.user.Dao" %>
<%@ page import="com.jy.user.PeopleVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	 .container { width: 500px; margin: 30px auto; color: firebrick;}
      h2 { text-align: center; color: grey;}
     label { width: 100px; display: inline-block; margin-left: 100px;}
     label, input { margin-bottom: 10px;}
     .btn { text-align: center; background-color: gray; color:hotpink}
     #login1 { width: 150px;}
     #button1 { width: 160px;}
     #button2 { width: 160px;}
     #button3 { width: 160px;}
     
</style>
</head>
<body>
	<div class="container">
    <fieldset>
        <h2>Login page</h2>
        <form action="view.jsp" method="post"> 
            <label for="name">아이디</label>
            <input type="text" name="i_id" id="name"><br>
            <label for="name">비밀번호</label>
            <input type="text" name="i_ps" id="kor"><br>
            <div class="btn">
                <input type="submit" value="login" id="login1">
            </div>            
        </form>
   		 <a href="signUp.jsp"><button id="button1">회원가입</button></a>
         <a href="idList.jsp"><button id="button2">회원리스트</button></a>
         <a href="system.jsp"><button id="button3">관리자</button></a>
    </fieldset>
    <h2>추후업데이트</h2>
    <p> 입력사항 : 회원가입하고 난후 alert창 안뜸 업데이트하기 </p>
    <pre>		회원가입창 라디오쳌박 필수 !!</pre>
    <br>
    <br>
    <br>
    <br>
    <br>
    
    <a href="database.jsp"><button>오라클 sql 쿼리문 내용</button></a>
</body>
</html>