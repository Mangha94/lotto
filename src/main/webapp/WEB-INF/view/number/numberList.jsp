<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
                        <c:forEach items="${winNumberList}" var="winNum">
                        <tr>
                            <td></td>

                            <td>
                                <c:forEach items="${winNum.numArr}" var="wnum">
                                    <span style="color:${num.num1 eq winNum.num1 ? 'red' : 'black' }">${num.num1}</span>
                                </c:forEach>
                            </td>
                            <td>
                                <span style="color:${num.num2 eq winNum.num1 ? 'red' : 'black' }">${num.num2}</span>
                                <span style="color:${num.num2 eq winNum.num2 ? 'red' : 'black' }">${num.num2}</span>
                                <span style="color:${num.num2 eq winNum.num3 ? 'red' : 'black' }">${num.num2}</span>
                                <span style="color:${num.num2 eq winNum.num4 ? 'red' : 'black' }">${num.num2}</span>
                                <span style="color:${num.num2 eq winNum.num5 ? 'red' : 'black' }">${num.num2}</span>
                                <span style="color:${num.num2 eq winNum.num6 ? 'red' : 'black' }">${num.num2}</span>
                            </td>
                            <td>
                                <span style="color:${num.num3 eq winNum.num1 ? 'red' : 'black' }">${num.num3}</span>
                                <span style="color:${num.num3 eq winNum.num2 ? 'red' : 'black' }">${num.num3}</span>
                                <span style="color:${num.num3 eq winNum.num3 ? 'red' : 'black' }">${num.num3}</span>
                                <span style="color:${num.num3 eq winNum.num4 ? 'red' : 'black' }">${num.num3}</span>
                                <span style="color:${num.num3 eq winNum.num5 ? 'red' : 'black' }">${num.num3}</span>
                                <span style="color:${num.num3 eq winNum.num6 ? 'red' : 'black' }">${num.num3}</span>
                            </td>
                            <td><span style="color:${num.num4 eq winNum.num1 ? 'red' : 'black' }">${num.num4}</span>
                                <span style="color:${num.num4 eq winNum.num2 ? 'red' : 'black' }">${num.num4}</span>
                                <span style="color:${num.num4 eq winNum.num3 ? 'red' : 'black' }">${num.num4}</span>
                                <span style="color:${num.num4 eq winNum.num4 ? 'red' : 'black' }">${num.num4}</span>
                                <span style="color:${num.num4 eq winNum.num5 ? 'red' : 'black' }">${num.num4}</span>
                                <span style="color:${num.num4 eq winNum.num6 ? 'red' : 'black' }">${num.num4}</span>
                            </td>
                            <td>
                                <span style="color:${num.num5 eq winNum.num1 ? 'red' : 'black' }">${num.num5}</span>
                                <span style="color:${num.num5 eq winNum.num2 ? 'red' : 'black' }">${num.num5}</span>
                                <span style="color:${num.num5 eq winNum.num3 ? 'red' : 'black' }">${num.num5}</span>
                                <span style="color:${num.num5 eq winNum.num4 ? 'red' : 'black' }">${num.num5}</span>
                                <span style="color:${num.num5 eq winNum.num5 ? 'red' : 'black' }">${num.num5}</span>
                                <span style="color:${num.num5 eq winNum.num6 ? 'red' : 'black' }">${num.num5}</span>
                            </td>
                            <td>
                                <span style="color:${num.num6 eq winNum.num1 ? 'red' : 'black' }">${num.num6}</span>
                                <span style="color:${num.num6 eq winNum.num2 ? 'red' : 'black' }">${num.num6}</span>
                                <span style="color:${num.num6 eq winNum.num3 ? 'red' : 'black' }">${num.num6}</span>
                                <span style="color:${num.num6 eq winNum.num4 ? 'red' : 'black' }">${num.num6}</span>
                                <span style="color:${num.num6 eq winNum.num5 ? 'red' : 'black' }">${num.num6}</span>
                                <span style="color:${num.num6 eq winNum.num6 ? 'red' : 'black' }">${num.num6}</span>
                            </td>
                            <td>${num.times} 회차</td>
                            <td>
                                <fmt:formatDate value="${num.pickDate}" var="dateFmt" pattern="yyyy/MM/dd"/>
                                ${dateFmt}
                            </td>
                            <td>${num.rank} 등</td>

                        </tr>
                        </c:forEach>
                    </c:forEach>
                </tbody>


            </table>
        </div>

    </div>
</div>


<jsp:include page="/WEB-INF/bottom.jsp"></jsp:include>