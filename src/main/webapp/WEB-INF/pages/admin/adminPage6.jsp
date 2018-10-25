<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/18
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>管理员界面</title>
    <link rel="stylesheet" href="/plugIn/css/index.css">
    <script src="/plugIn/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="/plugIn/js/index.js"></script>
    <script>
        $(function(){
            $(".del00").click(function(){
                var flag=confirm("确定删除此条奖惩吗？");
                return flag;
            })
            $(".edi00").click(function(){
                var $tr=$(this).parent().parent().children();
                prizeId=parseInt($tr[0].innerHTML);
                $("#hid000").val(prizeId);
                return false;
            })
            $(":submit").click(function(){
                var cause=$(":text").val();
                if(cause==""){
                    alert("请输入奖惩原因");
                    return false;
                }
            })
        })
    </script>
</head>
<body>
    <jsp:include page="adminPage.jsp"></jsp:include>

    <div style="text-align:center">
        <h2 style="color:brown;font-size:50px;text-align:left">奖惩管理：</h2><br>
        <c:if test="${requestScope.prizeInfoList.size()==0}">
            <span style="font-size:25px">暂无奖惩信息。。。</span>
            <a href="admin5" style="font-size:25px">新建奖惩</a>
        </c:if>
        <c:if test="${requestScope.prizeInfoList.size()!=0}">
            <table border="2px" cellspacing="0" cellpadding="10px" align="center" style="font-size:18px">
                <tr style="color: #0e1cc4">
                    <td colspan="10">所有奖惩</td>
                </tr>
                <tr style="color: #0e1cc4">
                    <td>编号</td>
                    <td>奖/惩</td>
                    <td>奖惩原因</td>
                    <td>奖惩金额</td>
                    <td>发布时间</td>
                    <td>员工部门</td>
                    <td>员工职位</td>
                    <td>员工姓名</td>
                    <td colspan="2">操作</td>
                </tr>
                <c:forEach var="prizeInfo" items="${requestScope.prizeInfoList}">
                    <tr>
                        <td>${prizeInfo.id}</td>
                        <td>
                            <c:if test="${prizeInfo.name==1}">
                                奖赏
                            </c:if>
                            <c:if test="${prizeInfo.name==2}">
                                惩罚
                            </c:if>
                        </td>
                        <td>${prizeInfo.cause}</td>
                        <td>${prizeInfo.money}</td>
                        <td><f:formatDate value="${prizeInfo.creaTime}" pattern="yyyy-MM-dd"/> </td>
                        <td>
                            <c:forEach var="department" items="${requestScope.departments}">
                                <c:if test="${department.id==prizeInfo.departmentId}">
                                    ${department.name}
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>
                            <c:forEach var="position" items="${requestScope.positions}">
                                <c:if test="${position.id==prizeInfo.positionId}">
                                    ${position.name}
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>
                            <c:forEach var="employee" items="${requestScope.employees}">
                                <c:if test="${employee.id==prizeInfo.employeeId}">
                                    ${employee.name}
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>
                            <a href="editPrizeInfo" onclick="showBox1()" class="edi00">修改</a>
                        </td>
                        <td><a href="delPrizeInfo?id=${prizeInfo.id}" class="del00">删除</a></td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="10"><a href="admin5" style="color:red;">新建奖惩</a></td>
                </tr>
            </table>
        </c:if>
    </div>

    <div class="event" id="login_box1" style="display: none;">
        <div class="login">
            <div class="title">
                <span class="t_txt">修改奖惩</span>
                <span class="del" onClick="deleteLogin1()">X</span>
            </div>
            <form action="editPrizeInfo" method="post">
                <br><br><br><br>
                <input type="hidden" name="prizeId" id="hid000">
                <input type="text" name="cause" placeholder="请输入奖惩原因">
                <input type="submit" id="input10" class="btn" />
            </form>
        </div>
    </div>

    <div class="bg_color" onClick="deleteLogin1()" id="bg_filter1" style="display: none;"></div>
</body>
</html>
