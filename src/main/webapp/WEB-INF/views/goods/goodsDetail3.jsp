<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<html>
<head>
<meta name="viewport" content="width=device-width">
<link href="${contextPath}/resources/css4/main.css" rel="stylesheet" type="text/css" media="screen">
<link href="${contextPath}/resources/css4/basic-jquery-slider.css" rel="stylesheet" type="text/css" media="screen">
<link href="${contextPath }/resources/css4/myStyle.css" rel="stylesheet" type="text/css"/>
<script src="${contextPath}/resources/jquery1/jquery-1.6.2.min.js" ></script>
<script src="${contextPath}/resources/jquery1/jquery-3.5.1.min.js"></script>
<script src="${contextPath}/resources/jquery1/jquery.easing.1.3.js" ></script>
<script src="${contextPath}/resources/jquery1/basic-jquery-slider.js" ></script>
<script src="${contextPath}/resources/jquery1/carousel.js" ></script>
<script src="${contextPath}/resources/jquery1/tabs.js" ></script>
<script src="${contextPath}/resources/ckeditor/ckeditor.js"></script>    
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<style>
	td:first-child {
		text-align: center;
		font-weight: bold;
	}
</style>
<script>
	
	function fn_order_each_goods(goodsId){
	
		var isLogOn = document.getElementById("isLogOn").value;
		var orderGoodsQty = document.getElementById("orderGoodsQty").value;
		
		if (isLogOn == "" || isLogOn == "false") {
			alert("주문화면으로 넘어갑니다.");
			location.href = "${contextPath}/odergood";
			return;
		} 
		
		location.href = "${contextPath}/order/orderEachGoods?goodsId=" + goodsId + "&orderGoodsQty=" + orderGoodsQty;
		
	}	
</script>
</head>
<body>

	<h1>무림 속 외노자가 되었다</h1>
	
	
	
	<div id="goods_image">
		<figure>
			<img src="${contextPath}/resources/web/501.jpg">
		</figure>
	</div>
	<div id="detail_table">
		<table>
			<tbody>
				<tr>
					<td class="fixed">정가</td>
					<td class="active">
					   <a id="goodsPrice" name="goodsPrice"/> 10000원
					</td>
				</tr>
				<tr class="dot_line">
					<td class="fixed">판매가</td>
					<td class="active">
						<a id="goodsSalesPrice" name="goodsSalesPrice" /> 9000원(10%할인)
				    </td>
				</tr>
				<tr>
					<td class="fixed">포인트적립</td>
					<td class="active" id="goodsSalesPrice" name="goodsSalesPrice">10P 적립</td>
				</tr>
				<tr>
					<td class="fixed">발행일</td>
					<td class="fixed" name="goodsPublishedDate" type="date"> 2005/01/04</td>
				</tr>
				<tr>
					<td class="fixed">페이지 수</td>
					<td class="fixed" id="goodsTotalPage" name="goodsTotalPage">210쪽</td>
				</tr>
				
				<tr>
					<td class="fixed">배송료</td>
							<td class="fixed" id="goodsDeliveryPrice" name="goodsDeliveryPrice">2000원</td>
				</tr>
				<tr>
					<td class="fixed">배송안내</td>
					<td class="fixed"><strong>[당일배송]</strong> 당일배송 서비스 시작!<br> <strong>[휴일배송]</strong>
						휴일에도 배송받는 Bookshop</td>
				</tr>
				<tr>
					<td class="fixed">도착예정일</td>
					<td class="fixed">지금 주문 시 내일 도착 예정</td>
				</tr>
				<tr>
					<td class="fixed">수량</td>
					<td class="fixed">
				      <select style="width: 80px;" id="orderGoodsQty">
					  	<option value="1">1</option>
					  	<option value="2">2</option>
					  	<option value="3">3</option>
					  	<option value="4">4</option>
					  	<option value="5">5</option>
				       </select>
					 </td>
				</tr>
			</tbody>
		</table>
		<ul>
			<li><a class="buy" href="javascript:fn_order_each_goods('${goods.goodsId}')">구매하기 </a></li>
		</ul>
	</div>
	<div class="clear"></div>
	<div id="container">
		<ul class="tabs">
			<li><a href="#tab1">상품소개</a></li>
			
			
			
		</ul>
		<div class="tab_container">
			<div class="tab_content" id="tab1">
				<h4>상품소개</h4>
				<p>외국인 노동자 가 무림에....</p>
			</div>
			
			
			</div>
		</div>
	</div>
	<div class="clear"></div>
</body>
</html>
<input type="hidden" name="isLogOn" id="isLogOn" value="${isLogOn}"/>
					
					