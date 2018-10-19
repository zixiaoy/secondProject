<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/18
  Time: 16:45
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

    <script>
        $(function(){
            $("button").click(function(){
                var date2=$("#date1").val();
                var date3=$("#span1").text();
                if(Date.parse(date2)-Date.parse(date3)<86400000){
                    alert("培训只能选择今天之后的时间！！！");
                    return false;
                }
            })
        })
    </script>
</head>
<body>
    <div class="limiter">
        <div class="container-login100" style="background-image: url('/plugIn/images/bg-01.jpg');">
            <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
                <span id="span1" hidden>
                    <jsp:useBean id="now" class="java.util.Date"/>
                    <f:formatDate value="${now}" pattern="yyyy-MM-dd" />
                </span>
                <form class="login100-form validate-form" action="editCultivate.do" method="post">
                    <span class="login100-form-title p-b-49">修改培训</span>

                    <input type="hidden" name="id" value="${requestScope.cultivate.id}">

                    <div class="wrap-input100 validate-input m-b-23" data-validate="请输入培训名称">
                        <input class="input100" type="text" name="name" placeholder="培训名称" value="${requestScope.cultivate.name}">
                        <span class="focus-input100" style="text-align:right;color:red"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23" data-validate="请输入培训时间">
                        <input class="input100" type="date" name="cultivateTime2" id="date1" placeholder="培训时间"
                               value="<f:formatDate value="${requestScope.cultivate.cultivateTime}" pattern="yyyy-MM-dd"/>">
                        <span class="focus-input100" style="text-align:right;color:red"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-23">
                        <select class="input100" name="departmentId">
                            <c:forEach var="departments" items="${requestScope.departments}">
                                <option value="${departments.id}">${departments.name}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="text-left p-t-8 p-b-31">
                        <span style="color:red" id="span"></span>
                    </div>

                    <div class="container-login100-form-btn">
                        <div class="wrap-login100-form-btn">
                            <div class="login100-form-bgbtn"></div>
                            <button type="submit" class="login100-form-btn">修 改</button>
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
