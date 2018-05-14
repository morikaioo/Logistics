<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<jsp:include page="../common/commonfile.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>高校后勤管理系统</title> 
</head>
<style> 
.form-control{
/* 	float:left; */
/* 	margin-left:-40px; */
	width: 200px;
}
</style>
<body>
<jsp:include page="../common/head.jsp"/>
<div class="w1100 clearfix" style="height:600px">
    <div class="place" style="padding: 46px 0;"><i class="icon homeicon"></i><em><a href="">主页</a> &gt; <a href="">用户信息</a> &gt;用户注册</em></div>
    <div class="leftmenu fl">
		<dl class="sidemenu">
            <dt>用户信息</dt>
			<dd class=""><a href="${ctx}/page/user/register.jsp""><i class="icon sideicon1"></i>用户注册</a><i class="icon sideicon2"></i></dd>
			<dd class="active"><a href="${ctx}/page/user/login.jsp"" id="sonchannel26"><i class="icon sideicon1"></i>用户登录</a><i class="icon sideicon2"></i></dd>			
		 
        </dl>
        <a href=""><div class="round1">我要登录</div></a>
        
    </div>
    <div class="rigCont fr">
        <div class="detailsRig pb30" style="height:400px;">
            <h4 class="detailsTitle">用户登录</h4>
            <div class="detailsCont" style="margin-top: 20px; text-align:center;height:400px;">
         	 <form class="form-horizontal" role="form" id="registForm">
         	<!-- 用户名 -->
         	<div class="form-group" style="position: relative;left:140px;">
    			<label class="col-sm-2 control-label" for="inputError">用户名:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="userName" name="userName" placeholder="请输入用户名">
    			</div>
  			</div>
  			<!-- 密码 -->
  			<div class="form-group" style="position: relative;top:10px;left:140px;">
    			<label class="col-sm-2 control-label" for="inputError">密&#160;&#160;&#160;&#160;码:</label>
    			<div class="col-sm-10">
      				<input type="password" class="form-control" id="password" name="password" placeholder="请输入密码">
    			</div>
  			</div>
  			<!-- 验证码 输入-->
  			<div class="form-group" style="position:relative;left:275px;top:20px;">
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="code" name="code" style="width:90px;height:30px;" placeholder="验证码">
    			</div>
  			</div>
  			<!-- 验证码 -->
  			<div class="form-group" style="position:relative;left:375px;top:-35px;">
    			<div class="col-sm-10">
      				<input type="button" class="btn btn-primary" id="code2" name="code2" onclick="createCode()" style="width:90px;height:30px;">
    			</div>
  			</div>
  			<input type="button" onclick="login()" class="btn btn-success" value="登录" style="width:95px;height:34px;position:relative;top:-30px;left:266px;">
  			<input type="reset" id="reset" class="btn btn-info" value="重置" style="width:95px;height:34px;position:relative;top:-30px;left:267px;">
  			</form>
          </div>
        </div>
    </div>
</div>
<jsp:include page="../common/foot.jsp"/>
<script type="text/javascript">
	$(function(){
		
		
		
	});
	//设置一个全局的变量，便于保存验证码
    var code;
    function createCode(){
        //首先默认code为空字符串
        code = '';
        //设置长度，这里看需求，我这里设置了4
        var codeLength = 4;
//         var codeV = document.getElementById('code2');
        //设置随机字符
        var random = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R', 'S','T','U','V','W','X','Y','Z');
        //循环codeLength 我设置的4就是循环4次
        for(var i = 0; i < codeLength; i++){
            //设置随机数范围,这设置为0 ~ 36
             var index = Math.floor(Math.random()*36);
             //字符串拼接 将每次随机的字符 进行拼接
             code += random[index]; 
        }
        //将拼接好的字符串赋值给展示的Value
        $("#code2").val(code);
    }
    
    //下面就是判断是否== 的代码
    function validate(){
        var oValue = document.getElementById('code').value.toUpperCase();
        if(oValue ==0){
            alert('请输入验证码');
             error;
        }else if(oValue != code){
            alert('验证码不正确，请重新输入');
            oValue = ' ';
            createCode();
            error;
        }
    }
    //设置此处的原因是每次进入界面展示一个随机的验证码，不设置则为空
    window.onload = function (){
        createCode();
    };
    
	function login(){
		var username = $("#userName").val();
		var password = $("#password").val();
		if (username==""||password=="") {
			alert("输入不能为空!");
			return;
		}
		validate();
		$.ajax({
			type: "post",
			url: "${ctx}/user/UserLogin",
			data: {username:username,password:password},
			dataType: 'text',
			success: function(result) {
				if(result=="true"){
					alert("登录成功!");
					$("#reset").click();
					window.location.href="${ctx}/page/index.jsp";
				}else{
					alert("登录失败!");
					$("#reset").click();
					return;
				}
			},
			error:function(XMLHttpRequest,testStatusm,errorThrown){
				alert("请求失败！");
			},
		});
	}
</script>

</body>
</html>