<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<%@ include file="/WEB-INF/inc/session_auth.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="/Black_OY/js/head.js"></script>
<link rel="stylesheet" href="/Black_OY/css/style.css">
<title>블랙올리브영 온라인몰</title>
</head>
<body>
	<script>
$(function () {
	console.log(window.location.href);
	$(".loc_history>li").mouseover(function () {
		$(this).addClass("active");
		$("history_cate_box").css("display","block");
	})
	$(".loc_history>li").mouseleave(function () {
		$(".loc_history>li").removeClass("active");
	})
	/*  */
	$('#btnSaleOpen').on('click', function() {
		if ($(this).hasClass('is-active')) {
	        // 이미 클래스가 추가되어 있으면 제거
	        $(this).removeClass('is-active');
	        $('#saleLayer').css('display','none');
	    } else {
	        // 클래스가 추가되어 있지 않으면 추가
	        $(this).addClass('is-active');
	        $('#saleLayer').css('display','block');
	    }
		
	})
	/*  */
	$('#btnSaleClose').on('click', function () {
		$(this).parent().css('display','none');
		$('#btnSaleOpen').removeClass('is-active');
	})
	/*  */
	$('#buyOpt').on('click', function() {
		if ($('#buy_option_box').hasClass('open')) {
			 $('#buy_option_box').removeClass('open');
		} else {
			 $('#buy_option_box').addClass('open');
		}
	})
	/*  */	
	
}) ; 

// 팝업창 띄우는 함수들
function popUp() {
	event.preventDefault();
	
    var topPosition = Math.max(0, (window.innerHeight - $('#layer_pop_wrap').offsetHeight) / 2);
    var leftPosition = Math.max(0, (window.innerWidth - $('#layer_pop_wrap').offsetWidth) / 2);
    
    
	$('#layer_pop_wrap').css({
		top: topPosition + 'px',
        left: leftPosition + 'px',
		display: 'block'});
	
	$('.dimm').css('display','block');

} // popUp

function popDown() {
	event.preventDefault();
	$('#layer_pop_wrap').css('display','none');
	$('.dimm').css('display','none');
} // popDown

function todayDeliveryPop() {
	event.preventDefault();
	
	 var topPosition = Math.max(0, (window.innerHeight - $('#infoTodayDeliveryQuestion').offsetHeight) / 2);
	 var leftPosition = Math.max(0, (window.innerWidth - $('#infoTodayDeliveryQuestion').offsetWidth) / 2);
	    
	$('#infoTodayDeliveryQuestion').css({
		top: topPosition + 'px',
        left: leftPosition + 'px',
		display: 'block'});
	$('.dimm').css('display','block');
} // todayDeliveryPop

function todayDeliveryPopDown() {
	event.preventDefault();
	$('#infoTodayDeliveryQuestion').css('display','none');
	$('.dimm').css('display','none');
} // todayDeliveryPopDown

function cjone_pointPop() {
	event.preventDefault();
	
	 var topPosition = Math.max(0, (window.innerHeight - $('#layerWrap534').offsetHeight) / 2);
	 var leftPosition = Math.max(0, (window.innerWidth - $('#layerWrap534').offsetWidth) / 2);
	 
	 $('#layerWrap534').css({
			top: topPosition + 'px',
	        left: leftPosition + 'px',
			display: 'block'});
		$('.dimm').css('display','block');
	
} // cjone_pointPop

function cjone_pointPopDown() {
	
	event.preventDefault();
	
	$('#layerWrap534').css('display','none');
	$('.dimm').css('display','none');
	
} // cjone_pointPopDown

function card_infoPop() {
	event.preventDefault();
	
	var topPosition = Math.max(0, (window.innerHeight - $('#layer_pop_wrap2').offsetHeight) / 2);
	 var leftPosition = Math.max(0, (window.innerWidth - $('#layer_pop_wrap2').offsetWidth) / 2);
	 
	 $('#layer_pop_wrap2').css({
			top: topPosition + 'px',
	        left: leftPosition + 'px',
			display: 'block'});
		$('.dimm').css('display','block');
	
} // card_infoPop

function card_infoPopDown() {
	event.preventDefault();
	
	$('#layer_pop_wrap2').css('display','none');
	$('.dimm').css('display','none');
	
} // card_infoPopDown

