<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
   
<script type="text/javascript">
    
</script>
</head>
<body>
<div class="top-bar" style="height: 30px;line-height: 30px;color: White;height: 32px;background-color: #333;">
<span style="font-size:13px;float:left;margin-left:100px;">欢迎您来到后勤管理系统</span> <a href="${ctx}/page/user/login.jsp" style="color: White;font-size:13px;float:right;margin-right:130px;">登录</a><a href="${ctx}/page/user/register.jsp" style="color: White;font-size:13px;float:right;margin-right:-70px;">注册</a>
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
       <!-- <div class="content">
           <div style="width:100%; text-align:left; float:left; height:30px;">
               <div style="width:45%; float:left; margin-left:5%;"><iframe width="100%" scrolling="no" height="30" frameborder="0" allowtransparency="true" src="../js/index.html"></iframe></div>
              <div style="width:48%; float:left; color:red; margin-top:5px;"> 今天是：<span>   <script type="text/javascript" src="../js/XQ.js"></script><font color="#FF0000">2018年3月23日 星期五 </font> <script type="text/javascript">showDate();</script> </span> 
                </div> 

           </div>
        </div> -->
                  
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
<div class="hidden"> <a target="_blank" href="http://www.kyjt.com.cn/NewsList?id=1587&amp;Type=0"> <img width="250" height="168" src="../image/20182151952842.jpg" title="除夕校领导与留校师生同吃年夜饭，携手迎新春"></a><span>除夕校领导与留校师生同吃年夜饭，携手迎新春</span> </div> <div style="display:" none;="" class="hidden"> <a target="_blank" href="http://www.kyjt.com.cn/NewsList?id=1573&amp;Type=0"> <img width="250" height="168" src="../image/20171171017379.jpg" title="后勤服务部代表队蝉联校运动会教工组团体总分第一名"></a><span>后勤服务部代表队蝉联校运动会教工组团体总分第一名</span> </div> <div style="display:" none;="" class="hidden"> <a target="_blank" href="http://www.kyjt.com.cn/NewsList?id=1560&amp;Type=0"> <img width="250" height="168" src="../js/2017971533709.jpg" title="新学期、“心”启航——浙科院2017年暑期学校后勤工作交流研讨会暨“后勤品质服务月”活动启动仪式成功举办"></a><span>新学期、“心”启航——浙科院2017年暑期学校后勤工作交流研讨会暨“后勤品质服务月”活动启动仪式成功举办</span> </div> <div style="display:" none;="" class="show"> <a target="_blank" href="http://www.kyjt.com.cn/NewsList?id=1540&amp;Type=0"> <img width="250" height="168" src="../js/2017611021885.jpg" title="后勤服务部物管、绿化中心齐心协力紧急疏通堵塞排污管"></a><span>后勤服务部物管、绿化中心齐心协力紧急疏通堵塞排污管</span> </div> <div style="display:" none;="" class="hidden"> <a target="_blank" href="http://www.kyjt.com.cn/NewsList?id=1538&amp;Type=0"> <img width="250" height="168" src="../js/2017611011496.jpg" title="后勤服务部党员骨干代表参加2017年高校后勤“思政大讲堂”"></a><span>后勤服务部党员骨干代表参加2017年高校后勤“思政大讲堂”</span> </div> <div style="display:" none;="" class="hidden"> <a target="_blank" href="http://www.kyjt.com.cn/NewsList?id=1534&amp;Type=0"> <img width="250" height="168" src="../js/201761109771.jpg" title="后勤服务部组织开展安全消防知识培训"></a><span>后勤服务部组织开展安全消防知识培训</span> </div> 
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
                        <!-- <ul>
                            <li class="center-top-huiyi news-ahover" onmouseover="onmousernews1()" data-no="jtdt" id="jtdt_class">
                                <a target="_blank" style="cursor: pointer; display: block; color:black;font-weight:600;" href="http://www.kyjt.com.cn/News">后勤动态</a>
                            </li>
                            <li class="center-top-huiyi" onmouseover="onmousernews2()" data-no="bmdt" id="bmdt_class">
                                <a target="_blank" style="cursor: pointer;display: block;color:black;font-weight:600;" href="http://www.kyjt.com.cn/News?Type=1">
                                    信息公告
                                </a>
                            </li>
                            <li class="center-top-huiyi" onmouseover="onmousernews3()" data-no="mtbd" id="mtbd_class">
                                <a target="_blank" style="cursor: pointer;display: block;color:black;font-weight:600;" href="http://www.kyjt.com.cn/News?Type=2">
                                    党建园地
                                </a>
                            </li> 
                        </ul> -->
                    </div>
                    <div class="center-bottom">
                        <div class="imgcontent" style=" padding-left:10px; text-align:left;display:block;" id="xwzx">
                            <ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" style="color:red;" href="http://www.kyjt.com.cn/NewsList.aspx?id=1588&amp;Type=0" title="新春贺词 " .="">新春贺词 </a></span><span class="sp2">2018-03-01</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" style="color:red;" href="http://www.kyjt.com.cn/NewsList.aspx?id=1557&amp;Type=0" title="坚守考验全天“后”，美丽校园总有“勤”" .="">坚守考验全天“后”，美丽校园总有“勤”</a></span><span class="sp2">2017-08-16</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" style="color:red;" href="http://www.kyjt.com.cn/NewsList.aspx?id=1589&amp;Type=0" title="后勤服务部切实做好寒假及开学各项保障工作" .="">后勤服务部切实做好寒假及开学各项保障工作</a></span><span class="sp2">2018-03-01</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/NewsList.aspx?id=1587&amp;Type=0" title="除夕校领导与留校师生同吃年夜饭，携手迎新春" .="">除夕校领导与留校师生同吃年夜饭，携手迎新春</a></span><span class="sp2">2018-02-15</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/NewsList.aspx?id=1586&amp;Type=0" title="后勤服务部党总支召开2017年度处级党员领导干部民主生活会" .="">后勤服务部党总支召开2017年度处级党员领导干部民主生活会</a></span><span class="sp2">2018-01-24</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/NewsList.aspx?id=1585&amp;Type=0" title="后勤服务部党总支召开2017年党风廉政建设" .="">后勤服务部党总支召开2017年党风廉政建设</a></span><span class="sp2">2018-01-24</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/NewsList.aspx?id=1584&amp;Type=0" title="学校纪委李泽泉书记一行莅临后勤服务部开展十九大精神专题宣讲与党风廉政建设调研巡查" .="">学校纪委李泽泉书记一行莅临后勤服务部开展十九大精神专题宣讲与党风廉政建设调研巡查</a></span><span class="sp2">2018-01-24</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/NewsList.aspx?id=1583&amp;Type=0" title="后勤服务部第二届“双代会”第一次会议顺利召开" .="">后勤服务部第二届“双代会”第一次会议顺利召开</a></span><span class="sp2">2017-12-28</span> </li></ul>
                        </div>
                        <!-- <div class="imgcontent" style=" padding-left:10px; text-align:left;display:none;" id="xxgg">
                            <ul>  <li class="titiles ">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" style="color:red;" href="http://www.kyjt.com.cn/NewsList?id=1006&amp;Type=1" title="浙江科技学院院长办公室关于2018年部分节假日安排的通知 ">浙江科技学院院长办公室关于2018年部分节假日安排的通知 </a></span><span class="sp2">2016-12-13</span> </li></ul> <ul>  <li class="titiles ">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" style="color:red;" href="http://www.kyjt.com.cn/NewsList?id=1128&amp;Type=1" title="关于开展2015级学生放射检查的通知">关于开展2015级学生放射检查的通知</a></span><span class="sp2">2018-03-16</span> </li></ul> <ul>  <li class="titiles ">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" style="color:red;" href="http://www.kyjt.com.cn/NewsList?id=1127&amp;Type=1" title="关于开展全校性白蚁防治工作的通知">关于开展全校性白蚁防治工作的通知</a></span><span class="sp2">2018-03-15</span> </li></ul> <ul>  <li class="titiles ">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" style="color:red;" href="http://www.kyjt.com.cn/NewsList?id=1125&amp;Type=1" title="关于转发关于开展2018年“三八”节系列活动的通知">关于转发关于开展2018年“三八”节系列活动的通知</a></span><span class="sp2">2018-03-07</span> </li></ul> <ul>  <li class="titiles ">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" style="color:;" href="http://www.kyjt.com.cn/NewsList?id=1124&amp;Type=1" title="后勤服务部2018年三月份中层干部值班表&lt;/FONT&gt;">后勤服务部2018年三月份中层干部值班表</a></span><span class="sp2">2018-03-01</span> </li></ul> <ul>  <li class="titiles ">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" style="color:;" href="http://www.kyjt.com.cn/NewsList?id=1123&amp;Type=1" title="后勤服务部党总支、分工会关于举办第二届“美丽后勤人，精彩后勤事”主题摄影及艺术作品大赛的通知">后勤服务部党总支、分工会关于举办第二届“美丽后勤人，精彩后勤事”主题摄影及艺术作品大赛的通知</a></span><span class="sp2">2018-01-29</span> </li></ul> <ul>  <li class="titiles ">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" style="color:;" href="http://www.kyjt.com.cn/NewsList?id=1122&amp;Type=1" title="停水通知">停水通知</a></span><span class="sp2">2018-01-23</span> </li></ul> <ul>  <li class="titiles ">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" style="color:;" href="http://www.kyjt.com.cn/NewsList?id=1121&amp;Type=1" title="关于2018年寒假期间后勤服务时间的通知">关于2018年寒假期间后勤服务时间的通知</a></span><span class="sp2">2018-01-19</span> </li></ul>
                        </div>
                        <div class="imgcontent" style=" padding-left:10px; text-align:left;display:none;" id="djdt">
                         <ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" style="color:red;" href="http://www.kyjt.com.cn/NewsList.aspx?id=10&amp;Type=2" title="习近平总书记7.26重要讲话精神学习资料" .="">习近平总书记7.26重要讲话精神学习资料</a></span><span class="sp2">2017-10-17</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" style="color:red;" href="http://www.kyjt.com.cn/NewsList.aspx?id=9&amp;Type=2" title="浙科院后勤党〔2017〕3号" .="">浙科院后勤党〔2017〕3号</a></span><span class="sp2">2017-08-16</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" style="color:red;" href="http://www.kyjt.com.cn/NewsList.aspx?id=8&amp;Type=2" title="浙科院后勤党〔2017〕2号" .="">浙科院后勤党〔2017〕2号</a></span><span class="sp2">2017-08-16</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/NewsList.aspx?id=7&amp;Type=2" title="浙科院后勤党〔2017〕1号" .="">浙科院后勤党〔2017〕1号</a></span><span class="sp2">2017-08-16</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/NewsList.aspx?id=6&amp;Type=2" title="中国共产党廉洁自律准则" .="">中国共产党廉洁自律准则</a></span><span class="sp2">2017-08-16</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/NewsList.aspx?id=5&amp;Type=2" title="中国共产党纪律处分条例" .="">中国共产党纪律处分条例</a></span><span class="sp2">2017-08-16</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/NewsList.aspx?id=4&amp;Type=2" title="中国共产党章程" .="">中国共产党章程</a></span><span class="sp2">2017-08-16</span> </li></ul>
                        </div> -->
                    </div>
                </div>
               
                <div class="content-right">
                    <div class="right-top">
                        <div class="left-top-news news-ahover">应用平台</div>
                    </div>
                    <div class="gzwm">
                        <ul>
                            <li><a class="szpt" href="" target="_blank" style="background: url(../images/green.png) no-repeat scroll 3px 0 transparent;">校园环境</a></li>
                            <li><a class="fwdt" href="" target="_blank" style="background: url(../images/classroom.png) no-repeat scroll 3px 0 transparent;background-size:50px 45px;">教室维护</a></li>
                            <li><a class="rlzy" href="" target="_blank" style="background: url(../images/canteen.png) no-repeat scroll 0px 0 transparent;background-size:50px 45px;">食堂采购</a></li>
                                 <li><a class="cggl" href="" target="_blank" style="background: url(../images/ybcx.png) no-repeat scroll 3px 0 transparent;">物资管理</a></li>
                            </ul>
                        <ul> 
                            <li><a class="gygl" href="" target="_blank" style="background: url(../images/hotel.png) no-repeat scroll 3px 0 transparent;">学生宿舍</a></li>
                            <!-- <li><a class="gykp" href="http://www.kyjt.com.cn/FWZN?t=6" target="_blank">文印收发</a></li> 
                            <li><a class="dcgl" href="http://www.kyjt.com.cn/FWZN?t=7" target="_blank">绿化美化</a></li>
                            <li><a class="jccx" href="http://www.kyjt.com.cn/qiantai/wsdc" target="_blank">网上订餐</a></li> -->
                                 </ul>
                            <!-- <ul>

                            <li><a class="zckp" href="http://www.kyjt.com.cn/FWZN?t=11" target="_blank">医疗服务 </a></li> 
                                  <li><a class="yktt" href="http://ecard.zust.edu.cn/" target="_blank">一 卡 通 </a></li> 
                                 <li><a class="dlcxt" href="http://www.kyjt.com.cn/Search">用电查询</a></li> 
                                 <li><a class="ybcxt" href="http://www.kyjt.com.cn/Search?Type=1">邮包查询</a></li> 
                        </ul> -->
                    </div>
                </div>
                
            </div>
        <div style="width:100%;float:left;">
             <div class="wap-con">
                <div class="wap-con-left">
                    <div class="wap-con-left-top">
                        <ul>
                            <li class="center-hr-a news-ahover"><a target="_blank" style="cursor: pointer;display: block;font-weight:600;color:#7d667d;" href="">互动平台</a></li>
