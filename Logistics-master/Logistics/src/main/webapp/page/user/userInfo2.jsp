<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="user" value="${userid}"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- <jsp:include page="../common/commonfile.jsp"/> --%>
<table class="csstest" cellspacing="0" cellpadding="0" id="ContentPlaceHolder1_dg1" style="border-width:0px;border-style:None;width:100%;border-collapse:collapse;">
	<tbody><tr align="left" style="color:#999999;background-color:White;height:20px;">
		<td>电话号码</td><td>类项</td><td>姓名</td><td>更新时间</td><td>部门</td></tr>
	 <c:forEach items="${users}" var="user" varStatus="status">
		<tr class="xuxianheng" align="left" style="background-color:White;font-weight:normal;font-style:normal;text-decoration:none;height:35px;border-bottom:1px dashed #999;">
		<td style="width:20%;">
        <a href="" class="csstest">
        ${user.phone}
        </a>
        </td><td style="width:10%;">
        ${user.category}
      </td><td style="width:12%;">
        ${user.trivialName}
      </td><td style="width:15%;">
      2018-03-25
      </td><td style="width:10%;">
	${user.department}
       </td>
	</tr>
	</c:forEach>
</tbody></table>

  	<%-- <div class="table-responsive">
  <table class="table">
    <thead>
      <tr>
        <th>姓名</th>
        <th>电话号码</th>
        <th>类别</th>
        <th>部门</th></tr>
    </thead>
    <tbody>
      <c:forEach items="${users}" var="user" varStatus="status">
                        <tr>
                        	<td>${user.trivialName}</td>
                        	<td>${user.phone}</td>
                            <td>${user.category}</td>
                            <td>${user.department}</td>
<!--                             <td><a href="#" onclick="delchatinfo('')">删除</a></td> -->
                        </tr>
       </c:forEach>
    </tbody>
  </table>
</div> --%>
		  
                        <div style="width:100%; text-align:center;margin-top:10px;"> 当前第${currentPage}/${totalPage}页&nbsp;
   <a href="#" onclick="first()">首页</a> &nbsp;<a href="#" onclick="previ()">上一页</a>&nbsp;
                            <a href="#" onclick="next()">下一页</a>&nbsp;
                            <a href="#" onclick="last()">尾页</a>&nbsp;
  
      <input name="jump" type="text" id="jump" style="width:30px;" value="1">
      <input type="button" style="width:55px;" title="转到该页" value="转到该页" onclick="jump()"></div>
  </body>
  <script type="text/javascript">
	
  	function jump(){
  		var jumpPage = $("#jump").val();
  		$.ajax({
			type: "get",
			url: href="${ctx}/user/selectLimit?currentPage="+jumpPage,
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
			url: href="${ctx}/user/selectLimit?currentPage=1",
			dataType: 'html',
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
			url: href="${ctx}/user/selectLimit?currentPage=${currentPage-1}",
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
			url: href="${ctx}/user/selectLimit?currentPage=${currentPage+1}",
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
			url: href="${ctx}/user/selectLimit?currentPage=${totalPage}",
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
