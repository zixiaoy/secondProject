<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/17
  Time: 11:19
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
        <c:if test="${requestScope.candidateAll.size()==0}">
            暂无消息。。。
        </c:if>
        <c:if test="${requestScope.candidateAll.size()!=0}">
            <table border="2px" cellspacing="0" cellpadding="10px" align="center">
                <tr>
                    <td>应聘者</td>
                    <td>投递时间</td>
                    <td>查看状态</td>
                    <td>面试状态</td>
                    <td>删除消息</td>
                </tr>
                <c:forEach var="candidate" items="${requestScope.candidateAll}">
                    <tr>
                        <td>${candidate.visitorId}</td>
                        <td><f:formatDate value="${candidate.creaTime}" pattern="yyyy-MM-dd"></f:formatDate></td>
                        <td>
                            <c:if test="${candidate.status==1}">
                                <a href="status.do?visitorId=${candidate.visitorId}&id=${candidate.id}&creaTime=${candidate.creaTime}">查看</a>
                            </c:if>
                            <c:if test="${candidate.status==2}">
                                已查看
                            </c:if>
                        </td>
                        <td>
                            <c:if test="${candidate.interview==1}">
                                未面试
                            </c:if>
                            <c:if test="${candidate.interview==2}">
                                已录取
                            </c:if>
                            <c:if test="${candidate.interview==3}">
                                未通过
                            </c:if>
                        </td>
                        <td><a href="delCandidate?id=${candidate.id}" class="del">删除</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </div>
</body>
</html>
