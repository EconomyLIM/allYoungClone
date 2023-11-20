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
<script src="/Black_OY/js/mainPage.js"></script>
<link rel="stylesheet" href="/Black_OY/css/style.css">
<!-- <link rel="stylesheet" href="/Black_OY/css/mainscrollbar.css"> -->
<script
	src="https://static.oliveyoung.co.kr/pc-static-root/js/common/publish/jquery.mCustomScrollbar.concat.min.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<title>블랙올리브영 온라인몰</title>

</head>
<script>
/* 비슷한 회원 상품 뷰 팝업창 스크립트 */

$(function() {
	$('#crt_more_p002').on('click', function() {
		$('#crtPopWrap').show();
	})
	$('.layer_close.type4').on('click', function() {
		$('#crtPopWrap').hide();
	})
	
	
  
})

$(document).ready(() => {
    let container = $("#mCSB_5_container");
    let scrollbar = $("#mCSB_2_dragger_vertical");
    let isAnimating = false;

    container.on("mousewheel", (e) => {
        e.preventDefault();

        if (isAnimating) return;

        let delta = e.originalEvent.deltaY;
        let currentTop = parseInt(container.css("top"), 10);
        let targetTop = delta > 0 ? currentTop - 200 : currentTop + 200;

        if (targetTop <= 0 && targetTop >= -2600) {
            isAnimating = true;
            $("#mCSB_2_dragger_vertical").css("top", targetTop+"px");
            container.stop().animate({ top: targetTop + "px" }, 500, () => {
                isAnimating = false;

                let containerHeight = container.height();
                let scrollbarHeight = scrollbar.parent().height();
                let maxScroll = containerHeight - scrollbarHeight;
                let scrollbarTop = (targetTop / containerHeight) * maxScroll;
				console.log(scrollbarTop)
                $("#mCSB_2_dragger_vertical").css("top", scrollbarTop+"px");
            });
        }
    });
});





</script>

<body>
	<jsp:include page="/layout/head.jsp"></jsp:include>
	

	<div id="Wrapper">
		<div id="Container">

			<div id="Contents">
				<div class="main_full_banner">
					<div
						class="banner_wrap slick_slider"
						id="mainFullSlider">
	
						
								<div>


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '어워즈&nbsp;사전컴_우종웅', banner_number: '1'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103390003&amp;trackingCd=Home_Planshop1_1_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=어워즈&nbsp;사전컴_우종웅&amp;t_number=1"
										class="banner_link" data-attr="홈^메인롤링배너^어워즈&nbsp;사전컴_우종웅^1"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">





											<span class="tit">어워즈&amp;페스타 </span> <strong>올리브영 <br>어워즈&amp;페스타
												<br>커밍쑨
											</strong> <span>11/22 티켓 오픈</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/653735444005136341.jpg"
										alt="어워즈&nbsp;사전컴_우종웅">
									</a>
								</div>
								<div>


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '2차&nbsp;H캠페인_임예원', banner_number: '2'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103570001&amp;trackingCd=Home_Planshop1_2_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=2차&nbsp;H캠페인_임예원&amp;t_number=2"
										class="banner_link" data-attr="홈^메인롤링배너^2차&nbsp;H캠페인_임예원^2"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">




											<span class="tit" style="color: #fff;">헬시어터 </span> <strong
												style="color: #fff;">건강한 <br>하루를 위한 <br>역대급
												혜택
											</strong> <span style="color: #fff;">반얀트리 호텔 경품 이벤트</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/5931696340363851923.jpg"
										alt="2차&nbsp;H캠페인_임예원">
									</a>
								</div>
								<div>


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '헬시트렌드_김서현', banner_number: '3'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103460003&amp;trackingCd=Home_Planshop1_3_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=헬시트렌드_김서현&amp;t_number=3"
										class="banner_link" data-attr="홈^메인롤링배너^헬시트렌드_김서현^3"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">




											<span class="tit">헬시트렌드</span> <strong>요즘 사랑받는<br>헬시
												아이템을<br>알려드려요
											</strong> <span>베스트아이템 확인하기</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/3077674251044505639.jpg"
										alt="헬시트렌드_김서현">
									</a>
								</div>
								<div>


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1103-0101_최아형_신상로그온', banner_number: '4'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102700128&amp;trackingCd=Home_Planshop1_4_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1103-0101_최아형_신상로그온&amp;t_number=4"
										class="banner_link" data-attr="홈^메인롤링배너^1103-0101_최아형_신상로그온^4"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">




											<span class="tit" style="color: #fff;">디마르3</span> <strong
												style="color: #fff;">저자극으로<br>채우는<br>모공의
												밀도
											</strong> <span style="color: #fff;">최대 25% 할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/6150652034891406938.jpg"
										alt="1103-0101_최아형_신상로그온">
									</a>
								</div>
								<div>


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '브랜드위크플러스_아비브_정유빈, 이주은', banner_number: '5'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103110012&amp;trackingCd=Home_Planshop1_5_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=브랜드위크플러스_아비브_정유빈, 이주은&amp;t_number=5"
										class="banner_link"
										data-attr="홈^메인롤링배너^브랜드위크플러스_아비브_정유빈, 이주은^5" data-trk="/"
										tabindex="-1">
										<p class="banner_desc">




											<span class="tit">브랜드위크플러스 </span> <strong>내 피부 <br>밀착
												케어 <br>껌딱지 팩
											</strong> <span>아비브 베스트셀러 53% 할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/4600563008412392921.jpg"
										alt="브랜드위크플러스_아비브_정유빈, 이주은">
									</a>
								</div>
								<div>


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1103-0502_유선경_메인A', banner_number: '6'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102790143&amp;trackingCd=Home_Planshop1_6_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1103-0502_유선경_메인A&amp;t_number=6"
										class="banner_link" data-attr="홈^메인롤링배너^1103-0502_유선경_메인A^6"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">


											<span class="tit">바이오더마</span> <strong>겨울철<br>보습<br>치트키
											</strong> <span>최대 38%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/4060185891014733473.jpg"
										alt="1103-0502_유선경_메인A">
									</a>
								</div>
								<div>


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1103-5101_이보미_메인B', banner_number: '7'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102870143&amp;trackingCd=Home_Planshop1_7_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1103-5101_이보미_메인B&amp;t_number=7"
										class="banner_link" data-attr="홈^메인롤링배너^1103-5101_이보미_메인B^7"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">




											<span class="tit">테라브레스</span> <strong>캔디 하나로<br>입
												안이<br>상쾌해요
											</strong> <span>최대 9%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/5289701893443559245.jpg"
										alt="1103-5101_이보미_메인B">
									</a>
								</div>
								<div>

									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1103-0301_정유빈', banner_number: '8'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102720112&amp;trackingCd=Home_Planshop1_8_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1103-0301_정유빈&amp;t_number=8"
										class="banner_link" data-attr="홈^메인롤링배너^1103-0301_정유빈^8"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">




											<span class="tit" style="color: #fff;">스킨푸드</span> <strong
												style="color: #fff;">할머니<br>손길로<br>특별해졌어요
											</strong> <span style="color: #fff;">최대 35%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/3119814144171462271.jpg"
										alt="1103-0301_정유빈">
									</a>
								</div>
								<div>

									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1103-1202_김윤전', banner_number: '9'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102770090&amp;trackingCd=Home_Planshop1_9_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1103-1202_김윤전&amp;t_number=9"
										class="banner_link" data-attr="홈^메인롤링배너^1103-1202_김윤전^9"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">






											<span class="tit">더툴랩</span> <strong>올드머니룩의<br>우아한
												<br>피부 비결
											</strong> <span>최대 20%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/3935496298988215085.jpg"
										alt="1103-1202_김윤전">
									</a>
								</div>
								<div>


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1103-4001_김진주', banner_number: '10'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102830115&amp;trackingCd=Home_Planshop1_10_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1103-4001_김진주&amp;t_number=10"
										class="banner_link" data-attr="홈^메인롤링배너^1103-4001_김진주^10"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">




											<span class="tit">푸드올로지 </span> <strong>패딩을 입어도 <br>관리는
												<br>계속 돼요
											</strong> <span>최대 33%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/3291683415220620540.jpg"
										alt="1103-4001_김진주">
									</a>
								</div>
								<div>


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1103-5201_도고운', banner_number: '11'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102840175&amp;trackingCd=Home_Planshop1_11_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1103-5201_도고운&amp;t_number=11"
										class="banner_link" data-attr="홈^메인롤링배너^1103-5201_도고운^11"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">


											<span class="tit">헬시픽</span> <strong>한장으로<br>꿀잠
												<br>자요
											</strong> <span>최대 50%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/7817085398333037106.jpg"
										alt="1103-5201_도고운">
									</a>
								</div>
								<div>

									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1103-3003_서지민', banner_number: '12'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102800132&amp;trackingCd=Home_Planshop1_12_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1103-3003_서지민&amp;t_number=12"
										class="banner_link" data-attr="홈^메인롤링배너^1103-3003_서지민^12"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">




											<span class="tit">도브</span> <strong>도브 비누의<br>촉촉함을
												담아<br>부드럽게
											</strong> <span>최대 30%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/6428830692051751812.jpg"
										alt="1103-3003_서지민">
									</a>
								</div>
								<div>


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1103-2002_박선정', banner_number: '13'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102710089&amp;trackingCd=Home_Planshop1_13_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1103-2002_박선정&amp;t_number=13"
										class="banner_link" data-attr="홈^메인롤링배너^1103-2002_박선정^13"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">





											<span class="tit">그라펜</span> <strong>스모키한<br>레더의
												질감을<br>입어요
											</strong> <span>최대 25%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/447175101725971236.jpg"
										alt="1103-2002_박선정">
									</a>
								</div>
								<div>


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '위시리스트(Luxe&nbsp;Edit)&nbsp;어반디케이&nbsp;AD_한수연', banner_number: '14'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103440005&amp;trackingCd=Home_Planshop1_14_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=위시리스트(Luxe&nbsp;Edit)&nbsp;어반디케이&nbsp;AD_한수연&amp;t_number=14"
										class="banner_link"
										data-attr="홈^메인롤링배너^위시리스트(Luxe&nbsp;Edit)&nbsp;어반디케이&nbsp;AD_한수연^14"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">


											<span class="tit" style="color: #fff;">위시리스트 </span> <strong
												style="color: #fff;">달빛 담은 <br>글리터 <br>메이크업
											</strong> <span style="color: #fff;">어반디케이 최대 20% 할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/1477833300405135853.jpg"
										alt="위시리스트(Luxe&nbsp;Edit)&nbsp;어반디케이&nbsp;AD_한수연">
									</a>
								</div>
								<div>

									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '올영라이브&nbsp;<신상티켓팅>_박하연', banner_number: '15'});"
										href="https://www.oliveyoung.co.kr/store/event/getEventDetail.do?evtNo=00000000020146&amp;trackingCd=Home_Planshop1_15_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=올영라이브&nbsp;<신상티켓팅>_박하연&amp;t_number=15"
										class="banner_link"
										data-attr="홈^메인롤링배너^올영라이브&nbsp;<신상티켓팅>_박하연^15" data-trk="/"
										tabindex="0">
										<p class="banner_desc">

											<span class="tit">11월 신상티켓팅</span> <strong>단 한시간동안<br>무료로
												받고<br>체험해 보세요
											</strong> <span>1025개 준비했어요</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/1813961769727922649.jpg"
										alt="올영라이브&nbsp;<신상티켓팅>_박하연">
									</a>
								</div>





						
						<button id="mainSliderBtn">멈춤</button>
						<p class="slick-paging"></p>
					</div>
				</div>

				<div class="main_mid_banner split">


					<a
						onclick="common.reqAmplitude('홈_띠배너 클릭', {entry_source: '홈', click_source: '띠배너', banner_name: '올!블랙&nbsp;타자왕_조홍주', banner_number: '1'});"
						href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103450002&amp;trackingCd=Home_LB&amp;t_page=홈&amp;t_click=띠배너&amp;t_banner_name=올!블랙&nbsp;타자왕_조홍주&amp;t_number=1"
						class="home_banner_top_split"
						data-ref-bannerid="home_banner_top_1"
						data-attr="홈^new상단띠배너^올!블랙&nbsp;타자왕_조홍주^1" data-trk="/"> <img
						src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/138/6548513804523737005.jpg"
						alt="올!블랙&nbsp;타자왕_조홍주">
					</a> <a
						onclick="common.reqAmplitude('홈_띠배너 클릭', {entry_source: '홈', click_source: '띠배너', banner_name: '제휴_허성문', banner_number: '2'});"
						href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103270009&amp;trackingCd=Home_LB&amp;t_page=홈&amp;t_click=띠배너&amp;t_banner_name=제휴_허성문&amp;t_number=2"
						class="home_banner_top_split"
						data-ref-bannerid="home_banner_top_3"
						data-attr="홈^new상단띠배너^제휴_허성문^2" data-trk="/"> <img
						src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/138/6211510725742822343.jpg"
						alt="제휴_허성문">
					</a>

				</div>
				<input type="hidden" id="chkNo" name="chkNo" value="0">
				<!-- 큐레이션 S 옴니채널 개선으로 마케팅 수신동의 / 로그인버튼 삭제 -->


				<div class="curation_wrap">
					<div class="loading_box main" style="display: none;">
						<span class="icon"><img
							src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif"
							alt="로딩중"></span>
						<p class="txt">고객님을 위한 상품 추천중이에요</p>
					</div>
					<div class="curation_area two" style="">
						<div class="inner">
							<div class="curation_slide type03" id="recobell_area1">
								<div class="tit_type03">

									유사한 고객님이<br>많이 구매했어요


									<button class="moreBtn" id="crt_more_p002" onclick="">
										<span>더보기</span>
									</button>
								</div>
								<div class="curation_slide type03">
									<ul id="main_curation02_01" class="slide_list" name="section1">

										<!-- for each 시작  -->
										<c:if test="${not empty pdList}">
											<c:forEach var="i" varStatus="outerLoop" begin="1" end="5">
												<c:set var="innerLoopBegin"
													value="${(outerLoop.index - 1) * 2}" />
												<c:set var="innerLoopEnd"
													value="${(outerLoop.index * 2) -1}" />
												<li data-page-no="${outerLoop}"
													style="width: 510px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;">
													<ul class="curation_list">
														<c:forEach items="${pdList }" var="pli"
															begin="${innerLoopBegin}" end="${innerLoopEnd}"
															varStatus="innerLoop">

															<li class="curation_item" data-idx="${innerLoop}"><a
																href="<%=contextPath %>/olive/productDetail.do?goodsNo=${pli.displId}"
																name="Home_Curation1_1" class="item a_detail"
																data-ref-goodsno="${pli.displId }" onclick=""> <span
																	class="thumb_flag best">베스트</span> <span
																	class="thumImg"> <img src="${pli.displImgSrc }"
																		alt="${pli.displProName}"
																		onerror="common.errorImg(this);" />
																</span>
																	<div class="prd_name">
																		<p class="tx_name">${pli.displProName}</p>
																	</div>
																	<p class="prd_price">
																		<c:if test="${pli.proPrice ne pli.afterPrice }">
																			<span class="tx_org"> <span class="tx_num">${pli.proPrice}</span>원
																			</span>
																			<span class="tx_cur"> <span class="tx_num">${pli.afterPrice }
																			</span>원
																			</span>
																		</c:if>
																		<c:if test="${pli.proPrice eq pli.afterPrice }">
																			<span class="tx_org"> <span class="tx_num">${pli.proPrice}</span>원
																			</span>
																		</c:if>
																	</p>
																	<p class="prd_flag">
																		<c:if test="${pli.pdc eq 1 }">
																			<span class="icon_flag sale">세일</span>
																		</c:if>
																		<c:if test="${pli.prc eq 1 }">
																			<span class="icon_flag coupon">쿠폰</span>
																		</c:if>
																		<c:if test="${pli.pmp eq 1 }">
																			<span class="icon_flag gift">증정</span>
																		</c:if>
																		<c:if test="${pli.stock eq 1}">
																			<span class="icon_flag delivery">오늘드림</span>
																		</c:if>
																	</p>
															</a>
																<button type="button" class="btnbag"
																	onclick="; return false;"
																	data-goods-no="${pli.displId }">장바구니 담기</button></li>

														</c:forEach>
													</ul>
												</li>
											</c:forEach>

										</c:if>


											
												<%-- for each 끝--%>

									</ul>
								</div>

								<div class="btnRef">
									<button type="button" class="btn" id="refBtn"
										data-current-page="1" data-total-page="5">
										<span class="icon">다른상품 추천해드릴게요<em class="num"><span
												class="current" id="contsInfoBeginNum">1</span>5</em></span>
									</button>
								</div>
							</div>
						</div>
						<div class="inner">
							<div class="curation_slide type03" id="recobell_area2">

								<div class="tit_type03">
									<span id="rectypeTitle">고객님을 위한 추천 상품</span>
									<button class="moreBtn" id="crt_more_p001"
										onclick="#">
										<span>더보기</span>
									</button>
								</div>
								<div class="curation_slide type03">

									<ul id="main_curation03_01"
										class="slide_list " name="section1">
										<!-- 3-1 for each 시작 -->
										<c:if test="${not empty recommendList }">
										<c:forEach var="i" varStatus="outerLoop" begin="1" end="5">
										<c:set var="innerLoopBegin"
															value="${(outerLoop.index - 1) * 2}" />
														<c:set var="innerLoopEnd"
															value="${(outerLoop.index * 2) -1}" />
															<li data-page-no="${outerLoop}"
															style="width: 510px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;" >
															<ul class="curation_list">
																<c:forEach items="${recommendList }" var="rec"
																 begin="${innerLoopBegin}" end="${innerLoopEnd}" varStatus="innerLoop">
																 <li class="curation_item" data-idx=${innerLoop}>
																 <a href="<%=contextPath %>/olive/productDetail.do?goodsNo=${rec.displId}" class="item a_detail" name ="Home_Curation1_1" >
																 	<span class="thumImg">
																 		<img src="${rec.displImgSrc }"/>
																 	</span>
																 		<div class="prd_name">
																			<p class="tx_name">
																		${rec.displProName}
																			</p>
																		</div>
																		<p class="prd_price">
																			<c:if test="${rec.proPrice ne rec.afterPrice }">
																			<span class="tx_org">
																					<span class="tx_num">${rec.proPrice}</span>원 
																				</span>
																				<span class="tx_cur">
																					<span class="tx_num">${rec.afterPrice }
																				</span>원 
																				</span>
																			</c:if>
																			<c:if test="${rec.proPrice eq rec.afterPrice }">
																			<span class="tx_org">
																					<span class="tx_num">${rec.proPrice}</span>원 
																				</span>
																			</c:if>
																				</p>
																			<p class="prd_flag">
																			<c:if test="${rec.pdc eq 1 }">
																				<span class="icon_flag sale">세일</span>
																			</c:if>
																			<c:if test="${rec.prc eq 1 }">
																			<span class="icon_flag coupon">쿠폰</span>
																			</c:if>
																			<c:if test="${rec.pmp eq 1 }">
																				<span class="icon_flag gift">증정</span>
																			</c:if>
																			<c:if test="${rec.stock eq 1}">
																					<span class="icon_flag delivery">오늘드림</span>
																			</c:if>
																				</p>
																 	
																 </a>
																 <button type="button" class="btnbag"
																			onclick="; return false;"
																			data-goods-no="${rec.displId }">장바구니 담기</button>
																 </li>
																
																</c:forEach>
															</ul>
															</li>
										</c:forEach>
										</c:if>
									
										<!-- foreach끝 -->
									</ul>
								</div>

								<div class="btnRef" id="btnRef">
									<button type="button" class="btn" id="refBtn2"
										data-current-page="1" data-total-page="5">
										<span class="icon">다른상품 추천해드릴게요<em class="num"><span
												class="current" id="recentBeginNum">1</span>5</em></span>
									</button>
								</div>
								
								<input type="hidden" id="rectype" name="rectype" value="p001">
							</div>
						</div>
					</div>
				</div>


				<!-- 큐레이션 E -->

				<!-- ============ Weekly Special 추천 기획전 ====================-->
				<div class="main_plan_banner">
					<h3 class="main_sub_tit">
						<strong>Weekly Special</strong>
					</h3>
					<div class="recomm_plan">
						<ul class="recomm_plan_list">
							
							<c:if test="${not empty getWSBanner}">
								<c:forEach items="${getWSBanner}" var="gws" begin="0" end="1">
									<li>
										<a href="<%=contextPath%>/olive/planshop.do">
											<img src="${gws.psSrc}" alt="GS 배너사진"/>
											<div class="text_wrap">
												<dl style="color: #000000;">
													<dt>${gws.psSumm}</dt>
													<dt>${gws.psSecSumm}</dt>
													<dd>${gws.pskeyword}</dd>
												</dl>
											</div>
										</a>
									</li>
								</c:forEach>
							</c:if>
						</ul>
					</div>
				</div>
				<!-- ============ (태그 종료) Weekly Special 추천 기획전 ====================-->


				<!-- ======== 인기 행사만 모았어요! 영역  =============== -->
				<div class="main_plan_banner ty02">
					<h3 class="main_sub_tit">
						<strong>인기 행사만 모았어요!</strong>
					</h3>
					<div class="banner_wrap">
						<div id="mainPlanSlider" class="slick_slider">
						<c:if test="${not empty getPopBanner }">
							<c:forEach items="${getPopBanner }" var="gpb">
								<div class="slider_unit">
									<div class="plan_top">
										<div class="plan_banner" style="background-image: url('${gpb.key.psSrc}')">
											<a href="#">
												<p>
													<strong class="tit" style="color: #000000;">${gpb.key.psSumm}</strong>
													<strong class="tit" style="color: #000000;">${gpb.key.psSecSumm}</strong>
													<span class="desc" style="color: #000000;">${gpb.key.pskeyword}</span>
												</p>
											</a>
										</div>
									</div>
									<ul class="cate_prd_list">
										<c:forEach items="${gpb.value}" var="value">
										<li>
											<div class="prd_info ">
												<a href="<%=contextPath %>/olive/productDetail.do?goodsNo=${value.displId}&displNum=${value.lid}${value.sid}" name="Home_Planshop3" class="prd_thumb goodsList">
													<span class="thumb_flag best">베스트</span>
													<img src="${value.displImgSrc}"/>
												</a>
													<div class="prd_name">
														<a href="#" name="Home_Planshop3" class="goodsList">
														<span class="tx_brand">${value.brandName}</span>
															<p class="tx_name"> ${value.displProName}</p>
														</a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000188808" tabindex="0">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">${value.proPrice}</span>원
														</span><span class="tx_cur"><span class="tx_num">${value.afterPrice}</span>원
														</span>
													</p>
													<p class="prd_flag">
													<c:if test="${value.pdc eq 1}">
														<span class="icon_flag sale">세일</span>
													</c:if>
													<c:if test="${value.prc eq 1}">
														<span class="icon_flag coupon">쿠폰</span>
													</c:if>
													<c:if test="${value.pmp eq 1}">
														<span class="icon_flag gift">증정</span>
													</c:if>
													<c:if test="${value.stock eq 1}">
														<span class="icon_flag delivery">오늘드림</span>
													</c:if>
													</p>
													<p class="prd_point_area tx_num">
														<span class="review_point"><span class="point"
															style="width: 96.0%">10점만점에 5.5점</span></span>(999+)
													</p>
													<p class="prd_btn_area">
														<button class="cartBtn" data-ref-goodsno="A000000188808"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="0">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="0">새창보기</button>
													</p>
												
											</div>
										</li>
										</c:forEach>
										
									</ul>	
								</div>
							</c:forEach>
						</c:if> 

						
						</div>
						<!-- 인기행사 마지막 태그입니다. -->
					</div>
					<div class="banner_paging" role="toolbar">
					</div> 
					 <span class="slick-prev prev slick-arrow" id="plan_prev"
						style="display: block;">prev</span> <span
						class="slick-next next slick-arrow" id="plan_next"
						style="display: block;">next</span>
				</div>
				<!-- 메인 꾸밈영역 -->
				<div class="main_design_area">
					<div class="left_area"></div>
					<div class="right_area"></div>
				</div>
				<!--// 메인 꾸밈영역 -->


				<!-- 올리브영 매거진 -->
				<div class="oy-magazine">
					<h3>
						<strong>올리브영 매거진</strong>
					</h3>
					<div>
						<ul>
							<li><a
								href="javascript:common.reqAmplitude('올영매거진 클릭', {entry_source: '홈', click_source: '올영매거진', banner_name: '힘없이 처진', banner_number: '1'});common.link.moveMagazine('planshop/getPlanShopDetail.do?dispCatNo=500000103480003', 'Home_Content', 't_page=홈&amp;t_click=올영매거진&amp;t_banner_name=힘없이 처진피부 탄력 끌어올려&amp;t_number=1')"
								ata-attr="홈^매거진관^힘없이 처진^1" data-trk="/"> <img
									src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/398/5973801420703824175.jpg"
									alt="50000010348">
									<p>힘없이 처진</p>
									<p>피부 탄력 끌어올려</p>

							</a></li>
							<li><a
								href="javascript:common.reqAmplitude('올영매거진 클릭', {entry_source: '홈', click_source: '올영매거진', banner_name: '온몸 구석구석', banner_number: '2'});common.link.moveMagazine('planshop/getPlanShopDetail.do?dispCatNo=500000102250096', 'Home_Content', 't_page=홈&amp;t_click=올영매거진&amp;t_banner_name=온몸 구석구석건조함에 지쳤다면&amp;t_number=2')"
								ata-attr="홈^매거진관^온몸 구석구석^2" data-trk="/"> <img
									src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/398/7979407772557448411.jpg"
									alt="50000010225">


									<p>온몸 구석구석</p>
									<p>건조함에 지쳤다면</p>

							</a></li>



							<li><a
								href="javascript:common.reqAmplitude('올영매거진 클릭', {entry_source: '홈', click_source: '올영매거진', banner_name: '세상에 단 두 개,', banner_number: '3'});common.link.moveMagazine('planshop/getPlanShopDetail.do?dispCatNo=500000103310016', 'Home_Content', 't_page=홈&amp;t_click=올영매거진&amp;t_banner_name=세상에 단 두 개,일러스트를 만나봐요&amp;t_number=3')"
								ata-attr="홈^매거진관^세상에 단 두 개,^3" data-trk="/"> <img
									src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/398/7434211564127110060.jpg"
									alt="50000010331">


									<p>세상에 단 두 개,</p>
									<p>일러스트를 만나봐요</p>

							</a></li>



							<li><a
								href="javascript:common.reqAmplitude('올영매거진 클릭', {entry_source: '홈', click_source: '올영매거진', banner_name: '손끝에도 입히는', banner_number: '4'});common.link.moveMagazine('planshop/getPlanShopDetail.do?dispCatNo=500000102250095', 'Home_Content', 't_page=홈&amp;t_click=올영매거진&amp;t_banner_name=손끝에도 입히는
