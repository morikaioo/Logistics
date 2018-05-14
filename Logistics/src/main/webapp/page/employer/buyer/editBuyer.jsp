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
    <div class="place" style="padding: 46px 0;"><i class="icon homeicon"></i><em><a href="">主页</a> &gt; <a href="">食堂采购</a> &gt;编辑信息</em></div>
    <div class="leftmenu fl">
		<dl class="sidemenu">
            <dt>编辑信息</dt>
			<dd class=""><a href="${ctx}/page/employer/buyer/addBuyer.jsp"><i class="icon sideicon1"></i>添加信息</a><i class="icon sideicon2"></i></dd>
			<dd class=""><a href="${ctx}/page/employer/buyer/buyer.jsp" id="sonchannel26"><i class="icon sideicon1"></i>采购信息</a><i class="icon sideicon2"></i></dd>			
		 	<dd class="active"><a href="#" id="sonchannel26"><i class="icon sideicon1"></i>编辑信息</a><i class="icon sideicon2"></i></dd>
        </dl>
    </div>
    <div class="rigCont fr">
        <div class="detailsRig pb30" style="height:400px;">
            <h4 class="detailsTitle">编辑信息</h4>
            <div class="detailsCont" style="margin-top: 20px; text-align:center;height:400px;">
         	 <c:set value="${buyer}" var="buyer"/>
         	 <form class="form-horizontal" role="form" id="buyerForm">   	 
         	 	 <div class="form-group">
    			<label class="col-sm-2 control-label" for="inputError">供应商名字:</label>
    			<div class="col-sm-10">
      				<input type="text" value="${buyer.supplierName}" class="form-control" id="supplierName" name="supplierName">
    			</div>
  			</div>         	 
         	 <div class="form-group">
    			<label class="col-sm-2 control-label" for="inputError">食物名称:</label>
    			<div class="col-sm-10">
      				<input type="text" value="${buyer.foodName}" class="form-control" id="foodName" name="foodName">
    			</div>
  			</div>
  			<div class="form-group" style="position: relative;top:-48px;left:300px;">
    			<label class="col-sm-2 control-label" for="inputError">类型:</label>
    			<div class="col-sm-10">
      				<select class="form-control" name="foodCategory" id="foodCategory">
      					<option>蔬菜</option>
      					<option>水果</option>
      					<option>谷类</option>
      					<option>肉类</option>
      					<option>材料类</option> 
    				</select>
    			</div>
  			</div>
  			<script>
  				$("#foodCategory option").each(function(){
				   if($(this).text() == '${buyer.foodCategory}'){
				      $(this).attr('selected', 'selected');
				   }
				});
            </script>
  			<div class="form-group" style="position: relative;top:-39px;">
    			<label class="col-sm-2 control-label" for="inputError">价&#160;&#160;&#160;&#160;格:</label>
    			<div class="col-sm-10">
      				<input type="text" value="${buyer.price}" class="form-control" id="price" name="price">
    			</div>
  			</div>
  			<div class="form-group" style="position: relative;top:-89px;left:300px;">
    			<label class="col-sm-2 control-label" for="inputError">数量:</label>
    			<div class="col-sm-10">
      				<input type="text" value="${buyer.foodNumber}" class="form-control" id="foodNumber" name="foodNumber" placeholder="kg">
    			</div>
  			</div>
  			<div class="form-group" style="position: relative;top:-79px;">
    			<label class="col-sm-2 control-label" for="inputError">采购人:</label>
    			<div class="col-sm-10">
      				<input type="text" value="${buyer.buyName}" class="form-control" id="buyName" name="buyName" readonly="readonly">
    			</div>
  			</div>
  			<input type="button" onclick="buyer()" class="btn btn-success" value="提交" style="width:200px;height:34px;position:relative;top:-79px;left:123px;">
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
	function buyer(){
		var data = $('#buyerForm').serializeArray();
		for (var i = 0; i < data.length; i++) {
			if (data[i].value=="") {
				alert("条件不能为空");
				return;
			}
		}
		$.ajax({
			type: "post",
			url: "${ctx}/buyer/insertBuyer?category=edit&&buyerId=${buyer.buyerId}",
			data: $('#buyerForm').serializeArray(),
			dataType: 'text',
			success: function(result) {
				if(result=="true"){
					$("#reset").click();
					alert("编辑成功!");
					window.location.href="${ctx}/page/employer/buyer/buyer.jsp";
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