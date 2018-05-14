 <%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="supplier" value="${supplierid}"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- <jsp:include page="../common/commonfile.jsp"/> --%>
<table class="csstest" cellspacing="0" cellpadding="0" id="ContentPlaceHolder1_dg1" style="border-width:0px;border-style:None;width:100%;border-collapse:collapse;">
	<tbody><tr align="left" style="color:#999999;background-color:White;height:20px;">
		<td>供应商名字</td>
		<td>联系电话</td>
		<td>地址</td>
		<td>邮箱</td>
		<td>更新时间</td>
		<td class="userOpreate">操作</td><td class="userOpreate">更改</td></tr>
	 <c:forEach items="${suppliers}" var="supplier" varStatus="status">
		<tr class="xuxianheng" align="left" style="background-color:White;font-weight:normal;font-style:normal;text-decoration:none;height:35px;border-bottom:1px dashed #999;">
		<td style="width:10%;">
		<a href="#" class="csstest">
        ${supplier.supplierName}
         </a>
		</td>
		<td style="width:10%;">
        <a href="#" class="csstest">
        ${supplier.contact}
      </a> 
        </td><td style="width:10%;">
        ${supplier.address}
      </td><td style="width:10%;">
        ${supplier.email}
      </td><td style="width:15%;">
		<fmt:formatDate value="${supplier.updateTime}" pattern="yyyy-MM-dd" />
       </td>
     </td>
       <td class="userOpreate" style="width:8%;"><a href="${ctx}/supplier/deleteSpId/${supplier.supplierId}" style="color:#6699cc;">删除</a></td>
      <td class="userOpreate" style="width:5%;"><a href="${ctx}/supplier/selectSpId/${supplier.supplierId}" style="color:#6699cc;">修改</a></td>
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
  	if ('${username}'!='employer') {
		$(".userOpreate").hide();
	}
  	function jump(){
  		var jumpPage = $("#jump").val();
  		$.ajax({
			type: "get",
			url: href="${ctx}/supplier/selectLimit?currentPage="+jumpPage,
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
			url: href="${ctx}/supplier/selectLimit?currentPage=1",
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
			url: href="${ctx}/supplier/selectLimit?currentPage=${currentPage-1}",
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
			url: href="${ctx}/supplier/selectLimit?currentPage=${currentPage+1}",
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
			url: href="${ctx}/supplier/selectLimit?currentPage=${totalPage}",
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 