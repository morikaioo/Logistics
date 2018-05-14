<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<jsp:include page="../../common/commonfile.jsp"/>
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
<jsp:include page="../../common/head.jsp"/>
<div class="w1100 clearfix" style="height:600px">
    <div class="place" style="padding: 46px 0;"><i class="icon homeicon"></i><em><a href="">主页</a> &gt; <a href="">物资管理</a> &gt;添加信息</em></div>
    <div class="leftmenu fl">
		<dl class="sidemenu">
            <dt>添加信息</dt>
			<dd class="active"><a href="${ctx}/page/employer/material/addMaterial.jsp"><i class="icon sideicon1"></i>添加信息</a><i class="icon sideicon2"></i></dd>
			<dd class=""><a href="${ctx}/page/employer/material/stuff.jsp" id="sonchannel26"><i class="icon sideicon1"></i>材料清单</a><i class="icon sideicon2"></i></dd>			
		 	<dd class=""><a href="${ctx}/page/employer/material/tool.jsp" id="sonchannel26"><i class="icon sideicon1"></i>工具清单</a><i class="icon sideicon2"></i></dd>
        </dl>
    </div>
    <div class="rigCont fr">
        <div class="detailsRig pb30" style="height:400px;">
            <h4 class="detailsTitle">添加信息</h4>
            <div class="detailsCont" style="margin-top: 20px; text-align:center;height:400px;">
         	 <form class="form-horizontal" role="form" id="materialForm">
         	 <div class="form-group">
    			<label class="col-sm-2 control-label" for="inputError">物品编号:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="materialNum" name="materialNum">
    			</div>
  			</div>
         	 <div class="form-group">
    			<label class="col-sm-2 control-label" for="inputError">物品名称:</label>
    			<div class="col-sm-10" >
      				<input type="text" class="form-control" id="detailedStuff" name="detailedStuff">
    			</div>
  			</div>
  			<div class="form-group" style="position: relative;top:-48px;left:300px;">
    			<label class="col-sm-2 control-label" for="inputError">类别:</label>
    			<div class="col-sm-10">
      				<select class="form-control" name="materialCategory" id="materialCategory">
      					<option>工具</option>
      					<option>材料</option>
    				</select>
    			</div>
  			</div>
  			<div class="form-group" style="position: relative;top:-39px;">
    			<label class="col-sm-2 control-label" for="inputError">数&#160;&#160;&#160;&#160;量:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="materialNumber" name="materialNumber">
    			</div>
  			</div>
  			<div class="form-group" style="position: relative;top:-89px;left:300px;">
    			<label class="col-sm-2 control-label" for="inputError">状态:</label>
    			<div class="col-sm-10">
      				<select class="form-control" name="materialStatus" id="materialStatus">
      					<option>全新</option>
      					<option>老旧</option>
      					<option>损坏</option>
    				</select>
    			</div>
  			</div>
  			<div class="form-group" style="position: relative;top:-79px;">
    			<label class="col-sm-2 control-label" for="inputError">负责人:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="principal" name="principal">
    			</div>
  			</div>
  			<input type="button" onclick="material()" class="btn btn-success" value="提交" style="width:200px;height:34px;position:relative;top:-79px;left:123px;">
  			<input type="reset" id="reset" class="btn btn-info" value="重置" style="width:200px;height:34px;position:relative;top:-79px;left:213px;">
  			</form>
          </div>
        </div>
    </div>
</div>
<jsp:include page="../../common/foot.jsp"/>
<script type="text/javascript">
	$(function(){
		
	});
	function material(){
		if ('${username}'=='') {
			alert('对不起，请您先登录!');
			return;
		}
		var data = $('#materialForm').serializeArray();
		for (var i = 0; i < data.length; i++) {
			if (data[i].value=="") {
				alert("条件不能为空");
				return;
			}
		}
		
		$.ajax({
			type: "post",
			url: "${ctx}/material/insertMaterial",
			data: $('#materialForm').serializeArray(),
			dataType: 'text',
			success: function(result) {
				if(result=="true"){
					$("#reset").click();
					alert("添加成功!");
					window.location.href="${ctx}/page/employer/material/tool.jsp";
				}else{
					$("#reset").click();
					alert("添加失败!");
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