<!--                             <li class="center-hr-a1"><a target="_blank" style="cursor: pointer;display: block; color:#267613; font-weight:bolder" href="http://www.kyjt.com.cn/TJHD">我要留言</a></li>  -->
                        </ul>
                    </div>
                    <div class="center-hr-bottom">
                        <div class="imgcontent" style="text-align:left;">
                           <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/HuDongMX?id=6927&amp;Type=%E5%92%A8%E8%AF%A2" title="申请留校的什么时候搬寝室？" .="">申请留校的什么时候搬寝室？</a></span><span class="sp2">2018-01-21</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/HuDongMX?id=6807&amp;Type=%E5%92%A8%E8%AF%A2" title="热水卡替换" .="">热水卡替换</a></span><span class="sp2">2018-01-05</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/HuDongMX?id=6790&amp;Type=%E5%92%A8%E8%AF%A2" title="寒假寝室楼封闭" .="">寒假寝室楼封闭</a></span><span class="sp2">2017-12-28</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/HuDongMX?id=6756&amp;Type=%E5%92%A8%E8%AF%A2" title="寒假大四实习的可以申请留校吗？" .="">寒假大四实习的可以申请留校吗？</a></span><span class="sp2">2017-12-12</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/HuDongMX?id=6721&amp;Type=%E6%8A%95%E8%AF%89" title="很多同学大一时的热水卡钱未退还！" .="">很多同学大一时的热水卡钱未退还！</a></span><span class="sp2">2017-12-05</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/HuDongMX?id=6709&amp;Type=%E6%8A%95%E8%AF%89" title="空调租赁费用半个学期未退还" .="">空调租赁费用半个学期未退还</a></span><span class="sp2">2017-12-03</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/HuDongMX?id=6695&amp;Type=%E5%BB%BA%E8%AE%AE" title="感谢西和五幢倪顺姣阿姨的帮助" .="">感谢西和五幢倪顺姣阿姨的帮助</a></span><span class="sp2">2017-11-28</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/HuDongMX?id=6694&amp;Type=%E5%BB%BA%E8%AE%AE" title="感谢信" .="">感谢信</a></span><span class="sp2">2017-11-28</span> </li></ul> <ul>  <li class="titiles">  </li></ul>
                        </div>
                      
                    </div>
                    <a class="btn" href="" style="color:white;">我要留言</a>
                </div>
                <div class="wap-con-center">
                    <div class="wap-con-center-top">
                        <li class="center-hr-a"><a target="_blank" style="cursor: pointer;display: block;font-weight:600;color:#7d667d;" href="">网上报修</a></li>
                        
