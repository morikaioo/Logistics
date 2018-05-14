<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<jsp:include page="../common/commonfile.jsp"/>
<link href="${ctx}/css/HD.css" rel="stylesheet" type="text/css">
<link href="${ctx}/css/Style.css" rel="stylesheet" type="text/css">
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
</style>
<body>
<jsp:include page="../common/head.jsp"/>
<div class="w1100 clearfix" style="height:600px">
    <div class="place" style="padding: 46px 0;"><i class="icon homeicon"></i><em><a href="">主页</a> &gt; <a href="">学生宿舍</a></em></div>
    <div class="leftmenu fl">
		<dl class="sidemenu">
            <dt>学生宿舍</dt>
			<dd class=""><a href="${ctx}/page/student/guarantee.jsp"><i class="icon sideicon1"></i>宿舍保修</a><i class="icon sideicon2"></i></dd>
		 	<dd class=""><a href="${ctx}/page/student/repair.jsp"><i class="icon sideicon1"></i>宿舍维修</a><i class="icon sideicon2"></i></dd>
        	<dd class=""><a href="${ctx}/page/student/sanitation.jsp"><i class="icon sideicon1"></i>宿舍保洁</a><i class="icon sideicon2"></i></dd>
        	<dd class="active"><a href="${ctx}/page/student/detailInfo.jsp"><i class="icon sideicon1"></i>详细信息</a><i class="icon sideicon2"></i></dd>
        </dl>
        
    </div>
    <div class="rigCont fr">
        <div class="detailsRig pb30" style="height:400px;border-bottom : 0px solid #6699cc;">
            <h4 class="detailsTitle">详细信息</h4>
            <div id="info" class="detailsCont" style="margin-top: 20px; text-align:left;">
             
             <div class="main_col">
            <div class="main_top">
                <a href="">${repairs.repairsCategory}</a> &gt;  ${repairs.repairsContent}</div>
            <div class="main_detail">
                <div style="width:98%;"> 
                            <div class="q_title1">类项： ${repairs.repairsCategory}</div>
                             <div class="q_title1">报修人：${repairs.repairsPerson} </div>
                             <div class="q_title1">报修时间： <fmt:formatDate value="${repairs.repairsTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                             <div class="q_title1">报修地址： ${repairs.repairsAddress}</div>
                             <div class="q_title1" id="bxnr" style="height: 30px;">报修内容： ${repairs.repairsContent}</div>
                        </div>
            
                </div>
                <div class="speak_wrap"> 
                    <div class="answer" style="background:#d6e5f9;border-radius:5px;">
                        <div class="a_top"> 
                          报修状态：  ${repairs.repairsStatus}
                        </div>
                        <div class="a_middle">
                            <div style="line-height:20px;">
                               处理人： ${repairs.repairsHandle}&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;  
                            </div>
                             <div style="line-height:20px;">
                               处理时间：<fmt:formatDate value="${repairs.handleTime}" pattern="yyyy-MM-dd HH:mm:ss"/> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;  
                            </div>
                        </div>
                        <div class="a_foot">
                        </div>
                    </div>  
       		</div>
        </div>
                   
          </div>
        </div>
    </div>
</div>
<jsp:include page="../common/foot.jsp"/>
<script type="text/javascript">
	$(function(){
// 		selectLimit()
		
	});
	function selectLimit(){
		$.ajax({
			type: "get",
			url: "${ctx}/user/selectLimit",
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

</body>
</html>