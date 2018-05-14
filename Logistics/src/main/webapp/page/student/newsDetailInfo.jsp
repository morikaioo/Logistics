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
    <div class="place" style="padding: 46px 0;"><i class="icon homeicon"></i><em><a href="">主页</a> &gt; <a href="">信息管理</a></em></div>
    	<div class="w1100 clearfix news-content">
   			<div style="width:100%;">
       		<div style="width:100%;float:left; text-align:center; font-size:25px; color:#175B0E;">${news.title}</div>
       		<div style="width:100%;float:left; text-align:center; font-size:15px; color:#808080; margin-top:10px;"> 发布：${news.createDate}&nbsp;&nbsp; 作者：${news.author}&nbsp;&nbsp;主题：${news.themeName}</div>
       
       		<div style="width:100%;float:left;   margin-top:20px;"> 
       			<p style="text-align:center;">
					<img src="${ctx}/${news.imgpath}" alt=""> 
				</p>
				<p>
				<br>
				</p>
				<p>
					&nbsp; &nbsp;&nbsp;${news.newsContent}
				</p>
   			</div>
</div>
</div>
<jsp:include page="../common/foot.jsp"/>
<script type="text/javascript">
	$(function(){
// 		selectLimit();
	});
	function selectLimit(){
		$.ajax({
			type: "get",
			url: "${ctx}/news/selectLimit",
			data:{
				judge:"all",
				pageSize:"7"
			},
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