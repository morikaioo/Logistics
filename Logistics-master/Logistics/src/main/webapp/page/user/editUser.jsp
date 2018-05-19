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
    <div class="place" style="padding: 46px 0;"><i class="icon homeicon"></i><em><a href="">主页</a> &gt; <a href="">信息管理</a> &gt;编辑信息</em></div>
    <div class="leftmenu fl">
		<dl class="sidemenu">
            <dt>信息管理</dt>
			<dd class="active"><a href="${ctx}/page/student/infoAdmin.jsp"><i class="icon sideicon1"></i>信息查询</a><i class="icon sideicon2"></i></dd>
		 	<dd class=""><a href="${ctx}/page/student/adduser.jsp"><i class="icon sideicon1"></i>添加文章</a><i class="icon sideicon2"></i></dd>
        	<dd class=""><a href="${ctx}/page/student/alluser.jsp"><i class="icon sideicon1"></i>全部文章</a><i class="icon sideicon2"></i></dd>
        </dl>
    </div>
    <div class="rigCont fr">
        <div class="detailsRig pb30" style="height:400px;">
            <h4 class="detailsTitle">编辑信息</h4>
            <div class="detailsCont" style="margin-top: 20px; text-align:center;height:400px;">
         	 <c:set value="${user}" var="user"/>
         	 <form class="form-horizontal" role="form" id="userForm">
         	 <div class="form-group">
    			<label class="col-sm-2 control-label" for="inputError">姓名:</label>
    			<div class="col-sm-10">
      				<input type="text" value="${user.trivialName}" class="form-control" id="trivialName" name="trivialName">
    			</div>
  			</div>
  			<div class="form-group" style="position: relative;top:-48px;left:300px;">
    			<label class="col-sm-2 control-label" for="inputError">类项:</label>
    			<div class="col-sm-10">
      				<select class="form-control" id="category" name="category">
      					<option>学生</option>
      					<option>工作人员</option>
      					<option>教师</option>
    				</select>
    			</div>
  			</div>
  			<script>
  				$("#category option").each(function(){
  				   if($(this).text() == '${user.category}'){
  				      $(this).attr('selected', 'selected');
  				   }
  				});
            </script>
  			<div class="form-group" style="position: relative;top:-39px;">
    			<label class="col-sm-2 control-label" for="inputError">电话号码:</label>
    			<div class="col-sm-10">
      				<input type="text" value="${user.phone}" class="form-control" id="phone" name="phone">
    			</div>
  			</div>
  			<div class="form-group" style="position: relative;top:-89px;left:300px;">
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
  			<script>
  				$("#department option").each(function(){
  				   if($(this).text() == '${user.department}'){
  				      $(this).attr('selected', 'selected');
  				   }
  				});
            </script>
  			<input type="button" onclick="user()" class="btn btn-success" value="提交" style="width:200px;height:34px;position:relative;top:-79px;left:123px;">
  			<input type="reset" id="reset" class="btn btn-info" value="重置" style="width:200px;height:34px;position:relative;top:-79px;left:213px;">
  			</form>
          </div>
        </div>
    </div>
</div>
<jsp:include page="../common/foot.jsp"/>
<script type="text/javascript">
	$(function(){
		
	});
	function user(){
		var data = $('#userForm').serializeArray();
		for (var i = 0; i < data.length; i++) {
			if (data[i].value=="") {
				alert("条件不能为空");
				return;
			}
		}
		$.ajax({
			type: "get",
			url: "${ctx}/user/updateUser?userId=${user.userId}",
			data: $('#userForm').serializeArray(),
			dataType: 'text',
			success: function(result) {
				if(result=="true"){
					$("#reset").click();
					alert("编辑成功!");
					window.location.href="${ctx}/page/student/infoAdmin.jsp";
				}else{
					$("#reset").click();
					alert("编辑失败!");
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