올드머니 룩&amp;t_number=4')"
								ata-attr="홈^매거진관^손끝에도 입히는^4" data-trk="/"> <img
									src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/398/5359584682226075721.jpg"
									alt="50000010225">


									<p>손끝에도 입히는</p>
									<p>올드머니 룩</p>

							</a></li>
						</ul>
					</div>
				</div>
				
				<!-- 오직 올리브영에서만 -->
				<div class="main_onlyone_wrap">
					<h3 class="main_sub_tit">오직 올리브영에서만</h3>
					<div class="banner_wrap " id="OnlyoneSlider" role="toolbar">

								<div >
									<a
										onclick="common.reqAmplitude('오직 올리브영 배너 클릭', {entry_source: '홈', click_source: '오직올리브영_배너', banner_name: '111-5013_김희연', banner_number: '4'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103000032&amp;trackingCd=Home_Onlyone&amp;t_page=홈&amp;t_click=오직올리브영_배너&amp;t_banner_name=111-5013_김희연&amp;t_number=4"
										class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^111-5013_김희연^4"
										data-trk="/" tabindex="-1"> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/4661345115759382171.jpg"
										alt="111-5013_김희연">

										<div class="txt" style="color: #000000">
											<strong class="title">머리부터 </strong> <strong class="title">발끝까지
											</strong> <span class="desc">#보습#바디케어</span>

										</div>
									</a>
								</div>
								<div >
									<a
										onclick="common.reqAmplitude('오직 올리브영 배너 클릭', {entry_source: '홈', click_source: '오직올리브영_배너', banner_name: '111-5014_김희연', banner_number: '5'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103050025&amp;trackingCd=Home_Onlyone&amp;t_page=홈&amp;t_click=오직올리브영_배너&amp;t_banner_name=111-5014_김희연&amp;t_number=5"
										class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^111-5014_김희연^5"
										data-trk="/" tabindex="-1"> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/9192792450653956257.jpg"
										alt="111-5014_김희연">

										<div class="txt" style="color: #000000">



											<strong class="title">후보정필요없는</strong> <strong class="title">현실포토샵</strong>

											<span class="desc">#컬러그램#메이크업</span>

										</div>
									</a>
								</div>
								<div>

									<a
										onclick="common.reqAmplitude('오직 올리브영 배너 클릭', {entry_source: '홈', click_source: '오직올리브영_배너', banner_name: '111-5001_김슬기', banner_number: '6'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102990029&amp;trackingCd=Home_Onlyone&amp;t_page=홈&amp;t_click=오직올리브영_배너&amp;t_banner_name=111-5001_김슬기&amp;t_number=6"
										class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^111-5001_김슬기^6"
										data-trk="/" tabindex="-1"> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/3737201163791687911.jpg"
										alt="111-5001_김슬기">

										<div class="txt" style="color: #000000">



											<strong class="title">임지연Pick</strong> <strong class="title">보습의답
												BOH이다</strong> <span class="desc">#바이오힐보 #세라뮨</span>

										</div>
									</a>
								</div>
								<div >



									<a
										onclick="common.reqAmplitude('오직 올리브영 배너 클릭', {entry_source: '홈', click_source: '오직올리브영_배너', banner_name: '111-5008_임용성', banner_number: '1'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103250011&amp;trackingCd=Home_Onlyone&amp;t_page=홈&amp;t_click=오직올리브영_배너&amp;t_banner_name=111-5008_임용성&amp;t_number=1"
										class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^111-5008_임용성^1"
										data-trk="/" tabindex="0"> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/5890960228533835803.jpg"
										alt="111-5008_임용성">

										<div class="txt" style="color: #000000">



											<strong class="title">11월 신상품</strong> <strong class="title">출시
												기념 특가</strong> <span class="desc">#최대37%#쿠폰발급</span>

										</div>
									</a>
								</div>
								<div >
									<a
										onclick="common.reqAmplitude('오직 올리브영 배너 클릭', {entry_source: '홈', click_source: '오직올리브영_배너', banner_name: '111-5012_허예림', banner_number: '2'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103050026&amp;trackingCd=Home_Onlyone&amp;t_page=홈&amp;t_click=오직올리브영_배너&amp;t_banner_name=111-5012_허예림&amp;t_number=2"
										class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^111-5012_허예림^2"
										data-trk="/" tabindex="0"> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/4115594780654286720.jpg"
										alt="111-5012_허예림">

										<div class="txt" style="color: #000000">
											<strong class="title">블랙프라이데이 </strong> <strong class="title">매일매일다른할인</strong>
											<span class="desc">#놓치지마세요</span>
										</div>
									</a>
								</div>

					</div>
				</div>
				<!-- 오직 올리브영에서만 종료 태그 표시 ==================  -->

				<!-- MD 추천 상품 Start-->

				<div class="main_recommendation_wrap">
					<h3 class="main_sub_tit">
						<strong>MD가 추천해요!</strong> <span class="tit-flag ad">AD</span>
					</h3>
					<div>
						<ul class="cate_prd_list no_line horizontal">


							<li class="flag">
								<div class="prd_info ">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=B000000190675&amp;dispCatNo=90000010001&amp;trackingCd=Home_MD_Recommand&amp;t_page=홈&amp;t_click=MD가추천해요_상품상세&amp;t_number=1"
										name="Home_MD_Recommand" class="prd_thumb goodsList"
										data-ref-goodsno="B000000190675"
										data-attr="홈^MD가추천해요^라이블링 클렌즈 15ml*30포 3종(레몬맛,자몽맛,청사과맛) 택1 ^1"
										data-ref-dispcatno="90000010001" data-ref-itemno="001"
										data-trk="null" data-impression="B000000190675^홈_MD가추천해요^1"
										data-impression-visibility="1"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/B00000019067501ko.jpg?l=ko"
										alt="라이블링 클렌즈 15ml*30포 3종(레몬맛,자몽맛,청사과맛) 택1 "
										onerror="common.errorImg(this);"></a>
									<div class="prd_name">
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=B000000190675&amp;dispCatNo=90000010001&amp;trackingCd=Home_MD_Recommand&amp;t_page=홈&amp;t_click=MD가추천해요_상품상세&amp;t_number=1"
											name="Home_MD_Recommand" class="goodsList"
											data-ref-goodsno="B000000190675"
											data-attr="홈^MD가추천해요^라이블링 클렌즈 15ml*30포 3종(레몬맛,자몽맛,청사과맛) 택1 ^1"
											data-ref-dispcatno="90000010001" data-ref-itemno="001"
											data-trk="null"><span class="tx_brand">라이블링</span>
											<p class="tx_name">라이블링 클렌즈 15ml*30포 3종(레몬맛,자몽맛,청사과맛) 택1</p></a>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">29,900</span>원
										</span><span class="tx_cur"><span class="tx_num">27,500</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag coupon">쿠폰</span>
									</p>
									<p class="prd_point_area tx_num">
										<span class="review_point"><span class="point"
											style="width: 100.0%">10점만점에 5.5점</span></span>(46)
									</p>
									<p class="prd_btn_area">
										<button class="cartBtn" data-ref-goodsno="B000000190675"
											data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
										<button class="btn_new_pop goodsList">새창보기</button>
									</p>
								</div>

							</li>



							<li class="flag">
								<div class="prd_info ">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000164840&amp;dispCatNo=90000010001&amp;trackingCd=Home_MD_Recommand&amp;t_page=홈&amp;t_click=MD가추천해요_상품상세&amp;t_number=2"
										name="Home_MD_Recommand" class="prd_thumb goodsList"
										data-ref-goodsno="A000000164840"
										data-attr="홈^MD가추천해요^[블프특가] 필리밀리 아이브러시 프로 컬렉션(5종)(단품/컬러에디션)^2"
										data-ref-dispcatno="90000010001" data-ref-itemno="002"
										data-trk="null" data-impression="A000000164840^홈_MD가추천해요^2"
										data-impression-visibility="1"><span
										class="thumb_flag best">베스트</span><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016484021ko.jpg?l=ko"
										alt="[블프특가] 필리밀리 아이브러시 프로 컬렉션(5종)(단품/컬러에디션)"
										onerror="common.errorImg(this);"></a>
									<div class="prd_name">
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000164840&amp;dispCatNo=90000010001&amp;trackingCd=Home_MD_Recommand&amp;t_page=홈&amp;t_click=MD가추천해요_상품상세&amp;t_number=2"
											name="Home_MD_Recommand" class="goodsList"
											data-ref-goodsno="A000000164840"
											data-attr="홈^MD가추천해요^[블프특가] 필리밀리 아이브러시 프로 컬렉션(5종)(단품/컬러에디션)^2"
											data-ref-dispcatno="90000010001" data-ref-itemno="002"
											data-trk="null"><span class="tx_brand">필리밀리</span>
											<p class="tx_name">[블프특가] 필리밀리 아이브러시 프로 컬렉션(5종)(단품/컬러에디션)</p></a>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">28,000</span>원
										</span><span class="tx_cur"><span class="tx_num">19,470</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag coupon">쿠폰</span><span
											class="icon_flag delivery">오늘드림</span>
									</p>
									<p class="prd_point_area tx_num">
										<span class="review_point"><span class="point"
											style="width: 96.0%">10점만점에 5.5점</span></span>(999+)
									</p>
									<p class="prd_btn_area">
										<button class="cartBtn" data-ref-goodsno="A000000164840"
											data-ref-dispcatno="90000010001" data-ref-itemno="002">장바구니</button>
										<button class="btn_new_pop goodsList">새창보기</button>
									</p>
								</div>

							</li>


						</ul>
					</div>
				</div>

				<h3 class="main_sub_tit">
					<strong>이 상품 어때요?</strong>
				</h3>
				<div
					class="main_recomm_wrap"
					id="mainReComSlider" role="toolbar">

							<div class="" data-slick-index="-1"
								aria-hidden="true" style="width: 1020px;" tabindex="-1">
								<ul class="cate_prd_list no_line">

									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000130319&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=9"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000130319"
												data-attr="홈^이상품어때요^[올리브영 단독/대용량]바이오더마 센시비오 H2O 850ml ^9"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="A000000130319^홈_이상품어때요^9"
												data-impression-visibility="1" tabindex="-1"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0013/A00000013031945ko.jpg?l=ko"
												alt="[올리브영 단독/대용량]바이오더마 센시비오 H2O 850ml "
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000130319"
													data-attr="홈^이상품어때요^[올리브영 단독/대용량]바이오더마 센시비오 H2O 850ml ^9"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="-1"><span class="tx_brand">바이오더마</span>
													<p class="tx_name">[올리브영 단독/대용량]바이오더마 센시비오 H2O 850ml</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000130319" tabindex="-1">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">37,500</span>원
												</span><span class="tx_cur"><span class="tx_num">23,040</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag sale">세일</span><span
													class="icon_flag coupon">쿠폰</span><span
													class="icon_flag gift">증정</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 98.0%">10점만점에 5.5점</span></span>(999+)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000130319"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
											</p>
										</div>

									</li>








									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171584&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=10"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000171584"
												data-attr="홈^이상품어때요^오쏘몰 이뮨 멀티비타민&amp;미네랄 14입+1입 증정 기획 (2주분)^10"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="A000000171584^홈_이상품어때요^10"
												data-impression-visibility="1" tabindex="-1"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017158404ko.jpg?l=ko"
												alt="오쏘몰 이뮨 멀티비타민&amp;미네랄 14입+1입 증정 기획 (2주분)"
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000171584"
													data-attr="홈^이상품어때요^오쏘몰 이뮨 멀티비타민&amp;미네랄 14입+1입 증정 기획 (2주분)^10"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="-1"><span class="tx_brand">오쏘몰</span>
													<p class="tx_name">오쏘몰 이뮨 멀티비타민&amp;미네랄 14입+1입 증정 기획
														(2주분)</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000171584" tabindex="-1">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">75,000</span>원
												</span><span class="tx_cur"><span class="tx_num">61,500</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag sale">세일</span><span
													class="icon_flag gift">증정</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 98.0%">10점만점에 5.5점</span></span>(999+)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000171584"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
											</p>
										</div>

									</li>

									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190116&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=11"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000190116"
												data-attr="홈^이상품어때요^[한정기획] 아이소이 10년간, 1등 잡티세럼 20ml+20ml+15ml 증량 기획^11"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="A000000190116^홈_이상품어때요^11"
												data-impression-visibility="1" tabindex="-1"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019011612ko.jpg?l=ko"
												alt="[한정기획] 아이소이 10년간, 1등 잡티세럼 20ml+20ml+15ml 증량 기획"
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000190116"
													data-attr="홈^이상품어때요^[한정기획] 아이소이 10년간, 1등 잡티세럼 20ml+20ml+15ml 증량 기획^11"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="-1"><span class="tx_brand">아이소이</span>
													<p class="tx_name">[한정기획] 아이소이 10년간, 1등 잡티세럼
														20ml+20ml+15ml 증량 기획</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000190116" tabindex="-1">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">54,000</span>원
												</span><span class="tx_cur"><span class="tx_num">35,910</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag sale">세일</span><span
													class="icon_flag coupon">쿠폰</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 94.0%">10점만점에 5.5점</span></span>(999+)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000190116"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
											</p>
										</div>

									</li>

									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000191845&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=12"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000191845"
												data-attr="홈^이상품어때요^[한정기획] 모로칸오일 트리트먼트 루미너스 원더 세트(오일50ml+오일15ml+펌프)^12"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="A000000191845^홈_이상품어때요^12"
												data-impression-visibility="1" tabindex="-1"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019184502ko.jpg?l=ko"
												alt="[한정기획] 모로칸오일 트리트먼트 루미너스 원더 세트(오일50ml+오일15ml+펌프)"
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000191845"
													data-attr="홈^이상품어때요^[한정기획] 모로칸오일 트리트먼트 루미너스 원더 세트(오일50ml+오일15ml+펌프)^12"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="-1"><span class="tx_brand">모로칸오일</span>
													<p class="tx_name">[한정기획] 모로칸오일 트리트먼트 루미너스 원더
														세트(오일50ml+오일15ml+펌프)</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000191845" tabindex="-1">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">42,000</span>원
												</span><span class="tx_cur"><span class="tx_num">33,600</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag coupon">쿠폰</span><span
													class="icon_flag gift">증정</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 96.0%">10점만점에 5.5점</span></span>(999+)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000191845"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
											</p>
										</div>

									</li>


								</ul>
							</div>
							<div class=""
								 aria-hidden="false" style="width: 1020px;"
								tabindex="-1" role="option" aria-describedby="slick-slide30">
								<ul class="cate_prd_list no_line">

									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000186633&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=1"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000186633"
												data-attr="홈^이상품어때요^[세레나데 재출시/NEW컬러]에스쁘아 꾸뛰르 립틴트 블러벨벳 5.5g^1"
												data-ref-dispcatno="90000010001" data-ref-itemno="008"
												data-trk="null" data-impression="A000000186633^홈_이상품어때요^1"
												data-impression-visibility="1" tabindex="0"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018663307ko.jpg?l=ko"
												alt="[세레나데 재출시/NEW컬러]에스쁘아 꾸뛰르 립틴트 블러벨벳 5.5g"
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000186633"
													data-attr="홈^이상품어때요^[세레나데 재출시/NEW컬러]에스쁘아 꾸뛰르 립틴트 블러벨벳 5.5g^1"
													data-ref-dispcatno="90000010001" data-ref-itemno="008"
													data-trk="null" tabindex="0"><span class="tx_brand">에스쁘아</span>
													<p class="tx_name">[세레나데 재출시/NEW컬러]에스쁘아 꾸뛰르 립틴트 블러벨벳
														5.5g</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000186633" tabindex="0">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">22,000</span>원
												</span><span class="tx_cur"><span class="tx_num">16,720</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag sale">세일</span><span
													class="icon_flag coupon">쿠폰</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 94.0%">10점만점에 5.5점</span></span>(779)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000186633"
													data-ref-dispcatno="90000010001" data-ref-itemno="008"
													tabindex="0">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="0">새창보기</button>
											</p>
										</div>

									</li>








									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=B000000187961&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=2"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="B000000187961"
												data-attr="홈^이상품어때요^나랑드사이다 180ml 캔 30입 1박스^2"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="B000000187961^홈_이상품어때요^2"
												data-impression-visibility="1" tabindex="0"><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/B00000018796101ko.jpg?l=ko"
												alt="나랑드사이다 180ml 캔 30입 1박스"
												onerror=""></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="B000000187961"
													data-attr="홈^이상품어때요^나랑드사이다 180ml 캔 30입 1박스^2"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="0"><span class="tx_brand">동아오츠카</span>
													<p class="tx_name">나랑드사이다 180ml 캔 30입 1박스</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="B000000187961" tabindex="0">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">13,900</span>원
												</span><span class="tx_cur"><span class="tx_num">13,200</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag coupon">쿠폰</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 100.0%">10점만점에 5.5점</span></span>(14)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="B000000187961"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="0">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="0">새창보기</button>
											</p>
										</div>

									</li>

									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000192374&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=3"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000192374"
												data-attr="홈^이상품어때요^랑방 모던 프린세스 EDP 30ml^3"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="A000000192374^홈_이상품어때요^3"
												data-impression-visibility="1" tabindex="0"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019237414ko.jpg?l=ko"
												alt="랑방 모던 프린세스 EDP 30ml" onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000192374"
													data-attr="홈^이상품어때요^랑방 모던 프린세스 EDP 30ml^3"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="0"><span class="tx_brand">랑방</span>
													<p class="tx_name">랑방 모던 프린세스 EDP 30ml</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000192374" tabindex="0">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">61,000</span>원
												</span><span class="tx_cur"><span class="tx_num">27,000</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag sale">세일</span><span
													class="icon_flag coupon">쿠폰</span><span
													class="icon_flag gift">증정</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 96.0%">10점만점에 5.5점</span></span>(999+)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000192374"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="0">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="0">새창보기</button>
											</p>
										</div>

									</li>

									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189595&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=4"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000189595"
												data-attr="홈^이상품어때요^[권은비 PICK] 나인위시스 하이드라 수분 앰플 나노 플러스 30ml 더블기획^4"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="A000000189595^홈_이상품어때요^4"
												data-impression-visibility="1" tabindex="0"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018959504ko.jpg?l=ko"
												alt="[권은비 PICK] 나인위시스 하이드라 수분 앰플 나노 플러스 30ml 더블기획"
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000189595"
													data-attr="홈^이상품어때요^[권은비 PICK] 나인위시스 하이드라 수분 앰플 나노 플러스 30ml 더블기획^4"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="0"><span class="tx_brand">나인위시스</span>
													<p class="tx_name">[권은비 PICK] 나인위시스 하이드라 수분 앰플 나노 플러스
														30ml 더블기획</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000189595" tabindex="0">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">24,500</span>원
												</span><span class="tx_cur"><span class="tx_num">19,900</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag sale">세일</span><span
													class="icon_flag coupon">쿠폰</span><span
													class="icon_flag gift">증정</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 100.0%">10점만점에 5.5점</span></span>(999+)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000189595"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="0">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="0">새창보기</button>
											</p>
										</div>

									</li>


								</ul>
							</div>
							<div aria-hidden="true"
								style="width: 1020px;" tabindex="-1" role="option"
								aria-describedby="slick-slide31">
								<ul class="cate_prd_list no_line">

									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000120656&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=5"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000120656"
												data-attr="홈^이상품어때요^[NEW애교살컬러] 투쿨포스쿨 프로타주 펜슬^5"
												data-ref-dispcatno="90000010001" data-ref-itemno="013"
												data-trk="null" data-impression="A000000120656^홈_이상품어때요^5"
												data-impression-visibility="1" tabindex="-1"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0012/A00000012065621ko.jpg?l=ko"
												alt="[NEW애교살컬러] 투쿨포스쿨 프로타주 펜슬"
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000120656"
													data-attr="홈^이상품어때요^[NEW애교살컬러] 투쿨포스쿨 프로타주 펜슬^5"
													data-ref-dispcatno="90000010001" data-ref-itemno="013"
													data-trk="null" tabindex="-1"><span class="tx_brand">투쿨포스쿨</span>
													<p class="tx_name">[NEW애교살컬러] 투쿨포스쿨 프로타주 펜슬</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000120656" tabindex="-1">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">12,000</span>원
													~</span><span class="tx_cur"><span class="tx_num">9,900</span>원
													~</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag sale">세일</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 94.0%">10점만점에 5.5점</span></span>(999+)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000120656"
													data-ref-dispcatno="90000010001" data-ref-itemno="013"
													tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
											</p>
										</div>

									</li>


									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000184128&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=6"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000184128"
												data-attr="홈^이상품어때요^에스트라 아토베리어365 크림 80ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)^6"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="A000000184128^홈_이상품어때요^6"
												data-impression-visibility="1" tabindex="-1"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018412802ko.jpg?l=ko"
												alt="에스트라 아토베리어365 크림 80ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)"
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000184128"
													data-attr="홈^이상품어때요^에스트라 아토베리어365 크림 80ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)^6"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="-1"><span class="tx_brand">에스트라</span>
													<p class="tx_name">에스트라 아토베리어365 크림 80ml 기획 (+하이드로에센스
														25ml+무기자차선크림10ml 증정)</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000184128" tabindex="-1">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">31,000</span>원
												</span><span class="tx_cur"><span class="tx_num">24,800</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag sale">세일</span><span
													class="icon_flag gift">증정</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 96.0%">10점만점에 5.5점</span></span>(999+)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000184128"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
											</p>
										</div>

									</li>


									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=B000000192156&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=7"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="B000000192156"
												data-attr="홈^이상품어때요^ZEROBASEONE - 2집 미니앨범 MELTING POINT 디지팩 ver.^7"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="B000000192156^홈_이상품어때요^7"
												data-impression-visibility="1" tabindex="-1"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/B00000019215605ko.jpg?l=ko"
												alt="ZEROBASEONE - 2집 미니앨범 MELTING POINT 디지팩 ver."
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="B000000192156"
													data-attr="홈^이상품어때요^ZEROBASEONE - 2집 미니앨범 MELTING POINT 디지팩 ver.^7"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="-1"><span class="tx_brand">제로베이스원</span>
													<p class="tx_name">ZEROBASEONE - 2집 미니앨범 MELTING POINT
														디지팩 ver.</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="B000000192156" tabindex="-1">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_cur"><span class="tx_num">12,500</span>원
													~</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: %">10점만점에 5.5점</span></span>
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="B000000192156"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
											</p>
										</div>

									</li>








									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000191650&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=8"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000191650"
												data-attr="홈^이상품어때요^[심톨 PICK/한정기획]바이오더마 시카비오 포마드 100ml 더블기획^8"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="A000000191650^홈_이상품어때요^8"
												data-impression-visibility="1" tabindex="-1"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019165006ko.jpg?l=ko"
												alt="[심톨 PICK/한정기획]바이오더마 시카비오 포마드 100ml 더블기획"
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000191650"
													data-attr="홈^이상품어때요^[심톨 PICK/한정기획]바이오더마 시카비오 포마드 100ml 더블기획^8"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="-1"><span class="tx_brand">바이오더마</span>
													<p class="tx_name">[심톨 PICK/한정기획]바이오더마 시카비오 포마드 100ml
														더블기획</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000191650" tabindex="-1">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">48,100</span>원
												</span><span class="tx_cur"><span class="tx_num">36,800</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag sale">세일</span><span
													class="icon_flag coupon">쿠폰</span><span
													class="icon_flag gift">증정</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 94.0%">10점만점에 5.5점</span></span>(999+)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000191650"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
											</p>
										</div>

									</li>


								</ul>
							</div>
							<div data-slick-index="2" aria-hidden="true"
								style="width: 1020px;" tabindex="-1" role="option"
								aria-describedby="slick-slide32">
								<ul class="cate_prd_list no_line">

									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000130319&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=9"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000130319"
												data-attr="홈^이상품어때요^[올리브영 단독/대용량]바이오더마 센시비오 H2O 850ml ^9"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="A000000130319^홈_이상품어때요^9"
												data-impression-visibility="1" tabindex="-1"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0013/A00000013031945ko.jpg?l=ko"
												alt="[올리브영 단독/대용량]바이오더마 센시비오 H2O 850ml "
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000130319"
													data-attr="홈^이상품어때요^[올리브영 단독/대용량]바이오더마 센시비오 H2O 850ml ^9"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="-1"><span class="tx_brand">바이오더마</span>
													<p class="tx_name">[올리브영 단독/대용량]바이오더마 센시비오 H2O 850ml</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000130319" tabindex="-1">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">37,500</span>원
												</span><span class="tx_cur"><span class="tx_num">23,040</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag sale">세일</span><span
													class="icon_flag coupon">쿠폰</span><span
													class="icon_flag gift">증정</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 98.0%">10점만점에 5.5점</span></span>(999+)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000130319"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
											</p>
										</div>

									</li>

									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171584&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=10"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000171584"
												data-attr="홈^이상품어때요^오쏘몰 이뮨 멀티비타민&amp;미네랄 14입+1입 증정 기획 (2주분)^10"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="A000000171584^홈_이상품어때요^10"
												data-impression-visibility="1" tabindex="-1"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017158404ko.jpg?l=ko"
												alt="오쏘몰 이뮨 멀티비타민&amp;미네랄 14입+1입 증정 기획 (2주분)"
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000171584"
													data-attr="홈^이상품어때요^오쏘몰 이뮨 멀티비타민&amp;미네랄 14입+1입 증정 기획 (2주분)^10"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="-1"><span class="tx_brand">오쏘몰</span>
													<p class="tx_name">오쏘몰 이뮨 멀티비타민&amp;미네랄 14입+1입 증정 기획
														(2주분)</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000171584" tabindex="-1">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">75,000</span>원
												</span><span class="tx_cur"><span class="tx_num">61,500</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag sale">세일</span><span
													class="icon_flag gift">증정</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 98.0%">10점만점에 5.5점</span></span>(999+)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000171584"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
											</p>
										</div>

									</li>

									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190116&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=11"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000190116"
												data-attr="홈^이상품어때요^[한정기획] 아이소이 10년간, 1등 잡티세럼 20ml+20ml+15ml 증량 기획^11"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="A000000190116^홈_이상품어때요^11"
												data-impression-visibility="1" tabindex="-1"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019011612ko.jpg?l=ko"
												alt="[한정기획] 아이소이 10년간, 1등 잡티세럼 20ml+20ml+15ml 증량 기획"
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000190116"
													data-attr="홈^이상품어때요^[한정기획] 아이소이 10년간, 1등 잡티세럼 20ml+20ml+15ml 증량 기획^11"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="-1"><span class="tx_brand">아이소이</span>
													<p class="tx_name">[한정기획] 아이소이 10년간, 1등 잡티세럼
														20ml+20ml+15ml 증량 기획</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000190116" tabindex="-1">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">54,000</span>원
												</span><span class="tx_cur"><span class="tx_num">35,910</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag sale">세일</span><span
													class="icon_flag coupon">쿠폰</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 94.0%">10점만점에 5.5점</span></span>(999+)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000190116"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
											</p>
										</div>

									</li>

									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000191845&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=12"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000191845"
												data-attr="홈^이상품어때요^[한정기획] 모로칸오일 트리트먼트 루미너스 원더 세트(오일50ml+오일15ml+펌프)^12"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="A000000191845^홈_이상품어때요^12"
												data-impression-visibility="1" tabindex="-1"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019184502ko.jpg?l=ko"
												alt="[한정기획] 모로칸오일 트리트먼트 루미너스 원더 세트(오일50ml+오일15ml+펌프)"
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000191845"
													data-attr="홈^이상품어때요^[한정기획] 모로칸오일 트리트먼트 루미너스 원더 세트(오일50ml+오일15ml+펌프)^12"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="-1"><span class="tx_brand">모로칸오일</span>
													<p class="tx_name">[한정기획] 모로칸오일 트리트먼트 루미너스 원더
														세트(오일50ml+오일15ml+펌프)</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000191845" tabindex="-1">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">42,000</span>원
												</span><span class="tx_cur"><span class="tx_num">33,600</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag coupon">쿠폰</span><span
													class="icon_flag gift">증정</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 96.0%">10점만점에 5.5점</span></span>(999+)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000191845"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
											</p>
										</div>

									</li>


								</ul>
							</div>
							<div 
								aria-hidden="true" style="width: 1020px;" tabindex="-1">
								<ul class="cate_prd_list no_line">

									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000186633&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=1"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000186633"
												data-attr="홈^이상품어때요^[세레나데 재출시/NEW컬러]에스쁘아 꾸뛰르 립틴트 블러벨벳 5.5g^1"
												data-ref-dispcatno="90000010001" data-ref-itemno="008"
												data-trk="null" data-impression="A000000186633^홈_이상품어때요^1"
												data-impression-visibility="1" tabindex="-1"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018663307ko.jpg?l=ko"
												alt="[세레나데 재출시/NEW컬러]에스쁘아 꾸뛰르 립틴트 블러벨벳 5.5g"
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000186633"
													data-attr="홈^이상품어때요^[세레나데 재출시/NEW컬러]에스쁘아 꾸뛰르 립틴트 블러벨벳 5.5g^1"
													data-ref-dispcatno="90000010001" data-ref-itemno="008"
													data-trk="null" tabindex="-1"><span class="tx_brand">에스쁘아</span>
													<p class="tx_name">[세레나데 재출시/NEW컬러]에스쁘아 꾸뛰르 립틴트 블러벨벳
														5.5g</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000186633" tabindex="-1">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">22,000</span>원
												</span><span class="tx_cur"><span class="tx_num">16,720</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag sale">세일</span><span
													class="icon_flag coupon">쿠폰</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 94.0%">10점만점에 5.5점</span></span>(779)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000186633"
													data-ref-dispcatno="90000010001" data-ref-itemno="008"
													tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
											</p>
										</div>

									</li>

									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=B000000187961&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=2"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="B000000187961"
												data-attr="홈^이상품어때요^나랑드사이다 180ml 캔 30입 1박스^2"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="B000000187961^홈_이상품어때요^2"
												data-impression-visibility="1" tabindex="-1"><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/B00000018796101ko.jpg?l=ko"
												alt="나랑드사이다 180ml 캔 30입 1박스"
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="B000000187961"
													data-attr="홈^이상품어때요^나랑드사이다 180ml 캔 30입 1박스^2"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="-1"><span class="tx_brand">동아오츠카</span>
													<p class="tx_name">나랑드사이다 180ml 캔 30입 1박스</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="B000000187961" tabindex="-1">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">13,900</span>원
												</span><span class="tx_cur"><span class="tx_num">13,200</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag coupon">쿠폰</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 100.0%">10점만점에 5.5점</span></span>(14)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="B000000187961"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
											</p>
										</div>

									</li>
									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000192374&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=3"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000192374"
												data-attr="홈^이상품어때요^랑방 모던 프린세스 EDP 30ml^3"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="A000000192374^홈_이상품어때요^3"
												data-impression-visibility="1" tabindex="-1"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019237414ko.jpg?l=ko"
												alt="랑방 모던 프린세스 EDP 30ml" onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000192374"
													data-attr="홈^이상품어때요^랑방 모던 프린세스 EDP 30ml^3"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="-1"><span class="tx_brand">랑방</span>
													<p class="tx_name">랑방 모던 프린세스 EDP 30ml</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000192374" tabindex="-1">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">61,000</span>원
												</span><span class="tx_cur"><span class="tx_num">27,000</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag sale">세일</span><span
													class="icon_flag coupon">쿠폰</span><span
													class="icon_flag gift">증정</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 96.0%">10점만점에 5.5점</span></span>(999+)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000192374"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
											</p>
										</div>

									</li>

									<li class="flag">

										<div class="prd_info ">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189595&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;t_page=홈&amp;t_click=이상품어때요_상품상세&amp;t_number=4"
												name="Home_Recommand" class="prd_thumb goodsList"
												data-ref-goodsno="A000000189595"
												data-attr="홈^이상품어때요^[권은비 PICK] 나인위시스 하이드라 수분 앰플 나노 플러스 30ml 더블기획^4"
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-trk="null" data-impression="A000000189595^홈_이상품어때요^4"
												data-impression-visibility="1" tabindex="-1"><span
												class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018959504ko.jpg?l=ko"
												alt="[권은비 PICK] 나인위시스 하이드라 수분 앰플 나노 플러스 30ml 더블기획"
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="javascript:;" name="Home_Recommand"
													class="goodsList" data-ref-goodsno="A000000189595"
													data-attr="홈^이상품어때요^[권은비 PICK] 나인위시스 하이드라 수분 앰플 나노 플러스 30ml 더블기획^4"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-trk="null" tabindex="-1"><span class="tx_brand">나인위시스</span>
													<p class="tx_name">[권은비 PICK] 나인위시스 하이드라 수분 앰플 나노 플러스
														30ml 더블기획</p></a>
											</div>
											<button class="btn_zzim jeem"
												data-ref-goodsno="A000000189595" tabindex="-1">
												<span>찜하기전</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">24,500</span>원
												</span><span class="tx_cur"><span class="tx_num">19,900</span>원
												</span>
											</p>
											<p class="prd_flag">
												<span class="icon_flag sale">세일</span><span
													class="icon_flag coupon">쿠폰</span><span
													class="icon_flag gift">증정</span><span
													class="icon_flag delivery">오늘드림</span>
											</p>
											<p class="prd_point_area tx_num">
												<span class="review_point"><span class="point"
													style="width: 100.0%">10점만점에 5.5점</span></span>(999+)
											</p>
											<p class="prd_btn_area">
												<button class="cartBtn" data-ref-goodsno="A000000189595"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													tabindex="-1">장바구니</button>
												<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
											</p>
										</div>

									</li>


								</ul>
							</div>
					<!-- 표시 -->
				</div>


				<div class="today-new-goods">
					<h3>
						<strong>신상 업데이트</strong>
					</h3>
					<div class="today_newgoods_slide">
						<ul class="slide_list " id="todayGoods" style="">
									<li 
										aria-hidden="false"
										style="width: 1020px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;"
										tabindex="-1" role="option" >
										<ul class="page">

											<li class="item"><a
												onclick="common.reqAmplitude('오늘의신상_배너클릭', {entry_source: '홈', click_source: '오늘의신상_배너', banner_name: '고급스러운 코팅광 완벽 밀착!
