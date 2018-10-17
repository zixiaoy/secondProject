<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/16
  Time: 19:59
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
                        <a href="visitor3" style="font-size:25px;color:#1acbfc">招聘信息</a>
                    </h2>
                </li>
                <li>
                    <h2 class="obtain" id="input4">
                        <a href="javascript:history.go(0)" style="font-size:25px;color:#1acbfc">个人信息</a>
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
        <h2 style="color:brown;font-size:50px;text-align:left">个人信息：</h2><br>
        <table border="2px" cellpadding="30px" cellspacing="0" align="center" style="font-size:40px">
            <tr>
                <td>用户ID：</td>
                <td>${sessionScope.visitor.id}</td>
            </tr>
            <tr>
                <td>用户名：</td>
                <td>${sessionScope.visitor.name}</td>
            </tr>
        </table>
    </div>
</body>
</html>