</script>
	<jsp:include page="/layout/head.jsp"></jsp:include>
	<div id="Container">
		<div id="Contents">

			<!-- 상단 카테고리 history -->
			<div class="page_location">
				<a href="#" class="loc_home">홈</a>
				<ul class="loc_history">
					<li><a href="#" class="cate_y" id="midCatNm">${allCateDTO.catLName}</a>
						<div class="history_cate_box" style="width: 242px;">
							<ul>
								<c:if test="${not empty cLList }">
									<c:forEach items="${cLList}" var="cll">
										<li id="${cll.cLId}"><a
											href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=${cll.cLId}"
											class="goods_category1">${cll.cLName}</a></li>
									</c:forEach>
								</c:if>
							</ul>
						</div></li>
					<li><a href="#" class="cate_y" id="smlCatNm">${allCateDTO.catMName}</a>
						<div class="history_cate_box" style="width: 122px;">
							<ul>
								<c:if test="${not empty cMList}">
									<c:forEach items="${cMList}" var="cml">
										<li id="${cml.cmId}"><a
											href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=${allCateDTO.catLId}${cml.cmId}&sort=1"
											class="goods_category2">${cml.cmName}</a></li>
									</c:forEach>
								</c:if>
							</ul>
						</div></li>
					<li><a href="#" class="cate_y" id="dtlCatNm">${allCateDTO.catSName}</a>
						<div class="history_cate_box" style="width: 122px;">
							<ul>
								<c:if test="${not empty cSList}">
									<c:forEach items="${cSList}" var="csl">
										<li id="${csl.csId}"><a
											href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=${allCateDTO.catLId}${allCateDTO.catSId}${csl.csId}&sort=1"
											class="goods_category3">${csl.csName}</a></li>
									</c:forEach>
								</c:if>
							</ul>
						</div></li>
				</ul>
			</div>

			<!-- //상단 카테고리 history -->

			<div class="prd_detail_box renew">
				<div class="left_area">
					<div class="prd_img">
						<img id="mainImg" src="${proDImg[0].proDImgSrc }" alt="상품명 이미지"
							onerror="common.errorImg(this);"> <input type="hidden"
							id="mainImgSize" value="550">

						<div class="prd-option-name">
							<!-- 노출 시 is-active class 추가 -->
							<span class="txt" id="goodstxt"></span>
						</div>
					</div>
					<ul class="prd_thumb_list" id="prd_thumb_list">
						<input type="hidden" id="snsImgUrl" value="">
						<c:if test="${not empty proDImg }">
							<c:forEach items="${proDImg}" var="pdi">
								<li class="sel"><a href="#"><img
										src="${pdi.proDImgSrc}" alt="썸네일 이미지"></a></li>
							</c:forEach>

						</c:if>
					</ul>
					<!-- 202005 상품개선 : 위치 변경 및 마크업 변경 -->
					<!-- 고객 만족도 및 공유, 재고확인 -->
					<div class="prd_social_info">
						<!-- 평점 및 리뷰 건수 추가 -->
						<p id="repReview">
							<strong>고객 리뷰</strong> <span class="review_point"> <span
								class="point" style="width: 98.0%"> </span>
							</span> <b> 4.9 </b> <em>(216건)</em>
						</p>
						<!-- 위치 변경 <p><a href="#" class="btn_off_store" data-rel="layer" data-target="offlineStore">올리브영 오프라인 매장 재고확인</a></p>-->
						<p>
							<!-- 							<strong>공유하기</strong> -->
							<a href="javascript:common.sns.doShare('kakaostory');"
								class="link_social kakao goods_share_kakao">카카오톡 공유하기(새창)</a> <a
								href="javascript:common.sns.doShare('facebook');"
								class="link_social facebook goods_share_facebook">페이스북
								공유하기(새창)</a> <a href="javascript:common.sns.doShare('url');"
								class="link_social url goods_share_url">URL공유하기</a>
						</p>
					</div>
					<!--// 고객 만족도 및 공유, 재고확인 -->

				</div>
				<div class="right_area">
					<div class="prd_info">
						<p class="prd_brand">
							<a href="#" id="moveBrandShop" class="pd_arrow_link">가히</a>
						</p>
						<p class="prd_name">${pLists[0].displName }</p>
						<!-- 202005 상품개선 : 추가 -->
						<div class="price">
							<span class="price-1"> <strike>${pLists[0].lowPrice }</strike>
								<span>원</span>
							</span> <span class="price-2"> <strong>${pLists[0].afterPrice}</strong>
								<span>원</span>
							</span>
							<c:if
								test="${not empty productPromo.promoDId or not empty productPromo.promoCId}">
								<button type="button" id="btnSaleOpen" class="btn_more">혜택
									정보</button>
							</c:if>

							<div id="saleLayer" class="sale_list" style="display: none">
								<p class="tit">혜택 정보</p>
								<div class="detail">
									<div class="list">
										<div class="flex-item">
											<span class="label">판매가</span> <span class="price">${pLists[0].lowPrice}<em>원</em></span>
										</div>
										<c:if test="${not empty productPromo.promoDId}">
											<div class="price_child">
												<div class="flex-item">
													<span class="label">세일 (${productPromo.promoDS} ~
														${productPromo.promoDE })</span> <span class="price">${productPromo.promoDdis }<em>원</em></span>
												</div>
											</div>
										</c:if>
										<c:if test="${not empty productPromo.promoCId}">
											<div class="price_child">
												<div class="flex-item">
													<span class="label">${productPromo.promoCName }
														(${productPromo.promoCS}~ ${productPromo.promoCE})</span> <span
														class="price">-${productPromo.cpdis}<em>원</em></span>
												</div>
											</div>
										</c:if>
									</div>
									<div class="list">
										<div class="flex-item">
											<span class="label"><b>최적가</b></span> <span
												class="price total">${pLists[0].afterPrice}<em>원</em></span>
										</div>
									</div>
								</div>
								<button type="button" id="btnSaleClose" class="btn_close">레이어
									닫기</button>
							</div>
						</div>
						<p class="prd_flag" id="icon_area">
							<c:if test="${pLists[0].prd eq 1}">
								<span class="icon_flag sale">세일</span>
							</c:if>
							<c:if test="${pLists[0].prc eq 1}">
								<span class="icon_flag coupon">쿠폰</span>
							</c:if>
							<!-- 기간계 상품, 브랜드 증정품만 아이콘 노출 -->
							<c:if test="${pLists[0].prp eq 1}">
								<span class="icon_flag gift" id="free_gift">증정</span>
							</c:if>
							<c:if test="${pLists[0].stock eq 1}">
								<span class="icon_flag delivery" id="quick_yn">오늘드림</span>
							</c:if>

						</p>
						<div class="viewArea" id="div_goodsViewNumArea"
							style="display: none;">
							<span><span class="viewNum" id="goodsViewNum"></span>명이
								보고있어요</span>
						</div>
						<!-- 프로 모션 쿠폰영역-->
						<!-- 프로 모션 쿠폰영역-->
						<!-- EP 쿠폰영역-->
						<!-- EP 쿠폰영역-->
						<div class="prd_more_info">
							<div class="row">
								<p class="tit">
									배송정보<a href="#" onclick="popUp()" class="ico_info"
										style="margin: 5px 0 0 7px">배송정보 레이어 열기</a>
								</p>
								<p></p>
								<ul class="bl_list">
									<li><span>일반배송</span>
										<div>
											2,500원 ( 20,000 원 이상 무료배송 ) <br>
											<em>올리브영 배송 </em> <em>평균 3일 이내 배송</em>
											<!-- 												<b>무료배송</b>  -->
											<!-- 														 <br><b>업체배송</b> -->
											<!-- 															<em><b>합배송 불가</b></em> -->
											<!-- 															<em><b>합배송 불가</b></em> -->
										</div></li>
									<li><span>오늘드림</span>
										<div>
											2,500원 또는 5,000원 <a href="#" onclick="todayDeliveryPop()"
												class="ico_info">배송정보 안내 레이어열기</a>
										</div></li>
									<!-- 202005 상품개선 : 오늘드림 빠름배송 -->
									<li class="liQuickAI" style=""><span class="tx_tit">
											오늘드림 빠름 배송 AI 예측 <!-- 202005 상품개선 : 자세히 보기 위치 변경 --> <a
											href="javascript:goods.detail.todayDelivery.openQuickDeliAI();"
											class="ico_infoMore">자세히 보기</a>
									</span>
										<p class="tx_addre">
											<span>┖ </span><span class="quickUsrAddr">서울 강동구 </span> 기준
											<!-- 202005 상품개선 : tx_cont 위치 변경 -->
											<span class="tx_cont"> <span class="span_dlvTitlNm">1~2시간
													내</span> <span class="span_maxDeliPer">60%</span>
											</span>
										</p></li>
									<li><span>픽업</span>
										<div>
											배송비 조건 없음 <a
												href="javascript:goods.detail.todayDelivery.openPickupPop();"
												class="ico_info">픽업 안내 레이어열기</a>
										</div></li>
								</ul>
							</div>
							<div class="row">
								<p class="tit">결제혜택</p>
								<div class="txt_list">
									<p>
										THE CJ 카드 추가 10%할인 <a href="#" onclick="card_infoPop()"
											class="ico_info">카드혜택가 안내 레이어 열기</a>
									</p>
									<p>
										CJ ONE 포인트 <span class="color-5">BABY OLIVE</span> 0.5% 적립 예상
										<a href="#" class="ico_info" onclick="cjone_pointPop()">CJ
											ONE 포인트 예상적립 레이어 열기</a>
									</p>
								</div>
							</div>
						</div>

						<c:if test="${pLists.size() >= 2}">
							<div class="prd_option_box optionType1 type2" id="buy_option_box">
								<a href="javascript:;" class="sel_option" id="buyOpt"> 상품을
									선택해주세요 </a>
								<ul class="sel_option_list new" id="option_list">
									<!-- 혜택 아이콘 li 분기 시작 -->
									<c:forEach items="${pLists}" var="pll">
										<li class="type1"> 
											<a style="cursor: pointer" href="#">
												<span class="color">
													<img alt="상품이미지" src="${pll.proImg}">
												</span> 
												<div class="set">
													<span class="option_value"> ${pll.proName}
														<span class="option_price">
															<span class="tx_num"><fmt:formatNumber value="${pll.proPrice}" pattern="#,###" />원</span>
														</span>
													</span>
													<c:if test="${pll.stock eq 1}">
													<span class="icon_flag delivery">오늘드림</span>
													</c:if>
												</div>
											</a>
									</li>
									</c:forEach>
									<li class="type1">
										<!-- 혜택 아이콘 li 분기 끝 --> <!--//옵션 선택시 오늘드림 옵션 상품을 제어하기 위해서 오늘드림 여부 추가//-->
										<a style="cursor: pointer"
										onclick="javascript:goods.detail.cart.selectItem('016','[미니립기획]1호 바닐라','A000000184222','', '','','N', '', '513', 'N', '29900', '1', '1', '999', 'N', '', '', '', '', '', '8809563946068','Y', '', '', 'N');">
											<span class="color"><img
												src="https://image.oliveyoung.co.kr/uploads/images/item/2023/10/6351418747803862856.jpg"
												alt=" "></span>
											<div class="set">
												<span class="option_value"> [미니립기획]1호 바닐라 
													<span class="option_price"> 
														<span class="tx_num">29,900원</span>
													</span>
												</span> 
												<span class="icon_flag delivery">오늘드림</span>
											</div> <!--[END 오늘드림 옵션상품 개선:jwkim]-->
									</a>
									</li>
									<!-- 혜택 아이콘 li 분기 시작 -->


									<script>
