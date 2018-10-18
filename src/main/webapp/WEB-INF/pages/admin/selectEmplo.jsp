<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/17
  Time: 16:13
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
        <h2 style="color:brown;font-size:50px;text-align:left">部门职位：</h2><br>
        <c:if test="${requestScope.employeeList.size()==0}">
            <span style="font-size:25px">${requestScope.department.name}/${requestScope.position.name}下暂无员工</span>
        </c:if>
        <c:if test="${requestScope.employeeList.size()!=0}">
            <table border="2px" cellspacing="0" cellpadding="10px" align="center" style="font-size:25px">
                <tr style="color: #0e1cc4">
                    <td colspan="6">${requestScope.department.name}/${requestScope.position.name}：</td>
                </tr>
                <tr style="color: #0e1cc4">
                    <td>员工账号</td>
                    <td>员工姓名</td>
                    <td>员工级别</td>
                    <td>入职时间</td>
                    <td>所属部门</td>
                    <td>所属岗位</td>
                </tr>
                <c:forEach var="emplo" items="${requestScope.employeeList}">
                    <tr>
                        <td>${emplo.name}</td>
                        <td>hhh</td>
                        <td>
                            <c:if test="${emplo.rank==1}">
                                试用期
                            </c:if>
                            <c:if test="${emplo.rank==2}">
                                正式员工
                            </c:if>
                            <c:if test="${emplo.rank==3}">
                                ${requestScope.position.name}
                            </c:if>
                            <c:if test="${emplo.rank==4}">
                                总经理
                            </c:if>
                        </td>
                        <td><f:formatDate value="${emplo.creaTime}" pattern="yyyy-MM-dd" /></td>
                        <td>${requestScope.department.name}</td>
                        <td>${requestScope.position.name}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </div>
</body>
</html>
