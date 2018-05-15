<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
	<c:if test="${judge == 'life'}">
		<c:forEach items="${newss}" var="news" varStatus="status">
          <div class="hidden"> <a target="_blank" href="${ctx}/news/selectById/${news.newsId}"> <img width="250" height="168" src="${ctx}/${news.imgpath}" title="${news.title}"></a><span>${news.title}</span> </div>
      	</c:forEach>
	</c:if>
	<c:if test="${judge == 'hot'}">
		<c:forEach items="${newss}" var="news" varStatus="status">
          	<ul>  <li class="titiles">  <span class="sp1"><img width="9" height="9" src="${ctx}/images/topmenu06.jpg"> <a target="_blank" href="${ctx}/news/selectById/${news.newsId}" title="${news.title}">${news.title}</a></span><span class="sp2" title="${news.createDate}">${news.createDate}</span> </li></ul>
      	</c:forEach>
	</c:if>
