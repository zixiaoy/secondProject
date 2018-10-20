<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/19
  Time: 17:49
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
        <h2 style="color:brown;font-size:50px;text-align:left">员工管理：</h2><br>
        <table border="2px" cellspacing="0" cellpadding="10px" align="center">
            <tr style="color: #0e1cc4;font-size:25px">
                <td colspan="4">员工基本信息</td>
            </tr>
            <tr>
                <td>员工号</td>
                <td>${requestScope.emplo.id}</td>
                <td>姓名</td>
                <td>${requestScope.emplo.name}</td>
            </tr>
            <tr>
                <td>年龄</td>
                <td>${requestScope.emplo.age}</td>
                <td>性别</td>
                <td>
                    <c:if test="${requestScope.emplo.sex==1}">
                        男
                    </c:if>
                    <c:if test="${requestScope.emplo.sex==2}">
                        女
                    </c:if>
                </td>
            </tr>
            <tr>
                <td>学历</td>
                <td>${requestScope.emplo.education}</td>
                <td>电话</td>
                <td>${requestScope.emplo.tel}</td>
            </tr>
            <tr>
                <td>邮箱</td>
                <td>${requestScope.emplo.email}</td>
                <td>职别</td>
                <td>
                    <c:if test="${requestScope.emplo.rank==1}">
                        试用期
                    </c:if>
                    <c:if test="${requestScope.emplo.rank==2}">
                        正式员工
                    </c:if>
                    <c:if test="${requestScope.emplo.rank==3}">
                        部门主管
                    </c:if>
                    <c:if test="${requestScope.emplo.rank==4}">
                        总经理
                    </c:if>
                </td>
            </tr>
            <tr>
                <td>入职时间</td>
                <td><f:formatDate value="${requestScope.emplo.creaTime}" pattern="yyyy-MM-dd"/></td>
                <td>底薪</td>
                <td>${requestScope.emplo.basePay}</td>
            </tr>
            <tr>
                <td>部门</td>
                <td>${requestScope.department.name}</td>
                <td>职位</td>
                <td>${requestScope.position.name}</td>
            </tr>
        </table>
    </div>
</body>
</html>
