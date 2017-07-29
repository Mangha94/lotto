<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/top.jsp"></jsp:include>

<script>
    function onsubmitLogin(myForm) {
        var flag = true;

        if (myForm.memberId.value.trim() == "") {

            alert("아이디를 입력해주세요");
            flag = false;

            myForm.memberId.focus();
        }
        else if (myForm.pw.value.trim() == "") {
            alert("비밀번호를 입력해주세요");
            flag = false;

            myForm.pw.focus();
        }

        if (flag) {
            $.ajax({
                type: "POST",
                url: myForm.action,
                dataType: "json",
                data: $(myForm).serialize(),
                success: function (data, textStatus) {

                    if (data.success) {
                        alert("로그인 성공!");
                        location.href = "/number/pickNumber.do";
                    }
                    else
                        alert("로그인 실패...");
                }

            });
        }
        event.preventDefault();
        event.returnValue = false;

        return false;
    }
</script>

<form name="loginForm" action="/login.do" method="post" onsubmit="onsubmitLogin(this)">

    <input type='text' name='memberId' placeholder="memberId"/><Br/>
    <input type='text' name='pw' placeholder="pw"/><Br/>


    <input type="submit" class="btn btn-primary" value="Login">
</form>
<jsp:include page="/WEB-INF/bottom.jsp"></jsp:include>
