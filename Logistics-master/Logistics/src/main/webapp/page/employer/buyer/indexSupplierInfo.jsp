<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
      <c:forEach items="${suppliers}" var="supplier" varStatus="status">
      	  <ul>  <li class="titiles">  
      	  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> 
      	  <a>[供]${supplier.supplierName}</a>
      	  <span style="margin-left:70px;">${supplier.Contact}</span>
      	  <span style="margin-left:70px;">${supplier.Address}</span>
      	  <span style="margin-left:70px;">${supplier.Email}</span></span>
      	  <span class="sp2"><fmt:formatDate value="${supplier.updateTime}" pattern="yyyy-MM-dd" /></span>
      	  </li></ul>
      </c:forEach>
		  
