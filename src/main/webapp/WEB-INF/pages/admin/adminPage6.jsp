<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/18
  Time: 13:27
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
        <h2 style="color:brown;font-size:50px;text-align:left">奖惩管理：</h2><br>
        <c:if test="${requestScope.prizeInfoList.size()==0}">
            <span style="font-size:25px">暂无奖惩信息。。。</span>
            <a href="admin5" style="font-size:25px">新建奖惩</a>
        </c:if>
        <c:if test="${requestScope.prizeInfoList.size()!=0}">
            <table border="2px" cellspacing="0" cellpadding="10px" align="center" style="font-size:25px">
                <tr style="color: #0e1cc4">
                    <td colspan="7">
                        <select name="" style="color: #0e1cc4;font-size:25px">
                            <option value="0">所有奖惩</option>
                            <c:forEach var="departments" items="${requestScope.departments}">
                                <option value="${departments.id}">${departments.name}奖惩</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr style="color: #0e1cc4">
                    <td>奖/惩</td>
                    <td>奖惩原因</td>
                    <td>奖惩金额</td>
                    <td>发布时间</td>
                    <td>员工部门</td>
                    <td>员工职位</td>
                    <td>员工姓名</td>
                </tr>
                <c:forEach var="prizeInfo" items="${requestScope.prizeInfoList}">
                    <tr>
                        <td>
                            <c:if test="${prizeInfo.name==1}">
                                奖赏
                            </c:if>
                            <c:if test="${prizeInfo.name==2}">
                                惩罚
                            </c:if>
                        </td>
                        <td>${prizeInfo.cause}</td>
                        <td>${prizeInfo.money}</td>
                        <td><f:formatDate value="${prizeInfo.creaTime}" pattern="yyyy-MM-dd"/> </td>
                        <td>${prizeInfo.departmentId}</td>
                        <td>${prizeInfo.positionId}</td>
                        <td>${prizeInfo.employeeId}</td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="7"><a href="admin5">新建奖惩</a></td>
                </tr>
            </table>
        </c:if>
    </div>
</body>
</html>
