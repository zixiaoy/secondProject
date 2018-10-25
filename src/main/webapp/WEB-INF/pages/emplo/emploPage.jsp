<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/18
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<head>
    <title>员工界面</title>

    <link rel="stylesheet" href="/plugIn/css/base.css"> <!--初始化文件-->
    <link rel="stylesheet" href="/plugIn/css/menu.css"> <!--主样式-->
    <link rel="stylesheet" href="/plugIn/css/index.css">

    <script src="/plugIn/js/adapter.js"></script> <!--rem适配js-->
    <script src="/plugIn/js/menu.js"></script> <!--控制js-->
    <script src="/plugIn/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="/plugIn/js/index.js"></script>

    <script>
        $(function(){
            var date=$("#span1").text();
            date=parseInt(date);
            $("#num1").val(date-9);
            $("#num2").val(date-18);
            if(date<9){
                $("#ipt1").val("正常上班，请尽快提交打卡");
            }else if(date>=9&&date<11){
                $("#ipt1").val("已迟到，将罚款20，请尽快提交打卡");
            }else {
                $("#ipt1").val("这么晚了，还来干嘛，矿工，罚150");
                $("#sub1").attr("disabled",true);
            }
            if(date<18){
                $("#sub2").attr("disabled",true);
                $("#ipt2").val("未到下班时间，不能打卡");
            }else {
                $("#ipt2").val("加班也没钱，还不赶快走");
            }
            if(${requestScope.cultivates!=null}&&${requestScope.cultivates.size()!=0}){
                alert("您所在部门有新培训，请前往查看");
            }
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
                <i style="color:red;font-size: 25px">${sessionScope.emplo.name}</i>
                <span><img class="obscure" src="/plugIn/images/obscure.jpg"></span>
            </div>
            <div class="navBox">
                <ul>
                    <li>
                        <h2 class="obtain">
                            <a href="emplo1?id=${sessionScope.emplo.id}" style="color:#1acbfc">消息管理</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain">
                            <a href="emplo2?id=${sessionScope.emplo.id}" style="color:#1acbfc">个人信息</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain">
                            <a href="emplo3" style="color:#1acbfc">部门职位</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain">
                            <a href="emplo4?id=${sessionScope.emplo.id}" style="color:#1acbfc">我的考勤</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain">
                            <a href="emplo5?id=${sessionScope.emplo.id}" style="color:#1acbfc">我的奖惩</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain">
                            <a href="emplo6?id=${sessionScope.emplo.id}" style="color:#1acbfc">我的薪资</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain">
                            <a href="visitor5?id=${sessionScope.emplo.id}" style="color:#1acbfc">修改密码</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain">
                            <a href="${pageContext.request.contextPath}/pages/login.jsp" style="color:#1acbfc">
                                退出
                            </a>
                        </h2>
                    </li>
                </ul>
            </div>
        </div>
    </div>


    <div class="nav">
        <ul>
            <li><button style="color:brown;font-size:20px;text-align:right" onClick="showBox1()">上班打卡</button>
                <button style="color:brown;font-size:20px;text-align:right"  onClick="showBox2()">下班打卡</button></li>
        </ul>
    </div>

    <span id="span1" hidden>
        <jsp:useBean id="now" class="java.util.Date"/>
        <f:formatDate value="${now}" pattern="HH:mm:ss" />
    </span>

    <div class="event" id="login_box1" style="display: none;">
        <div class="login">
            <div class="title">
                <span class="t_txt">上班打卡</span>
                <span class="del" onClick="deleteLogin1()">X</span>
            </div>
            <form action="addClockingIn" method="post">
                <br><br><br><br>
                <input type="hidden" name="id" value="${sessionScope.emplo.id}">
                <input type="hidden" name="num" id="num1">
                <input id="ipt1" style="text-align:center" disabled="disabled">
                <input type="submit" id="sub1" value="确定打卡" class="btn" />
            </form>
        </div>
    </div>

    <div class="bg_color" onClick="deleteLogin1()" id="bg_filter1" style="display: none;"></div>

    <div class="event" id="login_box2" style="display: none;">
        <div class="login">
            <div class="title">
                <span class="t_txt">下班打卡</span>
                <span class="del" onClick="deleteLogin2()">X</span>
            </div>
            <form action="updateClockingIn" method="post">
                <br><br><br><br>
                <input type="hidden" name="id" value="${sessionScope.emplo.id}">
                <input type="hidden" name="num" id="num2">
                <input id="ipt2" style="text-align:center" disabled="disabled">
                <input type="submit" id="sub2" value="确定打卡" class="btn" />
            </form>
        </div>
    </div>

    <div class="bg_color" onClick="deleteLogin2()" id="bg_filter2" style="display: none;"></div>
</body>
</html>

