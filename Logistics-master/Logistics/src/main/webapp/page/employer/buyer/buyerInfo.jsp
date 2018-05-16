<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="buyer" value="${buyerid}"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%-- <jsp:include page="../common/commonfile.jsp"/> --%>
<table class="csstest" cellspacing="0" cellpadding="0" id="ContentPlaceHolder1_dg1" style="border-width:0px;border-style:None;width:100%;border-collapse:collapse;">
	<tbody><tr align="left" style="color:#999999;background-color:White;height:20px;">
		<td>选择</td> 
		<td>供应商名字</td>
		<td>食物名称</td>
		<td>类型</td>
		<td>价格</td>
		<td>数量</td>
		<td>采购时间</td>
		<td>采购人</td>
		<td>总计</td>
		<td class="userOpreate">操作</td><td class="userOpreate">更改</td></tr>
	 <c:forEach items="${buyers}" var="buyer" varStatus="status"> 
		<tr class="xuxianheng"  align="left" style="background-color:White;font-weight:normal;font-style:normal;text-decoration:none;height:35px;border-bottom:1px dashed #999;"> 		

	 <div class="checkbox">
  		<td style="width:7%;">
  			<input type="checkbox" value="<fmt:formatNumber value="${buyer.price*buyer.foodNumber}" pattern="#.0"/>" name="test" id="${buyer.buyerId}" style="width:15px;hight:15px;margin-left:7px;"> 
		</td>
		<td style="width:12%;">
        ${buyer.supplierName} 
		</td>
		<td style="width:12%;">       
        ${buyer.foodName}
        </td><td style="width:10%;">
        ${buyer.foodCategory}
      </td><td style="width:8%;">
        ${buyer.price}
      </td><td style="width:8%;">
      	${buyer.foodNumber}
      </td><td style="width:12%;">
		<fmt:formatDate value="${buyer.buyDate}" pattern="yyyy-MM-dd" />
       </td>
       </td><td style="width:10%;">
		${buyer.buyName}
       </td>
      <td style="width:8%;">
      	<fmt:formatNumber value="${buyer.price*buyer.foodNumber}" pattern="#.0"/>
      </td>   
       <td class="userOpreate" style="width:8%;"><a href="${ctx}/buyer/deleteById/${buyer.buyerId}" style="color:#6699cc;">删除</a></td>
      <td class="userOpreate" style="width:5%;"><a href="${ctx}/buyer/selectById/${buyer.buyerId}" style="color:#6699cc;">修改</a></td>
</td></div>
	 </tr>
	</c:forEach>		
</tbody>
</table>	 
 <div style="width:100%; text-align:center;margin-top:10px;"> 当前第${currentPage}/${totalPage}页&nbsp;
   <a href="#" onclick="first()">首页</a> &nbsp;<a href="#" onclick="previ()">上一页</a>&nbsp;
                            <a href="#" onclick="next()">下一页</a>&nbsp;
                            <a href="#" onclick="last()">尾页</a>&nbsp; 
      <input name="jump" type="text" id="jump" style="width:30px;" value="1">
      <input type="button" style="width:55px;" title="转到该页" value="转到该页" onclick="jump()"></div>
 </body>
 <div class="bot1">
				<div class="okLeft">
					<input type="checkbox" name="test2" value="xx" style="margin-top:0px;margin-left: 7px;">全选<span style="display:block;margin-left: 10px;margin-top: 18px">全选</span>
					<span style="display:block;margin-left: 280px;margin-top: -60px">已选商品<span id="numOk" style="color: #ff4400;font-size: 18px">0</span>件</span>
					<span style="display:block;margin-left: 500px;margin-top: -20px">合计:<span id="okPrice" style="color: #ff4400" class="to glyphicon glyphicon-jpy">0</span></span>
				</div>
				<button id="go" class="btn btn-success" onclick="settleAccounts()" style="display:block;margin-left: 650px;margin-top: -23px;width:55px;height:22px;line-height:9px;">结算  </button>
			</div>
  <script type="text/javascript">
  	if ('${username}'!='employer') {
		$(".userOpreate").hide();
	}	
  	function jump(){
  		var jumpPage = $("#jump").val();
  		$.ajax({
			type: "get",
			url: href="${ctx}/buyer/selectLimit?currentPage="+jumpPage,
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
			url: href="${ctx}/buyer/selectLimit?currentPage=1",
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
			url: href="${ctx}/buyer/selectLimit?currentPage=${currentPage-1}",
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
			url: href="${ctx}/buyer/selectLimit?currentPage=${currentPage+1}",
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
			url: href="${ctx}/buyer/selectLimit?currentPage=${totalPage}",
			dataType: 'html',
			success: function(result) {
				$("#info").html(result);
			},
			error:function(XMLHttpRequest,testStatusm,errorThrown){
				alert("请求失败！");
			},
		});
  	}
  	
    $('input[name="test"]').on('change', function(){
		var ok = document.getElementById('numOk');
		var obj=document.getElementsByName('test'); //选择所有name="'test'"的对象，返回数组 
				
        if($('input[name="test"]:checked').val()) {
			var arr = [];
			//把已选商品的值放到arr数组中		
			for(var i=0; i<obj.length; i++){ 
				if(obj[i].checked){
					var num1 = parseInt(obj[i].value); 
					arr.push(num1);
				}
			} 
			ok.innerHTML=arr.length;//把选中的数量显示在页面中
			var sum = 0;
			//累加计算总和
			arr.forEach(function(item){
				sum+=item;
				$('#okPrice').html(sum);
			});
		}else{
			$('#okPrice').html("0");
			ok.innerHTML=0;
		}
	})
				    			    
	$('input[name="test2"]').click(function(){//给全选按钮加上点击事件
        var xz = $(this).prop("checked");//判断全选按钮的选中状态
        var ck = $('input[name="test"]').prop("checked",xz);  //让class名为qx的选项的选中状态和全选按钮的选中状态一致。

        var ok = document.getElementById('numOk');
        var obj=document.getElementsByName('test'); //选择所有name="'test'"的对象，返回数组 
		//取到对象数组后，我们来循环检测它是不是被选中
        if($('input[name="test"]:checked').val()) {                   
			var arr = [];
			for(var i=0; i<obj.length; i++){ 
				if(obj[i].checked){
					var num1 = parseInt(obj[i].value);
					arr.push(num1);
				}
			} 
			ok.innerHTML=arr.length;
			var sum = 0;
			//累加计算总和
			arr.forEach(function(item){
				sum+=item;
				$('#okPrice').html(sum);
			});
		}else{
			$('#okPrice').html("0");
			ok.innerHTML=0;
		}
				   
    })		    
  
	/* ************ */			    
				    
    function settleAccounts(){
  		if($('input[name="test"]').prop("checked")) {
  			var obj=$('input[name="test"]');
  			var arr = [];
			//把已选商品的值放到arr数组中		
			for(var i=0; i<obj.length; i++){ 
				if(obj[i].checked){
					arr.push(obj[i].getAttribute("id"));
				}
			}
			alert(arr)
  		}
  		else
  			alert("请先选择!");
    } 
		    
	
	/* ************ */				    
				    
				    
				    
				    
  </script>