', banner_number: '1'});"
												href="javascript:common.link.moveToDayGoods('planshop/getPlanShopDetail.do?dispCatNo=500000101350155', 'Home_new', 't_page=홈&amp;t_click=오늘의신상_배너&amp;t_banner_name=고급스러운 코팅광 완벽 밀착!
&amp;t_number=1')"
												data-attr="홈^신상^주관신상 11-1 웨이크메이크^1" data-trk="/"
												tabindex="0"> <img
													src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/397/5889683516731155245.jpg"
													alt="주관신상 11-1 웨이크메이크">


													<p>고급스러운 코팅광 완벽 밀착!</p>
													<p>광으로 차오르는 피부 어렵지 않아요</p>

											</a></li>



											<li class="item"><a
												onclick="common.reqAmplitude('오늘의신상_배너클릭', {entry_source: '홈', click_source: '오늘의신상_배너', banner_name: '바디 보습 5초면 충분해요
', banner_number: '2'});"
												href="javascript:common.link.moveToDayGoods('planshop/getPlanShopDetail.do?dispCatNo=500000101350154', 'Home_new', 't_page=홈&amp;t_click=오늘의신상_배너&amp;t_banner_name=바디 보습 5초면 충분해요
&amp;t_number=2')"
												data-attr="홈^신상^10-4 아벤느(주관신상)^2" data-trk="/" tabindex="0">
													<img
													src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/397/5323109864929589110.jpg"
													alt="10-4 아벤느(주관신상)">


													<p>바디 보습 5초면 충분해요</p>
													<p>보습을 넘어선 장벽 로션으로 속까지 촉촉하게</p>

											</a></li>

										</ul>
									</li>
									<li  aria-hidden="true"
										style="width: 1020px; position: relative; left: -1020px; top: 0px; z-index: 998; opacity: 0;"
										tabindex="-1" role="option" >
										<ul class="page">

											<li class="item"><a
												onclick="common.reqAmplitude('오늘의신상_배너클릭', {entry_source: '홈', click_source: '오늘의신상_배너', banner_name: '스너글 곰나잇 에디션 출시
