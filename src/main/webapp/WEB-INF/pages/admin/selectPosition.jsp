<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/17
  Time: 16:06
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
            if(${requestScope.String==123}){
                alert("此职位尚有员工，无法删除");
            }else if(${requestScope.String==456}){
                alert("删除成功");
            }

            if(${requestScope.str==123}){
                alert("该部门下已有此职位，无法添加");
            }else if(${requestScope.str==456}){
                alert("添加成功");
            }

            $("#input10").click(function(){
                var name=$(":text").val();
                if(name==""){
                    alert("请输入职位名称!")
                    return false;
                }
            })

            $(".del0000").click(function(){
                var flag=confirm("确定删除此职位吗？");
                return flag;
            })
        })
    </script>
</head>
<body>
    <jsp:include page="adminPage.jsp"></jsp:include>

    <div style="text-align:center">
        <h2 style="color:brown;font-size:50px;text-align:left">部门职位：</h2><br>
        <c:if test="${requestScope.positionList.size()==0}">
            <span style="font-size:25px">${requestScope.department.name}下暂无职位</span>
            <a href="javascript:void(0)" onclick="showBox1()" style="font-size:25px">新增职位</a>
        </c:if>
        <c:if test="${requestScope.positionList.size()!=0}">
            <table border="2px" cellspacing="0" cellpadding="10px" align="center" style="font-size:25px">
                <tr  style="color: #0e1cc4">
                    <td colspan="4">${requestScope.department.name}：</td>
                </tr>
                <tr style="color: #0e1cc4">
                    <td>职位</td>
                    <td>创建时间</td>
                    <td colspan="2">操作</td>
                </tr>
                <c:forEach var="position" items="${requestScope.positionList}">
                    <tr>
                        <td>${position.name}</td>
                        <td><f:formatDate value="${position.creaTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        <td>
                            <a href="selectEmplo?positionId=${position.id}&departmentId=${requestScope.departmentId}">查看</a>
                        </td>
                        <td>
                            <a href="delPosition?positionId=${position.id}&departmentId=${requestScope.departmentId}" class="del0000">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="4"><a href="javascript:void(0)" onclick="showBox1()">新增职位</a></td>
                </tr>
            </table>
        </c:if>
    </div>

    <div class="event" id="login_box1" style="display: none;">
        <div class="login">
            <div class="title">
                <span class="t_txt">新增职位</span>
                <span class="del" onClick="deleteLogin1()">X</span>
            </div>
            <form action="addPosition.do" method="post">
                <br><br><br><br>
                <input type="hidden" name="departmentId" value="${requestScope.departmentId}">
                <input type="text" name="name" placeholder="请输入职位名称">
                <input type="submit" id="input10" class="btn" />
            </form>
        </div>
    </div>

    <div class="bg_color" onClick="deleteLogin1()" id="bg_filter1" style="display: none;"></div>
</body>
</html>
