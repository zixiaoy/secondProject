<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/19
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>员工界面</title>
    <script src="/plugIn/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script>
        $(function(){
            $("#select000").change(function(){
                $("#tab000 tr:not(:first)").empty();
                var year=$("#select000").val()+"-"+$("#select0000").val();
                var emploId=${sessionScope.emplo.id}
                    $.ajax({
                        url:"clockingInVerify",
                        type:"post",
                        dataType:"JSON",
                        data:{"year":year,"emploId":emploId},
                        success:function(data){
                            if(data.length==0){
                                $("#tab000").append("<tr><td colspan='7'>暂无考勤。。。</td></tr>");
                            }else {
                                var emploName="${sessionScope.emplo.name}";
                                var deptName;
                                var postName;
                                var closTime;
                                for(var i=0;i<data.length;i++){
                                    <c:forEach var="department" items="${requestScope.departments}">
                                    if(data[i].departmentId==${department.id}){
                                        deptName="${department.name}";
                                    }
                                    </c:forEach>

                                    <c:forEach var="position" items="${requestScope.positions}">
                                    if(data[i].positionId==${position.id}){
                                        postName="${position.name}";
                                    }
                                    </c:forEach>

                                    if(data[i].closingTime==null){
                                        closTime=null;
                                    }else {
                                        closTime=(new Date(data[i].closingTime).getYear()+1900)+"-"+
                                            (new Date(data[i].closingTime).getMonth()+1)+"-"+
                                            (new Date(data[i].closingTime).getDate())+" "+
                                            (new Date(data[i].closingTime).getHours())+":"+
                                            (new Date(data[i].closingTime).getMinutes())+":"+
                                            (new Date(data[i].closingTime).getSeconds());
                                    }

                                    $("#tab000 tr:last").after(
                                        "<tr>"+
                                        "<td>"+emploName+"</td>"+
                                        "<td>"+deptName+"</td>"+
                                        "<td>"+postName+"</td>"+
                                        "<td>"+
                                        (new Date(data[i].businessHours).getYear()+1900)+"-"+
                                        (new Date(data[i].businessHours).getMonth()+1)+"-"+
                                        (new Date(data[i].businessHours).getDate())+" "+
                                        (new Date(data[i].businessHours).getHours())+":"+
                                        (new Date(data[i].businessHours).getMinutes())+":"+
                                        (new Date(data[i].businessHours).getSeconds())+
                                        "</td>"+
                                        "<td>"+ closTime+"</td></tr>");
                                }
                            }
                        }
                    })
            })
            $("#select0000").change(function(){
                $("#tab000 tr:not(:first)").empty();
                var year=$("#select000").val()+"-"+$("#select0000").val();
                var emploId=${sessionScope.emplo.id}
                    $.ajax({
                        url:"clockingInVerify",
                        type:"post",
                        dataType:"JSON",
                        data:{"year":year,"emploId":emploId},
                        success:function(data){
                            if(data.length==0){
                                $("#tab000").append("<tr><td colspan='7'>暂无考勤。。。</td></tr>");
                            }else {
                                var emploName="${sessionScope.emplo.name}";
                                var deptName;
                                var postName;
                                var closTime;
                                for(var i=0;i<data.length;i++){
                                    <c:forEach var="department" items="${requestScope.departments}">
                                    if(data[i].departmentId==${department.id}){
                                        deptName="${department.name}";
                                    }
                                    </c:forEach>

                                    <c:forEach var="position" items="${requestScope.positions}">
                                    if(data[i].positionId==${position.id}){
                                        postName="${position.name}";
                                    }
                                    </c:forEach>

                                    if(data[i].closingTime==null){
                                        closTime=null;
                                    }else {
                                        closTime=(new Date(data[i].closingTime).getYear()+1900)+"-"+
                                            (new Date(data[i].closingTime).getMonth()+1)+"-"+
                                            (new Date(data[i].closingTime).getDate())+" "+
                                            (new Date(data[i].closingTime).getHours())+":"+
                                            (new Date(data[i].closingTime).getMinutes())+":"+
                                            (new Date(data[i].closingTime).getSeconds());
                                    }

                                    $("#tab000 tr:last").after(
                                        "<tr>"+
                                        "<td>"+emploName+"</td>"+
                                        "<td>"+deptName+"</td>"+
                                        "<td>"+postName+"</td>"+
                                        "<td>"+
                                        (new Date(data[i].businessHours).getYear()+1900)+"-"+
                                        (new Date(data[i].businessHours).getMonth()+1)+"-"+
                                        (new Date(data[i].businessHours).getDate())+" "+
                                        (new Date(data[i].businessHours).getHours())+":"+
                                        (new Date(data[i].businessHours).getMinutes())+":"+
                                        (new Date(data[i].businessHours).getSeconds())+
                                        "</td>"+
                                        "<td>"+ closTime+"</td></tr>");
                                }
                            }
                        }
                    })
            })
        })
    </script>
</head>
<body>
    <jsp:include page="emploPage.jsp"></jsp:include>

    <div style="text-align:center">
        <h2 style="color:brown;font-size:40px;text-align:left">我的考勤：</h2><br>
        <c:if test="${requestScope.clockingInList.size()==0}">
            <span style="font-size:25px">您目前暂无考勤。。。</span>
        </c:if>
        <c:if test="${requestScope.clockingInList.size()!=0}">
            <span style="color:#0e1cc4;align-content: center">
                <select name="year" style="font-size:25px;color:#0e1cc4" id="select000">
                    <option value="">所有</option>
                    <option value="2018">2018年</option>
                    <option value="2019">2019年</option>
                    <option value="2020">2020年</option>
                    <option value="2021">2021年</option>
                    <option value="2022">2022年</option>
                </select>
                <select name="month" style="font-size:25px;color:#0e1cc4" id="select0000">
                    <option value="">所有</option>
                    <option value="01">1月</option>
                    <option value="02">2月</option>
                    <option value="03">3月</option>
                    <option value="04">4月</option>
                    <option value="05">5月</option>
                    <option value="06">6月</option>
                    <option value="07">7月</option>
                    <option value="08">8月</option>
                    <option value="09">9月</option>
                    <option value="10">10月</option>
                    <option value="11">11月</option>
                    <option value="12">12月</option>
                </select>
            </span>
            <table border="2px" cellspacing="0" cellpadding="10px" align="center" style="font-size:25px" id="tab000">
                <tr style="color: #0e1cc4">
                    <td>姓名</td>
                    <td>部门</td>
                    <td>职位</td>
                    <td>上班时间</td>
                    <td>下班时间</td>
                </tr>
                <c:forEach var="clockingIn" items="${requestScope.clockingInList}">
                    <tr>
                        <td>${sessionScope.emplo.name}</td>
                        <td>
                            <c:forEach var="department" items="${requestScope.departments}">
                                <c:if test="${department.id==clockingIn.departmentId}">
                                    ${department.name}
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>
                            <c:forEach var="position" items="${requestScope.positions}">
                                <c:if test="${position.id==clockingIn.positionId}">
                                    ${position.name}
                                </c:if>
                            </c:forEach>
                        </td>
                        <td><f:formatDate value="${clockingIn.businessHours}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td>
                            <c:if test="${clockingIn.closingTime!=null}">
                                <f:formatDate value="${clockingIn.closingTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                            </c:if>
                            <c:if test="${clockingIn.closingTime==null}">
                                null
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </div>
</body>
</html>
