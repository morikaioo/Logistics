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
    <div class="leftmenu fl">
		<dl class="sidemenu">
            <dt>信息管理</dt>
			<dd class="active"><a href="${ctx}/page/student/infoAdmin.jsp"><i class="icon sideicon1"></i>信息查询</a><i class="icon sideicon2"></i></dd>
		 	<dd class="" id="addNews"><a href="${ctx}/page/student/addNews.jsp"><i class="icon sideicon1"></i>添加文章</a><i class="icon sideicon2"></i></dd>
        	<dd class=""><a href="${ctx}/page/student/allNews.jsp"><i class="icon sideicon1"></i>全部文章</a><i class="icon sideicon2"></i></dd>
        </dl>
        
    </div>
    <!-- 搜索框 -->
    <div class="form-group" style="position: absolute; top:347px;left:1040px;">
    	<label class="col-sm-2 control-label" for="inputError"></label>
    	<div class="col-sm-10">
      		<input type="text" style="width:120px;" class="form-control" id="searchInput" name="searchInput" placeholder="请输入姓名">
    	</div>
    	<span id="search" class="glyphicon glyphicon-search" style="position:relative;top:-35px;left:170px; color:#0e90d2;height:38px;width:30px; background:#eeeeee;font-size:20pt;line-height:40px;cursor:pointer;"></span>
  		<div id="userList" style="background:#eeeeee;width:120px;position:absolute;top:33px;left:50px;"></div>
  	</div>
    <div class="rigCont fr">
        <div class="detailsRig pb30" style="height:400px;">
            <h4 class="detailsTitle">联系方式</h4>
            <div id="info" class="detailsCont" style="margin-top: 20px; text-align:left;">
          </div>
        </div>
    </div>
</div>
<jsp:include page="../common/foot.jsp"/>
<script type="text/javascript">
	$(function(){
		if ('${privilege}'!='1' || '${userCategory}'!='学生' || '${userDepartment}'!='学生类') {
			$("#addNews").hide();
		}
		selectLimit();
	});
	function selectLimit(){
		$.ajax({
			type: "get",
			url: "${ctx}/user/selectLimit",
			dataType: 'html',
			success: function(result) {
				$("#info").html(result);
			},
			error:function(XMLHttpRequest,testStatusm,errorThrown){
				alert("请求失败！");
			},
		});
	}
	
	//按用户名查询信息
	$("#search").click(function(){	
		
		name = $("#searchInput").val();
			$.ajax({
				type: "get",
				url: "${ctx}/user/selectLimit?trivialName="+name,
				dataType: 'html',
				success: function(result) {
					$("#info").html(result);
				},
				error:function(XMLHttpRequest,testStatusm,errorThrown){
					alert("请求失败！");
				},
			});
	});
	
	//输入框搜索
	$("#searchInput").keyup(function(){
		$("#userList").show();
		var search = $(this).val();
	  if(search!=""){
		$.ajax({
			type : "get",
			url : "${ctx}/user/selectLikeUser?trivialName="+search,
			dataType : "json",
			success : function(data, textStatus) {
				 var s ="";                       
           		for(var i in data){
					s+="<p style='width: 570px;'><a href='#' class='pa'>"+data[i].trivialName+"</a></p>";
            	}
            	$("#userList").html(s);
			},
			error : function(XMLHttpRequest, testStatusm,
			errorThrown) {
				alert("请求失败！");
			},
		});
	  }
	});
	//搜索弹出内容点击
	$('#userList').on('click','.pa',function(){
		var text = $(this).text();
		$("#searchInput").val(text);
		$("#userList").hide();
		return false;
	});
	
	//点击弹出框外隐藏弹出框
	  $("*").click(function (event) {
    		var a = $(this);
			var b = $("#userList");
        	if(a.is(b)){
				return false;
			}else{
				$("#userList").hide();
			}
    	});
</script>

</body>
</html>