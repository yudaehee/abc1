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
</head>
<body>
	
	<div class="clear"></div>
	<br>
	<br>
	<h1>2.배송 정보</h1>
	<div class="detail_table">
		<table>
			<tbody>
			  <tr class="dot_line">
				<td class="fixed_join">이름</td>
				<td>${orderMap.memberName}</td>
			  </tr>
			  <tr class="dot_line">
				<td class="fixed_join">핸드폰</td>
				<td>${orderMap.hp1} - ${orderMap.hp2} - ${orderMap.hp3}</td>
			  </tr>
			  <tr class="dot_line">
				<td class="fixed_join">이메일</td>
				<td>${orderMap.email}</td>
			  </tr>
				<tr class="dot_line">
					<td class="fixed_join">배송방법</td>
					<td>${orderMap.deliveryMethod }</td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">받으실 분</td>
					<td>${orderMap.receiverName }</td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">휴대폰번호</td>
					<td>${orderMap.receiverHp1}-${orderMap.receiverHp2}-${orderMap.receiverHp3}</td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">유선전화(선택)</td>
					<td>${orderMap.receiverTel1}-${orderMap.receiverTel2}-${orderMap.receiverTel3}</td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">주소</td>
					<td>${orderMap.deliveryAddress}</td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">배송 메시지</td>
					<td>${orderMap.deliveryMessage}</td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">선물 포장</td>
					<td>${orderMap.giftWrapping}</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="clear"></div>
	<br>
	<br>
	<h1>3.결제정보</h1>
	<div class="detail_table">
		<table>
			<tbody>
				<tr class="dot_line">
					<td class="fixed_join">결제방법</td>
					<td>${orderMap.payMethod } </td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">결제카드</td>
					<td>${orderMap.cardComName}</td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">할부기간</td>
					<td> ${orderMap.cardPayMonth }</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>				