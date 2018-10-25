<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/16
  Time: 15:20
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
                <i style="color:red;font-size: 25px">${sessionScope.visitor.name}</i>
                <span><img class="obscure" src="/plugIn/images/obscure.jpg"></span>
            </div>
            <div class="navBox">
                <ul>
                    <li>
                        <h2 class="obtain" id="input1">
                            <a href="visitor1?visitorId=${sessionScope.visitor.id}" style="font-size:25px;color:#1acbfc">消息反馈</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain" id="input2">
                            <a href="javascript:history.go(0)" style="font-size:25px;color:#1acbfc">查看简历</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain" id="input3">
                            <a href="visitor3" style="font-size:25px;color:#1acbfc">招聘信息</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain" id="input4">
                            <a href="visitor4" style="font-size:25px;color:#1acbfc">个人信息</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain" id="input5">
                            <a href="visitor5" style="font-size:25px;color:#1acbfc">修改密码</a>
                        </h2>
                    </li>
                    <li>
                        <h2 class="obtain">
                            <a href="${pageContext.request.contextPath}/pages/login.jsp" style="font-size:25px;color:#1acbfc">
                                退出
                            </a>
                        </h2>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div style="text-align:center">
        <h2 style="color:brown;font-size:50px;text-align:left">查看简历：</h2><br>
        <c:if test="${requestScope.resume==null}">
            <span style="font-size:30px">暂无简历</span><br><br>
            <a href="addResume?visitorId=${sessionScope.visitor.id}" style="font-size:30px;color:#00dbde">创建简历</a>
        </c:if>
        <c:if test="${requestScope.resume!=null}">
            <table border="2px" cellpadding="10px" cellspacing="0" align="center">
                <tr>
                    <td>姓名：</td>
                    <td>${requestScope.resume.name}</td>
                    <td>年龄：</td>
                    <td>${requestScope.resume.age}</td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td>
                        <c:if test="${requestScope.resume.sex==1}">
                            男
                        </c:if>
                        <c:if test="${requestScope.resume.sex==2}">
                            女
                        </c:if>
                    </td>
                    <td>学历：</td>
                    <td>${requestScope.resume.education}</td>
                </tr>
                <tr>
                    <td>电话：</td>
                    <td>${requestScope.resume.tel}</td>
                    <td>邮箱：</td>
                    <td>${requestScope.resume.email}</td>
                </tr>
                <tr>
                    <td>政治面貌：</td>
                    <td>${requestScope.resume.politicsStatus}</td>
                    <td>应聘岗位：</td>
                    <td>
                        <c:forEach var="department" items="${requestScope.departments}">
                            <c:if test="${department.id==requestScope.resume.departmentId}">
                                ${department.name}，
                            </c:if>
                        </c:forEach>
                        <c:forEach var="position" items="${requestScope.positions}">
                            <c:if test="${position.id==requestScope.resume.positionId}">
                                ${position.name}
                            </c:if>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <td>期望薪资：</td>
                    <td>${requestScope.resume.expectSalary}</td>
                    <td>工作经历：</td>
                    <td>${requestScope.resume.experience}</td>
                </tr>
                <tr>
                    <td>居住地址：</td>
                    <td>${requestScope.resume.experience}</td>
                    <td>兴趣爱好：</td>
                    <td>${requestScope.resume.interest}</td>
                </tr>
                <tr>
                    <td>特长：</td>
                    <td>${requestScope.resume.speciality}</td>
                    <td>个人简介：</td>
                    <td>${requestScope.resume.intro}</td>
                </tr>
                <tr>
                    <td colspan="4"><a href="updateResume?visitorId=${requestScope.resume.visitorId}">修改简历</a></td>
                </tr>
            </table>
        </c:if>
    </div>
</body>
</html>
