<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style> 
.indicator {
	position:relative;
	top:15px;
    width: 0;
    height: 0;
    border-left: 7px solid transparent;
    border-right: 7px solid transparent;
    border-top: 7px solid #1f2d0d;
}
.top-logo1{
	position: relative;
	top: -30px;
	width:%100px;
}
</style>
<div class="top-bar" style="height: 30px;line-height: 30px;color: White;height: 32px;background-color: #333;">
	<span style="font-size:13px;float:left;margin-left:100px;">欢迎您来到后勤管理系统</span> <a id="login" href="${ctx}/page/user/login.jsp" style="color: White;font-size:13px;float:right;margin-right:130px;">登录</a><a id="register" href="${ctx}/page/user/register.jsp" style="color: White;font-size:13px;float:right;margin-right:-70px;">注册</a>
</div>
<div class="top-siade" style="height:135px;background-color:#79aa34;">

        <div class="content">
            <div style="width:300px; float:left;">
           <div class="top-logo"></div>
                <div class="top-logo1">高校后勤管理系统</div>
            </div> 
            <div class="top-logo2"></div>
               <div style="width:80px; float:left; margin-left:10px;">
            </div> 
        <div style="width:430px; float:left; margin-left:120px;">
               <div class="top-logo3" style="background-image: url(../images/banner2.jpg);"></div> </div> 
        </div>  
    </div>
         <div class="index-nav" style="height: 52px;">
        <div class="content">
            <div class="content-left">
                <ul class="orion-menu" style="position:relative;top: -35px;">
                    <li style="text-align: center;"><a href="${ctx}/page/index.jsp">
                        首  页</a></li>
                    <li id="hqgk"><a href="${ctx}/page/employer/campus/greening.jsp">校园环境</a>
                        <ul>
                            <li><a href="${ctx}/page/employer/campus/greening.jsp">校园绿化</a></li>
                            <li><a href="${ctx}/page/employer/campus/facility.jsp">设施维护</a></li>
                            <li style="border-bottom: 2px solid #267613;"><a href="${ctx}/page/employer/campus/clean.jsp">校园清洁</a></li>
                        </ul>
                        <span class="indicator"></span></li>
                    <li id="news"><a href="${ctx}/page/teacher/guarantee.jsp">教室维护</a>
                        <ul> 
                            <li><a href="${ctx}/page/teacher/guarantee.jsp">教室报修</a></li> 
                            <li><a href="${ctx}/page/teacher/repair.jsp">教室维修</a></li> 
                            <li style="border-bottom: 2px solid #267613;"><a href="${ctx}/page/teacher/sanitation.jsp">
                                卫生保洁</a></li>
                        </ul>
                        <span class="indicator"></span></li>
                    <li id="investment"><a href="${ctx}/page/employer/buyer/buyer.jsp">食堂采购</a>
                        <ul>
                            <li><a target="_blank" href="${ctx}/page/employer/buyer/supplier.jsp">供应商信息</a></li>
                            <li style="border-bottom: 2px solid #267613;"><a href="${ctx}/page/employer/buyer/buyer.jsp">
                                采购信息</a></li>
                        </ul>
                        <span class="indicator"></span></li>
                    
                    <li id="laws"><a href="${ctx}/page/employer/material/stuff.jsp">物资管理</a>
                        <ul>
                              <li><a href="${ctx}/page/employer/material/stuff.jsp">材料清单</a></li>
                            <li style="border-bottom: 2px solid #267613;"><a href="${ctx}/page/employer/material/tool.jsp">工具清单</a></li>
                        </ul>
                        <span class="indicator"></span></li>
   			<li class="servicr"><a href="${ctx}/page/student/guarantee.jsp">学生宿舍</a>
                        <ul> 
                                <li><a href="${ctx}/page/student/guarantee.jsp">宿舍报修</a></li>  
                            <li><a href="${ctx}/page/student/repair.jsp">宿舍维修</a></li>  
                            <li style="border-bottom: 2px solid #267613;"><a href="${ctx}/page/student/sanitation.jsp">
                                宿舍保洁</a></li>
                        </ul>
                        <span class="indicator"></span></li>
                 <li id="xxgl" style="position:relative;top:-50px;left:1050px;border-bottom: 2px solid #267613;">
                 <a href="${ctx}/page/student/infoAdmin.jsp">信息管理</a>
                        </li>
                </ul>
            </div> 
        </div>
    
     </div>
<script type="text/javascript">
if ('${uid}'!='') {
	$("#register").hide();
	$("#login").text("退出登录");
	$("#login").attr("href","${ctx}/user/logout");
}
if('${param.logout}'=='out'){
	alert("退出成功！");
}
</script>
