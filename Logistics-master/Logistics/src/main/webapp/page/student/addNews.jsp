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

#ui-upload-holder {
	position: relative;
	width: 60px;
	height: 25px;
	border: 1px solid silver;
	overflow: hidden;
}

#ui-upload-input {
	position: absolute;
	top: 0px;
	right: 0px;
	height: 100%;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity :   0);
	z-index: 999;
}

#ui-upload-txt {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 100%;
	line-height: 25px;
	text-align: center;
}

#ui-upload-filepath {
	position: relative;
	border: 1px solid silver;
	width: 150px;
	height: 25px;
	overflow: hidden;
	float: left;
}

#ui-upload-filepathtxt {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 25px;
	border: 0px;
	line-height: 35px;
}

</style>
<body>
<jsp:include page="../common/head.jsp"/>
<div class="w1100 clearfix" style="height:600px">
    <div class="place" style="padding: 46px 0;"><i class="icon homeicon"></i><em><a href="">主页</a> &gt; <a href="">信息管理</a></em></div>
    <div class="leftmenu fl">
		<dl class="sidemenu">
            <dt>信息管理</dt>
			<dd class=""><a href="${ctx}/page/student/infoAdmin.jsp"><i class="icon sideicon1"></i>信息查询</a><i class="icon sideicon2"></i></dd>
		 	<dd id="addNews" class="active"><a href="${ctx}/page/student/addNews.jsp"><i class="icon sideicon1"></i>添加文章</a><i class="icon sideicon2"></i></dd>
        	<dd class=""><a href="${ctx}/page/student/allNews.jsp"><i class="icon sideicon1"></i>全部文章</a><i class="icon sideicon2"></i></dd>
        </dl>
        
    </div>
    <div class="rigCont fr">
        <div class="detailsRig pb30" style="height:480px;">
            <h4 class="detailsTitle">添加文章</h4>
            <div id="info" class="detailsCont" style="margin-top: 20px; text-align:left;">
                 <form class="form-horizontal" action="${ctx}/news/addNews" role="form" id="newsForm" method="post" enctype="multipart/form-data">
         	 <div class="form-group">
    			<label class="col-sm-2 control-label" for="inputError">主题:</label>
    			<div class="col-sm-10">
      				<select class="form-control" id="themeName" name="themeName">
      					<option>生活</option>
      					<option>学习</option>
      					<option>热点</option>
    				</select>
    			</div>
  			</div>
         	 <div class="form-group">
    			<label class="col-sm-2 control-label" for="inputError">作者:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="author" name="author">
    			</div>
  			</div>
  			<div class="form-group" style="position: relative;top:10px;left:0px">
    			<label class="col-sm-2 control-label" for="inputError">标题:</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="title" name="title">
    			</div>
  			</div>
  			<label style="position:relative;top:27px;left:50px;">文章内容:</label>
  			<div class="form-group">
    				<textarea class="form-control" rows="7" style="width:500px;resize: none;border-radius:10px;position:relative;top:-7px;left:150px;" name="newsContent"></textarea>
  			</div>
  			<input type="submit" onclick="" class="btn btn-success" value="提交" style="width:200px;height:34px;position:relative;top:0px;left:123px;">
  			<input type="reset" class="btn btn-info" value="重置" style="width:200px;height:34px;position:relative;top:0px;left:213px;">
  			<div class="uploadlay" style="position:relative;top:-382px; width:300px;left:422px;">
					<div id="ui-upload-filepath" style="border-radius:5px;">
						<input type="text" id="ui-upload-filepathtxt" class="filepathtxt" value=" 添加图片" name="imgpath" readonly="readonly" style="color:#999;">
					</div>
					<div id="ui-upload-holder" style="border-radius:5px;background:#5bc0de;">
						<div id="ui-upload-txt" style="color:white;">浏览...</div>
						<input type="file" id="ui-upload-input" class="file" name="file" onchange="setImagePreview()">
					</div>
					<p><div id="localImag"><img id="preview" width=-1 height=-1 style="diplay:none" /></div> 
			</div>
  			</form>       
          </div>
        </div>
    </div>
</div>
<jsp:include page="../common/foot.jsp"/>
<script type="text/javascript">
if ('${privilege}'!='1' || '${userCategory}'!='学生' || '${userDepartment}'!='学生类') {
	alert('对不起，您的用户没有权限');
	error;
}

if('${param.judge}'==1){
	alert("添加成功！");
}
	//上传显示图片
	function setImagePreview() {
			var docObj = document.getElementById("ui-upload-input");
			document.getElementById("ui-upload-filepathtxt").value = docObj.value;
			
			var imgObjPreview = document.getElementById("preview");
			if (docObj.files && docObj.files[0]) {
				//火狐下，直接设img属性  
				imgObjPreview.style.display = 'block';
				imgObjPreview.style.width = '300px';
				imgObjPreview.style.height = '120px';
				//imgObjPreview.src = docObj.files[0].getAsDataURL();  
				//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式  
				imgObjPreview.src = window.URL
						.createObjectURL(docObj.files[0]);
			} else {
				//IE下，使用滤镜  
				docObj.select();
				var imgSrc = document.selection.createRange().text;
				var localImagId = document.getElementById("localImag");
				//必须设置初始大小  
				localImagId.style.width = "250px";
				localImagId.style.height = "200px";
				//图片异常的捕捉，防止用户修改后缀来伪造图片  
				try {
					localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
					localImagId.filters
							.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
				} catch (e) {
					alert("您上传的图片格式不正确，请重新选择!");
					return false;
				}
				imgObjPreview.style.display = 'none';
				document.selection.empty();
			}
			return true;
		}
</script>
<script type="text/javascript">
function addNews(){
	var data = $('#newsForm').serializeArray();
	for (var i = 0; i < data.length; i++) {
		if (data[i].value=="") {
			alert("条件不能为空");
			return;
		}
	}
	$.ajax({
		type: "post",
		url: "${ctx}/news/addNews",
		data: $('#newsForm').serializeArray(),
		dataType: 'text',
		success: function(result) {
			if(result=="1"){
				alert("提交成功!");
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