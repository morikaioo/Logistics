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
    <div class="place" style="padding: 46px 0;"><i class="icon homeicon"></i><em><a href="">主页</a> &gt; <a href="">食堂采购</a> &gt;添加信息</em></div>
    <div class="leftmenu fl">
		<dl class="sidemenu">
            <dt>添加供应商</dt>
			<dd class="active"><a href="${ctx}/page/employer/buyer/addSupplier.jsp"><i class="icon sideicon1"></i>添加供应商</a><i class="icon sideicon2"></i></dd>
			<dd class=""><a href="${ctx}/page/employer/buyer/supplier.jsp" id="sonchannel26"><i class="icon sideicon1"></i>供应商信息</a><i class="icon sideicon2"></i></dd>			
		 
        </dl>
    </div>
    <div class="rigCont fr">
        <div class="detailsRig pb30" style="height:400px;">
            <h4 class="detailsTitle">添加供应商</h4>
            <div class="detailsCont" style="margin-top: 20px; text-align:center;height:400px;">
         	 <form class="form-horizontal" role="form" id="supplierForm">      	 
         	  <div class="form-group">
    			<label class="col-sm-2 control-label" for="inputError">供应商名字:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="supplierName" name="supplierName">
    			</div>
  			</div>
         	 <div class="form-group">
    			<label class="col-sm-2 control-label" for="inputError">联系电话:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="Contact" name="Contact">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="col-sm-2 control-label" for="inputError">地址:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="Address" name="Address">
    			</div>
  			</div>
  			<div class="form-group">
    			<label class="col-sm-2 control-label" for="inputError">邮箱:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="Email" name="Email">
    			</div>
  			</div>
  			<input type="button" onclick="supplier()" class="btn btn-success" value="提交" style="width:200px;height:34px;position:relative;top:-9px;left:123px;">
  			<input type="reset" id="reset" class="btn btn-info" value="重置" style="width:200px;height:34px;position:relative;top:-9px;left:213px;">
  			</form>
          </div>
        </div>
    </div>
</div>
<jsp:include page="../../common/foot.jsp"/>
<script type="text/javascript">
	$(function(){
		
	});
	function supplier(){
		if ('${username}'=='') {
			alert('对不起，请您先登录!');
			error;
		}
		var data = $('#suppilerForm').serializeArray();
		for (var i = 0; i < data.length; i++) {
			if (data[i].value=="") {
				alert("条件不能为空");
				return;
			}
		}
		$.ajax({
			type: "post",
			url: "${ctx}/supplier/insertSupplier",
			data: $('#supplierForm').serializeArray(),
			dataType: 'text',
			success: function(result) {
				if(result=="true"){
					$("#reset").click();
					alert("添加成功!");
					window.location.href="${ctx}/page/employer/buyer/supplier.jsp";
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