<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/inc/include.jspf" %>
<%@ include file="/WEB-INF/inc/session_auth.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="/Black_OY/js/head.js"></script>
<link rel="stylesheet" href="/BlackOY/css/style.css">
<title>블랙올리브영 온라인몰</title>
</head>
<body>
<jsp:include page="/layout/head.jsp"></jsp:include>
<xmp>주문배송 뷰</xmp>


	<div id="Container">

		<div id="Contents">

			<div class="mypage-head rate_04">
				<h1 class="tit">
					<a href="https://www.oliveyoung.co.kr/store/mypage/myPageMain.do">마이페이지</a>
				</h1>

				<div class="grd-box">
					<div class="info_user clrfix">

						<img
							src="https://image.oliveyoung.co.kr/uploads/images/mbrProfile/2023/11/06/1699251894483.png"
							alt="" onerror="common.errorProfileImg(this);"
							onload="common.onLoadProfileImg(this, 120);"
							style="display: none;">

						<div class="thum">
							<span class="bg"></span> <img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg"
								alt="" class="profileThum_s"
								style="background: url(https://static.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg) no-repeat 0 0; background-size: 120px">

						</div>
						<p class="txt">
							<c:forEach items="${ userInfo }" var="info">
								<%-- 등급 --%>${ info.ugrade } <strong class="name">
									<%-- 이름 --%>${ info.uname }</strong>님 반갑습니다.
						</c:forEach>
						</p>
						<ul class="mem_opt">

							<li id="membershipBenefit"><a href="<%-- 맴버십페이지 연결 --%>"
								onclick="<%-- 맴버십페이지 연결스크립트 --%>">올리브 멤버스 라운지</a></li>

							<li id="profileModify"><a href="<%-- 나의 프로필 연결 --%>"
								onclick="<%-- 나의 프로필 연결스크립트 --%>">나의 프로필</a></li>
						</ul>
					</div>


					<c:set var="point" value="${ requestScope.userPoint }" />
					<c:set var="coupon" value="${ requestScope.userCoupon }" />
					<c:set var="deposit" value="${ requestScope.userDeposit }" />

					<div class="point-box ">
						<ul class="infor clrfix" id="pointInfo">
							<li id="cjOnePoingInfo" onclick="<%-- 맴버십 페이지 연결 스크립트 --%>">
								<span class="tit">CJ ONE 포인트</span> <a class="num"
								href="<%-- 맴버십 페이지 연결 --%>"> ${ point } <em class="unit">P</em></a>
							</li>
							<li id="couponList" onclick="<%-- 쿠폰 페이지 연결 스크립트 --%>"><span
								class="tit">쿠폰</span> <a class="num" href="<%-- 쿠폰 페이지 연결 --%>">
									${ coupon } <em class="unit">개</em>
							</a></li>
							<li id="depositList" onclick="<%--  예치금 페이지 연결 스크립트 --%>"><span
								class="tit">예치금</span> <a class="num"
								href="<%--  예치금 페이지 연결 --%>"> ${ deposit } <em class="unit">원</em></a>
							</li>

						</ul>
					</div>
				</div>
			</div>


			<div class="mypage-ix">


				<!-- 마이페이지 SUB 메뉴 -->
				<div class="mypage-lnb">
					<ul>
						<li><h2>마이 쇼핑</h2>
							<ul>
								<li class="subMenu"><a href="<%-- 주문/배송 페이지 --%>"
									mymenuid="0101"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getOrderList.do"
									data-attr="마이페이지^메뉴^주문/배송 조회" data-tracking-name="주문배송조회 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=주문배송조회">주문/배송
										조회</a></li>
								<li class="subMenu"><a href="<%-- 취소/반품/교환 내역 페이지 --%>"
									mymenuid="0102"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getOrderCancelList.do"
									data-attr="마이페이지^메뉴^취소/반품/교환 내역"
									data-tracking-name="취소반품교환내역 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=취소반품교환내역">취소/반품/교환
										내역</a></li>
								<li class="subMenu"><a href="<%-- 거래증빙서류 확인 --%>"
									mymenuid="0103"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getDealList.do"
									data-attr="마이페이지^메뉴^거래증빙서류 확인"
									data-tracking-properties="t_page=마이페이지&amp;t_click=거래증빙서류확인">거래증빙서류
										확인</a></li>
							</ul>
							<ul class="line">
								<li class="subMenu"><a href="<%-- 장바구니 페이지 --%>"
									mymenuid="0201"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/cart/getCart.do"
									data-attr="마이페이지^메뉴^장바구니"
									data-tracking-properties="t_page=마이페이지&amp;t_click=장바구니">장바구니</a></li>
								<li class="subMenu"><a href="<%-- 좋아요 페이지 --%>"
									mymenuid="0202"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getWishList.do"
									data-attr="마이페이지^메뉴^좋아요"
									data-tracking-properties="t_page=마이페이지&amp;t_click=좋아요">좋아요</a></li>
								<li class="subMenu"><a href="<%-- 재입고알림 페이지 --%>"
									mymenuid="0203"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getReWhsgList.do"
									data-attr="마이페이지^메뉴^재입고 알림" data-tracking-name="재입고알림 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=재입고알림">재입고
										알림</a></li>
							</ul>
							<ul class="line">
								<li class="subMenu"><a href="<%-- 기프트카드 페이지 --%>"
									mymenuid="0300"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/myGiftCard/getMyGiftCard.do"
									data-attr="마이페이지^메뉴^기프트카드" data-tracking-name="기프트카드 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=마이월렛_기프트카드">기프트카드</a></li>
								<li class="subMenu"><a href="<%-- CJONE포인트 페이지 --%>"
									mymenuid="0301"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getCJOnePointInfo.do"
									data-attr="마이페이지^메뉴^CJ ONE 포인트"
									data-tracking-name="CJONE포인트 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=CJONE포인트">CJ
										ONE 포인트</a></li>
								<li class="subMenu"><a href="<%-- 쿠폰 페이지 --%>"
									mymenuid="0302"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getCouponList.do"
									data-attr="마이페이지^메뉴^쿠폰"
									data-tracking-properties="t_page=마이페이지&amp;t_click=쿠폰">쿠폰</a></li>
								<li class="subMenu"><a href="<%-- 예치금 페이지 --%>"
									mymenuid="0303"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getDepositList.do"
									data-attr="마이페이지^메뉴^예치금"
									data-tracking-properties="t_page=마이페이지&amp;t_click=마이월렛_예치금">예치금</a></li>

							</ul></li>
						<li><h2>마이 활동</h2>
							<ul>
								<li class="subMenu"><a href=" <%-- 1:1문의 페이지 --%>"
									mymenuid="0401"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/counsel/getQnaList.do"
									data-attr="마이페이지^메뉴^1:1문의내역" data-tracking-name="1대1문의 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=문의현황_1대1문의">1:1문의내역</a></li>

								<li class="subMenu"><a href=" <%-- 쿠폰 페이지 --%>"
									mymenuid="0402"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getGdasList.do"
									data-attr="마이페이지^메뉴^리뷰"
									data-tracking-properties="t_page=마이페이지&amp;t_click=리뷰">리뷰 (<span
										class="num_review" id="_gdasPossibleTotCnt"><%=request.getParameter("userRevCount")%></span>)<img
										src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/icon_lnb_new2.png"
										class="new" id="_newGdasPossible" style="display: none;"
										alt="신규 리뷰 작성"></a></li>
								<li class="subMenu"><a href=" <%-- 상품QnA 페이지 --%>"
									mymenuid="0403"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getGoodsQnaList.do"
									data-attr="마이페이지^메뉴^상품Q&amp;A내역" data-tracking-name="상품QnA 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=문의현황_상품QnA">상품Q&amp;A내역</a></li>
								<li class="subMenu"><a href=" <%-- 이벤트 참여 페이지 --%>"
									mymenuid="0404"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getMyEventList.do"
									data-attr="마이페이지^메뉴^이벤트 참여 현황" data-tracking-name="이벤트참여현황 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=이벤트참여현황">이벤트
										참여 현황</a></li>

								<li class="subMenu"><a href=" <%-- 체험단리뷰 페이지 --%>"
									mymenuid="0405"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getMyOllyoungList.do"
									data-attr="마이페이지^메뉴^올영체험단 리뷰"
									data-tracking-properties="t_page=마이페이지&amp;t_click=올영체험단리뷰">체험단
										리뷰</a></li>
							</ul></li>
						<li><h2>마이 정보</h2>
							<ul>
								<li class="subMenu"><a href="<%-- 회원정보 수정 페이지 --%>"
									mymenuid="0501"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getMktReceiptInfo.do"
									data-attr="마이페이지^메뉴^회원정보 수정"
									data-tracking-properties="t_page=마이페이지&amp;t_click=회원정보수정">회원정보
										수정</a></li>
								<li class="subMenu"><a href="<%-- 배송지/환불계좌 페이지 --%>"
									mymenuid="0502"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getDeliveryInfo.do"
									data-attr="마이페이지^메뉴^배송지/환불계좌" data-tracking-name="배송지환불계좌 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=배송지환불계좌">배송지/환불계좌</a></li>
								<li class="subMenu"><a href="<%-- 관심매장 페이지 --%>"
									mymenuid="0505"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/store/getStoreMain.do?tabType=favorTab"
									data-attr="마이페이지^메뉴^관심 매장 관리" data-tracking-name="관심매장 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=관심매장">관심
										매장 관리</a></li>

								<li class="subMenu"><a href="<%-- 회원탈퇴 페이지 --%>"
									mymenuid="0504"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/custInfoOut.do"
									data-attr="마이페이지^메뉴^회원탈퇴"
									data-tracking-properties="t_page=마이페이지&amp;t_click=회원탈퇴">회원탈퇴</a></li>
							</ul></li>
					</ul>
				</div>

				
				<div class="mypage-conts">
				<script src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.header.js?dumm=202311090001"></script>
				<script>
					$(window).ready(function(){
						mypage.header.init();
					});
				</script>
				








	<div class="title-area2">
		<h2 class="tit">주문/배송 조회</h2>
	</div>
	<div class="layer_pop_wrap" id="service_survey" style=""></div>



	<ul class="mypage-step">
		<c:forEach items="${ userOrder }" var="order">
			<li><em> <%-- 주문접수 --%> ${ order.uorderState1 }
			</em> <span>주문접수</span></li>
			<li><em> <%-- 결제완료 --%> ${ order.uorderState2 }
			</em> <span>결제완료</span></li>
			<li><em> <%-- 배송준비중 --%> ${ order.uorderState3 }
			</em> <span>배송준비중</span></li>
			<li><em> <%-- 배송중 --%> ${ order.uorderState4 }
			</em> <span>배송중</span></li>
			<li><em> <%-- 배송완료 --%> ${ order.uorderState5 }
			</em> <span>배송완료</span></li>
		</c:forEach>
	</ul>

	<fieldset class="search-period mgT30">
		<legend></legend>
		<!-- 2019.10.20 오프라인리뷰관련 추가 -->
		
			<div class="select_con" id="_selectOrderTypeZone">
				<p>구매 유형</p>
				<ul class="select-type">
				
					<!-- 이 페이지로 다시연결, 검색결과 적용, get방식으로 요소를 가지고 전송 -->
					<li class="on">
						<button type="button" data-order_type="">전체</button>
					</li>
								
					<li>
						<button type="button" data-order_type="10">온라인몰 구매</button>
					</li>
					
					<li>
						<button type="button" data-order_type="20">매장 구매</button>
					</li>
					
				</ul>
			</div>
		

		<div class="select_con">
		<p>구매기간</p>
			<ul class="select-month">
				<!-- 이 페이지로 다시연결, 검색결과 적용, get방식으로 요소를 가지고 전송 -->
				<li class="on"><button type="button" data-month="-1">1개월</button></li>
				<li><button type="button" data-month="-3">3개월</button></li>
				<li><button type="button" data-month="-6">6개월</button></li>
				<li><button type="button" data-month="-12">12개월</button></li>

				
			</ul>
			
			<!-- 선택된 날짜를 가지고 get방식으로 요소를 가지고 전송 -->
			<div class="select-range">
				<select id="cal-start-year" title="년도를 선택하세요" style="width:76px;"></select>
				<label for="cal-start-year">년</label>
				
				<select id="cal-start-month" title="달월을 선택하세요" style="width:60px;"></select>
				<label for="cal-start-month">월</label>
				
				<select id="cal-start-day" title="날일을 선택하세요" style="width:60px;"></select>
				<label for="cal-start-day">일</label>
				
				<span class="des">~</span>
				
				<select id="cal-end-year" title="년도를 선택하세요" style="width:76px;"></select>
				<label for="cal-end-year">년</label>
				
				<select id="cal-end-month" title="달월을 선택하세요" style="width:60px;"></select>
				<label for="cal-end-month">월</label>
				
				<select id="cal-end-day" title="날일을 선택하세요" style="width:60px;"></select>
				<label for="cal-end-day">일</label>
			</div>
		  </div>
		  <!-- //오프라인 리뷰 -->
		  <!-- 2016-12-23 수정 -->
		<button type="button" class="btnLookup" id="do-search-period">조회</button>
	</fieldset>
