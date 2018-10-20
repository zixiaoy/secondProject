<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/18
  Time: 14:25
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
    <jsp:include page="adminPage.jsp"></jsp:include>

    <div style="text-align:center">
        <h2 style="color:brown;font-size:50px;text-align:left">工资异议：</h2><br>
        <c:if test="${requestScope.payObjectionList.size()==0}">
            <span style="font-size:25px">暂无异议信息</span>
        </c:if>
        <c:if test="${requestScope.payObjectionList.size()!=0}">
            <table border="2px" cellspacing="0" cellpadding="10px" align="center" style="font-size:25px">
                <tr style="color: #0e1cc4">
                    <td colspan="6">所有异议：</td>
                </tr>
                <tr style="color: #0e1cc4">
                    <td>员工姓名</td>
                    <td>异议原因</td>
                    <td>异议金额</td>
                    <td>是否查看</td>
                    <td>异议薪资ID</td>
                    <td>生成奖惩</td>
                </tr>
                <c:forEach var="payObjection" items="${requestScope.payObjectionList}">
                    <tr>
                        <td>${payObjection.employeeId}</td>
                        <td>${payObjection.cause}</td>
                        <td>${payObjection.money}</td>
                        <td>
                            <c:if test="${payObjection.status==1}">
                                <a href="updatePayObjection?id=${payObjection.id}">查看</a>
                            </c:if>
                            <c:if test="${payObjection.status==2}">
                                已查看
                            </c:if>
                        </td>
                        <td>${payObjection.payId}</td>
                        <td><a href="prizeInfoEmplo?id=${payObjection.employeeId}">奖惩</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </div>
</body>
</html>
