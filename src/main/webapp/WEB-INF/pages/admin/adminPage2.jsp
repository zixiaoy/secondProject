<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/17
  Time: 14:13
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
            $("#department1").change(function(){
                $("#position1").empty();
                var departmentId=$(this).val();
                $.ajax({
                    url:"departmentVerify",
                    type:"post",
                    dataType:"JSON",
                    data:{"departmentId":departmentId},
                    success:function(data){
                        for(var i=0;i<data.length;i++){
                            $("#position1").append("<option value="+data[i].id+">"+data[i].name+"</option>");
                        }
                    }
                })
            })
        })
    </script>
</head>
<body>
    <jsp:include page="${pageContext.request.contextPath}/pages/adminPage.jsp"></jsp:include>

    <div style="text-align:center">
        <h2 style="color:brown;font-size:50px;text-align:left">发布招聘：</h2><br>
        <form action="admin2.do" method="post">
            <table align="center" style="font-size:25px">
                <tr>
                    <td>公司名称：</td>
                    <td><input type="text" name="companyName" style="font-size:25px"></td>
                </tr>
                <tr>
                    <td>公司地址：</td>
                    <td><input type="text" name="companyAddress" style="font-size:25px"></td>
                </tr>
                <tr>
                    <td>招聘部门：</td>
                    <td>
                        <select style="font-size:25px" name="departmentId" id="department1">
                            <c:forEach var="departments" items="${requestScope.departments}">
                                <option value="${departments.id}">${departments.name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>招聘岗位：</td>
                    <td>
                        <select style="font-size:25px" name="positionId" id="position1">
                            <c:forEach var="position" items="${requestScope.positionList}">
                                <option value="${position.id}">${position.name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>薪资区间：</td>
                    <td>
                        <select style="font-size:25px" name="basePay">
                            <option value="3000-5000">3000-5000</option>
                            <option value="5001-8000">5001-8000</option>
                            <option value="8001-12000">8001-12000</option>
                            <option value="12001-15000">12001-15000</option>
                            <option value="15001-20000">15001-20000</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>岗位职责：</td>
                    <td><input type="text" name="intro" style="font-size:25px"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" style="font-size:25px"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