<!--                             <li class="center-hr-a1"><a target="_blank" style="cursor: pointer;display: block; color:#267613; font-weight:bolder" href="http://www.kyjt.com.cn/TJHD?Type=1">我要报修</a></li>  -->
                    </div>
                    <div class="center-hr-bottom">
                        <div class="imgcontent" style="text-align:left;">
                           <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/BXMX?id=8704" title="厕所门坏了">[微]厕所门坏了</a></span><span class="sp2_1">已受理</span><span class="sp2_1">3/23</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/BXMX?id=8703" title="洗手间排风扇坏了">[微]洗手间排风扇坏了</a></span><span class="sp2_1">已受理</span><span class="sp2_1">3/23</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/BXMX?id=8702" title="北面的日光灯坏了  经常不亮">[微]北面的日光灯坏了  经常不亮</a></span><span class="sp2_1">已受理</span><span class="sp2_1">3/23</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/BXMX?id=8701" title="厕所灯坏了">[微]厕所灯坏了</a></span><span class="sp2_1">已受理</span><span class="sp2_1">3/23</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/BXMX?id=8700" title="饮水机坏了">[微]饮水机坏了</a></span><span class="sp2_1">已受理</span><span class="sp2_1">3/23</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/BXMX?id=8699" title="水龙头 水管坏了">[微]水龙头 水管坏了</a></span><span class="sp2_1">已维修</span><span class="sp2_1">3/23</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/BXMX?id=8698" title="换个饮水机">[微]换个饮水机</a></span><span class="sp2_1">已受理</span><span class="sp2_1">3/22</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/BXMX?id=8697" title="厕所灯坏了！！">[微]厕所灯坏了！！</a></span><span class="sp2_1">已维修</span><span class="sp2_1">3/22</span> </li></ul> <ul>  <li class="titiles"> </li></ul>
                        </div>
                     
                    </div>
                    <a class="btn" href="" style="color:white;">我要保修</a>
                </div>
                <div class="wap-con-right">
                    <div class="wap-con-right-top">
                        <li class="center-hr-a"><a target="_blank" style="cursor: pointer;display: block;color:#7d667d;font-weight:600;" href="">失物招领</a></li>
                        