', banner_number: '3'});"
												href="javascript:common.link.moveToDayGoods('goods/getGoodsDetail.do?goodsNo=A000000191808', 'Home_new', 't_page=홈&amp;t_click=오늘의신상_배너&amp;t_banner_name=스너글 곰나잇 에디션 출시
&amp;t_number=3')"
												data-attr="홈^신상^11-1 스너글^3" data-trk="/" tabindex="-1">
													<img
													src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/397/2955837458105646093.jpg"
													alt="11-1 스너글">


													<p>스너글 곰나잇 에디션 출시</p>
													<p>귀여운 스너글 안대와 포토카드를 만나보라곰!</p>

											</a></li>



											<li class="item"><a
												onclick="common.reqAmplitude('오늘의신상_배너클릭', {entry_source: '홈', click_source: '오늘의신상_배너', banner_name: '붙이는 글루타치온 출시!', banner_number: '4'});"
												href="javascript:common.link.moveToDayGoods('goods/getGoodsDetail.do?goodsNo=A000000191449', 'Home_new', 't_page=홈&amp;t_click=오늘의신상_배너&amp;t_banner_name=붙이는 글루타치온 출시!&amp;t_number=4')"
												data-attr="홈^신상^11-1 케어플러스^4" data-trk="/" tabindex="-1">
													<img
													src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/397/8877756922401449296.jpg"
													alt="11-1 케어플러스">


													<p>붙이는 글루타치온 출시!</p>
													<p>흔적이 지나간 피부 고민 부위 잡티 커버</p>

											</a></li>

										</ul>
									</li>
									<li  aria-hidden="true"
										style="width: 1020px; position: relative; left: -2040px; top: 0px; z-index: 998; opacity: 0;"
										tabindex="-1" role="option">
										<ul class="page">

											<li class="item"><a
												onclick="common.reqAmplitude('오늘의신상_배너클릭', {entry_source: '홈', click_source: '오늘의신상_배너', banner_name: '더 업그레이드 된 모다모다 2세대 블랙샴푸', banner_number: '5'});"
												href="javascript:common.link.moveToDayGoods('goods/getGoodsDetail.do?goodsNo=A000000191959', 'Home_new', 't_page=홈&amp;t_click=오늘의신상_배너&amp;t_banner_name=더 업그레이드 된 모다모다 2세대 블랙샴푸&amp;t_number=5')"
												data-attr="홈^신상^11-1 모다모다^5" data-trk="/" tabindex="-1">
													<img
													src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/397/1241194061376133682.jpg"
													alt="11-1 모다모다">


													<p>더 업그레이드 된 모다모다 2세대 블랙샴푸</p>
													<p>새치부터 두피,모발까지 3 in 1 멀티 새치샴푸</p>

											</a></li>



											<li class="item"><a
												onclick="common.reqAmplitude('오늘의신상_배너클릭', {entry_source: '홈', click_source: '오늘의신상_배너', banner_name: '4세대 식물성 콜라겐 부스터
', banner_number: '6'});"
												href="javascript:common.link.moveToDayGoods('display/getBrandShopDetail.do?onlBrndCd=A010251', 'Home_new', 't_page=홈&amp;t_click=오늘의신상_배너&amp;t_banner_name=4세대 식물성 콜라겐 부스터
&amp;t_number=6')"
												data-attr="홈^신상^11-1 비거너리^6" data-trk="/" tabindex="-1">
													<img
													src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/397/1719738550294403157.jpg"
													alt="11-1 비거너리">


													<p>4세대 식물성 콜라겐 부스터</p>
													<p>100% 비건 &amp; 4-FREE 무첨가로 안심 섭취</p>

											</a></li>

										</ul>
									</li>
									<li   aria-hidden="true"
										style="width: 1020px; position: relative; left: -3060px; top: 0px; z-index: 998; opacity: 0;"
										tabindex="-1" role="option" >
										<ul class="page">

											<li class="item"><a
												onclick="common.reqAmplitude('오늘의신상_배너클릭', {entry_source: '홈', click_source: '오늘의신상_배너', banner_name: '피부를 밝히는 멜라토닝 크림
', banner_number: '7'});"
												href="javascript:common.link.moveToDayGoods('goods/getGoodsDetail.do?goodsNo=A000000191762', 'Home_new', 't_page=홈&amp;t_click=오늘의신상_배너&amp;t_banner_name=피부를 밝히는 멜라토닝 크림
&amp;t_number=7')"
												data-attr="홈^신상^11-1 이지듀^7" data-trk="/" tabindex="-1">
													<img
													src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/397/807629815407486697.jpg"
													alt="11-1 이지듀">


													<p>피부를 밝히는 멜라토닝 크림</p>
													<p>이지듀로 기미잡티 집중 케어 하세요!</p>

											</a></li>



											<li class="item"><a
												onclick="common.reqAmplitude('오늘의신상_배너클릭', {entry_source: '홈', click_source: '오늘의신상_배너', banner_name: '건조한 바디에 진정 보습케어
', banner_number: '8'});"
												href="javascript:common.link.moveToDayGoods('goods/getGoodsDetail.do?goodsNo=A000000191670', 'Home_new', 't_page=홈&amp;t_click=오늘의신상_배너&amp;t_banner_name=건조한 바디에 진정 보습케어
&amp;t_number=8')"
												data-attr="홈^신상^11-1 에센허브^8" data-trk="/" tabindex="-1">
													<img
													src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/397/7476501110867393204.jpg"
													alt="11-1 에센허브">


													<p>건조한 바디에 진정 보습케어</p>
													<p>티트리 수분층과 보습 크림층 7:3으로 쉽고 빠르게 피부케어</p>

											</a></li>

										</ul>
									</li>
									<li  aria-hidden="true"
										style="width: 1020px; position: relative; left: -4080px; top: 0px; z-index: 998; opacity: 0;"
										tabindex="-1" role="option">
										<ul class="page">

											<li class="item"><a
												onclick="common.reqAmplitude('오늘의신상_배너클릭', {entry_source: '홈', click_source: '오늘의신상_배너', banner_name: '키 PICK! 롱테이크 솔리드 퍼퓸
', banner_number: '9'});"
												href="javascript:common.link.moveToDayGoods('planshop/getPlanShopDetail.do?dispCatNo=500000102810087', 'Home_new', 't_page=홈&amp;t_click=오늘의신상_배너&amp;t_banner_name=키 PICK! 롱테이크 솔리드 퍼퓸
&amp;t_number=9')"
												data-attr="홈^신상^11-1 롱테이크^9" data-trk="/" tabindex="-1">
													<img
													src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/397/5556818639952230817.jpg"
													alt="11-1 롱테이크">


													<p>키 PICK! 롱테이크 솔리드 퍼퓸</p>
													<p>감각적으로 즐기는 캐시미어 촉감 고체 향수</p>

											</a></li>



											<li class="item"><a
												onclick="common.reqAmplitude('오늘의신상_배너클릭', {entry_source: '홈', click_source: '오늘의신상_배너', banner_name: '프로타주 펜슬 F/W 신상 컬러
