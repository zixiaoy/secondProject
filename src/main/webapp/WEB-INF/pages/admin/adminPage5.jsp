<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/18
  Time: 9:11
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
            $(".emplo1").click(function(){
                confirm("<select><option>123</option><option>456</option></select>");

            })
        })
    </script>
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/pages/adminPage.jsp"></jsp:include>

    <div style="text-align:center">
        <h2 style="color:brown;font-size:50px;text-align:left">员工管理：</h2><br>
        <table border="2px" cellpadding="10px" cellspacing="0" align="center" style="font-size:25px">
            <tr>
                <td colspan="7" style="color: #0e1cc4">所有员工：</td>
            </tr>
            <tr style="color: #0e1cc4">
                <td>账号</td>
                <td>姓名</td>
                <td colspan="5">操作</td>
            </tr>
            <c:forEach var="employee" items="${requestScope.employeeList}">
                <tr>
                    <td>${employee.name}</td>
                    <td></td>
                    <td><a href="removeEmplo" class="emplo1">人事调动</a></td>
                    <td><a href="clockingInEmplo" class="emplo2">考勤</a></td>
                    <td><a href="prizeInfoEmplo" class="emplo3">奖惩</a></td>
                    <td><a href="payEmplo" class="emplo4">发放工资</a></td>
                    <td><a href="delEmplo" class="emplo5">开除</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
