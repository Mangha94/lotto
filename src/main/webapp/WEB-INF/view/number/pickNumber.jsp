<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/top.jsp"></jsp:include>
<script>

    function pickNumber() {

        $.ajax({
            type:"GET",
            url:"/number/pickNum.do",
            data:"html",
            success:function(data,textStatus){
                result=data;

                alert("번호 뽑기 성공!");

                reloadNumberList();
            }
        });
    }

    function reloadNumberList() {
        $("#NumberForm").load("/number/showPickNumber.do");
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

            <div class="panel-body" id="NumberForm">
                <jsp:include page="/WEB-INF/view/number/showPickNumber.jsp"></jsp:include>
            </div>

        </div>
    </div>

<jsp:include page="/WEB-INF/bottom.jsp"></jsp:include>