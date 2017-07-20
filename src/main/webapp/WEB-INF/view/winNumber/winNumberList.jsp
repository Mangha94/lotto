<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/top.jsp"></jsp:include>

<script>

    function setWinNumber() {
        var formData=$("#setWinNumTr").find("input").serialize();

        $.ajax({
            type:"POST",
            url:"/winNumber/setWinNumber.do",
            data:formData,
            success:function(data,textStatus){
                result=data;

                alert("등록되었습니다");

                reloadWinNumberList();
            }
        });
    }

    function reloadWinNumberList() {
        $("#winNumberForm").load("/winNumber/reloadWinNumberList.do");
    }

</script>
<div class="row">

    <div class="col-xs-12 col-md-12">

        <div class="panel-heading">

            <ul class="nav nav-tabs">
                <li role="presentation"><a href="/number/pickNumber.do">번호 뽑기</a></li>
                <li role="presentation"><a href="/number/numberList.do">뽑은 번호</a></li>
                <li role="presentation" class="active"><a href="/winNumber/winNumberList.do">당첨 번호</a></li>
            </ul>

        </div>

        <div class="panel-body">
            <table class="table" id="winNumberForm">
            <jsp:include page="/WEB-INF/view/winNumber/reloadWinNumberList.jsp"/>
            </table>
        </div>

    </div>
</div>

<jsp:include page="/WEB-INF/bottom.jsp"></jsp:include>