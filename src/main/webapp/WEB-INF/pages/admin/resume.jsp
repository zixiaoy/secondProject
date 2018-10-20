<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/17
  Time: 12:37
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
                if(name==""){
                    alert("请选择面试时间");
                    return false;
                }
                var date3=$("#span1").text();
                if(Date.parse(name)-Date.parse(date3)<86400000){
                    alert("面试只能选择今天之后的时间！！！");
                    return false;
                }
            })

            $("#input2").click(function(){
                $("#input3").hide();
                var flag=confirm("确定删除此条求职者信息吗？");
                return flag;
            })
        })
    </script>
</head>
<body>
    <jsp:include page="adminPage.jsp"></jsp:include>
    <div style="text-align:center">
        <h2 style="color:brown;font-size:50px;text-align:left">求职简历：</h2><br>
        <span id="span1" hidden>
                    <jsp:useBean id="now" class="java.util.Date"/>
                    <f:formatDate value="${now}" pattern="yyyy-MM-dd" />
                </span>
        <table border="2px" cellpadding="10px" cellspacing="0" align="center">
            <tr>
                <td>姓名：</td>
                <td>${requestScope.resume.name}</td>
                <td>年龄：</td>
                <td>${requestScope.resume.age}</td>
            </tr>
            <tr>
                <td>性别：</td>
                <td>${requestScope.resume.sex}</td>
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
                <td>${requestScope.resume.departmentId}，${requestScope.resume.positionId}</td>
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
                <td colspan="2"><a href="interview.do?visitorId=${requestScope.resume.visitorId}" id="input1">面试</a></td>
                <td colspan="2"><a href="delCandidate?id=${requestScope.candidateId}" id="input2">删除</a></td>
            </tr>
            <tr id="input3">
                <td colspan="4" style="font-size:25px">
                    <form action="interview.do" method="post">
                        面试时间：<input type="date" name="interviewTime" id="input4" style="font-size:25px">&nbsp;
                        <input type="hidden" name="visitorId" value="${requestScope.resume.visitorId}">
                        <input type="hidden" name="creaTime" value="${requestScope.candidateCreaTime}">
                        <input type="submit" style="font-size:25px">
                    </form>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
