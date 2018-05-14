<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="">
    <script src="../js/jquery-1.10.2.min.js" type="text/javascript"></script> 
    <script src="../js/index.js" type="text/javascript"></script>  
    <link href="../css/Index.css" rel="stylesheet" type="text/css">
    <link href="../css/font-awesome.css" rel="stylesheet" type="text/css"><title>
	高校后勤管理系统
</title> 
    <link href="../css/Index1.css" rel="stylesheet" type="text/css">
<style> 
.turn 
{ 
height: 200px; 
float: left; 
overflow: hidden; 
position: relative; 
} 
.turn #adpica 
{ 
width: 300px; 
height: 200px; 
overflow: hidden; 
} 
.turn #adpica img 
{ 
width: 300px; 
height: 200px; 
float: left; 
overflow: hidden; 
} 
.turn #adtipa 
{ 
height: 5px; 
position: absolute; 
right: 12px; 
bottom: 35px; 
} 
.turn #adtipa ul li 
{ 
width: 16px; 
height: 16px; 
line-height: 16px; 
float: left; 
text-align: center; 
display: inline; 
margin: 0 1px; 
cursor: pointer; 
color: #fff; 
background: #000; 
} 
.turn #adtipa ul li.current 
{ 
color: #fff; 
background: #cc0000; 
} 
.turn .hidden 
{ 
display: none; 
text-align:center;
} 
.turn .show 
{ 
display: block !important; 
} 
#adpica span 
{ 
position: absolute; 
bottom: 0; 
left: 0; 
color: #fff; 
font-size: 12px; 
height: 25px; 
line-height:25px;
width: 320px; 
filter: alpha(opacity=70); 
opacity: 0.7; 
background: #000;  
text-align:center;
} 
#adpica p 
{ 
position: absolute; 
bottom: 0; 
left: 0; 
color: #fff; 
font-size: 12px; 
height: 25px; 
line-height: 25px; 
width: 250px; 
padding-left: 0px; 
font-weight: bold; 
}
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
	width:500px;
}
.btn{
	float:left;
	width:320px;
	height:50px;
	background-color:rgb(90,153,168);
	text-align:center;
	line-height:50px;
	font-size:17px;
	cursor: pointer;
	margin-top:-75px;	
}
/* .arrow-down{ border-bottom:4px solid #B7B7B7; border-left:4px dashed transparent; border-right:4px dashed transparent;}  */
</style> 
   
</head>
<body>
<div class="top-bar" style="height: 30px;line-height: 30px;color: White;height: 32px;background-color: #333;">
<span style="font-size:13px;float:left;margin-left:100px;">欢迎${username}来到后勤管理系统</span> <a id="login" href="${ctx}/page/user/login.jsp" style="color: White;font-size:13px;float:right;margin-right:130px;">登录</a><a id="register" href="${ctx}/page/user/register.jsp" style="color: White;font-size:13px;float:right;margin-right:-70px;">注册</a>
</div>
    <form method="post" action="" id="form1">
    <div style="height:100%;">
         
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
               <!-- <div class="top-logo3" style="background-image: url(../images/banner2.jpg);"></div> --> </div> 
        </div>  
    </div>
         <div class="index-nav">
        <div class="content">
            <div class="content-left">
                <ul class="orion-menu" style="position:relative;top: -35px;">
                    <li style="text-align: center;"><a href="">
                        首  页</a></li>
                    <li id="hqgk"><a href="${ctx}/page/employer/campus/greening.jsp">校园环境</a>
                        <ul>
                            <li><a href="${ctx}/page/employer/campus/greening.jsp">校园绿化</a></li>
                            <li><a href="${ctx}/page/employer/campus/facility.jsp">设施维护</a></li>
                            <li><a href="${ctx}/page/employer/campus/clean.jsp" style="border-bottom: 2px solid #267613;">校园清洁</a></li>
                            
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
                        	<li><a target="_blank" href="${ctx}/page/employer/material/stuff.jsp">材料清单</a></li>
                            <li><a target="_blank" href="${ctx}/page/employer/material/tool.jsp" style="border-bottom: 2px solid #267613;">工具清单</a></li>
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
                 <li id="xxgl" style="position:relative;top:-48px;left:1050px;">
                 <a href="${ctx}/page/student/infoAdmin.jsp">信息管理</a>
                        </li>
                </ul>
            </div> 
        </div>
    

         </div>
        
    <div class="jbbj" style="width:100%; text-align:center;height:780px;">
                  
    <div class="container-wrap">

           <div class="wap-content">
                <div class="content-left">
                    <div class="left-top">
                        <ul>
                            <li class="left-top-news" style="border-bottom: 2px solid #267613; font-weight:600;">后勤动态</li>
                        </ul>
                    </div>
                    <div class="left-bottom" style="padding-bottom: 5px; padding-left: 15px; padding-top: 10px;">
                        <div class="flashBanner">
                          
                         
                               
                                  <div class="turn"> 
