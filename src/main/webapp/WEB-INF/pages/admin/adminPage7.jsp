<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/18
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>管理员界面</title>
    <script src="/plugIn/vendor/jquery/jquery-3.2.1.min.js"></script>
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/pages/adminPage.jsp"></jsp:include>

    <div style="text-align:center">
        <h2 style="color:brown;font-size:50px;text-align:left">薪资管理：</h2><br>
        <c:if test="${requestScope.payList.size()==0}">
            <span style="font-size:25px">暂无薪资信息。。。</span>
            <a href="admin5" style="font-size:25px">发放工资</a>
        </c:if>
        <c:if test="${requestScope.payList.size()!=0}">
            <table border="2px" cellspacing="0" cellpadding="10px" align="center" style="font-size:25px">
                <tr style="color: #0e1cc4">
                    <td colspan="7">所有薪资：</td>
                </tr>
                <tr style="color: #0e1cc4">
                    <td>发薪日</td>
                    <td>员工姓名</td>
                    <td>基本薪资</td>
                    <td>绩效奖金</td>
                    <td>加班费</td>
                    <td>奖惩费用</td>
                    <td>社保</td>
                </tr>
                <c:forEach var="pay" items="${requestScope.payList}">
                    <tr>
                        <td>${pay.payTime}</td>
                        <td>${pay.employeeId}</td>
                        <td>${pay.basePay}</td>
                        <td>${pay.performanceBonus}</td>
                        <td>${pay.overtimePay}</td>
                        <td>${pay.prizePay}</td>
                        <td>${pay.socialSecurity}</td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="7"><a href="admin5">发放工资</a></td>
                </tr>
            </table>
        </c:if>
    </div>
</body>
</html>