<script type="text/javascript" src="https://static.oliveyoung.co.kr/pc-static-root/js/common/searchPeriod.js?dumm=202311090001"></script>
<%-- <script>
//[3394070] 올영체험단 리뷰 배너 오류 문의 件 요청으로 올영체험단 리뷰는 시작시 12개월로 선택되게 조건 변경 되어 START_DATE, END_DATE 변경
START_DATE   = '';//<- 위에 선택된 날짜 입력
END_DATE     = '';//<- 위에 선택된 날짜 입력
ollyoungYn = '';

$(document).ready(function(){
	var cnslChk = "";
	var startYear = 2012
	var thisYear = new Date().getFullYear();

	if(!common.isEmpty(cnslChk)) startYear = 2014;
	$("#cal-start-year,#cal-end-year").empty();
	while (startYear <= thisYear) {
		$("#cal-start-year,#cal-end-year").append("<option value='"+startYear+"'>"+startYear+"</option>");
		startYear++
	}

	setTimeout(function() {
		SearchPeriod.init();
	},500);
});
</script> --%>
<script>
	//선택된 시작년월일, 종료년월일, 구매유형 -> get방식으로 다시호출
</script>
<script>
//처음 접속시 날짜 설정
$(document).ready(function () {
	var today = new Date();
	var tYear = today.getFullYear();
	var tMonth = today.getMonth();
	var tday = today.getDate();
	
	//1. cmbyear 			alt+shift+y
	for (var i = 2012; i <= tYear; i++) {
		$("#cal-start-year, #cal-end-year").append(`<option value=\${i}>\${i}</option>`);
	}
	
	$("#cal-end-year").val(tYear).prop("selected", true);
	$("#cal-start-year").val(tYear).prop("selected", true);
	
	
	//2. cmbmonth
	for (var i = 1; i <=12; i++) {
		
		$("#cal-start-month, #cal-end-month").append(`<option value=\${i}>\${i}</option>`);
	}
	
	$("#cal-start-month").val(tMonth).prop("selected", true);
	$("#cal-end-month").val(tMonth + 1).prop("selected", true);
	
	
	
	//3. cmbDate
	let syear = $("#cal-start-year option:selected").val();
	let eyear = $("#cal-end-year option:selected").val();
	let smonth = $("#cal-start-month option:selected").val();
	let emonth = $("#cal-end-month option:selected").val();
	let slastDay = getLastDay(syear, smonth)
	let elastDay = getLastDay(eyear, emonth)
	
	
	for (var i = 1; i <= slastDay; i++) {
		$("#cal-start-day").append(`<option value=\${i}>\${i}</option>`);
	}
	for (var i = 1; i <= elastDay; i++) {
		$("#cal-end-day").append(`<option value=\${i}>\${i}</option>`);
	}
	
	$("#cal-start-day").val(tday).prop("selected", true);
	$("#cal-end-day").val(tday).prop("selected", true);
	
});
</script>
<script>
//마지막 날짜 구하기 메서드
function getLastDay(year, month){
	let d = new Date(year, month)
	d.setDate( d.getDate() - 1 );
	return d.getDate();
	}
	