<div id="adpica"> 
	<div class="hidden"> <a target="_blank" href=""> <img width="250" height="168" src="../image/20182151952842.jpg" title="除夕校领导与留校师生同吃年夜饭，携手迎新春"></a><span>除夕校领导与留校师生同吃年夜饭，携手迎新春</span> </div>
 	<div style="display:none;" class="hidden"> <a target="_blank" href=""> <img width="250" height="168" src="" title="后勤服务部代表队蝉联校运动会教工组团体总分第一名"></a><span>后勤服务部代表队蝉联校运动会教工组团体总分第一名</span> </div> 
 	<div style="display:none;" class="hidden"> <a target="_blank" href=""> <img width="250" height="168" src="" title="新学期、“心”启航——浙科院2017年暑期学校后勤工作交流研讨会暨“后勤品质服务月”活动启动仪式成功举办"></a><span>新学期、“心”启航——浙科院2017年暑期学校后勤工作交流研讨会暨“后勤品质服务月”活动启动仪式成功举办</span> </div>
 	<div style="display:none;" class="show"> <a target="_blank" href=""> <img width="250" height="168" src="" title="后勤服务部物管、绿化中心齐心协力紧急疏通堵塞排污管"></a><span>后勤服务部物管、绿化中心齐心协力紧急疏通堵塞排污管</span> </div> 
 	<div style="display:none;" class="hidden"> <a target="_blank" href=""> <img width="250" height="168" src="" title="后勤服务部党员骨干代表参加2017年高校后勤“思政大讲堂”"></a><span>后勤服务部党员骨干代表参加2017年高校后勤“思政大讲堂”</span> </div> 
 	<div style="display:none;" class="hidden"> <a target="_blank" href=""> <img width="250" height="168" src="" title="后勤服务部组织开展安全消防知识培训"></a><span>后勤服务部组织开展安全消防知识培训</span> </div> 
</div> 
<div id="adtipa"> 
<ul onmouseout="change()"> 
<li class="" onmouseover="adchangea(1)">1 </li>  <li onmouseover="adchangea(2)" class="">2</li> <li onmouseover="adchangea(3)" class="">3</li> <li onmouseover="adchangea(4)" class="current">4</li> <li onmouseover="adchangea(5)" class="">5</li> <li onmouseover="adchangea(6)" class="">6</li> 
</ul> 
</div> 
<script>
    //鼠标移过来的动作。显示当前图片，清除轮询。 
    function adchangea(adid) {
        dochange(adid);
        clearTimeout(adisround);
    }
    //自动轮询 
    function adchangea2(adid) {
        dochange(adid);
        var adbigimg = document.getElementById("adpica").getElementsByTagName("div");
        if ((adnext = adid + 1) > adbigimg.length) adnext = 1;
        adisround = setTimeout('adchangea2(' + adnext + ')', 3000);
    }
    //显示当前图片 
    function dochange(adid) {
        id = adid;
        var adbigimg = document.getElementById("adpica").getElementsByTagName("div");
        var adsmallimg = document.getElementById("adtipa").getElementsByTagName("li");
        for (var adi = 0; adi < adbigimg.length; adi++) {
            adbigimg[adi].className = "hidden";
            adsmallimg[adi].className = "";
        }
        adbigimg[adid - 1].className = "show";
        adsmallimg[adid - 1].className = "current";
    }
    var adisround = setTimeout("adchangea2(2)", 3000);
    var id;//当前激活id 
    //鼠标移开ul块时，恢复轮询 
    function change() {
        adchangea2(id);
    }