', banner_number: '10'});"
												href="javascript:common.link.moveToDayGoods('goods/getGoodsDetail.do?goodsNo=A000000120656', 'Home_new', 't_page=홈&amp;t_click=오늘의신상_배너&amp;t_banner_name=프로타주 펜슬 F/W 신상 컬러
&amp;t_number=10')"
												data-attr="홈^신상^11-1 투쿨포스쿨^10" data-trk="/" tabindex="-1">
													<img
													src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/397/5519404367010316646.jpg"
													alt="11-1 투쿨포스쿨">


													<p>프로타주 펜슬 F/W 신상 컬러</p>
													<p>더 화사해진 애교살, 로맨틱 모브 섀도우까지</p>

											</a></li>

										</ul>
									</li>
						
						<!-- dddd -->
						</ul>
					</div>


					<div class="btn_box">
						<button type="button" class="btn" id="btn_todayGoods"
							data-attr="홈^신상더보기^더보기" data-trk="/">
							신상 더보기 <em class="num" data-attr="홈^todaygoods_더보기^더보기"
								data-trk="/"> <span class="current"
								data-attr="홈^todaygoods_더보기^더보기" data-trk="/"
								data-current-page="1" data-total-page="5">1</span>5
							</em>
						</button>
					</div>
				</div>
				<div class="main_brand_wrap">
					<h3 class="main_sub_tit">
						<strong>주목해야 할 브랜드</strong>
					</h3>
					<div class="brand_wrapper">
						<div class="inner_unit">
							<!-- S : 브랜드 탭 리스트 -->
							<div class="home-category swiper no-swipe swiper-container-initialized swiper-container-horizontal">
								<ul class="home-category-list swiper-wrapper" id="swiper-wrapper-97ece510c74c1096bb" aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">

									<!--  브랜드의 유효한 상품 갯수 체크  -->

									<!-- 브랜드, 이미지, 상품이 모두 정상 존재하는지 validate -->
								
								<c:forEach items="${mbrandlist }" var="mbl">
									<li class="home-category-item swiper-slide" data-ref-brndno="A001712" data-attr="홈^주목브랜드^나이팅게일^1" role="group" aria-label="1 / 10" style="margin-right: 8px;">
										<a onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드메뉴', brand_name: '나이팅게일', brand_number: '1'});" href="#" class="btn-category" data-attr="홈^주목브랜드^나이팅게일^1">
											${mbl.brand_name } </a>
									</li>
								</c:forEach>
									

									
								</ul>
								<button type="button" class="swiper-button-prev">
									<span class="blind">prev slide</span>
								</button>
								<button type="button" class="swiper-button-next">
									<span class="blind">next slide</span>
								</button>
								<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
							</div>
							<!-- E : 브랜드 탭 리스트 -->

							<!-- S : 인기브랜드 탭 내용 영역 -->
							<div class="brand_panel_area swiper swiper-container">
								<div class="brand_tab_list swiper-wrapper" id="swiper-wrapper-22e0708868b73aa9" aria-live="polite" style="height: 559px; transform: translate3d(0px, 0px, 0px);">
									<!-- S : 브랜드 슬라이드 아이템 -->
									<!--  브랜드의 유효한 상품 갯수 체크  -->
		
							<c:forEach items="${mbrandlist }" var="mbl">
									<div class="main_brand swiper-slide" data-ref-brndno="A001712" role="group" aria-label="1 / 10" style="width: 1020px;">
										<!-- S : 인기브랜드 이미지 -->
										<div class="brand-info-wrap">
											<a onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드배너', banner_name: '나이팅게일', banner_number: '1'});" href="javascript:common.link.moveBrandShop('A001712', 'Home_Brand_Banner', '', 't_page=홈&amp;t_click=주목브랜드_브랜드배너&amp;t_brand_name=나이팅게일&amp;t_number=1');" class="link" data-attr="홈^주목브랜드_배너^나이팅게일">
												<div class="brand-info">
													<strong class="brand-name">${mbl.brand_name }</strong> <span class="desc"><i class="icon-like"></i>${mbl.brand_like }명이 좋아합니다.</span>
												</div>
												<div class="thumbnail" style="background-image: url('${mbl.brand_img_src}');"></div>
											</a>
										</div>
										<!-- E : 인기브랜드 이미지 -->
										<!-- S : 인기브랜드 상품목록 -->
										<ul class="curation_basket">
										<c:forEach items="${mbilist}" var="mbil">
										<c:forEach items="${mbil}" var="mbi">
											<c:if test="${mbi.brandId eq mbl.brand_id }">
											<li>
												<div class="thum" data-ref-goodsno="A000000102967" data-egrank="null" data-egcode="null" data-attr="홈^주목브랜드^나이팅게일 데일리더마 클렌징패드 마일드 (70매)^1" data-impression="A000000102967^홈_주목브랜드^1" data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-impression-visibility="1" onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000102967&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_1_1&quot;);common.link.moveGoodsDetail(&quot;A000000102967&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img src="${mbi.proDisplSrc }" alt="나이팅게일 데일리더마 클렌징패드 마일드 (70매)" onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000102967" data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000102967">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000102967&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_1_1&quot;);common.link.moveGoodsDetail(&quot;A000000102967&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1&quot;);" class="a_detail" data-ref-goodsno="A000000102967" data-egrank="null" data-egcode="null" data-attr="홈^주목브랜드^나이팅게일 데일리더마 클렌징패드 마일드 (70매)^1" data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1" data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">${mbi.proDisplName }</dt>
															<dd class="price">
																<del>${mbi.proPrice }원</del>
																<strong>${mbi.afterPrice }원</strong>
															</dd>
															<dd class="icon">
															<c:if test="${mbi.pdc eq 1}">
											<span class="icon_flag sale">세일</span>
										</c:if>
										<c:if test="${mbi.prc eq 1}">
											<span class="icon_flag coupon">쿠폰</span>
										</c:if>

										<c:if test="${mbi.pmp eq 1}">
											<span class="icon_flag gift">증정</span>
										</c:if>

										<c:if test="${mbi.stock > 0}">
											<span class="icon_flag delivery">오늘드림</span>
										</c:if>
															</dd>
														</dl></a>
												</div>
											</li>
											</c:if>
											</c:forEach>
											</c:forEach>
										</ul>
										<!-- E : 인기브랜드 상품목록 -->
									</div>
									<!--  브랜드의 유효한 상품 갯수 체크  -->
									
								</c:forEach>
								</div>
								<button type="button" class="swiper-button-prev" tabindex="-1" aria-label="Previous slide" aria-controls="swiper-wrapper-22e0708868b73aa9" aria-disabled="true">
									<span class="blind">prev slide</span>
								</button>
								<button type="button" class="swiper-button-next" tabindex="0" aria-label="Next slide" aria-controls="swiper-wrapper-22e0708868b73aa9" aria-disabled="false">
									<span class="blind">next slide</span>
								</button>
								<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
							</div>
							<!-- E : 인기브랜드 탭 내용 영역 -->
						</div>
					</div>

				<div class="viewRk" style="">
					<h3 class="main_sub_tit">
						<strong>실시간 <span class="mBold">View</span> 랭킹
						</strong>
					</h3>
					<div class="viewRk_topBox">
						<a href="javascript:;" class="refreshBtn"><span
							class="refreshTxt"
							onclick="javascript:common.wlog('home_realtime_update')">업데이트</span></a>
						<ul class="viewRk_tab">
							<li class=""><button>1</button></li>
							<li class="act"><button>2</button></li>
						</ul>
					</div>
					<div class="liveRankArea" id="liveRankArea">
						<div class="viewRk_depth1 curation_basket clearfix">
							<ul
								class="viewRk_list viewRk_single slick-initialized slick-slider">
								<div aria-live="polite" class="slick-list draggable"
									style="height: 296px;">
									<div class="slick-track" role="listbox"
										style="opacity: 1; width: 5100px;">
										<li
											style="width: 510px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
											class="slick-slide" data-slick-index="0" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide110">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000191318"
													data-ref-itemno="8809925151505" data-egcode=""
													data-egrank="1" data-dscode="home_realtime_product_1"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=1">
													<span class="newOyflag today"><em>오특</em></span> <span
														class="newOyflag time" style="display: none;">
														<div class="main-today">
															<div class="timer ready">
																<span class="nums h"> <span class="num"
																	data-timer-val="0">0</span> <span class="num"
																	data-timer-val="0">0</span>
																</span> <span class="nums m"> <span class="num"
																	data-timer-val="0">0</span> <span class="num"
																	data-timer-val="0">0</span>
																</span>
															</div>
														</div>
													</span> <a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^[11월 올영픽] [30+10포/먹는레티놀]바이탈뷰티 슈퍼레티놀C 기획세트^1"
														data-ref-goodsno="A000000191318"
														onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000191318', '', 'ee-productClick', '홈_실시간VIEW랭킹', '1');"
														data-impression="A000000191318^홈_실시간VIEW랭킹^1"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0019/A00000019131811ko.jpg?l=ko"
														alt="[11월 올영픽] [30+10포/먹는레티놀]바이탈뷰티 슈퍼레티놀C 기획세트"
														onerror="common.errorImg(this);">
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000191318"
														data-ref-itemno="8809925151505"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=1"
														data-egcode="" data-egrank="1"
														data-dscode="home_realtime_product_1"
														data-attr="홈^실시간VIEW랭킹^[11월 올영픽] [30+10포/먹는레티놀]바이탈뷰티 슈퍼레티놀C 기획세트^1"
														tabindex="-1"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000191318&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;1&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_1&quot;);common.link.moveGoodsDetailCuration(&quot;A000000191318&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;1&quot; ,&quot;Home_Live_Rank&quot;,&quot;t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=1&quot;); return false;"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">5,542</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">바이탈뷰티</p>
																<p class="tx_name">[11월 올영픽] [30+10포/먹는레티놀]바이탈뷰티
																	슈퍼레티놀C 기획세트</p>
															</dt>
															<dd class="price">
																<del>
																	28,000<span>원</span>
																</del>
																<strong><span>20,160</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span> <span
																	class="icon_flag coupon">쿠폰</span> <span
																	class="icon_flag gift">증정</span> <span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -510px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
											class="slick-slide" data-slick-index="1" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide111">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000188467"
													data-ref-itemno="8809875907702" data-egcode=""
													data-egrank="2" data-dscode="home_realtime_product_2"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=2">
													<a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^브링그린 세럼 한정기획 3종^2"
														data-ref-goodsno="A000000188467"
														onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000188467', '', 'ee-productClick', '홈_실시간VIEW랭킹', '2');"
														data-impression="A000000188467^홈_실시간VIEW랭킹^2"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018846706ko.jpg?l=ko"
														alt="브링그린 세럼 한정기획 3종" onerror="common.errorImg(this);">
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000188467"
														data-ref-itemno="8809875907702"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=2"
														data-egcode="" data-egrank="2"
														data-dscode="home_realtime_product_2"
														data-attr="홈^실시간VIEW랭킹^브링그린 세럼 한정기획 3종^2" tabindex="-1"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188467&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;2&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_2&quot;);common.link.moveGoodsDetailCuration(&quot;A000000188467&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;2&quot; ,&quot;Home_Live_Rank&quot;,&quot;t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=2&quot;); return false;"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">1,709</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">브링그린</p>
																<p class="tx_name">브링그린 세럼 한정기획 3종</p>
															</dt>
															<dd class="price">
																<del>
																	22,000<span>원</span>
																</del>
																<strong><span>14,600</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span> <span
																	class="icon_flag coupon">쿠폰</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -1020px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
											class="slick-slide" data-slick-index="2" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide112">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000183197"
													data-ref-itemno="8809843683898" data-egcode=""
													data-egrank="3" data-dscode="home_realtime_product_3"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=3">
													<a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^[후니언픽] 이니스프리 비타C 그린티 엔자임 잡티 세럼 기획 30ml+7ml^3"
														data-ref-goodsno="A000000183197"
														onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000183197', '', 'ee-productClick', '홈_실시간VIEW랭킹', '3');"
														data-impression="A000000183197^홈_실시간VIEW랭킹^3"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018319758ko.jpg?l=ko"
														alt="[후니언픽] 이니스프리 비타C 그린티 엔자임 잡티 세럼 기획 30ml+7ml"
														onerror="common.errorImg(this);">
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000183197"
														data-ref-itemno="8809843683898"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=3"
														data-egcode="" data-egrank="3"
														data-dscode="home_realtime_product_3"
														data-attr="홈^실시간VIEW랭킹^[후니언픽] 이니스프리 비타C 그린티 엔자임 잡티 세럼 기획 30ml+7ml^3"
														tabindex="-1"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183197&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;3&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_3&quot;);common.link.moveGoodsDetailCuration(&quot;A000000183197&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;3&quot; ,&quot;Home_Live_Rank&quot;,&quot;t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=3&quot;); return false;"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">1,614</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">이니스프리</p>
																<p class="tx_name">[후니언픽] 이니스프리 비타C 그린티 엔자임 잡티 세럼 기획
																	30ml+7ml</p>
															</dt>
															<dd class="price">
																<del>
																	38,000<span>원</span>
																</del>
																<strong><span>28,500</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span> <span
																	class="icon_flag coupon">쿠폰</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -1530px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
											class="slick-slide" data-slick-index="3" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide113">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000172156"
													data-ref-itemno="8809400043349" data-egcode=""
													data-egrank="4" data-dscode="home_realtime_product_4"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=4">
													<a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^[리뷰이벤트]루트리 오디베리 5중 모공 리파이닝 앰플 50ml^4"
														data-ref-goodsno="A000000172156"
														onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000172156', '', 'ee-productClick', '홈_실시간VIEW랭킹', '4');"
														data-impression="A000000172156^홈_실시간VIEW랭킹^4"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017215608ko.jpg?l=ko"
														alt="[리뷰이벤트]루트리 오디베리 5중 모공 리파이닝 앰플 50ml"
														onerror="common.errorImg(this);">
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000172156"
														data-ref-itemno="8809400043349"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=4"
														data-egcode="" data-egrank="4"
														data-dscode="home_realtime_product_4"
														data-attr="홈^실시간VIEW랭킹^[리뷰이벤트]루트리 오디베리 5중 모공 리파이닝 앰플 50ml^4"
														tabindex="-1"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000172156&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;4&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_4&quot;);common.link.moveGoodsDetailCuration(&quot;A000000172156&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;4&quot; ,&quot;Home_Live_Rank&quot;,&quot;t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=4&quot;); return false;"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">1,296</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">루트리</p>
																<p class="tx_name">[리뷰이벤트]루트리 오디베리 5중 모공 리파이닝 앰플
																	50ml</p>
															</dt>
															<dd class="price">
																<del>
																	28,900<span>원</span>
																</del>
																<strong><span>23,800</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -2040px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
											class="slick-slide" data-slick-index="4" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide114">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000191618"
													data-ref-itemno="8809807285731" data-egcode=""
													data-egrank="5" data-dscode="home_realtime_product_5"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=5">
													<a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^[올영픽특가/43%] 비거너리 식물성 콜라겐 3270mg 7포+2포 기획(샤인머스캣맛) (9일분)^5"
														data-ref-goodsno="A000000191618"
														onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000191618', '', 'ee-productClick', '홈_실시간VIEW랭킹', '5');"
														data-impression="A000000191618^홈_실시간VIEW랭킹^5"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0019/A00000019161802ko.jpg?l=ko"
														alt="[올영픽특가/43%] 비거너리 식물성 콜라겐 3270mg 7포+2포 기획(샤인머스캣맛) (9일분)"
														onerror="common.errorImg(this);">
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000191618"
														data-ref-itemno="8809807285731"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=5"
														data-egcode="" data-egrank="5"
														data-dscode="home_realtime_product_5"
														data-attr="홈^실시간VIEW랭킹^[올영픽특가/43%] 비거너리 식물성 콜라겐 3270mg 7포+2포 기획(샤인머스캣맛) (9일분)^5"
														tabindex="-1"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000191618&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;5&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_5&quot;);common.link.moveGoodsDetailCuration(&quot;A000000191618&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;5&quot; ,&quot;Home_Live_Rank&quot;,&quot;t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=5&quot;); return false;"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">1,255</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">비거너리바이달바</p>
																<p class="tx_name">[올영픽특가/43%] 비거너리 식물성 콜라겐 3270mg
																	7포+2포 기획(샤인머스캣맛) (9일분)</p>
															</dt>
															<dd class="price">
																<del>
																	35,000<span>원</span>
																</del>
																<strong><span>19,900</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span> <span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -2550px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
											class="slick-slide" data-slick-index="5" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide115">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000120656"
													data-ref-itemno="8809815643271" data-egcode=""
													data-egrank="6" data-dscode="home_realtime_product_6"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=6">
													<a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^[NEW애교살컬러] 투쿨포스쿨 프로타주 펜슬^6"
														data-ref-goodsno="A000000120656"
														onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000120656', '', 'ee-productClick', '홈_실시간VIEW랭킹', '6');"
														data-impression="A000000120656^홈_실시간VIEW랭킹^6"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0012/A00000012065621ko.jpg?l=ko"
														alt="[NEW애교살컬러] 투쿨포스쿨 프로타주 펜슬"
														onerror="common.errorImg(this);">
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000120656"
														data-ref-itemno="8809815643271"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=6"
														data-egcode="" data-egrank="6"
														data-dscode="home_realtime_product_6"
														data-attr="홈^실시간VIEW랭킹^[NEW애교살컬러] 투쿨포스쿨 프로타주 펜슬^6"
														tabindex="-1"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000120656&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;6&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_6&quot;);common.link.moveGoodsDetailCuration(&quot;A000000120656&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;6&quot; ,&quot;Home_Live_Rank&quot;,&quot;t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=6&quot;); return false;"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">1,151</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">투쿨포스쿨</p>
																<p class="tx_name">[NEW애교살컬러] 투쿨포스쿨 프로타주 펜슬</p>
															</dt>
															<dd class="price">
																<del>
																	12,000<span>원</span>
																</del>
																<strong><span>9,900</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -3060px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
											class="slick-slide" data-slick-index="6" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide116">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000185465"
													data-ref-itemno="8809753830184" data-egcode=""
													data-egrank="7" data-dscode="home_realtime_product_7"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=7">
													<a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^[NEW 컬러] 레미유 듀이 플로우 틴트^7"
														data-ref-goodsno="A000000185465"
														onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000185465', '', 'ee-productClick', '홈_실시간VIEW랭킹', '7');"
														data-impression="A000000185465^홈_실시간VIEW랭킹^7"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018546523ko.jpeg?l=ko"
														alt="[NEW 컬러] 레미유 듀이 플로우 틴트"
														onerror="common.errorImg(this);">
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000185465"
														data-ref-itemno="8809753830184"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=7"
														data-egcode="" data-egrank="7"
														data-dscode="home_realtime_product_7"
														data-attr="홈^실시간VIEW랭킹^[NEW 컬러] 레미유 듀이 플로우 틴트^7"
														tabindex="-1"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000185465&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;7&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_7&quot;);common.link.moveGoodsDetailCuration(&quot;A000000185465&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;7&quot; ,&quot;Home_Live_Rank&quot;,&quot;t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=7&quot;); return false;"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">1,025</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">레미유</p>
																<p class="tx_name">[NEW 컬러] 레미유 듀이 플로우 틴트</p>
															</dt>
															<dd class="price">
																<del>
																	19,000<span>원</span>
																</del>
																<strong><span>15,200</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -3570px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
											class="slick-slide" data-slick-index="7" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide117">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000188078"
													data-ref-itemno="8809648810284" data-egcode=""
													data-egrank="8" data-dscode="home_realtime_product_8"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=8">
													<a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^[애교살 꿀템] 피치베리 베리섀도우 7colors ^8"
														data-ref-goodsno="A000000188078"
														onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000188078', '', 'ee-productClick', '홈_실시간VIEW랭킹', '8');"
														data-impression="A000000188078^홈_실시간VIEW랭킹^8"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018807804ko.jpg?l=ko"
														alt="[애교살 꿀템] 피치베리 베리섀도우 7colors "
														onerror="common.errorImg(this);">
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000188078"
														data-ref-itemno="8809648810284"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=8"
														data-egcode="" data-egrank="8"
														data-dscode="home_realtime_product_8"
														data-attr="홈^실시간VIEW랭킹^[애교살 꿀템] 피치베리 베리섀도우 7colors ^8"
														tabindex="-1"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188078&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;8&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_8&quot;);common.link.moveGoodsDetailCuration(&quot;A000000188078&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;8&quot; ,&quot;Home_Live_Rank&quot;,&quot;t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=8&quot;); return false;"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">981</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">피치베리</p>
																<p class="tx_name">[애교살 꿀템] 피치베리 베리섀도우 7colors</p>
															</dt>
															<dd class="price">
																<del>
																	12,500<span>원</span>
																</del>
																<strong><span>9,900</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -4080px; top: 0px; z-index: 999; opacity: 1;"
											class="slick-slide slick-current slick-active"
											data-slick-index="8" aria-hidden="false" tabindex="-1"
											role="option" aria-describedby="slick-slide118">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000191812"
													data-ref-itemno="8805915693215" data-egcode=""
													data-egrank="9" data-dscode="home_realtime_product_9"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=9">
													<span class="newOyflag today"><em>오특</em></span> <span
														class="newOyflag time" style="display: none;">
														<div class="main-today">
															<div class="timer ready">
																<span class="nums h"> <span class="num"
																	data-timer-val="0">0</span> <span class="num"
																	data-timer-val="0">0</span>
																</span> <span class="nums m"> <span class="num"
																	data-timer-val="0">0</span> <span class="num"
																	data-timer-val="0">0</span>
																</span>
															</div>
														</div>
													</span> <a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^[11월 올영픽] 락토핏 골드 더블기획 60포 (60일분)^9"
														data-ref-goodsno="A000000191812"
														onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000191812', '', 'ee-productClick', '홈_실시간VIEW랭킹', '9');"
														data-impression="A000000191812^홈_실시간VIEW랭킹^9"
														data-impression-visibility="1" tabindex="0"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0019/A00000019181203ko.jpg?l=ko"
														alt="[11월 올영픽] 락토핏 골드 더블기획 60포 (60일분)"
														onerror="common.errorImg(this);">
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="0">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="0">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000191812"
														data-ref-itemno="8805915693215"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=9"
														data-egcode="" data-egrank="9"
														data-dscode="home_realtime_product_9"
														data-attr="홈^실시간VIEW랭킹^[11월 올영픽] 락토핏 골드 더블기획 60포 (60일분)^9"
														tabindex="0"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000191812&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;9&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_9&quot;);common.link.moveGoodsDetailCuration(&quot;A000000191812&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;9&quot; ,&quot;Home_Live_Rank&quot;,&quot;t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=9&quot;); return false;"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">701</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">락토핏</p>
																<p class="tx_name">[11월 올영픽] 락토핏 골드 더블기획 60포 (60일분)</p>
															</dt>
															<dd class="price">
																<del>
																	23,800<span>원</span>
																</del>
																<strong><span>12,930</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span> <span
																	class="icon_flag coupon">쿠폰</span> <span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
										<li
											style="width: 510px; position: relative; left: -4590px; top: 0px; z-index: 998; opacity: 0;"
											class="slick-slide" data-slick-index="9" aria-hidden="true"
											tabindex="-1" role="option" aria-describedby="slick-slide119">
											<div class="viewRk_inner">
												<div class="thum" data-ref-goodsno="A000000184128"
													data-ref-itemno="8809013349104" data-egcode=""
													data-egrank="10" data-dscode="home_realtime_product_10"
													data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=10">
													<a href="javascript:;"
														data-attr="홈^실시간VIEW랭킹^에스트라 아토베리어365 크림 80ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)^10"
														data-ref-goodsno="A000000184128"
														onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000184128', '', 'ee-productClick', '홈_실시간VIEW랭킹', '10');"
														data-impression="A000000184128^홈_실시간VIEW랭킹^10"
														data-impression-visibility="1" tabindex="-1"> <img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018412802ko.jpg?l=ko"
														alt="에스트라 아토베리어365 크림 80ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)"
														onerror="common.errorImg(this);">
													</a>
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															tabindex="-1">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim" tabindex="-1">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a href="javascript:;" class="a_detail"
														data-ref-goodsno="A000000184128"
														data-ref-itemno="8809013349104"
														data-tracking-param="t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=10"
														data-egcode="" data-egrank="10"
														data-dscode="home_realtime_product_10"
														data-attr="홈^실시간VIEW랭킹^에스트라 아토베리어365 크림 80ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)^10"
														tabindex="-1"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000184128&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;10&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_10&quot;);common.link.moveGoodsDetailCuration(&quot;A000000184128&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;10&quot; ,&quot;Home_Live_Rank&quot;,&quot;t_page=홈&amp;t_click=실시간view랭킹_상품상세&amp;t_number=10&quot;); return false;"
														name="Home_Live_Rank">
														<div class="viewArea">
															<span><span class="viewNum">691</span>명이 보고있어요</span>
														</div>
														<dl>
															<dt>
																<p class="tx_brand">에스트라</p>
																<p class="tx_name">에스트라 아토베리어365 크림 80ml 기획
																	(+하이드로에센스 25ml+무기자차선크림10ml 증정)</p>
															</dt>
															<dd class="price">
																<del>
																	31,000<span>원</span>
																</del>
																<strong><span>24,800</span>원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span> <span
																	class="icon_flag gift">증정</span> <span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl>
													</a>
												</div>
											</div>
										</li>
									</div>
								</div>
							</ul>
							<ul class="viewRk_list viewRk_nav">
								<li class="li_rank_txt hidde" style=""><a
									onclick="common.reqAmplitude('실시간view랭킹 상품리스트 클릭', {entry_source: '홈', click_source: '실시간_view_랭킹', product_name: '[11월 올영픽] [30+10포/먹는레티놀]바이탈뷰티 슈퍼레티놀C 기획세트', product_number: '1'});"
									href="javascript:;"><span class="rkNum">1</span><span
										class="rkTxt">[11월 올영픽] [30+10포/먹는레티놀]바이탈뷰티 슈퍼레티놀C 기획세트</span></a></li>
								<li class="li_rank_txt hidde" style=""><a
									onclick="common.reqAmplitude('실시간view랭킹 상품리스트 클릭', {entry_source: '홈', click_source: '실시간_view_랭킹', product_name: '브링그린 세럼 한정기획 3종', product_number: '2'});"
									href="javascript:;"><span class="rkNum">2</span><span
										class="rkTxt">브링그린 세럼 한정기획 3종</span></a></li>
								<li class="li_rank_txt hidde" style=""><a
									onclick="common.reqAmplitude('실시간view랭킹 상품리스트 클릭', {entry_source: '홈', click_source: '실시간_view_랭킹', product_name: '[후니언픽] 이니스프리 비타C 그린티 엔자임 잡티 세럼 기획 30ml+7ml', product_number: '3'});"
									href="javascript:;"><span class="rkNum">3</span><span
										class="rkTxt">[후니언픽] 이니스프리 비타C 그린티 엔자임 잡티 세럼 기획
											30ml+7ml</span></a></li>
								<li class="li_rank_txt hidde" style=""><a
									onclick="common.reqAmplitude('실시간view랭킹 상품리스트 클릭', {entry_source: '홈', click_source: '실시간_view_랭킹', product_name: '[리뷰이벤트]루트리 오디베리 5중 모공 리파이닝 앰플 50ml', product_number: '4'});"
									href="javascript:;"><span class="rkNum">4</span><span
										class="rkTxt">[리뷰이벤트]루트리 오디베리 5중 모공 리파이닝 앰플 50ml</span></a></li>
								<li class="li_rank_txt hidde" style=""><a
									onclick="common.reqAmplitude('실시간view랭킹 상품리스트 클릭', {entry_source: '홈', click_source: '실시간_view_랭킹', product_name: '[올영픽특가/43%] 비거너리 식물성 콜라겐 3270mg 7포+2포 기획(샤인머스캣맛) (9일분)', product_number: '5'});"
									href="javascript:;"><span class="rkNum">5</span><span
										class="rkTxt">[올영픽특가/43%] 비거너리 식물성 콜라겐 3270mg 7포+2포
											기획(샤인머스캣맛) (9일분)</span></a></li>
								<li class="li_rank_txt" style="display: list-item;"><a
									onclick="common.reqAmplitude('실시간view랭킹 상품리스트 클릭', {entry_source: '홈', click_source: '실시간_view_랭킹', product_name: '[NEW애교살컬러] 투쿨포스쿨 프로타주 펜슬', product_number: '6'});"
									href="javascript:;"><span class="rkNum">6</span><span
										class="rkTxt">[NEW애교살컬러] 투쿨포스쿨 프로타주 펜슬</span></a></li>
								<li class="li_rank_txt" style="display: list-item;"><a
									onclick="common.reqAmplitude('실시간view랭킹 상품리스트 클릭', {entry_source: '홈', click_source: '실시간_view_랭킹', product_name: '[NEW 컬러] 레미유 듀이 플로우 틴트', product_number: '7'});"
									href="javascript:;"><span class="rkNum">7</span><span
										class="rkTxt">[NEW 컬러] 레미유 듀이 플로우 틴트</span></a></li>
								<li class="li_rank_txt" style="display: list-item;"><a
									onclick="common.reqAmplitude('실시간view랭킹 상품리스트 클릭', {entry_source: '홈', click_source: '실시간_view_랭킹', product_name: '[애교살 꿀템] 피치베리 베리섀도우 7colors ', product_number: '8'});"
									href="javascript:;"><span class="rkNum">8</span><span
										class="rkTxt">[애교살 꿀템] 피치베리 베리섀도우 7colors </span></a></li>
								<li class="li_rank_txt act" style="display: list-item;"><a
									onclick="common.reqAmplitude('실시간view랭킹 상품리스트 클릭', {entry_source: '홈', click_source: '실시간_view_랭킹', product_name: '[11월 올영픽] 락토핏 골드 더블기획 60포 (60일분)', product_number: '9'});"
									href="javascript:;"><span class="rkNum">9</span><span
										class="rkTxt">[11월 올영픽] 락토핏 골드 더블기획 60포 (60일분)</span></a></li>
								<li class="li_rank_txt" style="display: list-item;"><a
									onclick="common.reqAmplitude('실시간view랭킹 상품리스트 클릭', {entry_source: '홈', click_source: '실시간_view_랭킹', product_name: '에스트라 아토베리어365 크림 80ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)', product_number: '10'});"
									href="javascript:;"><span class="rkNum">10</span><span
										class="rkTxt">에스트라 아토베리어365 크림 80ml 기획 (+하이드로에센스
											25ml+무기자차선크림10ml 증정)</span></a></li>
							</ul>
						</div>
					</div>
				</div>

				<!-- 공지사항/고객센터 안내 -->
				<div class="main_customer_box">
					<div class="notice_area">
						<h4>공지사항</h4>


						<p class="notice_cont">새로운 소식이 없어요</p>




						<a
							href="https://www.oliveyoung.co.kr/store/counsel/getNoticeList.do"
							class="more_view" title="공지사항 더보기">더보기</a>
					</div>
					<div class="customer_area">
						<h4>
							고객센터 <br>이용안내
						</h4>
						<div class="tel_info">
							<ul>
								<li><strong>온라인몰 고객센터</strong> <img
									src="https://static.oliveyoung.co.kr/pc-static-root/image/main/img_online_tel.png"
									alt="1522-0882"></li>
								<li><strong>매장 고객센터</strong> <img
									src="https://static.oliveyoung.co.kr/pc-static-root/image/main/img_offline_tel.png"
									alt="1577-4887"></li>
							</ul>
						</div>
						<div class="online_info">
							<p class="time_info">고객센터 운영시간 [평일 09:00 - 18:00]</p>
							<p>
								주말 및 공휴일은 1:1문의하기를 이용해주세요.<br>업무가 시작되면 바로 처리해드립니다.
							</p>
							<button class="btnInquiry"
								onclick="javascript:common.link.moveQnaList();">
								<span></span>1:1문의하기
							</button>
							<button class="btnFaqTop"
								onclick="javascript:common.faq.getFaqList('99');">
								<span></span>자주하는 질문
							</button>
						</div>
					</div>

					<div class="app_down_link">
						<img
							src="https://static.oliveyoung.co.kr/pc-static-root/image/main/img_mobile_app.png"
							alt="올리브영 모바일 웹-앱을 설치하고 다양한 혜택을 누리세요!">
					</div>
				</div>
				<!--// 공지사항/고객센터 안내 -->
			</div>

		</div>
	</div>
	<jsp:include page="/layout/footer.jsp"></jsp:include>


	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
		<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
		<script>
  var swiper = new Swiper('.brand_panel_area', {
    slidesPerView: '1', // 화면에 보여질 슬라이드 수 (여러 개의 슬라이드가 화면에 보이도록 설정)
    spaceBetween: 30, // 슬라이드 간 간격
    loop: false, // 무한 루프
    navigation: {
        nextEl: '.swiper-button-next', // 다음 버튼 선택자
        prevEl: '.swiper-button-prev', // 이전 버튼 선택자
      },
      on: {
    	    slideChange: function () {
    	      var allSlides = document.querySelectorAll('.home-category-item'); // 모든 li 태그 선택
    	      allSlides.forEach(function (slide) {
    	        slide.classList.remove('is-selected'); // 모든 li 태그에서 is-selected 클래스 제거
    	      });

    	      var currentSlideIndex = this.activeIndex; // 현재 활성화된 슬라이드 인덱스 가져오기
    	      var currentSlide = document.querySelectorAll('.home-category-item')[currentSlideIndex]; // 현재 활성화된 슬라이드 선택
    	      currentSlide.classList.add('is-selected'); // 현재 슬라이드에 is-selected 클래스 추가
    	    },
    	  },
  });
  
  var listItems = document.querySelectorAll('.btn-category');

  listItems.forEach(function (item, index) {
    item.addEventListener('click', function (event) {
    	 event.preventDefault();
      swiper.slideTo(index); // 해당 인덱스의 슬라이드로 이동
    });
  });

