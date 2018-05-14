<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
      <c:forEach items="${buyers}" var="buyer" varStatus="status">
      	  <ul>  <li class="titiles">  
      	  <span class="sp1_1"><img width="9" height="9" src="../js/topmenu06.jpg"> 
      	  <a>[采]${buyer.foodName}</a>
      	  <span style="margin-left:70px;">${buyer.foodNumber}kg</span>
      	  </span><span class="sp2"><fmt:formatDate value="${buyer.buyDate}" pattern="yyyy-MM-dd" /></span> </li></ul>
      </c:forEach>
		  
