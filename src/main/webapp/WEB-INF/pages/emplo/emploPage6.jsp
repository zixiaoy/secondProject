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
            <table border="2px" cellspacing="0" cellpadding="10px" align="center" style="font-size:25px">
                <tr style="color: #0e1cc4">
                    <td colspan="7">所有薪资：</td>
                </tr>
                <tr style="color: #0e1cc4">
                    <td>发薪日</td>
                    <td>基本薪资</td>
                    <td>绩效奖金</td>
                    <td>奖惩费用</td>
                    <td>社保</td>
                    <td>异议</td>
                    <td>实发金额</td>
                </tr>
                <c:forEach var="pay" items="${requestScope.payList}">
                    <tr>
                        <td><f:formatDate value="${pay.payTime}" pattern="yyyy-MM-dd"/></td>
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
