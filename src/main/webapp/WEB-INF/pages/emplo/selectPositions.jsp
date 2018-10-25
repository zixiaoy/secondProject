<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/21
  Time: 16:06
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
        <h2 style="color:brown;font-size:50px;text-align:left">部门职位：</h2><br>
        <c:if test="${requestScope.positionList.size()==0}">
            <span style="font-size:25px">${requestScope.department.name}下暂无职位</span>
        </c:if>
        <c:if test="${requestScope.positionList.size()!=0}">
            <table border="2px" cellspacing="0" cellpadding="10px" align="center" style="font-size:25px">
                <tr  style="color: #0e1cc4">
                    <td colspan="4">${requestScope.department.name}：</td>
                </tr>
                <tr style="color: #0e1cc4">
                    <td>职位</td>
                    <td>创建时间</td>
                </tr>
                <c:forEach var="position" items="${requestScope.positionList}">
                    <tr>
                        <td>${position.name}</td>
                        <td><f:formatDate value="${position.creaTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </div>

</body>
</html>