</script>
<script>
//날짜값을 변경할 경우

	$("#cal-start-year, #cal-start-month").on("change", function() {
		let syear = $("#cal-start-year option:selected").val();
		let smonth = $("#cal-start-month option:selected").val();		
		let slastDay = getLastDay(syear, smonth)
		
		$("#cal-start-day option").remove();
		
		for (var i = 1; i <= slastDay; i++) {
			
			$("#cal-start-day").append(`<option value=\${i}>\${i}</option>`);
		}

	});
		
	
	$("#cal-end-year, #cal-end-month").on("change", function() {
		let eyear = $("#cal-end-year option:selected").val();
		let emonth = $("#cal-end-month option:selected").val();
		let elastDay = getLastDay(eyear, emonth)
		
		$("#cal-end-day option").remove();

		for (var i = 1; i <= elastDay; i++) {
			
			$("#cal-end-day").append(`<option value=\${i}>\${i}</option>`);
		}

	});

// 탐색 배너의 모든 버튼 클릭 시
	$(".search-period.mgT30 button").on("click", function() {
		<%-- get방식으로 전송 --%>
		<%-- 버튼은 class="on" 부여, 구매유형은 class="on"의 data-order-type의 속성값을 searchOrderType="" --%>
		<%-- 구매기간은 class="on" data-month 속성값을 searchMonth=""--%>

		<%-- ?searchMonth=-3&startDate=2023-08-14&endDate=2023-11-14&searchOrderType=10 --%>
		let syear = $("#cal-start-year option:selected").val();
		let smonth = $("#cal-start-month option:selected").val();		
		let sdate = $("#cal-start-day option:selected").val()
		
		let eyear = $("#cal-end-year option:selected").val();
		let emonth = $("#cal-end-month option:selected").val();		
		let edate = $("#cal-end-day option:selected").val();
		
		let startDate = `\${syear}-\${smonth}-\${sdate}`;
		let endDate = `\${eyear}-\${emonth}-\${edate}`;
		
		let searchMonth = $(".select-month li.on button ").attr("data-month")
		let searchOrderType = $(".select-type button").attr("data-order_type");

		alert(searchMonth)
		
		let url = `orderDelivery.do?searchMonth=\${searchMonth}&startDate=\${startDate}&endDate=\${endDate}&searchOrderType=\${searchOrderType}`
		location.href = url;
	})

