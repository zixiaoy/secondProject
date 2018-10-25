<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/21
  Time: 15:58
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
        <c:if test="${requestScope.departments.size()==0}">
            <span style="font-size:25px">暂无部门信息。。。</span>
        </c:if>
        <c:if test="${requestScope.departments.size()!=0}">
            <table border="2px" cellspacing="0" cellpadding="10px" align="center" style="font-size:25px">
                <tr  style="color: #0e1cc4">
                    <td colspan="4">所有部门：</td>
                </tr>
                <tr style="color: #0e1cc4">
                    <td>部门</td>
                    <td>创建时间</td>
                    <td>操作</td>
                </tr>
                <c:forEach var="departments" items="${requestScope.departments}">
                    <tr>
                        <td>${departments.name}</td>
                        <td><f:formatDate value="${departments.creaTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        <td>
                            <a href="selectPositions?departmentId=${departments.id}">查看</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </div>

</body>
</html>