var optGiftStockList = [
];
var o2oDeliveryYn = "";
	var o2oMeshYn = "";
	var o2oHldyYn = "";
</script>

								</ul>
							</div>

							<div class="option_add_area pkg_goods_n"></div>
						</c:if>
						<c:if test="${pLists.size() eq 1}">
						<div class="option_add_area">
							<div class="prd_cnt_box">
								<div class="tit_area">
									<span>구매수량</span>
								</div>
								<div class="cont_area">
									<span class="option_cnt_box">
										<button class="btnCalc minus"
											onclick="goods.detail.cart.prevVal('A000000175060001','17000','1');">수량
											1감소</button> <input type="text" id="cartCnt_A000000175060001"
										name="cartCnt_A000000175060001" value="1" class="tx_num"
										title="구매수량">
										<button class="btnCalc plus"
											onclick="goods.detail.cart.nextVal('A000000175060001','17000','1');">수량
											1증가</button>
									</span>
								</div>
							</div>
						
						</div>
						<div class="option_add_area pkg_goods_n">
						
							<div class="prd_cnt_box item_A000000188803001 no_prom" promno="" infnselimpsyn="N" style="display: block">     
								<input type="hidden" id="itemInv_A000000188803001" value="3296">     
								<input type="hidden" id="quickItemInv_A000000188803001" value="3296">     
								<input type="hidden" id="itemQty_A000000188803001" value="1">     
								<input type="hidden" id="itemMinQty_A000000188803001" value="1">     
								<input type="hidden" id="itemMaxQty_A000000188803001" value="10">     
								<input type="hidden" name="itemNo" value="001">     
								<input type="hidden" name="sGoodsNo" value="A000000188803">     
								<input type="hidden" name="itemPrsntYn" value="N">     
								<input type="hidden" id="itemLgcGoodsNo_8809875908426" name="itemLgcGoodsNo" value="8809875908426">     
								<input type="hidden" id="quickYn_A000000188803001" value="Y">     
								<input type="hidden" id="itemSalePrc_A000000188803001" value="20900">     
								<div class="tit_area">         
								<span>퍼펙트 올인원 탄력 기획         
									<span class="icon_flag delivery">오늘드림
									</span>
								</span>         
								<span class="option_cnt_box">             
								<button class="btnCalc minus" onclick="goods.detail.cart.prevVal('A000000188803001','20900','1');">
								수량 1감소
								</button>             
								<input type="text" id="cartCnt_A000000188803001" name="" value="1" class="tx_num" title="구매수량">             
									<button class="btnCalc plus" onclick="goods.detail.cart.nextVal('A000000188803001','20900','1');">
									수량 1증가
									</button>         
								</span>     
							</div>     
							<div class="cont_area">         
							<span class="option_price">
							<span class="tx_num">20,900</span>원</span>         
							<a href="javascript:goods.detail.cart.deleteItem('A000000188803001','20900');" class="btn_opt_del">선택한 옵션 삭제</a>     
							</div>
							</div>
							
						</div>
						
						</c:if>
						<div class="prd_total_price">
							<span class="tx_tit">상품금액 합계</span> <input type="hidden"
								id="totalCnt" value="1" name="totalCnt"> <input
								type="hidden" id="totalPrc" value="17000" name="totalPrc">
							<span class="tx_cont"><span class="tx_num"
								id="totalPrcTxt">0</span>원</span>

						</div>

						<!-- 20191213 s -->
						<!-- today_dvs s -->
						<div class="today_dv">
							<div class="today_dvChk">
								<input type="checkbox" id="deliveDay" name="qDelive" value="Y"
									class="o2oDeliveDay " data-attr="상품상세^오늘드림신청여부^오늘드림신청"><label
									for="deliveDay">오늘드림으로 받아 보시겠어요?</label>
								<dl>
									<dd>
										<a
											href="javascript:goods.detail.todayDelivery.openQuickPopMidle('question');"
											class="ico_info_view">오늘드림 안내 레이어열기</a>
									</dd>
								</dl>
								<div class="input_nudge nudge_show" id="deliveNudge" style="display: none">
									<div class="nudge_txt" id="quickNudge">
										<strong class="impY"><span>46</span>분 <span>21</span>초</strong>
										안에 주문하면 오후 <span>4</span>시 전 도착!
									</div>
								</div>
							</div>
							<!-- //today_dvChk e -->

							<div class="today_dvArea">
								<div class="today_dvArea_inner">
									<a
										href="javascript:common.zipcodequick.pop.deliveryRegistFormOnlyRegist();"
										class="btn_noDv" style="display: none;">+ 배송지 추가</a> <a
										href="#" class="btn_todayDV">
										<dl>

										</dl>
									</a>
									<div class="todayDV_list">
										<ul>
										</ul>
									</div>
									<!-- //todayDV_list e -->
								</div>
								<!-- //today_dvArea_inner e -->
							</div>
							<!-- //today_dvArea e -->

							<div class="today_dvChk" id="pikcupOnlyYn" style="display: none;">
								<input type="checkbox" id="pickupDirectYn" name="pickupDirectYn"
									value="Y" data-attr="상품상세^매장픽업여부^매장픽업신청"><label
									for="pickupDirectYn">매장에서 픽업 하시겠어요?</label>
								<dl>
									<dd>
										<a
											href="javascript:goods.detail.todayDelivery.openQuickPopMidle('pickup');"
											class="ico_info_view">매장픽업 안내 레이어열기</a>
									</dd>
								</dl>
								<div class="input_nudge" id="storePickNudge"
									style="display: none;">
									<div class="nudge_txt">배송비 허들없는 픽업을 이용해 보세요!</div>
								</div>
							</div>
						</div>
						<!-- //today_dv e -->
						<!-- 20191213 e -->

						<div class="prd_btn_area new-style type1">
							<button class="btnBasket  goods_cart"
								onclick="javascript:common.popLayer.todayDelivery.openTodayDeliveryNotice('goodsdetail.cart');"
								data-attr="상품상세^주문유형^장바구니">장바구니</button>
							<!-- <button class="btnBuy goods_buy" id="cartBtn" onClick="javascript:goods.detail.bindBtnBuy();">구매하기</button> -->

							<button class="btnBuy goods_buy" id="cartBtn"
								onclick="javascript:common.popLayer.todayDelivery.openTodayDeliveryNotice('goodsdetail.order');"
								data-attr="상품상세^주문유형^바로구매">바로구매</button>
							<button class="btnGift goods_gift"
								onclick="javascript:common.popLayer.todayDelivery.openTodayDeliveryNotice('goodsdetail.gift');"
								data-attr="상품상세^주문유형^선물하기">선물하기</button>
							<button class="btnSoldout dupItem goods_cart"
								style="display: none;" onclick="javascript:;">일시품절</button>
							<button class="goods_buy btnReStock" style="display: none;"
								onclick="javascript:;" data-attr="상품상세^재입고알림신청^가히 멀티밤 리필_클릭"
								data-trk="/Cat100000100010009_Small">재입고 알림신청</button>
							<button class="btnZzim  goods_wish"
								data-ref-goodsno="A000000175060"
								data-attr="상품상세^상품좋아요^가히 멀티밤 리필_1">찜하기전</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 202005 상품상세 개선 : 증정품 마크업 수정 -->
			<div class="prd_free_gift" id="giftInfo">
				<p class="tit">증정품 안내</p>
				<div class="free_gift">
					<div class="inner">
						<div class="info">
							<div class="tarea soldout">
								<b>[소진완료]</b>

								<!-- 50:브랜드S -->

								<!-- 수량S -->

								<!-- 수량(일반)S -->

								<!-- 수량(일반)E -->

								<!-- 수량(개당)S -->
								<span class="txt">전 회원 가히 상품 구매 상품 1개당, <span class="num">증정품
										1개</span> 선착순 증정
								</span>

								<!-- 수량(개당)E -->

								<!-- 수량E -->

								<!-- 금액S -->

								<!-- 금액E -->

								<!-- 50:브랜드E -->

								<!-- 35:기간계상품S -->

								<!-- 35:기간계상품E -->

								<!-- 20:표준카테고리S -->

								<!-- 20:표준카테고리E -->

								<!-- 00:전체S -->

								<!-- 00:전체E -->

								<!-- 90:브랜드+표준분류S -->

								<!-- 90:브랜드+표준분류E -->
							</div>
							<span class="notice_exception">오늘드림 주문시 온라인 전용 증정품 미제공</span>
						</div>
					</div>
				</div>
				<a href="javascript:goods.detail.openGiftLayerPop();"
					class="btn_more goods_giftinfo">더보기</a>


			</div>

			<!-- 증정품 오늘드림S  -->

			<input type="hidden" id="h_first_quickGift" value="2345679364472">
			<input type="hidden" id="h_quickGift_count" value="1">
			<div class="prd_free_gift" id="quickGiftInfo" style="display: none;">
				<p class="tit">증정품 안내</p>
				<div class="free_gift">
					<div class="inner">
						<div class="info">
							<div id="quickgift_1_2345679364472" data-evtno="G000000024149"
								class="tarea  prd_gift_infoVer2">
								<b id="quickgift_2_2345679364472">[오늘드림]</b> <span class="txt">전
									회원 올리브영 전 상품 50,000원 이상 구매 시, <span class="num">증정품 1개</span>
									선착순 증정
								</span>
							</div>
						</div>
					</div>
				</div>
				<a id="quickGift_more"
					href="javascript:goods.detail.openGiftLayerPop();"
					class="btn_more goods_giftinfo">더보기</a>
			</div>
			<div class="prd_more_info type2 type-logo">
				<div class="row store_search">
					<a href="javascript:;"
						class="btn_off_store goods_offline link_arrow gen1"
						data-rel="layer" data-target="offStoreStock"
						data-attr="상품상세^구매가능매장^구매가능매장확인버튼" id="buyPossibleStore"> <em><i>구매
								가능 매장</i>을 확인해보세요</em>
					</a>
					<!-- <a href="javascript:mgoods.detail.openOffstoreFullPop2();" class="link_arrow"><span>구매 가능 매장을 확인해보세요</span></a> -->
				</div>
				<div class="row">
					<!-- 202005 상품개선 : 브랜드 좋아요 추가 -->
					<div class="brand_like">
						<p class="inner">
							<a href="javascript:;" id="moveBrandShop_like"
								class="link arr goods_brand"> <!-- 								<span class="img" style="background-image:url('/pc-static-root/image/product/img_brand_default.png')"></span> -->
								<span class="logo"
								style="background-image: url('https://image.oliveyoung.co.kr/uploads/images/onlBrandMgmt/2023/3/667175229883283657.jpg')"></span>
								<em>가히 브랜드관</em>
							</a>
							<button type="button" id="brnd_wish" data-ref-onlbrndcd="A003585"
								class="icon goods_brandlike " data-attr="상품상세^브랜드관좋아요^가히">좋아요
								해제됨</button>
						</p>
					</div>
				</div>
			</div>
			<!-- // 202005 상품상세 개선 : 증정품 마크업 수정 -->
			<!-- 큐레이션 2차 S -->
			<div class="curation_area_a002_lead"></div>
			<div id="recobell_area_a002" class="cura_pord">
				<h4 class="tit_h4"></h4>
				<div class="loading_box">
					<span class="icon"><img
						src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif"
						alt="로딩중"></span>
					<p class="txt">고객님을 위한 상품 추천중이에요</p>
				</div>
			</div>
			<!-- 큐레이션 2차 E -->
			<ul class="prd_detail_tab" id="tabList">
				<li class="on" id="productInfo"><a href="javascript:;"
					class="goods_detailinfo" data-attr="상품상세^상품상세_SortingTab^상품설명">상품설명</a></li>
				<li id="buyInfo"><a href="javascript:;" class="goods_buyinfo"
					data-attr="상품상세^상품상세_SortingTab^구매정보">구매정보</a></li>
				<li id="reviewInfo"><a href="javascript:;"
					class="goods_reputation" data-attr="상품상세^상품상세_SortingTab^리뷰">리뷰<span>(216)</span></a></li>
				<li id="qnaInfo"><a href="javascript:;" class="goods_qna"
					data-attr="상품상세^상품상세_SortingTab^Q&amp;A">Q&amp;A<span>(2)</span></a></li>
			</ul>
			<div class="tabConts prd_detail_cont show">
				<div class="detail_area">
					<!--
                    * [3492841] 상품상세 'MD공지배너' 노출 우선순위 변경 요청
                    - 노출 순서(AS IS) : 전체 > 배송유형 > 표준 카테고리 > 전시 카테고리 > 협력사 > 온라인 브랜드 > 상품
                    - 노출 순서(TO BE) : 전체 > 배송유형 > 표준 카테고리 > 전시 카테고리(남성>더모>기타 카테고리) > 협력사 > 온라인 브랜드 > 상품
                    - 1 : 전체
                    - 2 : 배송유형
                    - 3 : 표준분류
                    - 4 : 전시카테고리
                    - 5 : 협력사
                    - 6 : 온라인브랜드
                    - 7 : 상품
                    - 8 : 더모 (전시구분 DISP_SEQ (8) 삭제)
                    1. 전시 카테고리 : 남성 카테고리 카운팅 - 10000010007
                    2. 전시 카테고리 : 더모 카테고리 카운팅 - 10000010008 -->
					<!-- 전체, 배송유형, 표준분류 카테고리 노출 -->
					<!-- 전시카테고리 남성 카테고리 노출 -->
					<!-- 전시카테고리 더모 카테고리 노출 -->
					<!-- 전시카테고리 그외 카테고리 노출 -->
					<a
						href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102700126&amp;trackingCd=Banner"
						data-attr="상품상세^MD공지배너^100000100010008,100000100010009,100000100010010_클릭"
						data-trk="/Cat100000100010009_Small"
						onclick="javascript:common.wlog('mdBanner');"> <img
						src="https://image.oliveyoung.co.kr/uploads/images/display/9000003/396/3903698812558035257.jpg"
						alt="100000100010008,100000100010009,100000100010010">
					</a>
					<!-- 협력사, 온라인브랜드, 상품 카테고리 노출 -->
					<div class="contEditor">

						<c:if test="${empty exImg}">
                        ${noexImg}
                        </c:if>
						<c:if test="${not empty exImg}">
							<c:forEach items="${exImg}" var="exi">
								<img alt="" src="${exi.exImgSrc }">
							</c:forEach>
						</c:if>
					</div>
					<div style="text-align: center; padding: 20px 0px 0px 0px;">
						<p
							style="display: inline-block; font-size: 14px; border: 1px solid #ddd; padding: 10px 40px 10px 40px; text-align: center;">
							본 상품 정보(상품 상세, 상품 설명 등)의 내용은 협력사가 직접 등록한 것 입니다.</p>
					</div>
				</div>
				<p class="tit_cate_best mgT40 dispCatBest" style="display: none;">스킨케어
					카테고리 베스트 상품</p>
				<ul class="cate_prd_list dispCatBest" id="recommGoodsList"
					style="display: none;">
				</ul>
				<div class="curation_area_a029_lead"></div>
				<div id="recobell_area_a029" class="cura_pord curation_area_029 btm"
					style="display: none;">
					<h4 class="tit_h4">다른 고객이 함께 본 상품</h4>
					<div class="loading_box">
						<span class="icon"><img
							src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif"
							alt="로딩중"></span>
						<p class="txt">고객님을 위한 상품 추천중이에요</p>
					</div>
				</div>
				<div id="relPlanShop_area" class="related_plan"></div>
			</div>
			<div class="tabConts prd_detail_cont">
				<h3 class="detail_tit">상품정보 제공고시</h3>
				<div id="kcInfo"></div>
				<div id="artcInfo"></div>
				<h3 class="detail_tit mgT40">배송안내</h3>
				<dl class="detail_info_list" id="dlexAjaxInfo">
					<dt>배송비/배송가능일</dt>
					<dd>
						<div>
							<p>
								<strong>[일반 배송]</strong>
							</p>
							<p>
								<strong>배송지역 : </strong>전국
							</p>
							<p>
								<strong>배송비 : </strong>
								<!-- 그외 표기 -->
								<span>2,500원</span>
							</p>
							<p>
								올리브영 배송 상품의 총 결제금액 <span>20,000</span>원 이상일 경우 <span>무료배송</span>
								됩니다.
							</p>
							<p>도서, 산간, 오지 일부 지역은 배송비가 추가될 수 있습니다.</p>
							<p>
								<strong>배송가능일 : </strong><span>3</span>일
							</p>
							<p>배송가능일이란 본 상품을 주문하신 고객님들께 상품 배송이 가능한 기간을 의미합니다. 단, 연휴 및
								공휴일은 기간 계산시 제외하며 현금 주문일 경우 입금일 기준 입니다.</p>
							<p>예약 상품의 경우 예약된 날짜에 출고되며, 상품의 입고가 빠르게 진행된 경우 예약일 보다 일찍 배송될 수
								있습니다.</p>
						</div>
						<br>
						<div>
							<p>
								<strong>[오늘드림 배송]</strong>
							</p>
							<p>
								<strong>배송지역 : </strong>전국(일부지역 제외)
							</p>
							<p>
								<strong>배송비 : </strong><strong>빠름</strong>&nbsp;<span>5,000원</span>,
								<strong>3!4!/미드나잇</strong>&nbsp;<span>2,500원</span>
							</p>
							<p>
								오늘드림 배송 상품의 총 결제금액&nbsp;<span>30,000</span>원 이상일 경우&nbsp;<span>무료배송</span>&nbsp;됩니다.
							</p>
							<p>오늘드림 배송비는 도서, 산간지역에 관련없이 배송비가 동일합니다.</p>
							<div class="crlfix">
								<p style="float: left;">
									<strong>배송가능시간 : </strong>
								</p>
								<div style="margin-left: 87px">
									<p>
										<strong>빠름/미드나잇 </strong>당일 20시까지 주문 시 당일 도착, 이후 주문 건 익일 도착
									</p>
									<p>
										<strong>3!4! </strong>당일13시까지 주문 시 당일 도착, 이후 주문 건 익일 도착
									</p>
								</div>
							</div>
						</div>
					</dd>
				</dl>
				<h3 class="detail_tit mgT40">교환/반품/환불 안내</h3>
				<dl class="detail_info_list">
					<dt>교환/반품 신청 방법</dt>
					<dd>
						마이페이지 내 주문내역에서 신청가능하며,<br>반품 신청의 경우 택배회수 / 매장방문(일부 매장)중 선택하여
						신청가능합니다.
					</dd>
				</dl>
				<dl class="detail_info_list">
					<dt>교환/반품 신청 기간</dt>
					<dd>
						교환, 반품 신청은 배송이 완료된 후 15일 이내 가능합니다.<br> 고객님이 배송 받으신 상품의 내용이
						표시∙광고의 내용과 다르거나 계약내용과 다르게 이행된 경우에는 배송 받으신 날로부터 3개월 이내, 혹은 그 사실을 알
						수 있었던 날로 부터 30일 이내에 가능합니다.
					</dd>
				</dl>
				<dl class="detail_info_list">
					<dt>교환/반품/회수 비용</dt>
					<dd>
						<p>
							<strong>[택배 회수 반품]</strong>
						</p>
						고객님의 사유에 의한 교환 및 반품은 회수 및 배송에 필요한 비용을 부담해주셔야 합니다.<br> 기본 비용은
						교환 5,000원(회수비+배송비), 반품 2,500원(회수비)입니다.<br> 제주도 및 도서산간 지방에는 추가
						운임이 발생합니다.<br> 당사의 사유(상품의 하자, 배송의 오류 등)로 인한 경우 교환 및 반품에 필요한
						비용은 당사에서 부담합니다. <br>
						<br>
						<p>
							<strong>[매장 방문 반품]</strong>
						</p>
						올리브영 일반 주문 GREEN OLIVE 이상 등급 또는 오늘드림 주문에 한해서 별도 회수비 부담없이 반품
						가능합니다.(단, 일부 매장만 가능)
					</dd>
				</dl>
				<dl class="detail_info_list">
					<dt>교환/반품 불가안내</dt>
					<dd>
						고객님의 사유에 의한 교환 및 반품이 불가한 경우<br> 1. 배송이 완료된 후 15일이 경과한 경우<br>
						2. 포장 훼손 및 사용 또는 일부 소비, 구성품 누락 및 상품의 결함 발생으로 인해 상품의 가치가 훼손된 경우<br>
						<br> 당사의 사유에 의한 교환 및 반품이 불가한 경우<br> 1. 배송 받으신 날로부터 3개월,
						혹은 그 사실을 알 수 있었던 날로 부터 30일이 경과한 경우<br> 2. 당사의 귀책(상품의 불량, 생산 및
						제조 및 배송 간의 파손 등)으로 인한 현상이 아닌 해당 상품의 고유한 특성, 혹은 상품 수령 후 고객님의 과실로 인한
						문제임이 규명된 경우
					</dd>
				</dl>
			</div>
			<!--// 구매정보 컨텐츠 영역 -->
			<div class="tabConts prd_detail_cont" id="gdasContentsArea">
				<div class="review_wrap renew review-reward-notice">
					<!-- ## 리뷰 고도화 1차 : 영역 부모 div 추가 ## -->
				</div>
			</div>
			<div class="tabConts prd_detail_cont" id="qnaContentsArea"></div>
		</div>
	</div>
	<div class="layer_pop_wrap" id="layer_pop_wrap"
		style="z-index: 999; display: none; left: 50%; margin-left: -203.5px;">
		<div class="layer_cont2 w400" id="dlexAmtCont" data-dlv-cd="20"
			data-set="true">
			<h2 class="layer_title2">배송비 안내</h2>

			<dl class="oy_dlex">
				<dt class="bold_str">
					<span id="dlvShpStr">올리브영</span> 배송
				</dt>
				<dd>
					<span id="dlexAmt">2,500</span>원
				</dd>
			</dl>
			<dl class="add_dlex_amt">
				<dt class="bold_str">추가 배송비</dt>
				<dd></dd>
			</dl>
			<dl class="dlex_amt_info">
				<dt>도서산간</dt>
				<dd>
					<span id="ferryRgnDlexAmt">2,500</span>원
				</dd>
			</dl>
			<dl class="dlex_amt_info">
				<dt>제주지역</dt>
				<dd>
					<span id="jejuDlexAmt">2,500</span>원
				</dd>
			</dl>
			<dl class="dlex_amt_info">
				<dt>제주도서산간</dt>
				<dd>
					<span id="jejuFerryRgnDlexAmt">7,000</span>원
				</dd>
			</dl>
			<button class="layer_close type2" onclick="popDown()">창 닫기</button>
		</div>
	</div>
	<div class="layer_pop_wrap w500 layer_todelivery"
		id="infoTodayDeliveryQuestion"
		style="z-index: 999; display: none; left: 50%; margin-left: -250px;">
		<div class="layer_header">
			<h2 class="layer_title">오늘드림 서비스 안내</h2>
			<button class="layer_close" onclick="todayDeliveryPopDown();">창
				닫기</button>
		</div>
		<div class="layer_cont layer_scroll_box">
			<div class="area_logo">
				<h3 class="logo">
					<img
						src="https://static.oliveyoung.co.kr/pc-static-root/image/product/img_todelivery_v2.png"
						alt="">
				</h3>
				<p class="txt">
					올리브영에서 가장 빠른 배송으로 받고싶다면?<br>지금! 오늘드림 4가지 서비스를 경험해보세요!
				</p>
			</div>
			<div class="area_detail">
				<div class="bx_detail">
					<h4 class="tit icon01">배송 및 픽업 가능 지역</h4>
					<div class="bx_info">
						<p class="desc">
							전국 <span class="sub_desc">(정확한 서비스 가능여부는 배송지 등록을 통해서 확인가능)</span>
						</p>
					</div>
				</div>
				<div class="bx_detail type_img">
					<h4 class="tit icon02">픽업 방법 및 비용</h4>
					<div class="bx_info">
						<div class="item_info">
							<img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/product/img_today_01.png"
								class="img_info type01"> <img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/product/flag_today_01.png"
								class="flag" alt="픽업">
							<p class="desc">온라인에서 주문하고 매장에서 픽업!</p>
							<p class="sub_desc">배송비 조건 없음</p>
						</div>
					</div>
					<a
						href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000100720116"
						class="btn_link"><span class="btn_txt">픽업 서비스 자세히 보기</span></a>
				</div>
				<div class="bx_detail type_img">
					<h4 class="tit icon03">배송 방법 및 비용</h4>
					<div class="bx_info">
						<div class="item_info">
							<img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/product/img_today_02.png"
								class="img_info type02"> <img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/product/flag_today_02.png"
								class="flag" alt="낮 3-4시 3!4!배송">
							<p class="desc">낮 1시까지 주문 시, 오늘 낮 3~4시 배송 도착</p>
							<p class="sub_desc">배송비 2,500원(3만원 이상 무료배송)</p>
						</div>
						<div class="item_info">
							<img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/product/img_today_03.png"
								class="img_info type03"> <img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/product/flag_today_03.png"
								class="flag" alt="밤 10-12시 미드나잇배송">
							<p class="desc">밤 8시까지 주문 시, 오늘 밤 10~12시 배송도착</p>
							<p class="sub_desc">배송비 2,500원(3만원 이상 무료배송)</p>
						</div>
						<div class="item_info">
							<img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/product/img_today_04.png"
								class="img_info type04"> <img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/product/flag_today_04.png"
								class="flag" alt="주문 후, +3시간 빠름배송">
							<p class="desc">밤 8시까지 주문 시, 주문 후 3시간 이내 배송 도착</p>
							<p class="sub_desc">배송비 5,000원(3만원 이상 무료배송)</p>
						</div>
					</div>
					<a
						href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000100700005"
						class="btn_link btn_link2"><span class="btn_txt">오늘드림
							사용 설명서 보기</span></a>
				</div>
				<div class="bx_detail">
					<h4 class="tit icon04">교환 및 반품</h4>
					<div class="bx_info">
						<dl class="lst_desc">
							<div class="item_desc">
								<dt>교환</dt>
								<dd>회수 기사님을 통해 물류센터로 상품 교환 (단, 매장을 통한 교환 불가)</dd>
							</div>
							<div class="item_desc">
								<dt>반품</dt>
								<dd>
									2가지 중 선택 가능
									<ul class="lst_sub_desc">
										<li class="item_sub_desc">회수 택배 기사님을 통해 물류센터로 반품</li>
										<li class="item_sub_desc">오프라인 매장에 방문하여 직접 반품</li>
									</ul>
								</dd>
							</div>
						</dl>
					</div>
				</div>
				<a href="#" class="btn_confirm" id="todayBtnConfirm"
					onclick="todayDeliveryPopDown();"><span class="btn_txt">확인</span></a>
			</div>
			<ul class="lst_notice">
				<li class="item_notice">매장 상품 출발대기 전까지 주문취소가 가능합니다.</li>
				<li class="item_notice">서비스 특성상 주문 이후 배송지 변경은 어렵습니다.</li>
				<li class="item_notice">상품 수령 보관장소가 여의치 않은 경우 자동 반송처리 될 수 있으며,
					반송에 의한 반품비는 고객 부담으로 처리됩니다.</li>
				<li class="item_notice">일반 배송비 쿠폰은 오늘드림 주문에 적용되지 않습니다.</li>
				<li class="item_notice">기상상태에 따라 배송이 지연 또는 취소될 수 있습니다.</li>
				<li class="item_notice">주문 확인 시 재고가 부족한 경우, 부득이하게 주문이 취소될 수
					있습니다.</li>
			</ul>
		</div>
	</div>

	<!-- 팝업 창 키면 나오는 배경 -->
	<div class="dimm" style="z-index: 990; display: none;"></div>

	<!-- 등급별 포인트 팝업 -->
	<div class="layer_pop_wrap ly_cjone_point show" id="layerWrap534"
		style="z-index: 999; display: none; left: 50%; margin-left: -250px; top: 362.5px;">
		<div class="layer_cont2">
			<h2 class="layer_title2">등급별 CJ ONE 포인트 적립</h2>
			<div class="cjoneBox">
				<table class="table_type">
					<caption>등급별 CJ ONE 포인트 적립표</caption>
					<colgroup>
						<col style="width: 50%;">
						<col style="width: 50%;">
					</colgroup>
					<thead>
						<tr>
							<th>등급</th>
							<th>적립률</th>
						</tr>
					</thead>
					<tbody>

						<tr>
							<th>
								<div class="icon_group">
									<span class="icon_grade icon_grade1"></span> <span
										class="txt_grade">GOLD OLIVE</span>
								</div>
							</th>
							<td><em>1%</em></td>
						</tr>

						<tr>
							<th>
								<div class="icon_group">
									<span class="icon_grade icon_grade2"></span> <span
										class="txt_grade">BLACK OLIVE</span>
								</div>
							</th>
							<td><em>1%</em></td>
						</tr>

						<tr>
							<th>
								<div class="icon_group">
									<span class="icon_grade icon_grade3"></span> <span
										class="txt_grade">GREEN OLIVE</span>
								</div>
							</th>
							<td><em>1%</em></td>
						</tr>

						<tr>
							<th>
								<div class="icon_group">
									<span class="icon_grade icon_grade4"></span> <span
										class="txt_grade">PINK OLIVE</span>
								</div>
							</th>
							<td><em>0.5%</em></td>
						</tr>

						<tr>
							<th>
								<div class="icon_group">
									<span class="icon_grade icon_grade5"></span> <span
										class="txt_grade">BABY OLIVE</span>
								</div>
							</th>
							<td><em>0.5%</em></td>
						</tr>

					</tbody>
				</table>
				<div class="usage-guide mgT20">
					<ul class="">
						<li>일부 제휴카드 / 임직원 카드로 결제 시 0.1% 적립</li>
						<li>복합 결제 진행 시 포인트 적립액 상이 가능</li>
					</ul>
				</div>
			</div>
			<div class="layer_btn_area mgT20">
				<button class="btnMedium fullGreen w120"
					onclick="cjone_pointPopDown();">닫기</button>
			</div>
			<button class="layer_close type2" onclick="cjone_pointPopDown();">창
				닫기</button>
		</div>
	</div>

	<!-- 카드 할인 혜택 팝업 -->
	<div class="layer_pop_wrap" id="layer_pop_wrap2"
		style="z-index: 999; display: none; left: 50%; margin-left: -325px; top: 532px;">
		<div class="layer_cont2 w650">
			<h2 class="layer_title2">카드할인혜택</h2>

			<dl class="card_info_data">
				<dt>THE CJ카드</dt>
				<dd>결제 시 10% 할인 (BC 카드 제외)</dd>
			</dl>




			<button class="layer_close type2" onclick="card_infoPopDown()">창
				닫기</button>
		</div>
	</div>
</body>
</html>