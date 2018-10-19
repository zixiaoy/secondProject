<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/18
  Time: 11:02
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
        <h2 style="color:brown;font-size:50px;text-align:left">员工管理：</h2><br>
        <c:if test="${requestScope.clockingInList.size()==0}">
            <span style="font-size:25px">该员工暂无考勤。。。</span>
        </c:if>
        <c:if test="${requestScope.clockingInList.size()!=0}">
            <table border="2px" cellspacing="0" cellpadding="10px" align="center" style="font-size:25px">
                <tr style="color: #0e1cc4">
                    <td colspan="5">员工考勤：</td>
                </tr>
                <tr style="color: #0e1cc4">
                    <td>姓名</td>
                    <td>部门</td>
                    <td>职位</td>
                    <td>上班时间</td>
                    <td>下班时间</td>
                </tr>
                <c:forEach var="clockingIn" items="${requestScope.clockingInList}">
                    <tr>
                        <td>${clockingIn.id}</td>
                        <td>${clockingIn.departmentId}</td>
                        <td>${clockingIn.positionId}</td>
                        <td><f:formatDate value="${clockingIn.businessHours}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td><f:formatDate value="${clockingIn.closingTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </div>
</body>
</html>
