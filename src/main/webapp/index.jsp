<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="EUC-KR">
  <title>Insert title here</title>
  <script src="https://code.jquery.com/jquery-1.12.4.min.js">
  </script>
  <script type="text/javascript">
      $(document).ready(function(){
          $('input[type]').css('background', 'pink');
          $('input[type=password]').css({'color':'red', 'fontSize':'30px'});
          $('input[value=도라에몽]').css('color','blue').css('fontSize','30px');
          $('input[value=도라에몽]').addClass('input').addClass('bgpink');
      });

  </script>
  <style type="text/css">
    .input{color:blue; font-size:24px; }.bgpink{background-color:pink;}
  </style>
</head>
<body>
<h3>속성 선택자</h3>
<form>
  이름 <input type="text" name="name" value="도라에몽"><p/>
  ID <input type="text"><p/>
  PW <input type="password"><p/>
  취미 :
  <input type="checkbox" name="hobby" value="등산">등산
  <input type="checkbox" name="hobby" value="낚시">낚시
  <input type="checkbox" name="hobby" value="수영">수영
  </p>

</form>
</body>
</html>
