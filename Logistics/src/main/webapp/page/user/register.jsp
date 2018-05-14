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
			<dd class="active"><a href="${ctx}/page/user/register.jsp"><i class="icon sideicon1"></i>用户注册</a><i class="icon sideicon2"></i></dd>
			<dd class=""><a href="${ctx}/page/user/login.jsp" id="sonchannel26"><i class="icon sideicon1"></i>用户登录</a><i class="icon sideicon2"></i></dd>			
		 
        </dl>
        <a href=""><div class="round1">我要登录</div></a>
        
    </div>
    <div class="rigCont fr">
        <div class="detailsRig pb30" style="height:400px;">
            <h4 class="detailsTitle">用户注册</h4>
            <div class="detailsCont" style="margin-top: 20px; text-align:center;height:400px;">
         	 <form class="form-horizontal" role="form" id="registForm">
         	 <div class="form-group">
    			<label class="col-sm-2 control-label" for="inputError">用户名:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="userName" name="userName">
    			</div>
  			</div>
  			<div class="form-group" style="position: relative;top:-48px;left:300px;">
    			<label class="col-sm-2 control-label" for="inputError">类别:</label>
    			<div class="col-sm-10">
      				<select class="form-control" name="category" id="category">
      					<option>学生</option>
      					<option>工作人员</option>
      					<option>教师</option>
    				</select>
    			</div>
  			</div>
  			<div class="form-group" style="position: relative;top:-39px;">
    			<label class="col-sm-2 control-label" for="inputError">密&#160;&#160;&#160;&#160;码:</label>
    			<div class="col-sm-10">
      				<input type="password" class="form-control" id="password1" name="password1">
    			</div>
  			</div>
  			<div class="form-group" style="position: relative;top:-89px;left:300px;">
    			<label class="col-sm-2 control-label" for="inputError">确认密码:</label>
    			<div class="col-sm-10">
      				<input type="password" class="form-control" id="password" name="password">
    			</div>
  			</div>
  			<div class="form-group" style="position: relative;top:-79px;">
    			<label class="col-sm-2 control-label" for="inputError">联系方式:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="phone" name="phone">
    			</div>
  			</div>
  			<div class="form-group" style="position:relative;top:-129px;left:300px;">
    			<label class="col-sm-2 control-label" for="inputError">部门:</label>
    			<div class="col-sm-10">
      				<select class="form-control" id="department" name="department">
      					<option>学生类</option>
      					<option>教师类</option>
      					<option>宿管部</option>
      					<option>采购部</option>
      					<option>环境部</option>
      					<option>物资部</option>
    				</select>
    			</div>
  			</div>
  			<div class="form-group" style="position: relative;top:-119px;">
    			<label class="col-sm-2 control-label" for="inputError">姓&#160;&#160;&#160;&#160;名:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="trivialName" name="trivialName">
    			</div>
  			</div>
  			<div class="form-group" style="position:relative;top:-169px;left:300px;">
    			<label class="col-sm-2 control-label" for="inputError">性别:</label>
    			<div class="col-sm-10">
      				<select class="form-control" id="sex" name="sex">
      					<option>男</option>
      					<option>女</option>
    				</select>
    			</div>
  			</div>
  			<input type="button" onclick="regist()" class="btn btn-success" value="提交" style="width:200px;height:34px;position:relative;top:-169px;left:123px;">
  			<input type="reset" id="reset" class="btn btn-info" value="重置" style="width:200px;height:34px;position:relative;top:-169px;left:213px;">
  			</form>
          </div>
        </div>
    </div>
</div>
<jsp:include page="../common/foot.jsp"/>
<script type="text/javascript">
	$(function(){
		
	});
	function regist(){
		var data = $('#registForm').serializeArray();
		for (var i = 0; i < data.length; i++) {
			if (data[i].value=="") {
				alert("条件不能为空");
				return;
			}
		}
		if (data[2].value!=data[3].value) {
			alert("两次密码不一样！");
			return;
		}
		$.ajax({
			type: "post",
			url: "${ctx}/user/registUser",
			data: $('#registForm').serializeArray(),
			dataType: 'text',
			success: function(result) {
				if(result=="true"){
					$("#reset").click();
					alert("注册成功!");
					window.location.href="${ctx}/page/user/login.jsp";
				}else{
					$("#reset").click();
					alert("注册失败!");
					return;
				}
			},
			error:function(XMLHttpRequest,testStatusm,errorThrown){
				$("#reset").click();
				alert("请求失败！");
			},
		});
	}
</script>

</body>
</html>