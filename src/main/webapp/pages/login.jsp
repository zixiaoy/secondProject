<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/11
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <title>登陆</title>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <script src="/js/jquery-1.10.2.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <style>
        body{
            background:url(/image/image2.jpg);
            background-position: center 0;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            position: absolute;
            top: 30%;
            left:43%;
        }
    </style>
    <script>
        $(function(){
            $("#span").hide();
            $("#sub").attr("disabled",true);
            $(".form-control").blur(function(){
                var name=$("#exampleInputEmail3").val();
                var password=$("#exampleInputPassword3").val();
                $.ajax({
                    url:"loginVerify",
                    type:"post",
                    dataType:"text",
                    data:{"name":name,"password":password},
                    success:function(data){
                        if(data=="123"){
                            $("#span").hide();
                            $("#sub").attr("disabled",true);
                        }else if(data==456){
                            $("#span").show();
                            $("#sub").attr("disabled",true);
                        }else {
                            $("#span").hide();
                            $("#sub").attr("disabled",false);
                        }
                    }
                })
            })
        })
    </script>
</head>
<body>
    <form class="form-inline" action="findVisitor">
        <div class="form-group">
            <label class="sr-only" for="exampleInputEmail3">用户名</label>
            <input type="text" name="name" class="form-control" id="exampleInputEmail3" placeholder="用户名">
        </div><br>
        <div class="form-group">
            <label class="sr-only" for="exampleInputPassword3">Password</label>
            <input type="password" name="password" class="form-control" id="exampleInputPassword3" placeholder="Password">
        </div><br>
        <div class="checkbox">
            <label>
                <input type="checkbox">记住我
            </label>
        </div><br>
        <p style="color:red" id="span">* 用户名或密码错误！！！</p>
        <button type="submit" class="btn btn-primary" id="sub" style="width: 95px">登录</button>
        <button type="button" onclick="window.open('regist')" class="btn btn-info" style="width: 95px">注册</button>
    </form>
</body>
</html>

