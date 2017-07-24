<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/top.jsp"></jsp:include>
<script>

    function pickNumber() {
        location.href="/number/pickNum.do";
        alert("번호 뽑기 성공!");
    }

</script>

    <div class="row">

        <div class="col-xs-12 col-md-12">

                <div class="panel-heading">

                    <ul class="nav nav-tabs">
                        <li role="presentation" class="active"><a href="/number/pickNumber.do">번호 뽑기</a></li>
                        <li role="presentation"><a href="/number/numberList.do">뽑은 번호</a></li>
                        <li role="presentation"><a href="/winNumber/winNumberList.do">당첨 번호</a></li>
                    </ul>

                </div>

            <div class="panel-body">
                <a href="javascript:pickNumber()" class="btn btn-primary">번호 뽑기!!!</a>
            </div>

        </div>
    </div>

<jsp:include page="/WEB-INF/bottom.jsp"></jsp:include>