</script>


	<p class="board-guide-text">
		<span class="txt">2017년 4월 1일 이후 내역만 조회가 가능하며, 이전의 주문내역은 CJMall 주문내역에서 확인하실 수 있습니다.</span>
		<span class="txt">매장 구매는 CJ ONE 포인트 적립을 한 경우, 최근 1년 내역만 조회가 가능합니다. (2019년 9월 27일 이후 내역만 조회 가능)</span><!-- // 오프라인리뷰관련추가 2019-11-01 문구 추가 // -->
	</p>
	
	
	<table class="board-list-2s mgT20">
		<caption>주문일자, 상품, 수량, 주문금액, 상태로 이루어진 주문/배송/내역 목록 표</caption>
		<colgroup>
			<col style="width:17%;">
			<col style="width:%;">
			<col style="width:8%;">
			<col style="width:130px;">
			<col style="width:110px;">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">주문일자</th>
				<th scope="col">상품</th>
				<th scope="col">수량</th>
				<th scope="col">주문금액</th>
				<th scope="col">상태</th>
			</tr>
		</thead>
				
				<c:choose>
				<c:when test="<%-- 주문목록dto --%>">
				
					<tbody class="history">
	
						<tr>
	
	
							<td rowspan="1">
								<ul class="mypage-flag-apply">
	
	
									<li class="order-date"><%-- 주문목록dto.주문일 --%></li>
	
									<li class="color1s"><%-- dto.주문번호 --%></li>
	
									<li><a href="javascript:void(0);" class="btnDetail"
										data-oper-dt="2023.11.03" data-origin-bizpl-cd=""
										data-pos-no="" data-receipt-no="" data-deal-sp=""
										data-frst-receipt-no=""
										onclick="javascript:mypage.orderList.goOrderDetail('Y2311037571226','', this); return false;">상세보기</a>
									</li>
	
								</ul>
							</td>
	
	
							<td class="subject ">
								<div class="area">
	
	
	
									<a class="thum"
										href="javascript:mypage.orderList.goGoodDetail('A000000163041','', 'Order',{t_page : '마이페이지_주문배송조회', t_click:'주문배송조회_상품상세'});">
										<img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016304111ko.jpg?l=ko"
										alt="[11월 올영픽] [서현pick]콜레올로지 600mg*30정(15일분)+컷팅젤리2포 기획"
										onerror="common.errorImg(this);">
									</a>
									<div class="textus">
										<a class=""
											href="javascript:mypage.orderList.goGoodDetail('A000000163041','', 'Order',{t_page : '마이페이지_주문배송조회', t_click:'주문배송조회_상품상세'});">
											<span class="tit">푸드올로지</span> <span class="txt">[11월
												올영픽] [서현pick]콜레올로지 600mg*30정(15일분)+컷팅젤리2포 기획</span>
										</a> <span class="color1sSize"><i class="tit">옵션</i>콜레올로지
											30정+컷팅젤리2포</span>
	
	
	
										<button type="button" class="btn_bag mgT10" name="Order"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000163041" data-item-no="006"
											data-quick-yn="N">
											<span>장바구니 담기</span>
										</button>
	
									</div>
	
	
	
								</div>
							</td>
							<td class="">1</td>
							<td class="colorOrange">
								<!--  오프라인구매용 금액 --> <strong>17,900</strong> 원
	
							</td>
	
							<td><strong>취소완료</strong> <span class="color1sSize">처리일시<br>2023.11.03
							</span>
								<button type="button" class="BtnDelete"
									data-ord-no="Y2311037571226" data-ord-goods-seq="1"
									data-cnsl-ord-proc-seq="0" data-ord-dtl-sct-cd="20"
									data-chg-accp-sct-cd="" data-rtn-proc-sct-cd=""
									onclick="mypage.common.showCancelCausInfo(this); return false;">자세히
									보기</button></td>
	
						</tr>
	
					</tbody>
				</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5" class="nodata">기간 내 주문내역이 없습니다</td>
						</tr>
					</c:otherwise>
				</c:choose>
				
		</table>
	

			</div>
				
				
				
			</div>

		</div>

	</div>



<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>