</script>
</div>     
                                
                        </div>

                    </div>
                </div>
                <div class="content-center">
                    <div class="center-top">
                    </div>
                    <div class="center-bottom">
                        <div class="imgcontent" style=" padding-left:10px; text-align:left;display:block;" id="xwzx">
                            <ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="${ctx}/images/topmenu06.jpg"> <a target="_blank" href="" title="新春贺词 " .="">新春贺词 </a></span><span class="sp2">2018-03-01</span> </li></ul>
                        </div>
                    </div>
                </div>
               
                <div class="content-right">
                    <div class="right-top">
                        <div class="left-top-news news-ahover">应用平台</div>
                    </div>
                    <div class="gzwm">
                        <ul>
                            <li><a class="szpt" href="${ctx}/page/employer/campus/greening.jsp" target="_blank" style="background: url(../images/green.png) no-repeat scroll 3px 0 transparent;">校园环境</a></li>
                            <li><a class="fwdt" href="${ctx}/page/teacher/guarantee.jsp" target="_blank" style="background: url(../images/classroom.png) no-repeat scroll 3px 0 transparent;background-size:50px 45px;">教室维护</a></li>
                            <li><a class="rlzy" href="${ctx}/page/employer/buyer/buyer.jsp" target="_blank" style="background: url(../images/canteen.png) no-repeat scroll 0px 0 transparent;background-size:50px 45px;">食堂采购</a></li>
                                 <li><a class="cggl" href="${ctx}/page/employer/material/stuff.jsp" target="_blank" style="background: url(../images/ybcx.png) no-repeat scroll 3px 0 transparent;">物资管理</a></li>
                            </ul>
                        <ul> 
                            <li><a class="gygl" href="${ctx}/page/student/guarantee.jsp" target="_blank" style="background: url(../images/hotel.png) no-repeat scroll 3px 0 transparent;">学生宿舍</a></li>
                    		<li><a class="xxgl" href="${ctx}/page/student/infoAdmin.jsp" target="_blank" style="background: url(../images/icon-jccx.png) no-repeat scroll 0px 0 transparent;background-size:50px 45px;">信息管理</a></li>
                    	</ul>
                    </div>
                </div>
                
            </div>
        <div style="width:100%;float:left;">
             <div class="wap-con">
                <div class="wap-con-left">
                    <div class="wap-con-left-top">
                        <ul>
                            <li class="center-hr-a news-ahover"><a style="cursor: pointer;display: block;font-weight:600;color:#7d667d;">校园环境</a></li>
                        </ul>
                    </div>
                    <div class="center-hr-bottom">
                        <div class="imgcontent" id="green" style="text-align:left;">
                           <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="">[绿]申请留校的什么时候搬寝室？</a></span><span class="sp2">2018-01-21</span> </li>
                           </ul>
                        </div>
                      
                    </div>
                    <a class="btn" href="${ctx}/page/employer/campus/guarantee.jsp" style="color:white;">提出建议</a>
                </div>
                <div class="wap-con-center">
                    <div class="wap-con-center-top">
                        <li class="center-hr-a"><a style="cursor: pointer;display: block;font-weight:600;color:#7d667d;">宿舍报修</a></li>
                        
                    </div>
                    <div class="center-hr-bottom">
                        <div class="imgcontent" id="repair" style="text-align:left;">
                           <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="" title="厕所门坏了">[微]厕所门坏了</a></span><span class="sp2_1">已受理</span><span class="sp2_1">3/23</span> </li></ul>
                        </div>
                     
                    </div>
                    <a class="btn" href="${ctx}/page/student/guarantee.jsp" style="color:white;">我要报修</a>
                </div>
                <div class="wap-con-right">
                    <div class="wap-con-right-top">
                        <li class="center-hr-a"><a style="cursor: pointer;display: block;color:#7d667d;font-weight:600;">采购信息</a></li>
                        
                    </div>
                    <div class="center-hr-bottom">
                        <div class="imgcontent" id="buyer" style="padding-left:5px; text-align:left;">
                             <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a>[采]西红柿</a><span style="margin-left:70px;">10kg</span></span><span class="sp2">2018-03-16</span> </li></ul> 
                        </div>
                     
                    </div>
                    <a class="btn" href="${ctx}/page/employer/buyer/buyer.jsp" style="color:white;">查看全部</a>
                </div>
            </div></div>
      
    </div>
              
       </div>
    

         <div class="top-siade1" style="background-color:#79aa34; height:100px;">
             <div class="content">
                 <div style="width:20%;float:left; margin-top:10px; text-align:left;">
                      <select name="select3" onchange="processForm(this.options[this.selectedIndex].value);" target="_blank" style="width: 166px; height: 22px">
                <option selected="selected">友情链接</option>
                <option value=""></option>
 		<option value=""></option>
                <option value=""></option>
            </select>
                 </div>
                   <div style="width:80px;float:left; margin-top:10px; text-align:left;">
                   </div> 
                 <div style="width:180px;float:left;   margin-left:10px; text-align:left; color:white; font-size:13px; ">
                     <div style="width:100%; float:left; height:30px;margin-top:10px; line-height:30px;"> 高校后勤管理系统 </div>
                         <div style="width:100%; float:left; height:30px; margin-top:10px;line-height:30px;"> 我们竭诚为您服务 </div> 
                          </div> 
                 <div style="width:490px;float:left;   margin-left:10px; text-align:left; color:white; font-size:12px; ">
                              <div style="width:100%; float:left; height:25px;margin-top:10px; line-height:25px;"> 版权所有 ©后勤管理</div>
                         <div style="width:100%; float:left; height:25px; margin-top:5px;line-height:25px;">地址： 火星 </div>
                     
                         <div style="width:100%; float:left; height:25px; margin-top:5px;line-height:25px;">24小时服务热线：12345678 </div>
                                 </div>
                  </div>

         </div>
    </div>

    </form>
