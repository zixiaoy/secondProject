<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/17
  Time: 14:51
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
                var flag=confirm("确定删除此条招聘信息吗？");
                return flag;
            })
        })
    </script>
</head>
<body>
    <jsp:include page="adminPage.jsp"></jsp:include>

    <div style="text-align:center">
        <h2 style="color:brown;font-size:50px;text-align:left">发布招聘：</h2><br>
        <c:if test="${requestScope.recruits.size()==0}">
            <span style="font-size:30px">暂无招聘信息</span>
        </c:if>
        <c:if test="${requestScope.recruits.size()!=0}">
            <table border="2px" cellpadding="10px" cellspacing="0" align="center">
                <tr>
                    <td>公司名称</td>
                    <td>公司地址</td>
                    <td>部门</td>
                    <td>职位</td>
                    <td>底薪</td>
                    <td>职位信息</td>
                    <td>删除招聘</td>
                </tr>
                <c:forEach var="recruit" items="${requestScope.recruits}">
                    <tr>
                        <td>${recruit.companyName}</td>
                        <td>${recruit.companyAddress}</td>
                        <td>${recruit.departmentId}</td>
                        <td>${recruit.positionId}</td>
                        <td>${recruit.basePay}</td>
                        <td>${recruit.intro}</td>
                        <td><a href="delRecruit?id=${recruit.id}" class="del">删除</a></td>
                    </tr>
                </c:forEach>
                <tr align="center">
                    <td colspan="7"><a href="admin22" style="font-size:25px">新增招聘</a></td>
                </tr>
            </table>
        </c:if>
    </div>
</body>
</html>