</script>
		
	<script>
	
/* 슬립 스크립트 */

$('#main_curation02_01').slick({
	dots: false,
	arrows: false,
	fade: true,
	infinite: true,
	speed: 100,
	slidesToShow: 1,
	slidesToScroll: 1,
	draggable: true
});


	 $('#main_curation02_01 a.item').each(function(i){
	        var _item = $(this);			
	        var _data_goodsno = _item.attr('data-ref-goodsno');
			var _data_dispCatNo = _item.attr('data-ref-dispCatNo');
			var egcode = _item.attr("data-egcode");
		    var egrank = _item.attr("data-egrank");
			var trackingCd = _item.attr("name");

			//_item.attr('onclick','javascript:gtm.goods.callGoodsGtmInfo("'+_data_goodsno+'", "", "ee-productClick", "홈_큐레이션1", "' + $(this).attr('data-attr').split('^')[3] + '");common.wlog("home_curation1_prod'+trackingCd.substr(trackingCd.length-1, 1)+'");common.link.moveGoodsDetailCuration("'+_data_goodsno+'", "'+_data_dispCatNo+'","like","'+rccode+'", "'+egcode+'", "'+egrank+'", "'+trackingCd+'");');
		}); 
	    
	    $("#main_curation02_01").find(".btnbag").each(function() {
	    	/* $(this).attr("data-rccode", rccode); */
	    });
	
	    	
	    	 $('#refBtn').on('click', function () {
	
				var $this = $(this);

				var totalPage = Number($this.data('total-page'));
				var currentPage = Number($this.data('current-page'));
				// alert('123');
				
				$('#main_curation02_01').slick('slickNext'); 

				if (currentPage < totalPage) {
					currentPage++;
				} else {
					currentPage = 1;
				}
				$this.data('current-page', currentPage);
				$this.find('.current').html(currentPage);
				//common.reqAmplitude('큐레이션1_다른상품추천_클릭', {entry_source: '홈', click_source: '큐레이션1_다른상품추천', number: currentPage});
			}); 
	    	 
	    	 $('#mainFullSlider').slick({
	    		 	slide: 'div',
	    			arrows: true,
	    			fade: true,
	    			infinite: true,
	    			autoplay: true,             //슬라이드 자동 시작(true or false) ▶기본값 false
	    			autoplaySpeed: 1000,
	    			speed: 1000,
	    			slidesToShow: 1,
	    			slidesToScroll: 1,
	    			draggable: true,
	    			dots: true
	    		});
			
	    	 $('#mainFullSlider').on('beforeChange', function(event, slick, currentSlide, nextSlide){ 

	    		 var i = (currentSlide ? currentSlide : 0) + 1;
				
	    		 $('.slick-paging').html("<span class='cur_no'>"+i+"</span>/"+slick.slideCount);

	    		 });
	    	 var sw = 0;
	    	 $('#mainSliderBtn').on('click',function(){
	    		 if(sw==0){
	    		 $(this).addClass('pause');
	    		 $(this).text('자동재생');
	    		 $('#mainFullSlider').slick('slickPause')
	    		 sw = 1;
	    		 }else{
	    			$(this).removeClass('pause');
		    		$(this).text('멈춤');
	    		 	$('#mainFullSlider').slick('slickPlay')
	    		 	sw = 0;
	    		 }
	    	 })
	    	 $('#main_curation03_01').slick({
	    		   dots: false,
	    		   arrows: false,
	    		   fade: true,
	    		   infinite: true,
	    		   speed: 100,
	    		   slidesToShow: 1,
	    		   slidesToScroll: 1,
	    		   draggable: true
	    		});
	    	 
	    	 $('#main_curation03_01 a.item').each(function(i){
	 	        var _item = $(this);			
	 	        var _data_goodsno = _item.attr('data-ref-goodsno');
	 			var _data_dispCatNo = _item.attr('data-ref-dispCatNo');
	 			var egcode = _item.attr("data-egcode");
	 		    var egrank = _item.attr("data-egrank");
	 			var trackingCd = _item.attr("name");

	 			//_item.attr('onclick','javascript:gtm.goods.callGoodsGtmInfo("'+_data_goodsno+'", "", "ee-productClick", "홈_큐레이션1", "' + $(this).attr('data-attr').split('^')[3] + '");common.wlog("home_curation1_prod'+trackingCd.substr(trackingCd.length-1, 1)+'");common.link.moveGoodsDetailCuration("'+_data_goodsno+'", "'+_data_dispCatNo+'","like","'+rccode+'", "'+egcode+'", "'+egrank+'", "'+trackingCd+'");');
	 		}); 
	 	    
	 	    $("#main_curation02_01").find(".btnbag").each(function() {
	 	    	/* $(this).attr("data-rccode", rccode); */
	 	    });
	 	
	 	    	
	 	    	 $('#refBtn2').on('click', function () {
	 	
	 				var $this = $(this);

	 				var totalPage = Number($this.data('total-page'));
	 				var currentPage = Number($this.data('current-page'));
	 				// alert('123');
	 				
	 				$('#main_curation03_01').slick('slickNext'); 

	 				if (currentPage < totalPage) {
	 					currentPage++;
	 				} else {
	 					currentPage = 1;
	 				}
	 				$this.data('current-page', currentPage);
	 				$this.find('.current').html(currentPage);
	 				//common.reqAmplitude('큐레이션1_다른상품추천_클릭', {entry_source: '홈', click_source: '큐레이션1_다른상품추천', number: currentPage});
	 			}); 
	 	    	 
	 	    	 /* 신상 어때요 슬릭 */
	 	    	 $('#todayGoods').slick({
		    		   dots: false,
		    		   arrows: false,
		    		   fade: true,
		    		   infinite: true,
		    		   speed: 100,
		    		   slidesToShow: 1,
		    		   slidesToScroll: 1,
		    		   draggable: true
		    		}); 
	 	    	 
	 	    	 /*
	 	    	  $('#btn_todayGoods').on('click', function () {
	 	    		 var $this = $(this);

		 				var totalPage = Number($this.data('total-page'));
		 				var currentPage = Number($this.data('current-page'));
		 				// alert('123');
		 				
		 				$('#btn_todayGoods').slick('slickNext'); 

		 				if (currentPage < totalPage) {
		 					currentPage++;
		 				} else {
		 					currentPage = 1;
		 				}
		 				$this.data('current-page', currentPage);
		 				$this.find('.current').html(currentPage);
	 	    	 }*/
	 	     
	 	    	/* 신상 어때요 슬릭  종료*/
	 	    	
	 	    	/* 이상품어때요? */
	 	    	$('#mainReComSlider').slick({
		    		   dots: true,
		    		   arrows: true,
		    		   fade: false,
		    		   infinite: true,
		    		   speed: 500,
		    		   slidesToShow: 1,
		    		   slidesToScroll: 1,
		    		   draggable: true
		    		}); 
	 	    	 
	 	    	 
	 	    	 /*인기행사만 모았어요 슬릭*/
	 	    	 $('#mainPlanSlider').slick({
		    		  dots: true,
		    		  appendDots : $('.banner_paging'),
		    		  prevArrow:$('#plan_prev'),
		    		  nextArrow:$('#plan_next'),
	 	    		  slide: '.slider_unit',
	 	    	      infinite: true,          
	 	    	      slidesToShow: 2,
	 	    	      slidesToScroll: 2,
	 	    	      draggable: true, 
		    		   
		    		}); 
	 	    	
	 	    	 $('#OnlyoneSlider').slick({
		    		   dots: true,
		    		   arrows: false,
		    		   fade: false,
		    		   infinite: true,
		    		   speed: 500,
		    		   slidesToShow: 3,
		    		   slidesToScroll: 3,
		    		   draggable: true
		    		}); 
