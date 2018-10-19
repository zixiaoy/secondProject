<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
            if(${requestScope.delEmplo==123}){
                alert("此为总经理，不能开除");
            }else if(${requestScope.delEmplo==456}){
                alert("开除成功");
            }
            if(${requestScope.removeEmplo==123}){
                alert("此员工已在该职位，不能调动");
            }else if(${requestScope.removeEmplo==456}){
                alert("调动成功");
            }
            $(".emplo5").click(function(){
                var flag=confirm("确定开除此员工吗？");
                return flag;
            })
            $(".emplo4").click(function(){
                var date=$("#span1").text();
                if(date<15){
                    return false;
                }
            })
        })
    </script>
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/pages/adminPage.jsp"></jsp:include>

    <span id="span1" hidden>
        <jsp:useBean id="now" class="java.util.Date"/>
        <f:formatDate value="${now}" pattern="dd" />
    </span>
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
                    <td><a href="removeEmplo?id=${employee.id}">人事调动</a></td>
                    <td><a href="clockingInEmplo?id=${employee.id}">考勤</a></td>
                    <td><a href="prizeInfoEmplo?id=${employee.id}">奖惩</a></td>
                    <td><a href="payEmplo?id=${employee.id}" class="emplo4">发放工资</a></td>
                    <td><a href="delEmplo?id=${employee.id}" class="emplo5">开除</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
