<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/18
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>管理员界面</title>
    <script src="/plugIn/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script>
        $(function(){
            $(".del").click(function(){
                var flag=confirm("确定删除此次培训吗？");
                return flag;
            })
        })
    </script>
</head>
<body>
    <jsp:include page="adminPage.jsp"></jsp:include>

    <div style="text-align:center">
        <h2 style="color:brown;font-size:50px;text-align:left">培训管理：</h2><br>
        <c:if test="${requestScope.cultivateList.size()==0}">
            <span style="font-size:25px">暂无培训信息。。。</span>
            <a href="addCultivate" style="font-size:25px">新建培训</a>
        </c:if>
        <c:if test="${requestScope.cultivateList.size()!=0}">
            <table border="2px" cellspacing="0" cellpadding="10px" align="center" style="font-size:25px">
                <tr style="color: #0e1cc4">
                    <td colspan="6">所有培训</td>
                </tr>
                <tr style="color: #0e1cc4">
                    <td>培训名称</td>
                    <td>创建时间</td>
                    <td>培训时间</td>
                    <td>培训部门</td>
                    <td colspan="2">操作</td>
                </tr>
                <c:forEach var="cultivate" items="${requestScope.cultivateList}">
                    <tr>
                        <td>${cultivate.name}</td>
                        <td><f:formatDate value="${cultivate.creaTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td><f:formatDate value="${cultivate.cultivateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td>
                            <c:forEach var="department" items="${requestScope.departments}">
                                <c:if test="${department.id==cultivate.departmentId}">
                                    ${department.name}
                                </c:if>
                            </c:forEach>
                        </td>
                        <td><a href="editCultivate?id=${cultivate.id}">修改</a></td>
                        <td><a href="delCultivate?id=${cultivate.id}" class="del">删除</a></td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="7"><a href="addCultivate">新建培训</a></td>
                </tr>
            </table>
        </c:if>
    </div>
</body>
</html>
