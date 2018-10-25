<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/11/23
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>管理员界面</title>

</head>
<body>
<jsp:include page="adminPage.jsp"></jsp:include>

<div style="text-align:center">
    <h2 style="color:brown;font-size:50px;text-align:left">薪资异议：</h2><br>
        <table border="2px" cellspacing="0" cellpadding="10px" align="center" style="font-size:25px" id="tab000">
            <tr style="color: #007bff">
                <td colspan="4">薪资详情</td>
            </tr>
            <tr>
                <td>发薪时间</td>
                <td><f:formatDate value="${requestScope.pay.payTime}" pattern="yyyy-MM"/></td>
                <td>员工姓名</td>
                <td>
                    <c:forEach var="employee" items="${requestScope.employees}">
                        <c:if test="${employee.id==requestScope.pay.employeeId}">
                            ${employee.name}
                        </c:if>
                    </c:forEach>
                </td>
            </tr>
            <tr>
                <td>基本薪资</td>
                <td>${requestScope.pay.basePay}</td>
                <td>绩效奖金</td>
                <td>${requestScope.pay.performanceBonus}</td>
            </tr>
            <tr>
                <td>奖惩费用</td>
                <td>${requestScope.pay.prizePay}</td>
                <td>社保</td>
                <td>-${requestScope.pay.socialSecurity}</td>
            </tr>
            <tr>
                <td colspan="2">实发金额</td>
                <td colspan="2">${requestScope.pay.allPay}</td>
            </tr>
        </table>
</div>
</body>
</html>
