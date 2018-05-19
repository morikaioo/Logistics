<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="material" value="${materialid}"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- <jsp:include page="../common/commonfile.jsp"/> --%>
  	<div class="table-responsive">
  <table class="table">
    <thead>
      <tr>
        <th>编号</th>
        <th>物品</th>
        <th>数量</th>
        <th>状态</th>
        <th>更新时间</th>
        <th>负责人</th>
        <th>类别</th>
        <th class="userOpreate">操作</th>
        <th class="userOpreate">更改</th></tr>
    </thead>
    <tbody>
      <c:forEach items="${materials}" var="material" varStatus="status">
                        <tr>
                            <td style="width:10%;">${material.materialNum}</td>
                        	<td style="width:10%;">${material.detailedStuff}</td>
                        	<td style="width:10%;">${material.materialNumber}</td>
                            <td style="width:10%;">${material.materialStatus}</td>
                            <td style="width:10%;"><fmt:formatDate value="${material.updateTime}" pattern="yyyy-MM-dd"/></td>
                            <td style="width:7%;">${material.principal}</td>
                            <td style="width:8%;">${material.materialCategory}</td>
                            <td class="userOpreate" style="width:8%;"><a href="${ctx}/material/deleteById/${material.materialId}" style="color:#6699cc;">删除</a></td>
      						<td class="userOpreate" style="width:5%;"><a href="${ctx}/material/selectById/${material.materialId}" style="color:#6699cc;">修改</a></td>
                        </tr>
       </c:forEach>
    </tbody>
  </table>
</div>
		  
                        <div style="width:100%; text-align:center;margin-top:10px;"> 当前第${currentPage}/${totalPage}页&nbsp;
   <a href="#" onclick="first()">首页</a> &nbsp;<a href="#" onclick="previ()">上一页</a>&nbsp;
                            <a href="#" onclick="next()">下一页</a>&nbsp;
                            <a href="#" onclick="last()">尾页</a>&nbsp;
  
      <input name="jump" type="text" id="jump" style="width:30px;" value="1">
      <input type="button" style="width:55px;" title="转到该页" value="转到该页" onclick="jump()"></div>
  </body>
  <script type="text/javascript">
  if ('${privilege}'!='1' || '${userCategory}'!='工作人员' || '${userDepartment}'!='物资部') {
		$(".userOpreate").hide();
	}
  
  	function jump(){
  		var jumpPage = $("#jump").val();
  		$.ajax({
			type: "get",
			url: href="${ctx}/material/selectLimit?currentPage="+jumpPage+"&materialCategory=${materialCategory}",
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
			url: href="${ctx}/material/selectLimit?currentPage=1"+"&materialCategory=${materialCategory}",
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
			url: href="${ctx}/material/selectLimit?currentPage=${currentPage-1}"+"&materialCategory=${materialCategory}",
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
			url: href="${ctx}/material/selectLimit?currentPage=${currentPage+1}"+"&materialCategory=${materialCategory}",
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
			url: href="${ctx}/material/selectLimit?currentPage=${totalPage}"+"&materialCategory=${materialCategory}",
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
