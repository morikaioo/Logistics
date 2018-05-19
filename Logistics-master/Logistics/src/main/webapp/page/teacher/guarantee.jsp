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
    <div class="place" style="padding: 46px 0;"><i class="icon homeicon"></i><em><a href="">主页</a> &gt; <a href="">教室维护</a></em></div>
    <div class="leftmenu fl">
		<dl class="sidemenu">
            <dt>教室维护</dt>
			<dd class="active"><a href="${ctx}/page/teacher/guarantee.jsp"><i class="icon sideicon1"></i>教室报修</a><i class="icon sideicon2"></i></dd>
		 	<dd class=""><a href="${ctx}/page/teacher/repair.jsp"><i class="icon sideicon1"></i>教室维修</a><i class="icon sideicon2"></i></dd>
        	<dd class=""><a href="${ctx}/page/teacher/sanitation.jsp"><i class="icon sideicon1"></i>卫生保洁</a><i class="icon sideicon2"></i></dd>
        </dl>
        
    </div>
    <div class="rigCont fr">
        <div class="detailsRig pb30" style="height:400px;">
            <h4 class="detailsTitle">教室报修</h4>
            <div id="info" class="detailsCont" style="margin-top: 20px; text-align:left;">
                 <form class="form-horizontal" role="form" id="guaranteeForm">
         	 <div class="form-group">
    			<label class="col-sm-2 control-label" for="inputError">类项:</label>
    			<div class="col-sm-10">
      				<select class="form-control" id="repairsCategory" name="repairsCategory">
      					<option>教室维修</option>
      					<option>卫生保洁</option>
    				</select>
    			</div>
  			</div>
         	 <div class="form-group">
    			<label class="col-sm-2 control-label" for="inputError">报修人:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="repairsPerson" name="repairsPerson">
    			</div>
  			</div>
  			<div class="form-group" style="position: relative;top:-48px;left:300px;">
    			<label class="col-sm-2 control-label" for="inputError">地址:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="repairsAddress" name="repairsAddress">
    			</div>
  			</div>
  			<label style="position:relative;top:-37px;left:50px;">报修内容:</label>
  			<div class="form-group">
    				<textarea class="form-control" rows="7" style="width:500px;resize: none;border-radius:10px;position:relative;top:-67px;left:150px;" name="repairsContent"></textarea>
  			</div>
  			<input type="button" onclick="guarantee()" class="btn btn-success" value="提交" style="width:200px;height:34px;position:relative;top:-69px;left:123px;">
  			<input type="reset" class="btn btn-info" value="重置" style="width:200px;height:34px;position:relative;top:-69px;left:213px;">
  			</form>       
          </div>
        </div>
    </div>
</div>
<jsp:include page="../common/foot.jsp"/>
<script type="text/javascript">
function guarantee(){
	if ('${privilege}'!='1' || '${userCategory}'!='教师') {
		alert('对不起，您没有权限!');
		return;
	}
	
	var data = $('#guaranteeForm').serializeArray();
	for (var i = 0; i < data.length; i++) {
		if (data[i].value=="") {
			alert("条件不能为空");
			return;
		}
	}
	$.ajax({
		type: "post",
		url: "${ctx}/repairs/guarantee",
		data: $('#guaranteeForm').serializeArray(),
		dataType: 'text',
		success: function(result) {
			if(result=="1"){
				alert("提交成功!");
				window.location.href="${ctx}/page/teacher/repair.jsp";
			}else{
				alert("提交失败!");
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