<script type="text/javascript">
	
	if ('${uid}'!='') {
		$("#register").hide();
		$("#login").text("退出登录");
		$("#login").attr("href","${ctx}/user/logout");
	}
	if('${param.logout}'=='out'){
		alert("退出成功！");
	}

	selectByCategory("宿舍维修","s");
	selectByCategory("校园绿化","x");
	selectBuyer();
	selectNewsImg("life","生活","6");
	selectNewsImg("hot","热点","8");
	
	//分类查询信息
    function selectByCategory(category,judge) {
    	$.ajax({
			type: "get",
			url: "${ctx}/repairs/selectByCategory?repairsCategory="+category+"&judge="+judge,
			dataType: 'html',
			success: function(result) {
				if("s"==judge){
					$("#repair").html(result);
				}else{
					$("#green").html(result);
				}
			},
			error:function(XMLHttpRequest,testStatusm,errorThrown){
// 				alert("请求失败！");
			},
		});
	}
	
  	//查询采购信息
    function selectBuyer(){
		$.ajax({
			type: "get",
			url: "${ctx}/buyer/selectForIndex",
			dataType: 'html',
			success: function(result) {
				$("#buyer").html(result);
			},
			error:function(XMLHttpRequest,testStatusm,errorThrown){
// 				alert("请求失败！");
			},
		});
	}
  	
  	//查询新闻图片信息
    function selectNewsImg(judge,theme,pageSize){
		$.ajax({
			type: "get",
			url: "${ctx}/news/selectLimit",
			data:{
				themeName:theme,
				judge:judge,
				pageSize:pageSize
			},
			dataType: 'html',
			success: function(result) {
				if("life"==judge){
					$("#adpica").html(result);
				}else{
					$("#xwzx").html(result);
				}
			},
			error:function(XMLHttpRequest,testStatusm,errorThrown){
// 				alert("请求失败！");
			},
		});
	}

</script>

</body></html>
