<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/17
  Time: 15:16
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
            if(${requestScope.String==123}){
                alert("此部门尚有员工，无法删除");
            }else if(${requestScope.String==456}){
                alert("删除成功");
            }

            if(${requestScope.str==123}){
                alert("此部门已存在，无法添加");
            }else if(${requestScope.str==456}){
                alert("添加成功");
            }

            $("#del").click(function(){
                var flag=confirm("确定删除此部门吗？");
                return flag;
            })
        })
    </script>
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/pages/adminPage.jsp"></jsp:include>

    <div style="text-align:center">
        <h2 style="color:brown;font-size:50px;text-align:left">部门职位：</h2><br>
        <c:if test="${requestScope.departments.size()==0}">
            <span style="font-size:25px">暂无部门信息。。。</span>
            <a href="addDepartment" style="font-size:25px">新增部门</a>
        </c:if>
        <c:if test="${requestScope.departments.size()!=0}">
            <table border="2px" cellspacing="0" cellpadding="10px" align="center" style="font-size:25px">
                <tr  style="color: #0e1cc4">
                    <td colspan="4">所有部门：</td>
                </tr>
                <tr style="color: #0e1cc4">
                    <td>部门</td>
                    <td>创建时间</td>
                    <td colspan="2">操作</td>
                </tr>
                <c:forEach var="departments" items="${requestScope.departments}">
                    <tr>
                        <td>${departments.name}</td>
                        <td><f:formatDate value="${departments.creaTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        <td>
                            <a href="selectPosition?departmentId=${departments.id}">查看</a>
                        </td>
                        <td>
                            <a href="delDepartment?departmentId=${departments.id}" id="del">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="4"><a href="addDepartment">新增部门</a></td>
                </tr>
            </table>
        </c:if>
    </div>
</body>
</html>
