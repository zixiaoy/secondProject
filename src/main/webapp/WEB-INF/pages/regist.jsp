<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/11
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <script src="/js/jquery-1.10.2.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <style>
        body{
            background:url(/image/image3.jpg);
            background-position: center 0;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            position: absolute;
            top: 30%;
            left:43%;
        }
    </style>
</head>
<body>
    <form class="form-inline" action="regist.do">
        <div class="form-group">
            <label class="sr-only" for="exampleInputEmail3">用户名</label>
            <input type="text" name="name" class="form-control" id="exampleInputEmail3" placeholder="用户名">
        </div><br>
        <div class="form-group">
            <label class="sr-only" for="exampleInputPassword3">Password</label>
            <input type="password" name="password" class="form-control" id="exampleInputPassword3" placeholder="Password">
        </div><br>
        <div class="form-group">
            <label class="sr-only" for="exampleInputPassword3">Password</label>
            <input type="password" name="password2" class="form-control" id="exampleInputPassword4" placeholder="Re-Enter">
        </div><br>
        <div class="checkbox">
            <label>
                <input type="checkbox">记住我
            </label>
        </div><br>
        <button type="submit" class="btn btn-primary" style="width: 95px">注册</button>
    </form>
</body>
</html>
