<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>head</title>
<script src="../../js/jquery-1.10.2.min.js" type="text/javascript"></script> 
    <script src="../../js/index.js" type="text/javascript"></script>  
    <link href="../../css/Index.css" rel="stylesheet" type="text/css">
    <link href="../../css/font-awesome.css" rel="stylesheet" type="text/css"><title>
	高校后勤管理系统
</title> 
    <link href="../../css/Index1.css" rel="stylesheet" type="text/css">
    <link href="../../css/sty1.css" rel="stylesheet" type="text/css">
</head>
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
</style>
<body>
<div class="w1100 clearfix news-content">
    <div class="place"><i class="icon homeicon"></i><em><a href="">主页</a> &gt; <a href="">网上报修</a> &gt;所有报修申请</em></div>
    <div class="leftmenu fl">
		<dl class="sidemenu">
            <dt>网上报修</dt>
			<dd class="active"><a href=""><i class="icon sideicon1"></i>所有报修申请</a><i class="icon sideicon2"></i></dd>
			<dd class=""><a href="" id="sonchannel26"><i class="icon sideicon1"></i>受理中的申请</a><i class="icon sideicon2"></i></dd>			
			<dd class=""><a href="" id="sonchannel27"><i class="icon sideicon1"></i>维修中的申请</a><i class="icon sideicon2"></i></dd>			
			<dd class=""><a href="" id="sonchannel28"><i class="icon sideicon1"></i>已完成的申请</a><i class="icon sideicon2"></i></dd> 			
			<dd class=""><a href="" id="sonchannel28"><i class="icon sideicon1"></i>已回复的申请</a><i class="icon sideicon2"></i></dd> 
		 
        </dl>
        <a href=""><div class="round1">我要报修</div></a>
        
    </div>
    <div class="rigCont fr">
        <div class="detailsRig pb30">
            <h4 class="detailsTitle">所有报修申请</h4>
            <div class="detailsCont" style="margin-top: 20px; text-align:left;">
            
               <table class="csstest" cellspacing="0" cellpadding="0" id="ContentPlaceHolder1_dg1" style="border-width:0px;border-style:None;width:100%;border-collapse:collapse;">
	<tbody><tr align="left" style="color:#999999;background-color:White;height:20px;">
		<td>标题</td><td>类项</td><td>提交人</td><td>留言时间</td><td>状态</td></tr>
		<tr class="xuxianheng" align="left" style="background-color:White;font-weight:normal;font-style:normal;text-decoration:none;height:35px;">
		<td style="width:60%;">
                                        <a href="http://www.kyjt.com.cn/BXMX?id=8707" class="csstest" title="  椅子坏了">
                                            [微]椅子坏了
                                        </a>
                                    </td><td style="width:10%;">
                                  其它
                                    </td><td style="width:8%;">
                                  林***
                                    </td><td style="width:15%;">
                                       2018-03-25
                                    </td><td style="width:10%;">
                                      已受理
                                    </td>
	</tr><tr class="xuxianheng" align="left" style="background-color:White;border-style:None;font-weight:normal;font-style:normal;text-decoration:none;height:35px;">
		<td style="width:60%;">
                                        <a href="http://www.kyjt.com.cn/BXMX?id=8706" class="csstest" title="  灯管坏了">
                                            [微]灯管坏了
                                        </a>
                                    </td><td style="width:10%;">
                                  电力维修
                                    </td><td style="width:8%;">
                                  潘***
                                    </td><td style="width:15%;">
                                       2018-03-24
                                    </td><td style="width:10%;">
                                      已受理
                                    </td>
	</tr>
</tbody></table>  
                        <div style="width:100%; text-align:center;margin-top:10px;"> 当前第1/565页&nbsp;
   <a href="">首页</a> &nbsp;<a href="">上一页</a>&nbsp;
                            <a href="">下一页</a>&nbsp;
                            <a href="">尾页</a>&nbsp;
  
      <input name="" type="text" id="ContentPlaceHolder1_input1" style="width:30px;" value="1">
      <input type="button" style="width:55px;" title="转到该页" value="转到该页" onclick="">
         <input type="hidden" id="sumbit_countpage" value="565">
          <input type="hidden" id="temp_id" value=""></div>
          </div>
        </div>
    </div>
</div>

</body>
</html>