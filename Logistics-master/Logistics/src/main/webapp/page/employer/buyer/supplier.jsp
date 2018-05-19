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
    <div class="place" style="padding: 46px 0;"><i class="icon homeicon"></i><em><a href="">主页</a> &gt; <a href="">食堂采购</a></em></div>
    <div class="leftmenu fl">
		<dl class="sidemenu">
            <dt>食堂采购</dt>
            <dd class="userOpreate"><a href="${ctx}/page/employer/buyer/addSupplier.jsp"><i class="icon sideicon1"></i>添加供应商</a><i class="icon sideicon2"></i></dd>
			<dd class="active"><a href=""><i class="icon sideicon1"></i>供应商信息</a><i class="icon sideicon2"></i></dd>
		 
        </dl>
        
    </div>
    <div class="rigCont fr">
        <div class="detailsRig pb30" style="height:400px;">
            <h4 class="detailsTitle">供应商信息</h4>
            <div id="info" class="detailsCont" style="margin-top: 20px; text-align:left;">
                        
          </div>
        </div>
    </div>
</div>
<jsp:include page="../../common/foot.jsp"/>
<script type="text/javascript">
	$(function(){
		
		if ('${judge}'=='1') {
			alert("删除成功!")
		}else if ('${judge}'=='0') {
			alert("删除失败!")
		}
		selectLimit();
	});
	function selectLimit(){
		$.ajax({
			type: "get",
			url: "${ctx}/supplier/selectLimit",
			dataType: 'html',
			success: function(result) {
				$("#info").html(result);
			},
			error:function(XMLHttpRequest,testStatusm,errorThrown){
				alert("请求失败！");
			},
		});
	}
	
</script>

</body>
</html>