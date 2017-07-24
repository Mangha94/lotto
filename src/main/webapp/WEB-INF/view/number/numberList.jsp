<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/top.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-1.12.4.min.js">
</script>
<script type="text/javascript">
    $(document).ready(function(){
        var winNumList=new Array();

            <c:forEach var="winNum" items="${winNumberList}">
                winNumList.push("${winNum.num1}")
            </c:forEach>
        for(var i=0;i<=6;i++){
            $('inputNum[winNumList]').css('background', 'red');
        }
    });

</script>
<div class="row">

    <div class="col-xs-12 col-md-12">

        <div class="panel-heading">

            <ul class="nav nav-tabs">
                <li role="presentation"><a href="/number/pickNumber.do">번호 뽑기</a></li>
                <li role="presentation" class="active"><a href="/number/numberList.do">뽑은 번호</a></li>
                <li role="presentation"><a href="/winNumber/winNumberList.do">당첨 번호</a></li>
            </ul>

        </div>

        <div class="panel-body">
            <table class="table">
                <thead>
                <tr>
                    <th>
                        #
                    </th>
                    <th>
                        num1
                    </th>
                    <th>
                        num2
                    </th>
                    <th>
                        num3
                    </th>
                    <th>
                        num4
                    </th>
                    <th>
                        num5
                    </th>
                    <th>
                        num6
                    </th>
                    <th>
                        times
                    </th>
                    <th>
                        pickDate
                    </th>
                    <th>
                        rank
                    </th>
                </tr>
                </thead>
                <tbody>
                        <c:forEach items="${numberList}" var="num">
                            <tr>
                                <td></td>

                                <td>
                                    <span class='inputNumber' num='${num.num1}'>${num.num1}</span>
                                </td>
                                <td>
                                    <span class='inputNumber' num='${num.num2}'>${num.num2}</span>
                                </td>
                                <td>
                                    <span class='inputNumber' num='${num.num3}'>${num.num3}</span>
                                </td>
                                <td>
                                    <span class='inputNumber' num='${num.num4}'>${num.num4}</span>
                                </td>
                                <td>
                                    <span class='inputNumber' num='${num.num5}'>${num.num5}</span>
                                </td>
                                <td>
                                    <span class='inputNumber' num='${num.num6}'>${num.num6}</span>
                                </td>
                                <td>${num.times} 회차</td>
                                <td>
                                    <fmt:formatDate value="${num.pickDate}" var="dateFmt" pattern="yyyy/MM/dd"/>
                                        ${dateFmt}
                                </td>
                                <td>${num.rank} 등</td>

                            </tr>
                        </c:forEach>
                </tbody>


            </table>
        </div>

    </div>
</div>


<jsp:include page="/WEB-INF/bottom.jsp"></jsp:include>