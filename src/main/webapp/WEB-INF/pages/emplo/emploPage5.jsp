<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/19
  Time: 12:52
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
        <h2 style="color:brown;font-size:40px;text-align:left">我的奖惩：</h2><br>
        <c:if test="${requestScope.prizeInfoList.size()==0}">
            <span style="font-size:25px">暂无奖惩信息。。。</span>
        </c:if>
        <c:if test="${requestScope.prizeInfoList.size()!=0}">
            <table border="2px" cellspacing="0" cellpadding="10px" align="center" style="font-size:25px">
                <tr style="color: #0e1cc4">
                    <td colspan="7">所有奖惩</td>
                </tr>
                <tr style="color: #0e1cc4">
                    <td>奖/惩</td>
                    <td>奖惩原因</td>
                    <td>奖惩金额</td>
                    <td>发布时间</td>
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
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </div>
</body>
</html>
