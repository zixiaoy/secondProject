<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/20
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>管理员界面</title>

    <script src="/plugIn/vendor/jquery/jquery-3.2.1.min.js"></script>

    <script>
        $(function(){
            $(".del").click(function(){
                var flag=confirm("确定删除此条求职者信息吗？");
                return flag;
            })
        })
    </script>
</head>
<body>
    <jsp:include page="adminPage.jsp"></jsp:include>

    <div style="text-align:center">
        <h2 style="color:brown;font-size:50px;text-align:left">消息管理：</h2><br>
        <c:if test="${requestScope.feedbackList.size()==0}">
            <span style="font-size:30px">暂无面试信息</span>
        </c:if>
        <c:if test="${requestScope.feedbackList.size()!=0}">
            <table border="2px" cellpadding="10px" cellspacing="0" align="center">
                <tr>
                    <td>面试者</td>
                    <td>投递时间</td>
                    <td>是否面试</td>
                    <td>面试时间</td>
                    <td>查看详细</td>
                </tr>
                <form action="interviewVerify" method="post">
                    <c:forEach var="feedback" items="${requestScope.feedbackList}">
                        <tr>
                            <td>
                                <c:forEach var="visitor" items="${requestScope.visitors}">
                                    <c:if test="${visitor.id==feedback.visitorId}">
                                        ${visitor.name}
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td><f:formatDate value="${feedback.creaTime}" pattern="yyyy-MM-dd"></f:formatDate></td>
                            <td>按时面试</td>
                            <td><f:formatDate value="${feedback.interviewTime}" pattern="yyyy-MM-dd"></f:formatDate></td>
                            <td><a href="lookResume?visitorId=${feedback.visitorId}&id=${feedback.id}">查看</a></td>
                        </tr>
                    </c:forEach>
                </form>
            </table>
        </c:if>
    </div>
</body>
</html>
