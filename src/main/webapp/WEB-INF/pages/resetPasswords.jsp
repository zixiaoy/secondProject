<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/13
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>密码重置</title>
    <link rel="stylesheet" type="text/css" href="/plugIn/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/plugIn/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/plugIn/fonts/iconic/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css" href="/plugIn/css/util.css">
    <link rel="stylesheet" type="text/css" href="/plugIn/css/main.css">

    <script src="/plugIn/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="/plugIn/js/main.js"></script>

    <script>
        $(function(){
            var flag1=false;
            var flag2=false;
            $("button").attr("disabled",true);
            $("#input1").hide();
            $("#input4").hide();
            $(":text").blur(function(){
                var name=$(this).val();
                var id=$("#input5").val();
                $.ajax({
                    url:"resetVerify",
                    type:"post",
                    dataType:"text",
                    data:{"name":name,"id":id},
                    success:function(data){
                        if(data=="123"){
                            $("#input1").hide();
                            flag1=true;
                            $("button").attr("disabled",true);
                        }else {
                            flag1=false;
                            $("#input1").show();
                            $("button").attr("disabled",true);
                        }
                    }
                })
            })
            $(".input100").blur(function(){
                var password1=$("#input2").val();
                var password2=$("#input3").val();
                if(password1==password2&&password1!=""){
                    flag2=true;
                    $("#input4").hide();
                }else {
                    flag2=false;
                    if(password1!=""&&password2!=""){
                        $("#input4").show();
                    }
                }
                if(flag1==flag2&&flag1==true){
                    $("button").attr("disabled",false);
                }else {
                    $("button").attr("disabled",true);
                }
            })
        })
    </script>
</head>
<body>
    <div class="limiter">
        <div class="container-login100" style="background-image: url('/plugIn/images/bg-01.jpg');">
            <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
                <form class="login100-form validate-form" action="resetPasswords.do" method="post">
                    <span class="login100-form-title p-b-49">重置密码</span>

                    <div class="wrap-input100 validate-input m-b-23" data-validate="请输入用户ID">
                        <span class="label-input100">用户ID</span>
                        <input class="input100" id="input5" type="number" name="id" placeholder="请输入用户ID" autocomplete="off">
                        <span class="focus-input100" data-symbol="&#xf206;" style="text-align:right;color:red">
                                <span id="input1">* ID与用户名不匹配！！！</span>
                            </span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23" data-validate="请输入用户名">
                        <span class="label-input100">用户名</span>
                        <input class="input100" type="text" name="name" placeholder="请输入用户名" autocomplete="off">
                        <span class="focus-input100" data-symbol="&#xf206;"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="请输入密码">
                        <span class="label-input100">密码</span>
                        <input class="input100" id="input2" type="password" name="password" placeholder="请输入密码">
                        <span class="focus-input100" data-symbol="&#xf190;" style="text-align:right;color:red">
                                <span id="input4">* 两次密码不一致！！！</span>
                            </span>
                    </div><br>

                    <div class="wrap-input100 validate-input" data-validate="请再次输入密码">
                        <span class="label-input100">确认密码</span>
                        <input class="input100" id="input3" type="password" name="password2" placeholder="请再次输入密码">
                        <span class="focus-input100" data-symbol="&#xf190;"></span>
                    </div>

                    <div class="text-left p-t-8 p-b-31">
                        <span style="color:red" id="span"></span>
                    </div>

                    <div class="container-login100-form-btn">
                        <div class="wrap-login100-form-btn">
                            <div class="login100-form-bgbtn"></div>
                            <button type="submit" class="login100-form-btn">重 置</button>
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