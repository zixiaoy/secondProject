<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/13
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>游客界面</title>

    <link rel="stylesheet" href="/plugIn/css/base.css"> <!--初始化文件-->
    <link rel="stylesheet" href="/plugIn/css/menu.css"> <!--主样式-->

    <script src="/plugIn/js/adapter.js"></script> <!--rem适配js-->
    <script src="/plugIn/js/menu.js"></script> <!--控制js-->
    <script src="/plugIn/vendor/jquery/jquery-3.2.1.min.js"></script>

    <script>
        $(function(){
            if(${sessionScope.feedbacks.size()!=0}){
                alert("您有${sessionScope.feedbacks.size()}条反馈消息未查看，请前往查看");
            }
            $("#input6").click(function(){
                if(${requestScope.candidate!=null}){
                    if(${requestScope.candidate=="789"}){
                        alert("已投递过，不能重复投递");
                        return false;
                    }else if(${requestScope.candidate=="456"}){
                        alert("尚无简历，请先创建简历");
                        return false;
                    }else {
                        alert("投递成功");
                    }
                }
            })
            $("#input2").click(function(){
                window.location.href="visitor2?visitorId=${sessionScope.visitor.id}";
            })
            $("#input3").click(function(){
                window.location.href="visitor3";
            })
        })
    </script>
</head>
<body  style="background-image: url('/plugIn/images/image3.jpg')">
    <div id="menu">
        <!--隐藏菜单-->
        <div id="ensconce">
            <h2>
                <img src="/plugIn/images/show.jpg">
                <span style="color:rosybrown">人力资源系统</span>
            </h2>
        </div>

        <!--显示菜单-->
        <div id="open">
            <div class="navH">
                <i style="color:red;font-size: 25px">当前用户：${sessionScope.visitor.name}</i>
                <span><img class="obscure" src="/plugIn/images/obscure.jpg"></span>
            </div>
            <div class="navBox">
                <ul>
                    <li>
                        <h2 class="obtain" id="input1">
                            <a href="visitor1?visitorId=${sessionScope.visitor.id}" style="font-size:25px;color:#1acbfc">消息反馈</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain" id="input2">
                            <a href="visitor2?visitorId=${sessionScope.visitor.id}" style="font-size:25px;color:#1acbfc">查看简历</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain" id="input3">
                            <a href="javascript:history.go(0)" style="font-size:25px;color:#1acbfc">招聘信息</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain" id="input4">
                            <a href="visitor4" style="font-size:25px;color:#1acbfc">个人信息</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain" id="input5">
                            <a href="visitor5" style="font-size:25px;color:#1acbfc">修改密码</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain">
                            <a href="${pageContext.request.contextPath}/pages/login.jsp" style="font-size:25px;color:#1acbfc">
                                退出
                            </a>
                        </h2>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div style="text-align:center">
        <h2 style="color:brown;font-size:50px;text-align:left">招聘信息：</h2><br>
        <c:if test="${sessionScope.recruits.size()==0}">
            <span style="font-size:30px">暂无招聘信息</span>
        </c:if>
        <c:if test="${sessionScope.recruits.size()!=0}">
            <table border="2px" cellpadding="10px" cellspacing="0" align="center">
                <tr>
                    <td>公司名称</td>
                    <td>公司地址</td>
                    <td>部门</td>
                    <td>职位</td>
                    <td>底薪</td>
                    <td>职位信息</td>
                    <td>投递简历</td>
                </tr>
                <c:forEach var="recruit" items="${sessionScope.recruits}">
                    <tr>
                        <td>${recruit.companyName}</td>
                        <td>${recruit.companyAddress}</td>
                        <td>${recruit.departmentId}</td>
                        <td>${recruit.positionId}</td>
                        <td>${recruit.basePay}</td>
                        <td>${recruit.intro}</td>
                        <td><a href="delivery?visitorId=${sessionScope.visitor.id}&positionId=${recruit.positionId}" id="input6">投递简历</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </div>
</body>
</html>
