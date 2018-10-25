<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/18
  Time: 14:00
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
            $("#select000").change(function(){
                $("#tab000 tr:not(:first)").empty();
                var year=$("#select000").val()+"-"+$("#select0000").val();
                $.ajax({
                    url:"payVerify",
                    type:"post",
                    dataType:"JSON",
                    data:{"year":year},
                    success:function(data){
                        if(data.length==0){
                            $("#tab000").append("<tr><td colspan='7'>暂无薪资。。。<a href='admin5'>发放工资</a></td></tr>");
                        }else {
                            var emploName;
                            for(var i=0;i<data.length;i++){
                                <c:forEach var="emplo" items="${requestScope.employees}">
                                    if(data[i].employeeId==${emplo.id}){
                                        emploName="${emplo.name}";
                                    }
                                </c:forEach>
                                $("#tab000 tr:last").after(
                                    "<tr><td>"+
                                        (new Date(data[i].payTime).getYear()+1900)+"-"+
                                        (new Date(data[i].payTime).getMonth()+1)+
                                    "</td>"+
                                    "<td>"+emploName+"</td>"+
                                    "<td>"+data[i].basePay+"</td>"+
                                    "<td>"+data[i].performanceBonus+"</td>"+
                                    "<td>"+data[i].prizePay+"</td>"+
                                    "<td>"+-data[i].socialSecurity+"</td>"+
                                    "<td>"+data[i].allPay+"</td></tr>");
                            }
                            $("#tab000 tr:last").after("<tr><td colspan='7'><a href='admin5'>发放工资</a></td></tr>");
                        }
                    }
                })
            })
            $("#select0000").change(function(){
                $("#tab000 tr:not(:first)").empty();
                var year=$("#select000").val()+"-"+$("#select0000").val();
                $.ajax({
                    url:"payVerify",
                    type:"post",
                    dataType:"JSON",
                    data:{"year":year},
                    success:function(data){
                        if(data.length==0){
                            $("#tab000").append("<tr><td colspan='7'>暂无薪资。。。<a href='admin5'>发放工资</a></td></tr>");
                        }else {
                            var emploName;
                            for(var i=0;i<data.length;i++){
                                <c:forEach var="emplo" items="${requestScope.employees}">
                                if(data[i].employeeId==${emplo.id}){
                                    emploName="${emplo.name}";
                                }
                                </c:forEach>
                                $("#tab000 tr:last").after(
                                    "<tr><td>"+
                                    (new Date(data[i].payTime).getYear()+1900)+"-"+
                                    (new Date(data[i].payTime).getMonth()+1)+
                                    "</td>"+
                                    "<td>"+emploName+"</td>"+
                                    "<td>"+data[i].basePay+"</td>"+
                                    "<td>"+data[i].performanceBonus+"</td>"+
                                    "<td>"+data[i].prizePay+"</td>"+
                                    "<td>"+-data[i].socialSecurity+"</td>"+
                                    "<td>"+data[i].allPay+"</td></tr>");
                            }
                            $("#tab000 tr:last").after("<tr><td colspan='7'><a href='admin5'>发放工资</a></td></tr>");
                        }
                    }
                })
            })
        })
    </script>
</head>
<body>
    <jsp:include page="adminPage.jsp"></jsp:include>

    <div style="text-align:center">
        <h2 style="color:brown;font-size:50px;text-align:left">薪资管理：</h2><br>
        <c:if test="${requestScope.payList.size()==0}">
            <span style="font-size:25px">暂无薪资信息。。。</span>
            <a href="admin5" style="font-size:25px">发放工资</a>
        </c:if>
        <c:if test="${requestScope.payList.size()!=0}">
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
                    <td>发薪时间</td>
                    <td>员工姓名</td>
                    <td>基本薪资</td>
                    <td>绩效奖金</td>
                    <td>奖惩费用</td>
                    <td>社保</td>
                    <td>实发金额</td>
                </tr>
                <c:forEach var="pay" items="${requestScope.payList}">
                    <tr>
                        <td><f:formatDate value="${pay.payTime}" pattern="yyyy-MM"/></td>
                        <td>
                            <c:forEach var="employee" items="${requestScope.employees}">
                                <c:if test="${employee.id==pay.employeeId}">
                                    ${employee.name}
                                </c:if>
                            </c:forEach>
                        </td>
                        <td>${pay.basePay}</td>
                        <td>${pay.performanceBonus}</td>
                        <td>${pay.prizePay}</td>
                        <td>-${pay.socialSecurity}</td>
                        <td>${pay.allPay}</td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="7"><a href="admin5">发放工资</a></td>
                </tr>
            </table>
        </c:if>
    </div>
</body>
</html>
