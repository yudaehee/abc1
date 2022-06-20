<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link href="${contextPath}/resources/css4/main.css" rel="stylesheet" type="text/css" media="screen">
<link href="${contextPath}/resources/css4/basic-jquery-slider.css" rel="stylesheet" type="text/css" media="screen">
<link href="${contextPath }/resources/css4/myStyle.css" rel="stylesheet" type="text/css"/>
<script src="${contextPath}/resources/jquery1/jquery-1.6.2.min.js" ></script>
<script src="${contextPath}/resources/jquery1/jquery-3.5.1.min.js"></script>
<script src="${contextPath}/resources/jquery1/jquery.easing.1.3.js" ></script>
<script src="${contextPath}/resources/jquery1/basic-jquery-slider.js" ></script>
<script src="${contextPath}/resources/jquery1/carousel.js" ></script>
<script src="${contextPath}/resources/jquery1/tabs.js" ></script>
<script src="${contextPath}/resources/ckeditor4/ckeditor.js"></script>    
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>

	function fn_modify_goods(goodsId, attribute){
		
		var frm_mod_goods = document.frm_mod_goods;
		
		var value = "";
		
		if 	    (attribute == 'goodsSort')				 value = frm_mod_goods.goodsSort.value;
		else if (attribute == 'goodsTitle')				 value = frm_mod_goods.goodsTitle.value;
		else if (attribute == 'goodsWriter')			 value = frm_mod_goods.goodsWriter.value;   
		else if (attribute == 'goodsPublisher')		 	 value = frm_mod_goods.goodsPublisher.value;
		else if (attribute == 'goodsPrice')			 	 value = frm_mod_goods.goodsPrice.value;
		else if (attribute == 'goodsSalesPrice')		 value = frm_mod_goods.goodsSalesPrice.value;
		else if (attribute == 'goodsPoint')			 	 value = frm_mod_goods.goodsPoint.value;
		else if (attribute == 'goodsPublishedDate')	{
			var temp1 = frm_mod_goods.goodsPublishedDate.value;
			var temp2 = temp1.split("-");
			value = temp2[0] + temp2[1] + temp2[2];
		}
		else if (attribute == 'goodsTotalPage')		 	 value = frm_mod_goods.goodsTotalPage.value;
		else if (attribute == 'goodsIsbn')				 value = frm_mod_goods.goodsIsbn.value;
		else if (attribute == 'goodsDeliveryPrice')	 	 value = frm_mod_goods.goodsDeliveryPrice.value;
		else if (attribute == 'goodsDeliveryDate')	{
			var temp1 = frm_mod_goods.goodsDeliveryDate.value;
			var temp2 = temp1.split("-");
			value = temp2[0] + temp2[1] + temp2[2];
		}
		else if (attribute == 'goodsStatus')			 value = frm_mod_goods.goodsStatus.value;
		else if (attribute == 'goodsContentsOrder')	 	 value = CKEDITOR.instances.goodsContentsOrder.getData();
		else if (attribute == 'goodsWriterIntro')		 value = CKEDITOR.instances.goodsWriterIntro.getData();
		else if (attribute == 'goodsIntro')			 	 value = CKEDITOR.instances.goodsIntro.getData();
		else if (attribute == 'goodsPublisherComment') 	 value = CKEDITOR.instances.goodsPublisherComment.getData();
		else if (attribute == 'goodsRecommendation')	 value = CKEDITOR.instances.goodsRecommendation.getData();
		
		$.ajax({
			type : "post",
			url : "${contextPath}/admin/goods/modifyGoodsInfo",
			data : {
				"goodsId"   : goodsId,
				"attribute" : attribute,
				"value"     : value
			},
			success : function() {
				alert("정보를 수정했습니다.");
			}
		});
	 }

	 function fn_modify_goods_image(goodsId){
	  	
		 var form = $('form')[0];
	     var formData = new FormData(form);
	     
	     formData.append("goodsId" , goodsId);
	     formData.append("goodsFileName" , $("#goodsFileName").val());
	     
	     $.ajax({
	     	url: '${contextPath}/admin/goods/modifyGoodsImageInfo',
	     	processData: false,
	     	contentType: false,
	     	data: formData,
	     	type: 'POST',
	     	success: function(result){
	         	alert("이미지를 수정했습니다.");
	       	}
	     });
	     
	 }
	
</script>
<style>
	td:first-child {
		text-align: center;
		font-weight: bold;
	}
