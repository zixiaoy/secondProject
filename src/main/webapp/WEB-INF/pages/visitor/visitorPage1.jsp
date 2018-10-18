<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/16
  Time: 20:16
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

    <script>
        $(function(){
            $(".input1").click(function(){
                var flag=confirm("是否确定此操作？");
                return flag;
            })
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
            <i style="color:red;font-size: 25px">当前用户：${sessionScope.visitor.name}</i>
            <span><img class="obscure" src="/plugIn/images/obscure.jpg"></span>
        </div>
        <div class="navBox">
            <ul>
                <li>
                    <h2 class="obtain" id="input1">
                        <a href="javascript:history.go(0)" style="font-size:25px;color:#1acbfc">消息反馈</a>
                    </h2>
                </li>
                <li>
                    <h2 class="obtain" id="input2">
                        <a href="visitor2?visitorId=${sessionScope.visitor.id}" style="font-size:25px;color:#1acbfc">查看简历</a>
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
    <h2 style="color:brown;font-size:50px;text-align:left">消息反馈：</h2><br>
    <c:if test="${requestScope.feedbackList.size()==0}">
        <span style="font-size:30px">暂无反馈信息</span>
    </c:if>
    <c:if test="${requestScope.feedbackList.size()!=0}">
        <table border="2px" cellpadding="10px" cellspacing="0" align="center">
            <tr>
                <td>应聘公司</td>
                <td>投递时间</td>
                <td>查看状态</td>
                <td>是否面试</td>
                <td>面试时间</td>
                <td>是否录取</td>
                <td>操作</td>
            </tr>
            <form action="interviewVerify" method="post">
                <c:forEach var="feedback" items="${requestScope.feedbackList}">
                    <tr>
                        <td>${feedback.recruitId}</td>
                        <td><f:formatDate value="${feedback.creaTime}" pattern="yyyy-MM-dd"></f:formatDate></td>
                        <td>
                            <c:if test="${feedback.status==1}">
                                未查看
                            </c:if>
                            <c:if test="${feedback.status==2}">
                                已查看
                            </c:if>
                        </td>
                        <td>
                            <c:if test="${feedback.interview==0}">
                                <select name="interview" style="font-size:20px">
                                    <option value="1">按时面试</option>
                                    <option value="2">放弃面试</option>
                                </select>
                            </c:if>
                            <c:if test="${feedback.interview==1}">
                                按时面试
                            </c:if>
                            <c:if test="${feedback.interview==2}">
                                已放弃面试
                            </c:if>
                        </td>
                        <td><f:formatDate value="${feedback.interviewTime}" pattern="yyyy-MM-dd"></f:formatDate></td>
                        <td>
                            <c:if test="${feedback.admit==0}">
                                未反馈
                            </c:if>
                            <c:if test="${feedback.admit==1}">
                                被录取
                            </c:if>
                            <c:if test="${feedback.admit==2}">
                                被拒绝
                            </c:if>
                        </td>
                        <c:if test="${feedback.interview==0}">
                            <td>
                                <input type="hidden" name="id" value="${feedback.id}">
                                <input type="hidden" name="admit" value="${feedback.admit}">
                                <input type="submit" value="确定" class="input1" style="font-size:20px">
                            </td>
                        </c:if>
                    </tr>
                </c:forEach>
            </form>
        </table>
    </c:if>
</div>
</body>
</html>
