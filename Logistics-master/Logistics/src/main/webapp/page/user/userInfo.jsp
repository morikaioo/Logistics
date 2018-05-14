<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="user" value="${userid}"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- <jsp:include page="../common/commonfile.jsp"/> --%>
  	<div class="table-responsive">
  <table class="table">
    <thead>
      <tr>
        <th>姓名</th>
        <th>电话号码</th>
        <th>类项</th>
        <th>更新时间</th>
        <th>部门</th>
        <th class="userOpreate">操作</th></tr>
    </thead>
    <tbody>
      <c:forEach items="${users}" var="user" varStatus="status">
                        <tr>
                        	<td style="width:10%;">${user.trivialName}</td>
                        	<td style="width:10%;">${user.phone}</td>
                            <td style="width:10%;">${user.category}</td>
                            <td style="width:10%;"><fmt:formatDate value="${user.registerTime}" pattern="yyyy-MM-dd"/></td>
                            <td style="width:5%;">${user.department}</td>
                            <td class="userOpreate" style="width:2%;"><a href="${ctx}/user/selectById/${user.userName}" style="color:#6699cc;">修改</a></td>
                        </tr>
       </c:forEach>
    </tbody>
  </table>
</div>
		  
                        <div style="width:100%; text-align:center;margin-top:10px;"> 当前第1/${totalPage}页&nbsp;
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
			url: href="${ctx}/user/selectLimit?currentPage="+jumpPage+"&trivialName=${name}",
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
			url: href="${ctx}/user/selectLimit?currentPage=1"+"&trivialName=${name}",
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
			url: href="${ctx}/user/selectLimit?currentPage=${currentPage-1}"+"&trivialName=${name}",
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
			url: href="${ctx}/user/selectLimit?currentPage=${currentPage+1}"+"&trivialName=${name}",
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
			url: href="${ctx}/user/selectLimit?currentPage=${totalPage}"+"&trivialName=${name}",
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