</style>
</head>
<body>
	<div class="clear"></div>
	<div id="container">
		<form name="frm_mod_goods" method=post>
			<ul class="tabs">
				<li><a href="#tab1">상품 정보</a></li>
				<li><a href="#tab2">상품 목차</a></li>
				<li><a href="#tab3">저자 소개</a></li>
				<li><a href="#tab4">상품 소개</a></li>
				<li><a href="#tab5">출판사 상품 평가</a></li>
				<li><a href="#tab6">추천사</a></li>
			</ul>
			<div class="tab_container">
				<div class="tab_content" id="tab1">
					<table class="table table-bordered table-hover">
						<colgroup>
							<col width="25%">
							<col width="65%">
							<col width="10%">
						</colgroup>
						<tr>
							<td>상품 분류</td>
							<td>
								<select name="goodsSort" class="form-control" style="height:30; padding:0">
									<option value="컴퓨터와 인터넷" <c:if test="${goods.goodsSort=='컴퓨터와 인터넷' }">selected </c:if>> 컴퓨터와인터넷</option>
									<option value="디지털 기기"  <c:if test="${goods.goodsSort=='디지털 기기' }">selected </c:if>>디지털기기</option>
								</select>
							</td>
							<td><input type="button" class="btn btn-outline-primary btn-sm" value="수정" onClick="fn_modify_goods('${goods.goodsId }','goodsSort')" /></td>
						</tr>
						<tr>
							<td>상품 종류</td>
							<td>
								<select name="goodsStatus" class="form-control" style="height:30; padding:0">
									<option value="bestseller" <c:if test="${goods.goodsStatus eq 'bestsller'}"> selected</c:if> >베스트셀러</option>
									<option value="steadyseller" <c:if test="${goods.goodsStatus eq 'steadyseller'}"> selected</c:if> >스테디셀러</option>
									<option value="newbook" <c:if test="${goods.goodsStatus eq 'newbook'}"> selected</c:if> >신간</option>
								</select> 
							<td><input type="button" value="수정" class="btn btn-outline-primary btn-sm" onClick="fn_modify_goods('${goods.goodsId}','goodsStatus')" /></td>
						</tr>
						<tr>
							<td>상품 이름</td>
							<td><input name="goodsTitle" id="goodsTitle" type="text" class="form-control" value="${goods.goodsTitle}" /></td>
							<td><input type="button" class="btn btn-outline-primary btn-sm" value="수정" onClick="fn_modify_goods('${goods.goodsId}','goodsTitle')" /></td>
						</tr>
						<tr>
							<td>저자</td>
							<td><input name="goodsWriter" type="text" class="form-control" value="${goods.goodsWriter}" /></td>
							<td><input type="button" class="btn btn-outline-primary btn-sm" value="수정" onClick="fn_modify_goods('${goods.goodsId}','goodsWriter')" /></td>
						</tr>
						<tr>
							<td>출판사</td>
							<td><input name="goodsPublisher" type="text" class="form-control" value="${goods.goodsPublisher}" /></td>
							<td><input type="button" class="btn btn-outline-primary btn-sm" value="수정" onClick="fn_modify_goods('${goods.goodsId}','goodsPublisher')" /></td>
						</tr>
						<tr>
							<td>상품 정가</td>
							<td><input name="goodsPrice" type="text" class="form-control" value="${goods.goodsPrice}" /></td>
							<td><input type="button" value="수정" class="btn btn-outline-primary btn-sm" onClick="fn_modify_goods('${goods.goodsId}','goodsPrice')" /></td>
						</tr>
						<tr>
							<td>상품 판매가격</td>
							<td><input name="goodsSalesPrice" type="text" class="form-control" value="${goods.goodsSalesPrice}" /></td>
							<td><input type="button" value="수정" class="btn btn-outline-primary btn-sm" onClick="fn_modify_goods('${goods.goodsId}','goodsSalesPrice')" /></td>
						</tr>
						<tr>
							<td>상품 구매 포인트</td>
							<td><input name="goodsPoint" type="text" class="form-control" value="${goods.goodsPoint}" /></td>
							<td><input type="button" value="수정" class="btn btn-outline-primary btn-sm" onClick="fn_modify_goods('${goods.goodsId}','goodsPoint')" /></td>
						</tr>
						<tr>
							<td>상품 출판일</td>
							<td><input name="goodsPublishedDate" type="date" class="form-control" value="<fmt:formatDate value='${goods.goodsPublishedDate}' pattern='yyyy-MM-dd'/>" /></td>
							<td><input type="button" value="수정" class="btn btn-outline-primary btn-sm" onClick="fn_modify_goods('${goods.goodsId}','goodsPublishedDate')" /></td>
						</tr>
						<tr>
							<td>상품 총 페이지수</td>
							<td><input name="goodsTotalPage" type="text" class="form-control" value="${goods.goodsTotalPage}" /></td>
							<td><input type="button" value="수정" class="btn btn-outline-primary btn-sm" onClick="fn_modify_goods('${goods.goodsId}','goodsTotalPage')" /></td>
						</tr>
						<tr>
							<td>ISBN</td>
							<td><input name="goodsIsbn" type="text" class="form-control" value="${goods.goodsIsbn}" /></td>
							<td><input type="button" value="수정" class="btn btn-outline-primary btn-sm" onClick="fn_modify_goods('${goods.goodsId}','goodsIsbn')" /></td>
						</tr>
						<tr>
							<td>상품 배송비</td>
							<td><input name="goodsDeliveryPrice" type="text" class="form-control" value="${goods.goodsDeliveryPrice}" /></td>
							<td><input type="button" value="수정" class="btn btn-outline-primary btn-sm" onClick="fn_modify_goods('${goods.goodsId}','goodsDeliveryPrice')" /></td>
						</tr>
						<tr>
							<td>상품 도착 예정일</td>
							<td><input name="goodsDeliveryDate" type="date" class="form-control" value="<fmt:formatDate value='${goods.goodsDeliveryDate}' pattern='yyyy-MM-dd'/>" /></td>
							<td><input type="button" value="수정" class="btn btn-outline-primary btn-sm" onClick="fn_modify_goods('${goods.goodsId}','goodsDeliveryDate')" /></td>
						</tr>
						<tr style="height: 100px">
							<td>이미지</td>
							<td>파일명 : ${goods.goodsFileName} / <input name="goodsFileName" id="goodsFileName" type="file" /></td>
							<td><input type="button" value="수정" class="btn btn-outline-primary btn-sm" onClick="fn_modify_goods_image('${goods.goodsId}')" /></td>
						</tr>
					</table>
				</div>
				<div class="tab_content" id="tab2">
					<div class="form-group">
						<textarea rows="50" cols="80" class="form-control" id="goodsContentsOrder" name="goodsContentsOrder">${goods.goodsContentsOrder}</textarea>
						<script>CKEDITOR.replace('goodsContentsOrder');</script>
						<p align="right">
							<input type="button" value="수정" class="btn btn-outline-primary btn-sm" onClick="fn_modify_goods('${goods.goodsId}','goodsContentsOrder')" />
						</p>
					</div>
				</div>
				<div class="tab_content" id="tab3">
					<div class="form-group">
						<textarea rows="50" cols="80" class="form-control" id="goodsWriterIntro" name="goodsWriterIntro">${goods.goodsWriterIntro}</textarea>
						<script>CKEDITOR.replace('goodsWriterIntro');</script>
						<p align="right">
							<input type="button" value="수정" class="btn btn-outline-primary btn-sm" onClick="fn_modify_goods('${goods.goodsId}','goodsWriterIntro')" />
						</p>
					</div>
				</div>
				<div class="tab_content" id="tab4">
					<div class="form-group">
						<textarea rows="50" cols="80" class="form-control" id="goodsIntro" name="goodsIntro">${goods.goodsIntro}</textarea>
						<script>CKEDITOR.replace('goodsIntro');</script>
						<p align="right">
							<input type="button" value="수정" class="btn btn-outline-primary btn-sm" onClick="fn_modify_goods('${goods.goodsId}','goodsIntro')" />
						</p>
					</div>
				</div>
				<div class="tab_content" id="tab5">
					<div class="form-group">
						<textarea rows="50" cols="80" class="form-control" id="goodsPublisherComment" name="goodsPublisherComment">${goods.goodsPublisherComment }</textarea>
						<script>CKEDITOR.replace('goodsPublisherComment');</script>
						<p align="right">
							<input type="button" value="수정" class="btn btn-outline-primary btn-sm" onClick="fn_modify_goods('${goods.goodsId }','goodsPublisherComment')" />
						</p>
					</div>
				</div>
				<div class="tab_content" id="tab6">
					<div class="form-group">
						<textarea rows="50" cols="80" class="form-control" id="goodsRecommendation" name="goodsRecommendation">${goods.goodsRecommendation }</textarea>
						<script>CKEDITOR.replace('goodsRecommendation');</script>
						<p align="right">
							<input type="button" value="수정" class="btn btn-outline-primary btn-sm" onClick="fn_modify_goods('${goods.goodsId }','goodsRecommendation')" />
						</p>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>