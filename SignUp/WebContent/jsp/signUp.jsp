<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
	.container { width: 500px; margin: 30px auto; color: firebrick;}
      h2 { text-align: center; color: grey;}
     label { width: 100px; display: inline-block; margin-left: 100px;}
     label, input { margin-bottom: 10px;}
     .btn { text-align: center; background-color: gray; color:hotpink}
</style>
</head>
<body>
	<div class="container">
    <fieldset>
        <h2>SignUp page</h2>
        <form action="insert.jsp" method="post"> 	
            <label for="name">아이디</label>
            <input type="text" name="i_id"><br>
            <label for="name">비밀번호</label>
            <input type="text" name="i_ps"><br>
            <label for="name">이름</label>
            <input type="text" name="i_name"><br>
            <label for="name">이메일</label>
            <input type="email" name="i_email"><br>
            <label for="name">성별</label>
                        남성<input type="radio" name="i_genderMan">
                        여성<input type="radio" name="i_genderGirl">
            <div class="btn">
                <input type="submit" value="SignUp">
            </div>
        </form>
	</fieldset>   
	
	<a href="menu.jsp"><button>로그인창으로 가기</button></a>
	<p>성별칸에 라디오 박스로 남 , 녀 체크로 구분하기<br>
		빈칸 유효성 검사를 insert.jsp 페이지에서 해주기
	</p>
</body>
</html>