<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/20
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>求职简历</title>

    <script src="/plugIn/vendor/jquery/jquery-3.2.1.min.js"></script>

    <script>
        $(function(){
            $("#input3").hide();

            $("#input1").click(function(){
                $("#input3").show();
                return false;
            })

            $(":submit").click(function(){
                var name=$("#input4").val();
                if(name==""||name<3000){
                    alert("请正确输入月薪");
                    return false;
                }
            })
            $("#input2").click(function(){
                $("#input3").hide();
                var flag=confirm("确定不录用此位求职者吗？");
                return flag;
            })
        })
    </script>
</head>
<body>
    <jsp:include page="adminPage.jsp"></jsp:include>
    <div style="text-align:center">
        <h2 style="color:brown;font-size:50px;text-align:left">求职简历：</h2><br>
        <table border="2px" cellpadding="10px" cellspacing="0" align="center">
            <tr>
                <td>姓名：</td>
                <td>${requestScope.resume.name}</td>
                <td>年龄：</td>
                <td>${requestScope.resume.age}</td>
            </tr>
            <tr>
                <td>性别：</td>
                <td>
                    <c:if test="${requestScope.resume.sex==1}">
                        男
                    </c:if>
                    <c:if test="${requestScope.resume.sex==2}">
                        女
                    </c:if>
                </td>
                <td>学历：</td>
                <td>${requestScope.resume.education}</td>
            </tr>
            <tr>
                <td>电话：</td>
                <td>${requestScope.resume.tel}</td>
                <td>邮箱：</td>
                <td>${requestScope.resume.email}</td>
            </tr>
            <tr>
                <td>政治面貌：</td>
                <td>${requestScope.resume.politicsStatus}</td>
                <td>应聘岗位：</td>
                <td>
                    <c:forEach var="department" items="${requestScope.departments}">
                        <c:if test="${department.id==requestScope.resume.departmentId}">
                            ${department.name}，
                        </c:if>
                    </c:forEach>
                    <c:forEach var="position" items="${requestScope.positions}">
                        <c:if test="${position.id==requestScope.resume.positionId}">
                            ${position.name}
                        </c:if>
                    </c:forEach>
                </td>
            </tr>
            <tr>
                <td>期望薪资：</td>
                <td>${requestScope.resume.expectSalary}</td>
                <td>工作经历：</td>
                <td>${requestScope.resume.experience}</td>
            </tr>
            <tr>
                <td>居住地址：</td>
                <td>${requestScope.resume.experience}</td>
                <td>兴趣爱好：</td>
                <td>${requestScope.resume.interest}</td>
            </tr>
            <tr>
                <td>特长：</td>
                <td>${requestScope.resume.speciality}</td>
                <td>个人简介：</td>
                <td>${requestScope.resume.intro}</td>
            </tr>
            <tr>
                <td colspan="2"><a href="addEmplo.do" id="input1">录用</a></td>
                <td colspan="2"><a href="delFeedback?id=${requestScope.feedbackId}" id="input2">不录用</a></td>
            </tr>
            <tr id="input3">
                <td colspan="4" style="font-size:25px">
                    <form action="addEmplo.do" method="post">
                        输入月薪：<input type="number" name="basePay" id="input4" style="font-size:25px">&nbsp;
                        <input type="hidden" name="visitorId" value="${requestScope.resume.visitorId}">
                        <input type="hidden" name="feedbackId" value="${requestScope.feedbackId}">
                        <input type="submit" style="font-size:25px">
                    </form>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>