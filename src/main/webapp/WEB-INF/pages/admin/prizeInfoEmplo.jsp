<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/18
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员界面</title>
    <link rel="stylesheet" type="text/css" href="/plugIn/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/plugIn/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/plugIn/fonts/iconic/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css" href="/plugIn/css/util.css">
    <link rel="stylesheet" type="text/css" href="/plugIn/css/main.css">

    <script src="/plugIn/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="/plugIn/js/main.js"></script>

</head>
<body>
    <div class="limiter">
        <div class="container-login100" style="background-image: url('/plugIn/images/bg-01.jpg');">
        <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
            <form class="login100-form validate-form" action="prizeInfoEmplo.do?employeeId=${requestScope.employee.id}" method="post">
                <span class="login100-form-title p-b-49">奖惩</span>

                <div class="wrap-input100 validate-input m-b-23">
                    <select class="input100" name="name">
                        <option value="1">奖赏</option>
                        <option value="2">惩罚</option>
                    </select>
                </div>

                <div class="wrap-input100 validate-input m-b-23" data-validate="请输入原因">
                    <input class="input100" type="text" name="cause" placeholder="原因">
                    <span class="focus-input100" style="text-align:right;color:red"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-23">
                    <select class="input100" name="money">
                        <option value="100">100元</option>
                        <option value="200">200元</option>
                        <option value="500">500元</option>
                        <option value="1000">1000元</option>
                    </select>
                </div>

                <div class="text-left p-t-8 p-b-31">
                    <span style="color:red" id="span"></span>
                </div>

                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button type="submit" class="login100-form-btn">奖&nbsp;&nbsp;赏</button>
                    </div>
                </div>

                <div class="flex-col-c p-t-25">
                    <a href="javascript:history.back(-1)" class="txt2">返回上一页</a>
                </div>
            </form>
        </div>
    </div>
    </div>
</body>
</html>
