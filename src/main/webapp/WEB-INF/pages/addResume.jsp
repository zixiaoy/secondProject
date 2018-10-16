<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/16
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>创建简历</title>
    <link rel="stylesheet" type="text/css" href="/plugIn/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/plugIn/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/plugIn/fonts/iconic/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css" href="/plugIn/css/util.css">
    <link rel="stylesheet" type="text/css" href="/plugIn/css/main.css">

    <script src="/plugIn/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="/plugIn/js/main.js"></script>

    <script>
        $(function(){
            $("#department1").change(function(){
                $("#position1").empty();
                var departmentId=$(this).val();
                $.ajax({
                    url:"departmentVerify",
                    type:"post",
                    dataType:"JSON",
                    data:{"departmentId":departmentId},
                    success:function(data){
                        for(var i=0;i<data.length;i++){
                            $("#position1").append("<option value="+data[i].id+">"+data[i].name+"</option>");
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
                <form class="login100-form validate-form" action="resume.do?visitorId=${requestScope.visitorId}" method="post">
                    <span class="login100-form-title p-b-49">创建简历</span>

                    <div class="wrap-input100 validate-input m-b-23" data-validate="请输入姓名">
                        <input class="input100" type="text" name="name" placeholder="姓名" autocomplete="off">
                        <span class="focus-input100" style="text-align:right;color:red"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23" data-validate="请输入年龄">
                        <input class="input100" type="number" name="age" placeholder="年龄">
                        <span class="focus-input100" style="text-align:right;color:red"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23" style="font-size:20px;">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input class="input-group-lg" type="radio" name="sex" checked="checked" value="1">🚹
                        <input class="input-group-lg" type="radio" name="sex" value="2">🚺
                    </div>

                    <div class="wrap-input100 validate-input m-b-23">
                        <select class="input100" name="education">
                            <option value="博士">博士</option>
                            <option value="硕士">硕士</option>
                            <option value="本科">本科</option>
                            <option value="大专">大专</option>
                            <option value="高中">高中</option>
                        </select>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23" data-validate="请输入电话">
                        <input class="input100" type="text" name="tel" placeholder="电话">
                        <span class="focus-input100" style="text-align:right;color:red"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23" data-validate="请输入邮箱">
                        <input class="input100" type="email" name="email" placeholder="邮箱">
                        <span class="focus-input100" style="text-align:right;color:red"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23">
                        <select class="input100" name="politicsStatus">
                            <option value="党员">党员</option>
                            <option value="团员">团员</option>
                            <option value="群众">群众</option>
                        </select>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23">
                        <select class="input100" name="departmentId" id="department1">
                            <c:forEach var="departments" items="${requestScope.departments}">
                                <option value="${departments.id}">${departments.name}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23">
                        <select class="input100" name="positionId" id="position1">
                            <c:forEach var="position" items="${requestScope.positionList}">
                                <option value="${position.id}">${position.name}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23">
                        <select class="input100" name="expectSalary">
                            <option value="3000-5000">3000-5000</option>
                            <option value="5001-8000">5001-8000</option>
                            <option value="8001-12000">8001-12000</option>
                            <option value="12001-15000">12001-15000</option>
                            <option value="15001-20000">15001-20000</option>
                        </select>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23" data-validate="请输入工作经历">
                        <input class="input100" type="text" name="experience" placeholder="工作经历">
                        <span class="focus-input100" style="text-align:right;color:red"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23" data-validate="请输入居住地址">
                        <input class="input100" type="text" name="address" placeholder="居住地址">
                        <span class="focus-input100" style="text-align:right;color:red"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23" data-validate="请输入兴趣爱好">
                        <input class="input100" type="text" name="interest" placeholder="兴趣爱好">
                        <span class="focus-input100" style="text-align:right;color:red"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23" data-validate="请输入特长">
                        <input class="input100" type="text" name="speciality" placeholder="特长">
                        <span class="focus-input100" style="text-align:right;color:red"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23" data-validate="请输入个人简介">
                        <input class="input100" type="text" name="intro" placeholder="个人简介">
                        <span class="focus-input100" style="text-align:right;color:red"></span>
                    </div>

                    <div class="text-left p-t-8 p-b-31">
                        <span style="color:red" id="span"></span>
                    </div>

                    <div class="container-login100-form-btn">
                        <div class="wrap-login100-form-btn">
                            <div class="login100-form-bgbtn"></div>
                            <button type="submit" class="login100-form-btn">创 建</button>
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
