<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/top.jsp"></jsp:include>

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
                            <td>${num.num1}</td>
                            <td>${num.num2}</td>
                            <td>${num.num3}</td>
                            <td>${num.num4}</td>
                            <td>${num.num5}</td>
                            <td>${num.num6}</td>
                            <td>${num.times} 회차</td>
                            <td>
                                <fmt:formatDate value="${num.pickDate}" var="dateFmt" pattern="yyyy/MM/dd"/>
                                ${dateFmt}
                            </td>
                            <td>${num.rank}</td>

                        </tr>
                    </c:forEach>
                </tbody>


            </table>
        </div>

    </div>
</div>


<jsp:include page="/WEB-INF/bottom.jsp"></jsp:include>