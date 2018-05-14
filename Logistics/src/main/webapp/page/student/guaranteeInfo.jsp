<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="repairs" value="${repairsid}"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- <jsp:include page="../common/commonfile.jsp"/> --%>
<table class="csstest" cellspacing="0" cellpadding="0" id="ContentPlaceHolder1_dg1" style="border-width:0px;border-style:None;width:100%;border-collapse:collapse;">
	<tbody><tr align="left" style="color:#999999;background-color:White;height:20px;">
		<td>报修内容</td><td>类项</td><td>提交人</td><td>报修时间</td><td>状态</td><td class="userOpreate">操作</td><td class="userOpreate">删除</td></tr>
	 <c:forEach items="${repairss}" var="repairs" varStatus="status">
		<tr class="xuxianheng" align="left" style="background-color:White;font-weight:normal;font-style:normal;text-decoration:none;height:35px;border-bottom:1px dashed #999;">
		<td style="width:45%;">
        <a href="${ctx}/repairs/selectById/${repairs.repairsId}?category=s" class="csstest">
        [${category}]${repairs.repairsContent}
        </a>
        </td><td style="width:12%;">
        ${repairs.repairsCategory}
      </td><td style="width:10%;">
        ${repairs.repairsPerson}
      </td><td style="width:15%;">
      	<fmt:formatDate value="${repairs.repairsTime}" pattern="yyyy-MM-dd"/>
      </td><td style="width:10%;">
		${repairs.repairsStatus}
       </td><td class="userOpreate" style="width:12%;color:#6699cc;">
       	<c:if test="${repairs.repairsStatus == '待维修'}">
       		<a href="${ctx}/repairs/updateById/?repairsId=${repairs.repairsId}&category=${repairs.repairsCategory}&repairsStatus=已维修&repairsHandle=${trivialName}" class="csstest" style="color:#6699cc;">
        	处理
        	</a>
		</c:if>
		<c:if test="${repairs.repairsStatus == '待保洁'}">
       		<a href="${ctx}/repairs/updateById/?repairsId=${repairs.repairsId}&category=${repairs.repairsCategory}&repairsStatus=已保洁&repairsHandle=${trivialName}" class="csstest" style="color:#6699cc;">
        	处理
        	</a>
		</c:if>
		<c:if test="${repairs.repairsStatus == '已维修' or repairs.repairsStatus == '已保洁'}">
			已处理
		</c:if>
        
       </td><td class="userOpreate" style="width:10%;color:#6699cc;white-space:nowrap;">
       	<a href="${ctx}/repairs/deleteById/${repairs.repairsId}?category=${repairs.repairsCategory}" class="csstest" style="color:#6699cc;">
        	删除
        </a>
      </td>
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
			url: href="${ctx}/repairs/selectLimit?currentPage="+jumpPage+"&repairsCategory=${repairsCategory}"+"&judge=s",
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
			url: href="${ctx}/repairs/selectLimit?currentPage=1"+"&repairsCategory=${repairsCategory}"+"&judge=s",
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
			url: href="${ctx}/repairs/selectLimit?currentPage=${currentPage-1}"+"&repairsCategory=${repairsCategory}"+"&judge=s",
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
			url: href="${ctx}/repairs/selectLimit?currentPage=${currentPage+1}"+"&repairsCategory=${repairsCategory}"+"&judge=s",
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
			url: href="${ctx}/repairs/selectLimit?currentPage=${totalPage}"+"&repairsCategory=${repairsCategory}"+"&judge=s",
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
