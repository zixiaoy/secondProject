<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/17
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>管理员界面</title>

    <link rel="stylesheet" href="/plugIn/css/base.css"> <!--初始化文件-->
    <link rel="stylesheet" href="/plugIn/css/menu.css"> <!--主样式-->

    <script src="/plugIn/js/adapter.js"></script> <!--rem适配js-->
    <script src="/plugIn/js/menu.js"></script> <!--控制js-->
    <script src="/plugIn/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script>
        $(function(){
            if(${requestScope.candidates!=null}&&${requestScope.candidates.size()!=0}){
                alert("您有${requestScope.candidates.size()}条反馈消息未查看，请前往查看");
            }
            if(${requestScope.payObjections!=null}&&${requestScope.payObjections.size()!=0}){
                alert("您有${requestScope.payObjections.size()}条薪资异议未查看，请前往查看");
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
                        <a href="admin1" style="color:#1acbfc">消息管理</a>
                    </h2>
                </li>
                <li>
                    <h2 class="obtain">
                        <a href="admin2" style="color:#1acbfc">发布招聘</a>
                    </h2>
                </li>
                <li>
                    <h2 class="obtain">
                        <a href="admin3" style="color:#1acbfc">部门职位</a>
                    </h2>
                </li>
                <li>
                    <h2 class="obtain">
                        <a href="admin4" style="color:#1acbfc">培训管理</a>
                    </h2>
                </li>
                <li>
                    <h2 class="obtain">
                        <a href="admin5" style="color:#1acbfc">员工管理</a>
                    </h2>
                </li>
                <li>
                    <h2 class="obtain">
                        <a href="admin6" style="color:#1acbfc">奖惩管理</a>
                    </h2>
                </li>
                <li>
                    <h2 class="obtain">
                        <a href="admin7" style="color:#1acbfc">薪资管理</a>
                    </h2>
                </li>
                <li>
                    <h2 class="obtain">
                        <a href="admin8" style="color:#1acbfc">工资异议</a>
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
</body>
</html>
