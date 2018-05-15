<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="news" value="${newsid}"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- <jsp:include page="../common/commonfile.jsp"/> --%>
<table class="csstest" cellspacing="0" cellpadding="0" id="ContentPlaceHolder1_dg1" style="border-width:0px;border-style:None;width:100%;border-collapse:collapse;">
	<tbody><tr align="left" style="color:#999999;background-color:White;height:20px;">
		<td>文章标题</td><td>主题</td><td>作者</td><td>发布时间</td><td class="userOpreate">操作</td><td class="userOpreate">更改</td></tr>
	 <c:forEach items="${newss}" var="news" varStatus="status">
		<tr class="xuxianheng" align="left" style="background-color:White;font-weight:normal;font-style:normal;text-decoration:none;height:35px;border-bottom:1px dashed #999;">
		<td style="">
        <div style="width:450px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;"><a href="${ctx}/news/selectById/${news.newsId}" class="csstest" title="${news.title}">
        [章]${news.title}
        </a></div>
        </td><td style="width:12%;">
        ${news.themeName}
      </td><td style="width:12%;">
        ${news.author}
      </td>
      	<td title="${news.createDate}">
      		<div style="width:100px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">
      		${news.createDate}
      		</div>
      	</td>
      
      <td class="userOpreate" style="width:10%;"><a href="${ctx}/news/deleteById/${news.newsId}" style="color:#6699cc;">删除</a></td>
      <td class="userOpreate" style="width:10%;"><a href="${ctx}/news/selectById/${news.newsId}?judge=edit" style="color:#6699cc;">修改</a></td>
	</tr>
	</c:forEach>
</tbody></table>

<div style="width:100%; text-align:center;margin-top:10px;"> 当前第${currentPage}/${totalPage}页&nbsp;
   <a href="#" onclick="first()">首页</a> &nbsp;<a href="#" onclick="previ()">上一页</a>&nbsp;
                            <a href="#" onclick="next()">下一页</a>&nbsp;
                            <a href="#" onclick="last()">尾页</a>&nbsp;
  
      <input name="jump" type="text" id="jump" style="width:30px;" value="1">
      <input type="button" style="width:55px;" title="转到该页" value="转到该页" onclick="jump()"></div>
  </body>
  <script type="text/javascript">
  	if ('${username}'!='student') {
		$(".userOpreate").hide();
	}
  	function jump(){
  		var jumpPage = $("#jump").val();
  		$.ajax({
			type: "get",
			url: href="${ctx}/news/selectLimit",
			data:{
				currentPage:jumpPage,
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
  	
  	function first(){
  		$.ajax({
			type: "get",
			url: href="${ctx}/news/selectLimit",
			dataType: 'html',
			data:{
				currentPage:"1",
				judge:"all",
				pageSize:"7"
			},
			success: function(result) {
				$("#info").html(result);
			},
			error:function(XMLHttpRequest,testStatusm,errorThrown){
				alert("请求失败！");
			},
		});
  	}
  	function previ(){
  		$.ajax({
			type: "get",
			url: href="${ctx}/news/selectLimit",
			data:{
				currentPage:"${currentPage-1}",
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
  	function next(){
  		$.ajax({
			type: "get",
			url: href="${ctx}/news/selectLimit",
			data:{
				currentPage:"${currentPage+1}",
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
  	function last(){
  		$.ajax({
			type: "get",
			url: href="${ctx}/news/selectLimit",
			data:{
				currentPage:"${totalPage}",
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