</script>
</body>
<!-- 유사한 고객 추천 상품 팝업 -->
<div class="layer_pop_wrap" id="crtPopWrap"
	style="top: 1%; width: 849px; display: block; left: 50%; margin-left: -424.5px; margin-top: 353px;">
	<script
		src="https://static.oliveyoung.co.kr/pc-static-root/js/store/jquery.mCustomScrollbar.concat.min.js"></script>
	<style media data-href="/Black_OY/css/mainscrollbar.css"></style>
	<div class="layer_cont4 w900">


		<h1 class="layer_title4" id="popTitle">고객님에게 추천드리는 상품</h1>

		<div class="curation_topInfo">
			<div class="topTtl">
				큐레이션<span>고객님을 위한 추천</span>
				<div class="toolTipArea">
					<a href="javascript:;" class="curation_toolTip"></a>
					<div class="toolTipBox">
						<div class="toolTipInner" id="tooltipTxt">
							AI 추천 알고리즘으로 분석하여 <br>고객님의 성향에 맞게 추천드리는 상품이에요
						</div>
					</div>
				</div>
			</div>

			<div class="curation_recomendBox">
				<div>

					<div class="subTtl">로그인하고 나에게 맞는 추천상품 보기</div>
					<a href="#" class="tagBtn">로그인</a>
				</div>
			</div>

		</div>

		<div class="curaListBox mCustomScrollbar _mCS_5">
			<div id="mCSB_5"
				class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
				style="max-height: 505px;" tabindex="0">
				<div id="mCSB_5_container" class="mCSB_container"
					style="position: relative; top: 0; left: 0;" dir="ltr">

					<ul class="curaList curation_area" id="curation_ulList_p002">

						<li class="slide_list">

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000180410&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=13&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=1"
									class="item a_detail" data-ref-goodsno="A000000180410"
									data-egrank="13" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[한정기획/더보이즈 현재PICK]앰플엔 세라마이드샷 앰플 100ml 기획(100ml+10ml)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=1"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000180410&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;13&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=1&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018041043ko.jpg?l=ko"
										alt="[한정기획/더보이즈 현재PICK]앰플엔 세라마이드샷 앰플 100ml 기획(100ml+10ml)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[한정기획/더보이즈 현재PICK]앰플엔 세라마이드샷 앰플 100ml
											기획(100ml+10ml)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">18,900</span>원
										</span><span class="tx_cur"><span class="tx_num">15,200</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000180410"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000180410" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000184128&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=2&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=2"
									class="item a_detail" data-ref-goodsno="A000000184128"
									data-egrank="2" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^에스트라 아토베리어365 크림 80ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=2"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000184128&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;2&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=2&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018412802ko.jpg?l=ko"
										alt="에스트라 아토베리어365 크림 80ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">에스트라 아토베리어365 크림 80ml 기획 (+하이드로에센스
											25ml+무기자차선크림10ml 증정)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">31,000</span>원
										</span><span class="tx_cur"><span class="tx_num">24,800</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000184128"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000184128" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000158636&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=25&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=3"
									class="item a_detail" data-ref-goodsno="A000000158636"
									data-egrank="25" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^디오디너리 히알루로닉 애시드 2% + B5 30ml"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=3"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000158636&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;25&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=3&quot;); return false;"
									name="Home_Curation1_More"><span class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015863602ko.jpg?l=ko"
										alt="디오디너리 히알루로닉 애시드 2% + B5 30ml"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">디오디너리 히알루로닉 애시드 2% + B5 30ml</p>
									</div>
									<p class="prd_price">
										<span class="tx_cur"><span class="tx_num">11,000</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000158636"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000158636" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000166675&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=11&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=4"
									class="item a_detail" data-ref-goodsno="A000000166675"
									data-egrank="11" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[리필기획] 아누아 어성초 77 수딩 토너 350ml 리필 기획세트(350ml+350ml리필)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=4"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000166675&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;11&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=4&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016667505ko.jpg?l=ko"
										alt="[리필기획] 아누아 어성초 77 수딩 토너 350ml 리필 기획세트(350ml+350ml리필)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[리필기획] 아누아 어성초 77 수딩 토너 350ml 리필
											기획세트(350ml+350ml리필)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">49,000</span>원
										</span><span class="tx_cur"><span class="tx_num">34,000</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000166675"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000166675" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

						</li>

						<li class="slide_list">

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000191387&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=26&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=5"
									class="item a_detail" data-ref-goodsno="A000000191387"
									data-egrank="26" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[NEW] 아비브 부활초 비피다 세럼 퍼밍 드롭 50ml"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=5"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000191387&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;26&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=5&quot;); return false;"
									name="Home_Curation1_More"><span class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019138702ko.jpg?l=ko"
										alt="[NEW] 아비브 부활초 비피다 세럼 퍼밍 드롭 50ml"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[NEW] 아비브 부활초 비피다 세럼 퍼밍 드롭 50ml</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">32,000</span>원
										</span><span class="tx_cur"><span class="tx_num">21,280</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000191387"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000191387" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000145579&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=15&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=6"
									class="item a_detail" data-ref-goodsno="A000000145579"
									data-egrank="15" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^라운드랩 자작나무 수분크림 (본품80ml+20ml 추가 증정)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=6"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000145579&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;15&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=6&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014557922ko.jpg?l=ko"
										alt="라운드랩 자작나무 수분크림 (본품80ml+20ml 추가 증정)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">라운드랩 자작나무 수분크림 (본품80ml+20ml 추가 증정)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">32,000</span>원
										</span><span class="tx_cur"><span class="tx_num">25,600</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000145579"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000145579" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189261&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=13&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=7"
									class="item a_detail" data-ref-goodsno="A000000189261"
									data-egrank="13" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=7"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000189261&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;13&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=7&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018926111ko.jpg?l=ko"
										alt="[단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml 리필기획(+리필팩 50ml)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[단독기획] 토리든 다이브인 저분자 히알루론산 세럼 50ml
											리필기획(+리필팩 50ml)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">36,000</span>원
										</span><span class="tx_cur"><span class="tx_num">27,000</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000189261"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000189261" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190958&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=4&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=8"
									class="item a_detail" data-ref-goodsno="A000000190958"
									data-egrank="4" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[NEW] 아비브 부활초 비피다 세럼 퍼밍 드롭 50ml 기획(+부활초 크림 30ml 증정)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=8"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000190958&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;4&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=8&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019095803ko.jpg?l=ko"
										alt="[NEW] 아비브 부활초 비피다 세럼 퍼밍 드롭 50ml 기획(+부활초 크림 30ml 증정)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[NEW] 아비브 부활초 비피다 세럼 퍼밍 드롭 50ml 기획(+부활초
											크림 30ml 증정)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">32,000</span>원
										</span><span class="tx_cur"><span class="tx_num">21,280</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000190958"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000190958" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

						</li>

						<li class="slide_list">

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000169186&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=24&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=9"
									class="item a_detail" data-ref-goodsno="A000000169186"
									data-egrank="24" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^피지오겔 DMT 베이비 인텐시브 크림 100ml"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=9"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000169186&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;24&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=9&quot;); return false;"
									name="Home_Curation1_More"><span class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016918601ko.jpg?l=ko"
										alt="피지오겔 DMT 베이비 인텐시브 크림 100ml"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">피지오겔 DMT 베이비 인텐시브 크림 100ml</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">33,000</span>원
										</span><span class="tx_cur"><span class="tx_num">23,100</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000169186"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000169186" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175878&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=20&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=10"
									class="item a_detail" data-ref-goodsno="A000000175878"
									data-egrank="20" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[대용량] 파티온 노스카나인 트러블 세럼 단독 기획(50ml+15ml)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=10"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000175878&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;20&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=10&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017587818ko.jpg?l=ko"
										alt="[대용량] 파티온 노스카나인 트러블 세럼 단독 기획(50ml+15ml)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[대용량] 파티온 노스카나인 트러블 세럼 단독 기획(50ml+15ml)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">38,000</span>원
										</span><span class="tx_cur"><span class="tx_num">28,200</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag coupon">쿠폰</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000175878"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000175878" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189429&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=38&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=11"
									class="item a_detail" data-ref-goodsno="A000000189429"
									data-egrank="38" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^아벤느 이드랑스 부스트 세럼 10ml+10ml 더블 기획"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=11"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000189429&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;38&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=11&quot;); return false;"
									name="Home_Curation1_More"><span class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018942901ko.jpg?l=ko"
										alt="아벤느 이드랑스 부스트 세럼 10ml+10ml 더블 기획"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">아벤느 이드랑스 부스트 세럼 10ml+10ml 더블 기획</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">36,000</span>원
										</span><span class="tx_cur"><span class="tx_num">27,400</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag coupon">쿠폰</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000189429"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000189429" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000174273&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=13&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=12"
									class="item a_detail" data-ref-goodsno="A000000174273"
									data-egrank="13" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[단독기획] 아이소이 10년간, 1등 잡티세럼 30ml 기획(+아이크림5ml 증정)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=12"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000174273&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;13&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=12&quot;); return false;"
									name="Home_Curation1_More"><span class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017427310ko.jpg?l=ko"
										alt="[단독기획] 아이소이 10년간, 1등 잡티세럼 30ml 기획(+아이크림5ml 증정)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[단독기획] 아이소이 10년간, 1등 잡티세럼 30ml
											기획(+아이크림5ml 증정)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">43,500</span>원
										</span><span class="tx_cur"><span class="tx_num">34,800</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000174273"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000174273" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

						</li>

						<li class="slide_list">

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000166590&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=21&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=13"
									class="item a_detail" data-ref-goodsno="A000000166590"
									data-egrank="21" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[NEW] 라운드랩 소나무 진정 시카 앰플 기획 (+진정 크림 10ml 증정)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=13"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000166590&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;21&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=13&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016659010ko.jpg?l=ko"
										alt="[NEW] 라운드랩 소나무 진정 시카 앰플 기획 (+진정 크림 10ml 증정)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[NEW] 라운드랩 소나무 진정 시카 앰플 기획 (+진정 크림 10ml
											증정)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">24,000</span>원
										</span><span class="tx_cur"><span class="tx_num">19,600</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000166590"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000166590" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189488&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=32&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=14"
									class="item a_detail" data-ref-goodsno="A000000189488"
									data-egrank="32" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[리뉴업] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=14"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000189488&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;32&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=14&quot;); return false;"
									name="Home_Curation1_More"><span class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018948809ko.jpg?l=ko"
										alt="[리뉴업] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml + 50ml 기획"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[리뉴업] 더랩바이블랑두 저분자 히알루론산 딥 토너 200ml +
											50ml 기획</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">23,000</span>원
										</span><span class="tx_cur"><span class="tx_num">15,990</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000189488"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000189488" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189837&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=4&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=15"
									class="item a_detail" data-ref-goodsno="A000000189837"
									data-egrank="4" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=15"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000189837&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;4&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=15&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018983703ko.jpg?l=ko"
										alt="[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[흔적미백] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml
											듀오기획</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">46,000</span>원
										</span><span class="tx_cur"><span class="tx_num">30,600</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag coupon">쿠폰</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000189837"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000189837" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188682&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=12&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=16"
									class="item a_detail" data-ref-goodsno="A000000188682"
									data-egrank="12" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[한정기획] 피지오겔 레드수딩 AI 크림 100ml+30ml 증정 기획"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=16"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000188682&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;12&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=16&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018868202ko.jpg?l=ko"
										alt="[한정기획] 피지오겔 레드수딩 AI 크림 100ml+30ml 증정 기획"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[한정기획] 피지오겔 레드수딩 AI 크림 100ml+30ml 증정 기획</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">49,900</span>원
										</span><span class="tx_cur"><span class="tx_num">29,900</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000188682"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000188682" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

						</li>

						<li class="slide_list">

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000191774&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=5&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=17"
									class="item a_detail" data-ref-goodsno="A000000191774"
									data-egrank="5" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[피부결] 넘버즈인 3번 보들보들 결 세럼 50ml 기획 (+15ml 증정)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=17"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000191774&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;5&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=17&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019177402ko.jpg?l=ko"
										alt="[피부결] 넘버즈인 3번 보들보들 결 세럼 50ml 기획 (+15ml 증정)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[피부결] 넘버즈인 3번 보들보들 결 세럼 50ml 기획 (+15ml
											증정)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">30,000</span>원
										</span><span class="tx_cur"><span class="tx_num">21,830</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag coupon">쿠폰</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000191774"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000191774" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000012880&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=25&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=18"
									class="item a_detail" data-ref-goodsno="A000000012880"
									data-egrank="25" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^피지오겔 DMT 페이셜 크림 75ml"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=18"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000012880&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;25&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=18&quot;); return false;"
									name="Home_Curation1_More"><span class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0001/A00000001288002ko.jpg?l=ko"
										alt="피지오겔 DMT 페이셜 크림 75ml" onerror="common.errorImg(this);"
										class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">피지오겔 DMT 페이셜 크림 75ml</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">25,500</span>원
										</span><span class="tx_cur"><span class="tx_num">20,400</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000012880"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000012880" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000181062&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=23&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=19"
									class="item a_detail" data-ref-goodsno="A000000181062"
									data-egrank="23" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^아이소이 속보습, 100시간 장수진 수분크림 70ml 기획(+수분앰플 10ml)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=19"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000181062&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;23&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=19&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018106213ko.jpg?l=ko"
										alt="아이소이 속보습, 100시간 장수진 수분크림 70ml 기획(+수분앰플 10ml)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">아이소이 속보습, 100시간 장수진 수분크림 70ml 기획(+수분앰플
											10ml)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">36,000</span>원
										</span><span class="tx_cur"><span class="tx_num">27,000</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000181062"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000181062" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190051&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=3&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=20"
									class="item a_detail" data-ref-goodsno="A000000190051"
									data-egrank="3" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[윈터 PICK] 마몽드 포어 슈링커 바쿠치올 크림 60ml 단독기획 (+30ml 추가증정)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=20"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000190051&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;3&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=20&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019005123ko.jpg?l=ko"
										alt="[윈터 PICK] 마몽드 포어 슈링커 바쿠치올 크림 60ml 단독기획 (+30ml 추가증정)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[윈터 PICK] 마몽드 포어 슈링커 바쿠치올 크림 60ml 단독기획
											(+30ml 추가증정)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">38,000</span>원
										</span><span class="tx_cur"><span class="tx_num">26,600</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag coupon">쿠폰</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000190051"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000190051" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

						</li>

						<li class="slide_list">

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000147809&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=15&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=21"
									class="item a_detail" data-ref-goodsno="A000000147809"
									data-egrank="15" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[형원PICK] 웰라쥬 리얼 히알루로닉 블루 100 앰플 100ml 기획 (+원데이키트2ea)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=21"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000147809&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;15&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=21&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014780915ko.jpg?l=ko"
										alt="[형원PICK] 웰라쥬 리얼 히알루로닉 블루 100 앰플 100ml 기획 (+원데이키트2ea)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[형원PICK] 웰라쥬 리얼 히알루로닉 블루 100 앰플 100ml
											기획 (+원데이키트2ea)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">28,000</span>원
										</span><span class="tx_cur"><span class="tx_num">22,400</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000147809"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000147809" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000166510&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=20&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=22"
									class="item a_detail" data-ref-goodsno="A000000166510"
									data-egrank="20" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=22"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000166510&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;20&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=22&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016651002ko.jpg?l=ko"
										alt="차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">차앤박(CNP) 프로폴리스 에너지 앰플 미스트 250ml</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">25,000</span>원
										</span><span class="tx_cur"><span class="tx_num">11,850</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000166510"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000166510" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171556&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=40&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=23"
									class="item a_detail" data-ref-goodsno="A000000171556"
									data-egrank="40" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^식물나라 프로폴리스 워터리 멀티 오일 더블기획50mL*2"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=23"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000171556&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;40&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=23&quot;); return false;"
									name="Home_Curation1_More"><span class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017155602ko.jpg?l=ko"
										alt="식물나라 프로폴리스 워터리 멀티 오일 더블기획50mL*2"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">식물나라 프로폴리스 워터리 멀티 오일 더블기획50mL*2</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">28,800</span>원
										</span><span class="tx_cur"><span class="tx_num">18,800</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000171556"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000171556" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175198&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=22&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=24"
									class="item a_detail" data-ref-goodsno="A000000175198"
									data-egrank="22" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[NEW]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 크림 50ml"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=24"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000175198&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;22&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=24&quot;); return false;"
									name="Home_Curation1_More"><span class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017519811ko.jpg?l=ko"
										alt="[NEW]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 크림 50ml"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[NEW]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 크림 50ml</p>
									</div>
									<p class="prd_price">
										<span class="tx_cur"><span class="tx_num">48,000</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000175198"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000175198" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

						</li>

						<li class="slide_list">

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190166&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=10&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=25"
									class="item a_detail" data-ref-goodsno="A000000190166"
									data-egrank="10" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[대용량/키링 증정] 리얼베리어 익스트림 크림 70ml 1+1 기획 (벨리곰 콜라보)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=25"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000190166&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;10&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=25&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019016603ko.jpg?l=ko"
										alt="[대용량/키링 증정] 리얼베리어 익스트림 크림 70ml 1+1 기획 (벨리곰 콜라보)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[대용량/키링 증정] 리얼베리어 익스트림 크림 70ml 1+1 기획
											(벨리곰 콜라보)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">38,000</span>원
										</span><span class="tx_cur"><span class="tx_num">29,500</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000190166"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000190166" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190132&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=10&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=26"
									class="item a_detail" data-ref-goodsno="A000000190132"
									data-egrank="10" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[선물세트] 닥터지 블랙 스네일 옴므 프레스티지 3종세트(토너150ml+에멀전150ml+클렌징폼70ml)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=26"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000190132&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;10&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=26&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019013204ko.jpg?l=ko"
										alt="[선물세트] 닥터지 블랙 스네일 옴므 프레스티지 3종세트(토너150ml+에멀전150ml+클렌징폼70ml)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[선물세트] 닥터지 블랙 스네일 옴므 프레스티지
											3종세트(토너150ml+에멀전150ml+클렌징폼70ml)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">34,000</span>원
										</span><span class="tx_cur"><span class="tx_num">31,900</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag coupon">쿠폰</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000190132"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000190132" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182581&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=21&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=27"
									class="item a_detail" data-ref-goodsno="A000000182581"
									data-egrank="21" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[단독기획]닥터자르트 시카페어 인텐시브 수딩 리페어 크림 기획(50ml+15ml*2ea)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=27"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000182581&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;21&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=27&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018258101ko.jpg?l=ko"
										alt="[단독기획]닥터자르트 시카페어 인텐시브 수딩 리페어 크림 기획(50ml+15ml*2ea)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[단독기획]닥터자르트 시카페어 인텐시브 수딩 리페어 크림
											기획(50ml+15ml*2ea)</p>
									</div>
									<p class="prd_price">
										<span class="tx_cur"><span class="tx_num">49,000</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000182581"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000182581" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188240&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=7&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=28"
									class="item a_detail" data-ref-goodsno="A000000188240"
									data-egrank="7" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[서강준 Pick] 성분에디터 그린토마토 포어 리프팅 앰플 플러스 30ml 더블 기획"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=28"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000188240&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;7&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=28&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018824005ko.jpg?l=ko"
										alt="[서강준 Pick] 성분에디터 그린토마토 포어 리프팅 앰플 플러스 30ml 더블 기획"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[서강준 Pick] 성분에디터 그린토마토 포어 리프팅 앰플 플러스
											30ml 더블 기획</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">25,900</span>원
										</span><span class="tx_cur"><span class="tx_num">17,200</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag coupon">쿠폰</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000188240"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000188240" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

						</li>

						<li class="slide_list">

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165598&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=12&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=29"
									class="item a_detail" data-ref-goodsno="A000000165598"
									data-egrank="12" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[단독기획] 토리든 다이브인 저분자 히알루론산 수딩크림 더블기획 (100ml+100ml)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=29"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000165598&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;12&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=29&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016559824ko.jpg?l=ko"
										alt="[단독기획] 토리든 다이브인 저분자 히알루론산 수딩크림 더블기획 (100ml+100ml)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[단독기획] 토리든 다이브인 저분자 히알루론산 수딩크림 더블기획
											(100ml+100ml)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">42,000</span>원
										</span><span class="tx_cur"><span class="tx_num">29,400</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000165598"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000165598" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000184191&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=27&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=30"
									class="item a_detail" data-ref-goodsno="A000000184191"
									data-egrank="27" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^에스트라 아토베리어365 하이드로에센스 200ml 기획 (+크림 30ml+무기자차선크림3ml 증정)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=30"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000184191&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;27&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=30&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018419102ko.jpg?l=ko"
										alt="에스트라 아토베리어365 하이드로에센스 200ml 기획 (+크림 30ml+무기자차선크림3ml 증정)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">에스트라 아토베리어365 하이드로에센스 200ml 기획 (+크림
											30ml+무기자차선크림3ml 증정)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">32,000</span>원
										</span><span class="tx_cur"><span class="tx_num">24,000</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000184191"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000184191" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000159783&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=19&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=31"
									class="item a_detail" data-ref-goodsno="A000000159783"
									data-egrank="19" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[단독기획] 토니모리 원더 세라마이드 모찌 토너 (본품500ml+100ml)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=31"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000159783&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;19&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=31&quot;); return false;"
									name="Home_Curation1_More"><span class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015978327ko.jpg?l=ko"
										alt="[단독기획] 토니모리 원더 세라마이드 모찌 토너 (본품500ml+100ml)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[단독기획] 토니모리 원더 세라마이드 모찌 토너
											(본품500ml+100ml)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">15,000</span>원
										</span><span class="tx_cur"><span class="tx_num">12,000</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000159783"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000159783" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189769&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=8&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=32"
									class="item a_detail" data-ref-goodsno="A000000189769"
									data-egrank="8" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[민동성공동개발] 메디필 히알루론산 레이어 물톡스 앰플 더블 기획 30ml "
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=32"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000189769&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;8&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=32&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018976914ko.jpg?l=ko"
										alt="[민동성공동개발] 메디필 히알루론산 레이어 물톡스 앰플 더블 기획 30ml "
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[민동성공동개발] 메디필 히알루론산 레이어 물톡스 앰플 더블 기획
											30ml</p>
									</div>
									<p class="prd_price">
										<span class="tx_cur"><span class="tx_num">34,000</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000189769"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000189769" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

						</li>

						<li class="slide_list">

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000156842&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=2&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=33"
									class="item a_detail" data-ref-goodsno="A000000156842"
									data-egrank="2" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[11월 올영픽/화장솜 증정기획]바이오더마 하이드라비오 에센스로션 200ml(화장솜 증정)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=33"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000156842&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;2&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=33&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015684228ko.jpg?l=ko"
										alt="[11월 올영픽/화장솜 증정기획]바이오더마 하이드라비오 에센스로션 200ml(화장솜 증정)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[11월 올영픽/화장솜 증정기획]바이오더마 하이드라비오 에센스로션
											200ml(화장솜 증정)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">35,000</span>원
										</span><span class="tx_cur"><span class="tx_num">22,710</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag coupon">쿠폰</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000156842"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000156842" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000185995&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=28&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=34"
									class="item a_detail" data-ref-goodsno="A000000185995"
									data-egrank="28" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^이니스프리 레티놀 시카 흔적 앰플 30ml 기획 (+7ml 증정)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=34"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000185995&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;28&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=34&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018599518ko.jpg?l=ko"
										alt="이니스프리 레티놀 시카 흔적 앰플 30ml 기획 (+7ml 증정)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">이니스프리 레티놀 시카 흔적 앰플 30ml 기획 (+7ml 증정)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">40,000</span>원
										</span><span class="tx_cur"><span class="tx_num">30,000</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag coupon">쿠폰</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000185995"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000185995" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190691&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=35&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=35"
									class="item a_detail" data-ref-goodsno="A000000190691"
									data-egrank="35" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[한정기획/1+1] 스킨푸드 로열허니 프로폴리스 인리치 에센스 50ml 리필기획"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=35"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000190691&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;35&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=35&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019069103ko.jpg?l=ko"
										alt="[한정기획/1+1] 스킨푸드 로열허니 프로폴리스 인리치 에센스 50ml 리필기획"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[한정기획/1+1] 스킨푸드 로열허니 프로폴리스 인리치 에센스 50ml
											리필기획</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">32,000</span>원
										</span><span class="tx_cur"><span class="tx_num">20,800</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag coupon">쿠폰</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000190691"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000190691" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190116&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=39&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=36"
									class="item a_detail" data-ref-goodsno="A000000190116"
									data-egrank="39" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[한정기획] 아이소이 10년간, 1등 잡티세럼 20ml+20ml+15ml 증량 기획"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=36"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000190116&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;39&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=36&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019011612ko.jpg?l=ko"
										alt="[한정기획] 아이소이 10년간, 1등 잡티세럼 20ml+20ml+15ml 증량 기획"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[한정기획] 아이소이 10년간, 1등 잡티세럼
											20ml+20ml+15ml 증량 기획</p>
									</div>
									<p class="prd_price">
										<span class="tx_cur"><span class="tx_num">54,000</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000190116"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000190116" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

						</li>

						<li class="slide_list">

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000184129&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=14&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=37"
									class="item a_detail" data-ref-goodsno="A000000184129"
									data-egrank="14" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^에스트라 아토베리어365 로션 150ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=37"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000184129&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;14&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=37&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018412902ko.jpg?l=ko"
										alt="에스트라 아토베리어365 로션 150ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">에스트라 아토베리어365 로션 150ml 기획 (+하이드로에센스
											25ml+무기자차선크림10ml 증정)</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">31,000</span>원
										</span><span class="tx_cur"><span class="tx_num">23,200</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000184129"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000184129" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>

							<div class="box">
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190824&amp;dispCatNo=90000010001&amp;egcode=a016_a016&amp;egrankcode=9&amp;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=38"
									class="item a_detail" data-ref-goodsno="A000000190824"
									data-egrank="9" data-egcode="a016_a016"
									data-attr="장바구니^추천상품팝업^[곰민영 PICK/디퓨저 선착순 증정] 한율 어린쑥 수분진정크림 55ml+25ml+마스크팩 기획"
									data-impression="null"
									data-tracking-param="t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=38"
									onclick="javascript:common.wlog(&quot;home_curation1_more_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000190824&quot;, &quot;undefined&quot;,&quot;home_curation1_more_prod&quot; , &quot;pc_main_01_c&quot;,&quot;a016_a016&quot; ,&quot;9&quot; ,&quot;Home_Curation1_More&quot;,&quot;t_page=홈&amp;t_click=큐레이션1_더보기_상품상세&amp;t_number=38&quot;); return false;"
									name="Home_Curation1_More"><span class="thumb_flag best">베스트</span><span
									class="thumImg"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019082407ko.jpg?l=ko"
										alt="[곰민영 PICK/디퓨저 선착순 증정] 한율 어린쑥 수분진정크림 55ml+25ml+마스크팩 기획"
										onerror="common.errorImg(this);" class="mCS_img_loaded"></span>
									<div class="prd_name">
										<p class="tx_name">[곰민영 PICK/디퓨저 선착순 증정] 한율 어린쑥 수분진정크림
											55ml+25ml+마스크팩 기획</p>
									</div>
									<p class="prd_price">
										<span class="tx_org"><span class="tx_num">38,000</span>원
										</span><span class="tx_cur"><span class="tx_num">28,200</span>원
										</span>
									</p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span><span
											class="icon_flag coupon">쿠폰</span><span
											class="icon_flag gift">증정</span><span
											class="icon_flag delivery">오늘드림</span>
									</p></a>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000190824"
									data-rccode="pc_main_01_c">
									<span>찜하기전</span>
								</button>
								<button type="button" class="btnbag2"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000190824" data-item-no="001"
									data-rccode="pc_main_01_c">장바구니 담기</button>

							</div>
						</li>
					</ul>

				</div>
				<div id="mCSB_2_scrollbar_vertical"
					class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical"
					style="display: block;">
					<div class="mCSB_draggerContainer">
						<div id="mCSB_2_dragger_vertical" class="mCSB_dragger"
							style="position: absolute; min-height: 30px; top: 0px; display: block; height: 80px; max-height: 465px;">
							<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
						</div>
						<div class="mCSB_draggerRail"></div>
					</div>
				</div>
			</div>
		</div>

		<button class="layer_close type4" onclick="">창 닫기</button>
		<input type="hidden" id="recoGoodsYn" value="Y">

	</div>
</div>

</html>