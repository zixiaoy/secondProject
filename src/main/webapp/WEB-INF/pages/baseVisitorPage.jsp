<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/16
  Time: 15:22
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
                        <h2 class="obtain" style="font-size:25px;color:#1acbfc" id="input1">
                            消息反馈
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain" style="font-size:25px;color:#1acbfc" id="input2">
                            查看简历
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain" style="font-size:25px;color:#1acbfc" id="input3">
                            招聘信息
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain" style="font-size:25px;color:#1acbfc" id="input4">
                            个人信息
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain" style="font-size:25px;color:#1acbfc" id="input5">
                            修改密码
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain">
                            <a href="javascript:history.back(-1)" style="font-size:25px;color:#1acbfc">
                                退出
                            </a>
                        </h2>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>
