<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/17
  Time: 17:37
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
            $("#input10").click(function(){
                var name=$(":text").val();
                if(name==""){
                    alert("请输入部门名称!")
                    return false;
                }
            })
        })
    </script>
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/pages/adminPage.jsp"></jsp:include>

    <div style="text-align:center">
        <h2 style="color:brown;font-size:50px;text-align:left">部门职位：</h2><br>
        <form action="addDepartment.do" method="post">
            <table align="center" style="font-size:25px">
                <tr>
                    <td>部门名称：</td>
                    <td><input type="text" name="name" style="font-size:25px"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" style="font-size:25px" id="input10"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
