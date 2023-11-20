<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<%@ include file="/WEB-INF/inc/session_auth.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="/Black_OY/js/head.js"></script>
<link rel="stylesheet" href="/BlackOY/css/style.css">
<title>블랙올리브영 온라인몰</title>
<style>
.modal-backdrop {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5); /* 어두운 배경색, 투명도 조절 가능 */
	z-index: 998; /* 모달보다 한 단계 낮은 z-index */
}
</style>
</head>
<script>
function handleMenuClick(id, event) {
	event.preventDefault(); // 링크 클릭 기본 동작 방지
	
	$('div.pList').hide();
	$('p.plan-link').hide();
	
	if (id == 'all'){
		$('div.pList').show();
		$('p.plan-link').show();
	}
	
	$('div#'+id).show();
	$('p#'+id).show();
	
} // handleMenuClick
</script>
<body>
	<jsp:include page="/layout/head.jsp"></jsp:include>
	<div id="Container">

		<c:if test="${not empty eventInfo}">
			<div class="title-plan-view">
			<h1 id="planTitle">${eventInfo.peiName }</h1>

			<span>${eventInfo.peiSD} - ${eventInfo.peiED}</span>
			<div class="event_share_link">

				<a href="javascript:;" class="link_social kakaoT">카카오톡 공유하기</a> <a
					href="javascript:;" class="link_social kakao">카카오스토리 공유하기</a> <a
					href="javascript:;" class="link_social facebook">페이스북 공유하기</a> <a
					href="javascript:;" class="link_social url">URL 공유하기</a>
			</div>
		</div>


		<div class="DimTransparent"></div>

		<div
			class="plan-visual contEditor U85de00a9-4c59-42dd-8cfa-2cdf2d2c6ec1"
			name="Home_Planshop2_PROD">
			<div class="pc w638 plan-template">
				<!-- <div class="oyblind">
					<span>11.13-11.20</span>
					<h3>두피-모발까지 7초 케어 헤어, 지지마</h3>
					<span>#장바구니 쿠폰 추가할인</span>
				</div> -->
				<img alt=""
					src="${eventInfo.peiSrc}">
			</div>

		</div>
			

		</c:if>
		
		<c:if test="${not empty map }">
			<ul class="plan-menu" id="move1">
					<li><a href="#" onclick=" handleMenuClick('all',event)">전체</a></li>
						<c:forEach items="${map}" var="m">
							<li><a href="#" id="${m.key.peId }" onclick=" handleMenuClick('${m.key.peId }',event)">${m.key.peName}</a></li>
							<c:set var="counter" value="${counter + 1}" />
						</c:forEach>
						
						<!-- 남은 갯수만큼 빈칸 출력 -->
						<c:set var="remainder" value="${(counter % 4)+1}" />
							<c:forEach begin="1" end="${4-remainder}">
								<li>&nbsp;</li>
							</c:forEach>
			</ul>
		</c:if>
		
		
		<!-- 상품 작업 -->


		<c:if test="${not empty map}">
			<c:forEach items="${map}" var="m">
			<c:set var="counter" value="${counter + 1}" />
				<p id="${m.key.peId}" class="plan-link tema section section">
					<span id="section${counter}">${m.key.peName}</span>
				</p>
				<div id="${m.key.peId}" class="pList">
					<ul class="cate_prd_list autoFull">
						<c:forEach items="${m.value }" var="value">
							<li>
								<div class="prd_info">
									<a href="<%=contextPath%>/olive/productDetail.do?goodsNo=${value.displId}&displNum=${value.lid}${value.mid}"
									class="prd_thumb goodsList">
										<span class="thumb_flag best">베스트</span>
										<img src="${value.displImgSrc}" alt="이미지 준비중입니다." />
									</a>
									<div class="prd_name">
											<span class="tx_brand">${value.brandName}</span>
											<p class="tx_name">${value.displProName}</p>
										</a>
									</div>
									<button class="btn_zzim jeem" data-ref-goodsno="#">
										<span>찜하기전</span>
									</button>
									<p class="prd_price">
										<c:if test="${value.proPrice eq value.afterPrice}">
											<span class="tx_cur"><span class="tx_num">${value.afterPrice }</span>원 </span>
										</c:if>
										<c:if test="${value.proPrice ne value.afterPrice}">
											<span class="tx_org"><span class="tx_num">${value.proPrice}</span>원 </span>
											<span class="tx_cur"><span class="tx_num">${value.afterPrice}</span>원 </span>
										</c:if>
									</p>
									<p class="prd_flag">
										<c:if test="${value.pdc eq 1 }">
											<span class="icon_flag sale">세일</span>
										</c:if>
										<c:if test="${value.prc eq 1 }">
											<span class="icon_flag coupon">쿠폰</span>
										</c:if>
										<c:if test="${value.stock eq 1 }">
											<span class="icon_flag delivery">오늘드림</span>
										</c:if>
									</p>
									<p class="prd_point_area tx_num">
										<span class="review_point">
											<span class="point" style="width: 98.0%">10점만점에 5.5점
											</span>
										</span>(1)
									</p>
									<p class="prd_btn_area">
										<button class="cartBtn">장바구니</button>
										<button class="btn_new_pop goodsList" name="Home_Planshop2_PROD">새창보기</button>
									</p>
								</div>
							</li>
						</c:forEach>
						
					</ul>
				</div>
			</c:forEach>
		</c:if>

		<!-- SNS 공유 이미지 및 제목 -->

		<input type="hidden" id="dispCatNo" value="500000102850141"> <input
			type="hidden" id="snsImg"
			value="https://image.oliveyoung.co.kr/uploads/images//categoryBanner/7219931816988525053.jpg">
		<input type="hidden" id="catMrkNm" value="헤드스파7💜7초케어"> <input
			type="hidden" id="sectionCnt" value="3">

		<!-- //SNS 공유 이미지 및 제목 -->

		<input type="hidden" id="currentTime" value="20231118155738">

	</div>


	<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>


</html>
