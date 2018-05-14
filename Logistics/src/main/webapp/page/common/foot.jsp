<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
</body>
</html>