<!--                             <li class="center-hr-a1"><a target="_blank" style="cursor: pointer;display: block; color:#267613; font-weight:bolder" href="http://www.kyjt.com.cn/TJHD?Type=2">我要找失物</a></li>  -->
                    </div>
                    <div class="center-hr-bottom">
                        <div class="imgcontent" style=" padding-left:5px; text-align:left;">
                             <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/ZLBSMX?id=606" title="15号在A2-130遗失了一个水杯" .="">15号在A2-130遗失了一个水杯</a></span><span class="sp2">2018-03-16</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/ZLBSMX?id=605" title="在a1 117丢失一串钥匙" .="">在a1 117丢失一串钥匙</a></span><span class="sp2">2018-03-04</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/ZLBSMX?id=604" title="钥匙丢失" .="">钥匙丢失</a></span><span class="sp2">2018-01-16</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/ZLBSMX?id=603" title="百乐88g钢笔" .="">百乐88g钢笔</a></span><span class="sp2">2018-01-15</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/ZLBSMX?id=602" title="12.25日早上刷圈的时候丢了眼镜，黑框，方形，框的大小中等" .="">12.25日早上刷圈的时候丢了眼镜，黑框，方形，框的大小中等</a></span><span class="sp2">2017-12-25</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/ZLBSMX?id=601" title="一卡通    " .="">一卡通    </a></span><span class="sp2">2017-12-04</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/ZLBSMX?id=600" title="一卡通  姓名  魏之嫣" .="">一卡通  姓名  魏之嫣</a></span><span class="sp2">2017-11-27</span> </li></ul> <ul>  <li class="titiles">  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> <a target="_blank" href="http://www.kyjt.com.cn/ZLBSMX?id=599" title="11月23日 A1-410遗失U盘" .="">11月23日 A1-410遗失U盘</a></span><span class="sp2">2017-11-24</span> </li></ul> <ul>  <li class="titiles">  </li></ul>
                        </div>
                     
                    </div>
                    <a class="btn" href="" style="color:white;">我要找失物</a>
                </div>
            </div></div>
      
         <!-- <div class="zhuanti">
              <div class="zhuanti1">专题板块</div> 
                <div class="zhuanti2">后勤先锋网</div>
              <div class="zhuanti2">后勤服务之星评选 </div>
              <div class="zhuanti2"><a href="http://www.kyjt.com.cn/Health" style="color:white; font-size:20px;">医疗卫生服务</a> </div>
              <div class="zhuanti2"><a href="http://www.kyjt.com.cn/Apartment" style="color:white; font-size:20px;">学生公寓服务</a></div>
               <div class="zhuanti21">小和山校区住宿查询</div>
           
          </div> -->      
       
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


</body></html>
</html>