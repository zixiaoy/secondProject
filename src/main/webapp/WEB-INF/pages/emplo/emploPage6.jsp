<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 紫青
  Date: 2018/10/19
  Time: 13:05
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
            $("#sub3").click(function(){
                var cause=$("#inp1").val();
                var money=$("#inp2").val();
                if(cause==""||money==""){
                    alert("请输入异议原因或金额");
                    return false;
                }
            })
            $("#select000").change(function(){
                $("#tab000 tr:not(:first)").empty();
                var year=$("#select000").val()+"-"+$("#select0000").val();
                var emploId=${sessionScope.emplo.id}
                $.ajax({
                    url:"emploPayVerify",
                    type:"post",
                    dataType:"JSON",
                    data:{"year":year,"emploId":emploId},
                    success:function(data){
                        if(data.length==0){
                            $("#tab000").append("<tr><td colspan='7'>暂无薪资。。。</td></tr>");
                        }else {
                            for(var i=0;i<data.length;i++){
                                $("#tab000 tr:last").after(
                                    "<tr><td>"+
                                    (new Date(data[i].payTime).getYear()+1900)+"-"+
                                    (new Date(data[i].payTime).getMonth()+1)+
                                    "</td>"+
                                    "<td>"+data[i].basePay+"</td>"+
                                    "<td>"+data[i].performanceBonus+"</td>"+
                                    "<td>"+data[i].prizePay+"</td>"+
                                    "<td>"+-data[i].socialSecurity+"</td>"+
                                    "<td>"+data[i].allPay+"</td>"+
                                    "<td><a href='javascript:void(0)' onClick='showBox3()'>发起异议</a></td></tr>");
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
                    url:"emploPayVerify",
                    type:"post",
                    dataType:"JSON",
                    data:{"year":year,"emploId":emploId},
                    success:function(data){
                        if(data.length==0){
                            $("#tab000").append("<tr><td colspan='7'>暂无薪资。。。</td></tr>");
                        }else {
                            for(var i=0;i<data.length;i++){
                                $("#tab000 tr:last").after(
                                    "<tr><td>"+
                                    (new Date(data[i].payTime).getYear()+1900)+"-"+
                                    (new Date(data[i].payTime).getMonth()+1)+
                                    "</td>"+
                                    "<td>"+data[i].basePay+"</td>"+
                                    "<td>"+data[i].performanceBonus+"</td>"+
                                    "<td>"+data[i].prizePay+"</td>"+
                                    "<td>"+-data[i].socialSecurity+"</td>"+
                                    "<td>"+data[i].allPay+"</td>"+
                                    "<td><a href='javascript:void(0)' onClick='showBox3()'>发起异议</a></td></tr>");
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
        <h2 style="color:brown;font-size:40px;text-align:left">我的薪资：</h2><br>
        <c:if test="${requestScope.payList.size()==0}">
            <span style="font-size:25px">暂无薪资信息。。。</span>
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
                    <td>基本薪资</td>
                    <td>绩效奖金</td>
                    <td>奖惩费用</td>
                    <td>社保</td>
                    <td>实发金额</td>
                    <td>异议</td>
                </tr>
                <c:forEach var="pay" items="${requestScope.payList}">
                    <tr>
                        <td><f:formatDate value="${pay.payTime}" pattern="yyyy-MM"/></td>
                        <td>${pay.basePay}</td>
                        <td>${pay.performanceBonus}</td>
                        <td>${pay.prizePay}</td>
                        <td>${pay.socialSecurity}</td>
                        <td>${pay.allPay}</td>
                        <td><a href="javascript:void(0)" onClick="showBox3()">发起异议</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </div>

    <div class="event" id="login_box3" style="display: none;">
        <div class="login">
            <div class="title">
                <span class="t_txt">薪资异议(仅针对最近一期工资，请慎重)</span>
                <span class="del" onClick="deleteLogin3()">X</span>
            </div>
            <form action="addPayObjection" method="post">
                <input type="hidden" name="employeeId" value="${sessionScope.emplo.id}">
                <input type="text" name="cause" id="inp1" placeholder="请输入异议原因"/>
                <input type="number" name="money" id="inp2" placeholder="请输入异议金额(整数)"/>
                <input type="submit" value="发起异议" class="btn" id="sub3" />
            </form>
        </div>
    </div>

    <div class="bg_color" onClick="deleteLogin3()" id="bg_filter3" style="display: none;"></div>
</body>
</html>
