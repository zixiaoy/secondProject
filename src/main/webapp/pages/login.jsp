<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/13
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html >
<head>
    <title>登录页面</title>

    <link rel="stylesheet" type="text/css" href="/plugIn/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/plugIn/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/plugIn/fonts/iconic/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css" href="/plugIn/css/util.css">
    <link rel="stylesheet" type="text/css" href="/plugIn/css/main.css">

    <script src="/plugIn/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="/plugIn/js/main.js"></script>

    <script>
        $(function(){
            $("#span").hide();
            $("button").attr("disabled",true);
            $(".input100").blur(function(){
                var name=$(":text").val();
                var password=$(":password").val();
                $.ajax({
                    url:"loginVerify",
                    type:"post",
                    dataType:"text",
                    data:{"name":name,"password":password},
                    success:function(data){
                        if(data=="123"){
                            $("#span").hide();
                            $("button").attr("disabled",true);
                        }else if(data==456){
                            $("#span").show();
                            $("button").attr("disabled",true);
                        }else {
                            $("#span").hide();
                            $("button").attr("disabled",false);
                        }
                    }
                })
            })
        })
    </script>
</head>
<body>
    <div class="limiter">
        <div class="container-login100" style="background-image: url('/plugIn/images/bg-01.jpg');">
            <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
                <form class="login100-form validate-form" action="findVisitor" method="post">
                    <span class="login100-form-title p-b-49">登录</span>

                    <div class="wrap-input100 validate-input m-b-23" data-validate="请输入用户名">
                        <span class="label-input100">用户名</span>
                        <input class="input100" type="text" name="name" placeholder="请输入用户名" autocomplete="off">
                        <span class="focus-input100" data-symbol="&#xf206;"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="请输入密码">
                        <span class="label-input100">密码</span>
                        <input class="input100" type="password" name="password" placeholder="请输入密码">
                        <span class="focus-input100" data-symbol="&#xf190;"></span>
                    </div>

                    <div class="text-left p-t-8 p-b-31">
                        <span style="color:red" id="span">* 用户名或密码错误！！！</span>
                    </div>

                    <div class="text-right p-t-8 p-b-31">
                        <a href="resetPasswords">忘记密码？</a>
                    </div>


                    <div class="container-login100-form-btn">
                        <div class="wrap-login100-form-btn">
                            <div class="login100-form-bgbtn"></div>
                            <button type="submit" class="login100-form-btn">登 录</button>
                        </div>
                    </div>

                    <div class="flex-col-c p-t-25">
                        <a href="regist" class="txt2">立即注册</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
