<%--
  Created by IntelliJ IDEA.
  User: purre
  Date: 2017-05-14
  Time: 오후 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">
</head>
<body>
	-_- 이거 나옴? INDEX : ${index} - ${categories}

	<a href = "/number/pickNumber.do">로또</a>

<form action = "/index2.do" method = "post">

	<input type = 'text' name = 'title' value = "제목" /><Br/>
	<input type = 'text' name = 'writer' value = "글쓴이" /><Br/>
	<input type = 'text' name = 'content' value = "내용입니다" /><Br/>


	<input type = 'submit' value="전송" />
</form>
</body>
</html>
