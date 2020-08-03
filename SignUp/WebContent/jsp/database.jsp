<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<pre>
	CREATE TABLE t_people(
    i_num number(3),
    i_id varchar2(30) not null,
    i_ps varchar2(30),
    i_name varchar2(20),
    i_email varchar2(50),
    i_gender varchar2(10),
    PRIMARY KEY (i_num)    
);

---------------------------------------------

INSERT INTO t_people(i_num, i_id, i_ps, i_name, i_email,
i_gender)
VALUES
(2,'ddw123',11111,'홍길동','asd@nff.com','여자');

---------------------------------------------

" INSERT INTO t_people(i_num, i_id, i_ps, i_name, i_email, i_gender) "
+ " SELECT nvl(max(i_num),0) + 1,?,?,?,?,? " 
+ " FROM t_people ";

----------------------------------------------
</pre>
	
</body>
</html>