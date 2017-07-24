<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/top.jsp"></jsp:include>

<script type="text/javascript">

    $(document).ready(function(){

            <c:forEach var="winNum" items="${winNumberList}">
                var nums = [];

                <c:forEach var = "num" items="${winNum.numArr}">
                   nums.push("${num}");

                 </c:forEach>
            $(nums).each (function (num) {
                $(".inputNumber[num='" + num + "'][times='${winNum.times}']")
                    .css("display", "inline-block")
                    .css('background', 'red')
                    .css('color', '#fff')
                    .css('padding', '3px')
                    .css('border-radius', '10px');
            });


                $(".inputNumber[num='${winNum.bonusNum}'][times='${winNum.times}']")
                    .css("display", "inline-block")
                    .css('background', 'blue')
                    .css('color', '#fff')
                    .css('padding', '3px')
                    .css('border-radius', '10px');
            </c:forEach>

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
                                    <span class='inputNumber' num='${num.num1}' times="${num.times}">${num.num1}</span>
                                </td>
                                <td>
                                    <span class='inputNumber' num='${num.num2}' times="${num.times}">${num.num2}</span>
                                </td>
                                <td>
                                    <span class='inputNumber' num='${num.num3}' times="${num.times}">${num.num3}</span>
                                </td>
                                <td>
                                    <span class='inputNumber' num='${num.num4}' times="${num.times}">${num.num4}</span>
                                </td>
                                <td>
                                    <span class='inputNumber' num='${num.num5}' times="${num.times}">${num.num5}</span>
                                </td>
                                <td>
                                    <span class='inputNumber' num='${num.num6}' times="${num.times}">${num.num6}</span>
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