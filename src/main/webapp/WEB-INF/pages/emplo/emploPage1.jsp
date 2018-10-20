<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/19
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>员工界面</title>
</head>
<body>
    <jsp:include page="emploPage.jsp"></jsp:include>
    <div style="text-align:center">
        <h2 style="color:brown;font-size:40px;text-align:left">消息管理：</h2><br>
        <c:if test="${requestScope.cultivateList.size()==0}">
            暂无消息通知。。。
        </c:if>
        <c:if test="${requestScope.cultivateList.size()!=0}">
            <table border="2px" cellspacing="0" cellpadding="10px" align="center" style="font-size:25px">
                <tr style="color: #0e1cc4">
                    <td colspan="6">本部门所有培训</td>
                </tr>
                <tr style="color: #0e1cc4">
                    <td>培训名称</td>
                    <td>创建时间</td>
                    <td>培训时间</td>
                    <td>培训部门</td>
                </tr>
                <c:forEach var="cultivate" items="${requestScope.cultivateList}">
                    <tr>
                        <td>${cultivate.name}</td>
                        <td><f:formatDate value="${cultivate.creaTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td><f:formatDate value="${cultivate.cultivateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td>${cultivate.departmentId}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        </div>
</body>
</html>
