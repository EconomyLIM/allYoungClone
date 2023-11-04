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
<link rel="stylesheet" href="/BlackOY/css/style.css">
<title>블랙올리브영 온라인몰</title>
</head>
<body>
	<jsp:include page="/layout/head.jsp"></jsp:include>
	<div>
		<div id="Container">

			<div id="Contents">
				<div class="main_full_banner">
					<div
						class="banner_wrap slick_slider slick-initialized slick-slider"
						id="mainFullSlider">
						<button type="button" data-role="none"
							class="slick-prev slick-arrow" aria-label="Previous"
							role="button" style="display: block;">이전 슬라이드</button>


						<div aria-live="polite" class="slick-list draggable">
							<div class="slick-track" role="listbox"
								style="opacity: 1; width: 22350px;">
								<div class="slick-slide" data-slick-index="0" aria-hidden="true"
									style="width: 1490px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;"
									tabindex="-1" role="option" aria-describedby="slick-slide00">


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '블랙프라이데이&nbsp;인덱스_조홍주', banner_number: '1'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103450001&amp;trackingCd=Home_Planshop1_1_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=블랙프라이데이&nbsp;인덱스_조홍주&amp;t_number=1"
										class="banner_link"
										data-attr="홈^메인롤링배너^블랙프라이데이&nbsp;인덱스_조홍주^1" data-trk="/"
										tabindex="-1">
										<p class="banner_desc">
											<span class="tit" style="color: #fff;">올영 블프 </span> <strong
												style="color: #fff;">일년에 단 한번<br>올영 <br>블랙프라이데이
											</strong> <span style="color: #fff;">최대 60%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/8723336747874487057.jpg"
										alt="블랙프라이데이&nbsp;인덱스_조홍주">
									</a>
								</div>
								<div class="slick-slide slick-current slick-active"
									data-slick-index="1" aria-hidden="false"
									style="width: 1490px; position: relative; left: -1490px; top: 0px; z-index: 999; opacity: 1;"
									tabindex="-1" role="option" aria-describedby="slick-slide01">

									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '올!블랙&nbsp;일주일특가_임민경', banner_number: '2'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103450005&amp;trackingCd=Home_Planshop1_2_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=올!블랙&nbsp;일주일특가_임민경&amp;t_number=2"
										class="banner_link" data-attr="홈^메인롤링배너^올!블랙&nbsp;일주일특가_임민경^2"
										data-trk="/" tabindex="0">
										<p class="banner_desc">


											<span class="tit" style="color: #fff;">올영 블프</span> <strong
												style="color: #fff;">일주일간<br>만나는<br>블랙프라이데이
											</strong> <span style="color: #fff;">카테고리별 맞춤템 추천</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/4202070695246429681.jpg"
										alt="올!블랙&nbsp;일주일특가_임민경">
									</a>
								</div>
								<div class="slick-slide" data-slick-index="2" aria-hidden="true"
									style="width: 1490px; position: relative; left: -2980px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;"
									tabindex="-1" role="option" aria-describedby="slick-slide02">


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '올!블랙&nbsp;럭스에디트_임민경', banner_number: '3'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103450003&amp;trackingCd=Home_Planshop1_3_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=올!블랙&nbsp;럭스에디트_임민경&amp;t_number=3"
										class="banner_link" data-attr="홈^메인롤링배너^올!블랙&nbsp;럭스에디트_임민경^3"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">

											<span class="tit" style="color: #fff;">올영 블프</span> <strong
												style="color: #fff;">프리미엄도<br>블랙<br>프라이데이
											</strong> <span style="color: #fff;">최대 50%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/2300464335791787914.jpg"
										alt="올!블랙&nbsp;럭스에디트_임민경">
									</a>
								</div>
								<div class="slick-slide" data-slick-index="3" aria-hidden="true"
									style="width: 1490px; position: relative; left: -4470px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;"
									tabindex="-1" role="option" aria-describedby="slick-slide03">


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '올!블랙&nbsp;LASK&nbsp;PICK_조홍주', banner_number: '4'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103450004&amp;trackingCd=Home_Planshop1_4_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=올!블랙&nbsp;LASK&nbsp;PICK_조홍주&amp;t_number=4"
										class="banner_link"
										data-attr="홈^메인롤링배너^올!블랙&nbsp;LASK&nbsp;PICK_조홍주^4"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">

											<span class="tit" style="color: #fff;">올영 블프</span> <strong
												style="color: #fff;">마지막<br>기회를<br>잡아요
											</strong> <span style="color: #fff;">라스트픽 최대 70%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/7314032448921968159.jpg"
										alt="올!블랙&nbsp;LASK&nbsp;PICK_조홍주">
									</a>
								</div>
								<div class="slick-slide" data-slick-index="4" aria-hidden="true"
									style="width: 1490px; position: relative; left: -5960px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;"
									tabindex="-1" role="option" aria-describedby="slick-slide04">


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1101-4001_김진주', banner_number: '5'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?&amp;dispCatNo=500000102830105&amp;trackingCd=Home_Planshop1_5_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1101-4001_김진주&amp;t_number=5"
										class="banner_link" data-attr="홈^메인롤링배너^1101-4001_김진주^5"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">

											<span class="tit">올영PICK</span> <strong>식욕 돋는<br>가을에도<br>가벼워요
											</strong> <span>최대 30%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/6883018551140974566.jpg"
										alt="1101-4001_김진주">
									</a>
								</div>
								<div class="slick-slide" data-slick-index="5" aria-hidden="true"
									style="width: 1490px; position: relative; left: -7450px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;"
									tabindex="-1" role="option" aria-describedby="slick-slide05">


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1101-5001_박수영', banner_number: '6'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102860107&amp;trackingCd=Home_Planshop1_6_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1101-5001_박수영&amp;t_number=6"
										class="banner_link" data-attr="홈^메인롤링배너^1101-5001_박수영^6"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">

											<span class="tit">올영PICK</span> <strong>소중한<br>내
												몸을 위한 <br>베스트
											</strong> <span>최대 50%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/1906276245925733345.jpg"
										alt="1101-5001_박수영">
									</a>
								</div>
								<div class="slick-slide" data-slick-index="6" aria-hidden="true"
									style="width: 1490px; position: relative; left: -8940px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;"
									tabindex="-1" role="option" aria-describedby="slick-slide06">


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1101-5101_이보미', banner_number: '7'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?&amp;dispCatNo=500000102870136&amp;trackingCd=Home_Planshop1_7_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1101-5101_이보미&amp;t_number=7"
										class="banner_link" data-attr="홈^메인롤링배너^1101-5101_이보미^7"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">
											<span class="tit">올영PICK</span> <strong>망설임 없는<br>환한
												<br>미소를 위해
											</strong> <span>최대 40%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/7700232044241564509.jpg"
										alt="1101-5101_이보미">
									</a>
								</div>
								<div class="slick-slide" data-slick-index="7" aria-hidden="true"
									style="width: 1490px; position: relative; left: -10430px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;"
									tabindex="-1" role="option" aria-describedby="slick-slide07">


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1101-4002_김진주', banner_number: '8'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?&amp;dispCatNo=500000102830106&amp;trackingCd=Home_Planshop1_8_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1101-4002_김진주&amp;t_number=8"
										class="banner_link" data-attr="홈^메인롤링배너^1101-4002_김진주^8"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">
											<span class="tit">올영PICK</span> <strong>비타민 <br>먹을<br>시간이에요
											</strong> <span>최대 27%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/4721278876185545783.jpg"
										alt="1101-4002_김진주">
									</a>
								</div>
								<div class="slick-slide" data-slick-index="8" aria-hidden="true"
									style="width: 1490px; position: relative; left: -11920px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;"
									tabindex="-1" role="option" aria-describedby="slick-slide08">


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1101-4003_김진주', banner_number: '9'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?&amp;dispCatNo=500000102830107&amp;trackingCd=Home_Planshop1_9_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1101-4003_김진주&amp;t_number=9"
										class="banner_link" data-attr="홈^메인롤링배너^1101-4003_김진주^9"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">
											<span class="tit">올영PICK</span> <strong>맛있게<br>즐기는<br>나만의
												건강루틴
											</strong> <span>건강/일반식품 최대 54%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/4765328226824824908.jpg"
										alt="1101-4003_김진주">
									</a>
								</div>
								<div class="slick-slide" data-slick-index="9" aria-hidden="true"
									style="width: 1490px; position: relative; left: -13410px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;"
									tabindex="-1" role="option" aria-describedby="slick-slide09">


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1101-5201_도고운', banner_number: '10'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102840166&amp;trackingCd=Home_Planshop1_10_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1101-5201_도고운&amp;t_number=10"
										class="banner_link" data-attr="홈^메인롤링배너^1101-5201_도고운^10"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">

											<span class="tit">올영PICK</span> <strong>포근한<br>가을밤을<br>만들어
												드려요
											</strong> <span>꿀잠 아이템 최대 32%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/3639582332837492395.jpg"
										alt="1101-5201_도고운">
									</a>
								</div>
								<div class="slick-slide" data-slick-index="10"
									aria-hidden="true"
									style="width: 1490px; position: relative; left: -14900px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;"
									tabindex="-1" role="option" aria-describedby="slick-slide010">

									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1101-5102_이보미', banner_number: '11'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?&amp;dispCatNo=500000102870137&amp;trackingCd=Home_Planshop1_11_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1101-5102_이보미&amp;t_number=11"
										class="banner_link" data-attr="홈^메인롤링배너^1101-5102_이보미^11"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">

											<span class="tit">올영PICK</span> <strong>필요한 부위에<br>맞춤형으로<br>케어해요
											</strong> <span>구강/위생 최대 28%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/8448469040515196412.jpg"
										alt="1101-5102_이보미">
									</a>
								</div>
								<div class="slick-slide" data-slick-index="11"
									aria-hidden="true"
									style="width: 1490px; position: relative; left: -16390px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;"
									tabindex="-1" role="option" aria-describedby="slick-slide011">


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1101-0501_유선경', banner_number: '12'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102790136&amp;trackingCd=Home_Planshop1_12_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1101-0501_유선경&amp;t_number=12"
										class="banner_link" data-attr="홈^메인롤링배너^1101-0501_유선경^12"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">

											<span class="tit">올영PICK</span> <strong>어떤 순간에도<br>촉촉함과<br>함께
											</strong> <span>환절기 보습템 최대 31%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/6322194808716433120.jpg"
										alt="1101-0501_유선경">
									</a>
								</div>
								<div class="slick-slide" data-slick-index="12"
									aria-hidden="true"
									style="width: 1490px; position: relative; left: -17880px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;"
									tabindex="-1" role="option" aria-describedby="slick-slide012">


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1101-1005_권세희', banner_number: '13'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102750243&amp;trackingCd=Home_Planshop1_13_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1101-1005_권세희&amp;t_number=13"
										class="banner_link" data-attr="홈^메인롤링배너^1101-1005_권세희^13"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">

											<span class="tit">클리오</span> <strong>클리오의<br>30주년을<br>축하해주세요
											</strong> <span>최대 48%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/7905671513428280498.jpg"
										alt="1101-1005_권세희">
									</a>
								</div>
								<div class="slick-slide" data-slick-index="13"
									aria-hidden="true"
									style="width: 1490px; position: relative; left: -19370px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;"
									tabindex="-1" role="option" aria-describedby="slick-slide013">


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '1101-2001_권수진', banner_number: '14'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102710084&amp;trackingCd=Home_Planshop1_14_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=1101-2001_권수진&amp;t_number=14"
										class="banner_link" data-attr="홈^메인롤링배너^1101-2001_권수진^14"
										data-trk="/" tabindex="-1">
										<p class="banner_desc">

											<span class="tit" style="color: #fff;">오딧세이</span> <strong
												style="color: #fff;">빛나는<br>그의<br>피부를 위해
											</strong> <span style="color: #fff;">최대 23%할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/8917852394022671155.jpg"
										alt="1101-2001_권수진">
									</a>
								</div>
								<div class="slick-slide" data-slick-index="14"
									aria-hidden="true"
									style="width: 1490px; position: relative; left: -20860px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;"
									tabindex="-1" role="option" aria-describedby="slick-slide014">


									<a
										onclick="common.reqAmplitude('홈_메인롤링 배너 클릭', {entry_source: '홈', click_source: '메인롤링배너', banner_name: '올영라이브&nbsp;<비거너리바이달바>_박하연', banner_number: '15'});"
										href="https://www.oliveyoung.co.kr/store/event/getEventDetail.do?evtNo=00000000020135&amp;trackingCd=Home_Planshop1_15_PROD&amp;t_page=홈&amp;t_click=메인롤링배너&amp;t_banner_name=올영라이브&nbsp;<비거너리바이달바>_박하연&amp;t_number=15"
										class="banner_link"
										data-attr="홈^메인롤링배너^올영라이브&nbsp;<비거너리바이달바>_박하연^15" data-trk="/"
										tabindex="-1">
										<p class="banner_desc">


											<span class="tit" style="color: #fff;">11데이트</span> <strong
												style="color: #fff;">블랙프라이데이<br>특별기획<br>라이브방송
											</strong> <span style="color: #fff;">비거너리바이달바 최대 45% 할인</span>
										</p> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/1781365443609865.jpg"
										alt="올영라이브&nbsp;<비거너리바이달바>_박하연">
									</a>
								</div>
							</div>
						</div>

						<button type="button" data-role="none"
							class="slick-next slick-arrow" aria-label="Next" role="button"
							style="display: block;">다음 슬라이드</button>
						<button id="mainSliderBtn">멈춤</button>
						<p class="slick-paging">
							<span class="cur_no">2</span>/15
						</p>
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


									<button class="moreBtn" id="crt_more_p002"
										onclick="common.reqAmplitude('큐레이션1_더보기 클릭', {entry_source: '홈', click_source: '큐레이션1_더보기'});">
										<span>더보기</span>
									</button>
								</div>
								<div class="curation_slide type03">
									<ul id="main_curation02_01"
										class="slide_list slick_slider slick-initialized slick-slider"
										name="section1">
										<div aria-live="polite" class="slick-list">
											<div class="slick-track" role="listbox"
												style="opacity: 1; width: 2550px;">
												<li data-page-no="1"
													class="slick-slide slick-current slick-active"
													data-slick-index="0" aria-hidden="false"
													style="width: 510px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;"
													tabindex="-1" role="option"
													aria-describedby="slick-slide50">
													<ul class="curation_list">

														<li class="curation_item" data-idx="0"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000174066&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation1_1&amp;curation=like&amp;egcode=a016_a016&amp;rccode=pc_main_01_c&amp;egrankcode=5&amp;t_page=홈&amp;t_click=큐레이션1_상품상세&amp;t_number=1"
															name="Home_Curation1_1" class="item a_detail"
															data-ref-goodsno="A000000174066" data-egrank="5"
															data-egcode="a016_a016"
															data-attr="홈^큐레이션1^[NEW 컬러 추가] 하트퍼센트 도트 온 무드 립펜슬(17colors)^1"
															data-impression="A000000174066^홈_큐레이션1^1"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="0"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000174066&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션1&quot;, &quot;1&quot;);common.wlog(&quot;home_curation1_prod1&quot;);common.link.moveGoodsDetailCuration(&quot;A000000174066&quot;, &quot;90000010001&quot;,&quot;like&quot;,&quot;pc_main_01_c&quot;, &quot;a016_a016&quot;, &quot;5&quot;, &quot;Home_Curation1_1&quot;);"
															data-impression-visibility="1"><span
																class="thumb_flag best">베스트</span><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017406610ko.jpg?l=ko"
																	alt="[NEW 컬러 추가] 하트퍼센트 도트 온 무드 립펜슬(17colors)"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">[NEW 컬러 추가] 하트퍼센트 도트 온 무드
																		립펜슬(17colors)</p>
																</div>
																<p class="prd_price">
																	<span class="tx_cur"><span class="tx_num">14,000</span>원
																	</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000174066" data-item-no="001"
																tabindex="0" data-rccode="pc_main_01_c">장바구니 담기</button>

														</li>



														<li class="curation_item" data-idx="1"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188688&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation1_1&amp;curation=like&amp;egcode=a016_a016&amp;rccode=pc_main_01_c&amp;egrankcode=14&amp;t_page=홈&amp;t_click=큐레이션1_상품상세&amp;t_number=2"
															name="Home_Curation1_1" class="item a_detail"
															data-ref-goodsno="A000000188688" data-egrank="14"
															data-egcode="a016_a016"
															data-attr="홈^큐레이션1^[데이지PICK/모공탄력]닥터지 블랙스네일 레티놀 앰플 기획(앰플 50ml 대용량 +크림 15ml)^2"
															data-impression="A000000188688^홈_큐레이션1^2"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="0"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188688&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션1&quot;, &quot;2&quot;);common.wlog(&quot;home_curation1_prod1&quot;);common.link.moveGoodsDetailCuration(&quot;A000000188688&quot;, &quot;90000010001&quot;,&quot;like&quot;,&quot;pc_main_01_c&quot;, &quot;a016_a016&quot;, &quot;14&quot;, &quot;Home_Curation1_1&quot;);"
															data-impression-visibility="1"><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018868809ko.jpg?l=ko"
																	alt="[데이지PICK/모공탄력]닥터지 블랙스네일 레티놀 앰플 기획(앰플 50ml 대용량 +크림 15ml)"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">[데이지PICK/모공탄력]닥터지 블랙스네일 레티놀 앰플
																		기획(앰플 50ml 대용량 +크림 15ml)</p>
																</div>
																<p class="prd_price">
																	<span class="tx_org"><span class="tx_num">29,000</span>원
																	</span><span class="tx_cur"><span class="tx_num">20,450</span>원
																	</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag sale">세일</span><span
																		class="icon_flag coupon">쿠폰</span><span
																		class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000188688" data-item-no="001"
																tabindex="0" data-rccode="pc_main_01_c">장바구니 담기</button>

														</li>

													</ul>
												</li>
												<li data-page-no="2" class="slick-slide"
													data-slick-index="1" aria-hidden="true"
													style="width: 510px; position: relative; left: -510px; top: 0px; z-index: 998; opacity: 0;"
													tabindex="-1" role="option"
													aria-describedby="slick-slide51">
													
													<ul class="curation_list">

														<li class="curation_item" data-idx="2"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190449&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation1_2&amp;curation=like&amp;egcode=a016_a016&amp;rccode=pc_main_01_c&amp;egrankcode=8&amp;t_page=홈&amp;t_click=큐레이션1_상품상세&amp;t_number=3"
															name="Home_Curation1_2" class="item a_detail"
															data-ref-goodsno="A000000190449" data-egrank="8"
															data-egcode="a016_a016"
															data-attr="홈^큐레이션1^[블프특가][NEW]브링그린 징크테카1.2%흔적세럼25mL 더블기획^3"
															data-impression="A000000190449^홈_큐레이션1^3"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190449&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션1&quot;, &quot;3&quot;);common.wlog(&quot;home_curation1_prod2&quot;);common.link.moveGoodsDetailCuration(&quot;A000000190449&quot;, &quot;90000010001&quot;,&quot;like&quot;,&quot;pc_main_01_c&quot;, &quot;a016_a016&quot;, &quot;8&quot;, &quot;Home_Curation1_2&quot;);"
															data-impression-visibility="1"><span
																class="thumb_flag best">베스트</span><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019044902ko.jpg?l=ko"
																	alt="[블프특가][NEW]브링그린 징크테카1.2%흔적세럼25mL 더블기획"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">[블프특가][NEW]브링그린 징크테카1.2%흔적세럼25mL
																		더블기획</p>
																</div>
																<p class="prd_price">
																	<span class="tx_org"><span class="tx_num">39,600</span>원
																	</span><span class="tx_cur"><span class="tx_num">23,040</span>원
																	</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag sale">세일</span><span
																		class="icon_flag coupon">쿠폰</span><span
																		class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000190449" data-item-no="001"
																tabindex="-1" data-rccode="pc_main_01_c">장바구니
																담기</button></li>



														<li class="curation_item" data-idx="3"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188988&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation1_2&amp;curation=like&amp;egcode=a016_a016&amp;rccode=pc_main_01_c&amp;egrankcode=7&amp;t_page=홈&amp;t_click=큐레이션1_상품상세&amp;t_number=4"
															name="Home_Curation1_2" class="item a_detail"
															data-ref-goodsno="A000000188988" data-egrank="7"
															data-egcode="a016_a016"
															data-attr="홈^큐레이션1^클리오 프로아이팔레트에어 싱글 섀도우 증정기획/단품^4"
															data-impression="A000000188988^홈_큐레이션1^4"
															data-ref-dispcatno="90000010001" data-ref-itemno="006"
															tabindex="-1"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188988&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션1&quot;, &quot;4&quot;);common.wlog(&quot;home_curation1_prod2&quot;);common.link.moveGoodsDetailCuration(&quot;A000000188988&quot;, &quot;90000010001&quot;,&quot;like&quot;,&quot;pc_main_01_c&quot;, &quot;a016_a016&quot;, &quot;7&quot;, &quot;Home_Curation1_2&quot;);"
															data-impression-visibility="1"><span
																class="thumb_flag best">베스트</span><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018898810ko.jpg?l=ko"
																	alt="클리오 프로아이팔레트에어 싱글 섀도우 증정기획/단품"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">클리오 프로아이팔레트에어 싱글 섀도우 증정기획/단품</p>
																</div>
																<p class="prd_price">
																	<span class="tx_org"><span class="tx_num">34,000</span>원
																	</span><span class="tx_cur"><span class="tx_num">22,610</span>원
																	</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag sale">세일</span><span
																		class="icon_flag coupon">쿠폰</span><span
																		class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000188988" data-item-no="001"
																tabindex="-1" data-rccode="pc_main_01_c">장바구니
																담기</button></li>

													</ul>
												</li>
												<li data-page-no="3" class="slick-slide"
													data-slick-index="2" aria-hidden="true"
													style="width: 510px; position: relative; left: -1020px; top: 0px; z-index: 998; opacity: 0;"
													tabindex="-1" role="option"
													aria-describedby="slick-slide52">
													<ul class="curation_list">

														<li class="curation_item" data-idx="4"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183197&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation1_3&amp;curation=like&amp;egcode=a016_a016&amp;rccode=pc_main_01_c&amp;egrankcode=12&amp;t_page=홈&amp;t_click=큐레이션1_상품상세&amp;t_number=5"
															name="Home_Curation1_3" class="item a_detail"
															data-ref-goodsno="A000000183197" data-egrank="12"
															data-egcode="a016_a016"
															data-attr="홈^큐레이션1^[후니언픽] 이니스프리 비타C 그린티 엔자임 잡티 세럼 기획 30ml+7ml^5"
															data-impression="A000000183197^홈_큐레이션1^5"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183197&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션1&quot;, &quot;5&quot;);common.wlog(&quot;home_curation1_prod3&quot;);common.link.moveGoodsDetailCuration(&quot;A000000183197&quot;, &quot;90000010001&quot;,&quot;like&quot;,&quot;pc_main_01_c&quot;, &quot;a016_a016&quot;, &quot;12&quot;, &quot;Home_Curation1_3&quot;);"
															data-impression-visibility="1"><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018319758ko.jpg?l=ko"
																	alt="[후니언픽] 이니스프리 비타C 그린티 엔자임 잡티 세럼 기획 30ml+7ml"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">[후니언픽] 이니스프리 비타C 그린티 엔자임 잡티 세럼
																		기획 30ml+7ml</p>
																</div>
																<p class="prd_price">
																	<span class="tx_org"><span class="tx_num">38,000</span>원
																	</span><span class="tx_cur"><span class="tx_num">28,500</span>원
																	</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag sale">세일</span><span
																		class="icon_flag coupon">쿠폰</span><span
																		class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000183197" data-item-no="001"
																tabindex="-1" data-rccode="pc_main_01_c">장바구니
																담기</button></li>



														<li class="curation_item" data-idx="5"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189028&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation1_3&amp;curation=like&amp;egcode=a016_a016&amp;rccode=pc_main_01_c&amp;egrankcode=2&amp;t_page=홈&amp;t_click=큐레이션1_상품상세&amp;t_number=6"
															name="Home_Curation1_3" class="item a_detail"
															data-ref-goodsno="A000000189028" data-egrank="2"
															data-egcode="a016_a016"
															data-attr="홈^큐레이션1^[NEW/구효민개발협업] 하트퍼센트 도트 온 무드 듀이 멜팅 립스틱 1.5g 5종 택1^6"
															data-impression="A000000189028^홈_큐레이션1^6"
															data-ref-dispcatno="90000010001" data-ref-itemno="002"
															tabindex="-1"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189028&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션1&quot;, &quot;6&quot;);common.wlog(&quot;home_curation1_prod3&quot;);common.link.moveGoodsDetailCuration(&quot;A000000189028&quot;, &quot;90000010001&quot;,&quot;like&quot;,&quot;pc_main_01_c&quot;, &quot;a016_a016&quot;, &quot;2&quot;, &quot;Home_Curation1_3&quot;);"
															data-impression-visibility="1"><span
																class="thumb_flag best">베스트</span><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018902809ko.jpg?l=ko"
																	alt="[NEW/구효민개발협업] 하트퍼센트 도트 온 무드 듀이 멜팅 립스틱 1.5g 5종 택1"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">[NEW/구효민개발협업] 하트퍼센트 도트 온 무드 듀이
																		멜팅 립스틱 1.5g 5종 택1</p>
																</div>
																<p class="prd_price">
																	<span class="tx_org"><span class="tx_num">15,000</span>원
																	</span><span class="tx_cur"><span class="tx_num">13,500</span>원
																	</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag sale">세일</span><span
																		class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000189028" data-item-no="001"
																tabindex="-1" data-rccode="pc_main_01_c">장바구니
																담기</button></li>

													</ul>
												</li>
												<li data-page-no="4" class="slick-slide"
													data-slick-index="3" aria-hidden="true"
													style="width: 510px; position: relative; left: -1530px; top: 0px; z-index: 998; opacity: 0;"
													tabindex="-1" role="option"
													aria-describedby="slick-slide53">
													<ul class="curation_list">

														<li class="curation_item" data-idx="6"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175878&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation1_4&amp;curation=like&amp;egcode=a016_a016&amp;rccode=pc_main_01_c&amp;egrankcode=9&amp;t_page=홈&amp;t_click=큐레이션1_상품상세&amp;t_number=7"
															name="Home_Curation1_4" class="item a_detail"
															data-ref-goodsno="A000000175878" data-egrank="9"
															data-egcode="a016_a016"
															data-attr="홈^큐레이션1^[대용량] 파티온 노스카나인 트러블 세럼 단독 기획(50ml+15ml)^7"
															data-impression="A000000175878^홈_큐레이션1^7"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000175878&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션1&quot;, &quot;7&quot;);common.wlog(&quot;home_curation1_prod4&quot;);common.link.moveGoodsDetailCuration(&quot;A000000175878&quot;, &quot;90000010001&quot;,&quot;like&quot;,&quot;pc_main_01_c&quot;, &quot;a016_a016&quot;, &quot;9&quot;, &quot;Home_Curation1_4&quot;);"
															data-impression-visibility="1"><span
																class="thumb_flag best">베스트</span><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017587818ko.jpg?l=ko"
																	alt="[대용량] 파티온 노스카나인 트러블 세럼 단독 기획(50ml+15ml)"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">[대용량] 파티온 노스카나인 트러블 세럼 단독
																		기획(50ml+15ml)</p>
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
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000175878" data-item-no="001"
																tabindex="-1" data-rccode="pc_main_01_c">장바구니
																담기</button></li>



														<li class="curation_item" data-idx="7"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188459&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation1_4&amp;curation=like&amp;egcode=a016_a016&amp;rccode=pc_main_01_c&amp;egrankcode=27&amp;t_page=홈&amp;t_click=큐레이션1_상품상세&amp;t_number=8"
															name="Home_Curation1_4" class="item a_detail"
															data-ref-goodsno="A000000188459" data-egrank="27"
															data-egcode="a016_a016"
															data-attr="홈^큐레이션1^에이오유 글로이 틴트 밤 3.5g 3종 택1^8"
															data-impression="A000000188459^홈_큐레이션1^8"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188459&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션1&quot;, &quot;8&quot;);common.wlog(&quot;home_curation1_prod4&quot;);common.link.moveGoodsDetailCuration(&quot;A000000188459&quot;, &quot;90000010001&quot;,&quot;like&quot;,&quot;pc_main_01_c&quot;, &quot;a016_a016&quot;, &quot;27&quot;, &quot;Home_Curation1_4&quot;);"
															data-impression-visibility="1"><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018845905ko.jpg?l=ko"
																	alt="에이오유 글로이 틴트 밤 3.5g 3종 택1"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">에이오유 글로이 틴트 밤 3.5g 3종 택1</p>
																</div>
																<p class="prd_price">
																	<span class="tx_cur"><span class="tx_num">15,400</span>원
																	</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000188459" data-item-no="001"
																tabindex="-1" data-rccode="pc_main_01_c">장바구니
																담기</button></li>

													</ul>
												</li>
												<li data-page-no="5" class="slick-slide"
													data-slick-index="4" aria-hidden="true"
													style="width: 510px; position: relative; left: -2040px; top: 0px; z-index: 998; opacity: 0;"
													tabindex="-1" role="option"
													aria-describedby="slick-slide54">
													<ul class="curation_list">

														<li class="curation_item" data-idx="8"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189004&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation1_5&amp;curation=like&amp;egcode=a016_a016&amp;rccode=pc_main_01_c&amp;egrankcode=22&amp;t_page=홈&amp;t_click=큐레이션1_상품상세&amp;t_number=9"
															name="Home_Curation1_5" class="item a_detail"
															data-ref-goodsno="A000000189004" data-egrank="22"
															data-egcode="a016_a016"
															data-attr="홈^큐레이션1^[블프특가][NEW]바이오힐보 판테셀 리페어시카 크림미스트 120mL+120mL 기획^9"
															data-impression="A000000189004^홈_큐레이션1^9"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189004&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션1&quot;, &quot;9&quot;);common.wlog(&quot;home_curation1_prod5&quot;);common.link.moveGoodsDetailCuration(&quot;A000000189004&quot;, &quot;90000010001&quot;,&quot;like&quot;,&quot;pc_main_01_c&quot;, &quot;a016_a016&quot;, &quot;22&quot;, &quot;Home_Curation1_5&quot;);"
															data-impression-visibility="1"><span
																class="thumb_flag best">베스트</span><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018900402ko.jpg?l=ko"
																	alt="[블프특가][NEW]바이오힐보 판테셀 리페어시카 크림미스트 120mL+120mL 기획"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">[블프특가][NEW]바이오힐보 판테셀 리페어시카 크림미스트
																		120mL+120mL 기획</p>
																</div>
																<p class="prd_price">
																	<span class="tx_org"><span class="tx_num">36,000</span>원
																		~</span><span class="tx_cur"><span class="tx_num">23,280</span>원
																		~</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag sale">세일</span><span
																		class="icon_flag coupon">쿠폰</span><span
																		class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000189004" data-item-no="001"
																tabindex="-1" data-rccode="pc_main_01_c">장바구니
																담기</button></li>



														<li class="curation_item" data-idx="9"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000140183&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation1_5&amp;curation=like&amp;egcode=a016_a016&amp;rccode=pc_main_01_c&amp;egrankcode=3&amp;t_page=홈&amp;t_click=큐레이션1_상품상세&amp;t_number=10"
															name="Home_Curation1_5" class="item a_detail"
															data-ref-goodsno="A000000140183" data-egrank="3"
															data-egcode="a016_a016"
															data-attr="홈^큐레이션1^[한정기획]로레알파리 헤어오일 100ml 9종^10"
															data-impression="A000000140183^홈_큐레이션1^10"
															data-ref-dispcatno="90000010001" data-ref-itemno="018"
															tabindex="-1"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000140183&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션1&quot;, &quot;10&quot;);common.wlog(&quot;home_curation1_prod5&quot;);common.link.moveGoodsDetailCuration(&quot;A000000140183&quot;, &quot;90000010001&quot;,&quot;like&quot;,&quot;pc_main_01_c&quot;, &quot;a016_a016&quot;, &quot;3&quot;, &quot;Home_Curation1_5&quot;);"
															data-impression-visibility="1"><span
																class="thumb_flag best">베스트</span><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A000000140183106ko.jpg?l=ko"
																	alt="[한정기획]로레알파리 헤어오일 100ml 9종"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">[한정기획]로레알파리 헤어오일 100ml 9종</p>
																</div>
																<p class="prd_price">
																	<span class="tx_org"><span class="tx_num">22,000</span>원
																		~</span><span class="tx_cur"><span class="tx_num">13,790</span>원
																		~</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag sale">세일</span><span
																		class="icon_flag coupon">쿠폰</span><span
																		class="icon_flag gift">증정</span><span
																		class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000140183" data-item-no="001"
																tabindex="-1" data-rccode="pc_main_01_c">장바구니
																담기</button></li>

													</ul>
												</li>
											</div>
										</div>



























									</ul>
								</div>

								<div class="btnRef">
									<button type="button" class="btn" id="refBtn"
										data-current-page="1" data-total-page="5">
										<span class="icon">다른상품 추천해드릴게요<em class="num"><span
												class="current" id="contsInfoBeginNum">1</span>5</em></span>
									</button>
								</div>


								<script type="text/javascript">
$(document).ready(function(){
	var recoMbrNo = '';
	var showType = ''; 
	var clickCnt = 1;
	var recall = false;
	var group = "";
	var chkNo = 1;
	var rccode = "pc_main_01_c";
	
	
    var recoGoodsListLength = "35";
	if(recoGoodsListLength > 0){
	    // 로딩바 제거 및 레코벨 상품 영역 show
	    $(".loading_box").hide();
	    $(".curation_area").show();
	}
	
    $('#main_curation02_01').slick({
		dots: false,
		arrows: false,
		fade: true,
		infinite: true,
		speed: 100,
		slidesToShow: 1,
		slidesToScroll: 1,
		draggable: false
	});
    
    $('#main_curation02_01 a.item').each(function(i){
        var _item = $(this);			
        var _data_goodsno = _item.attr('data-ref-goodsno');
		var _data_dispCatNo = _item.attr('data-ref-dispCatNo');
		var egcode = _item.attr("data-egcode");
	    var egrank = _item.attr("data-egrank");
		var trackingCd = _item.attr("name");

		_item.attr('onclick','javascript:gtm.goods.callGoodsGtmInfo("'+_data_goodsno+'", "", "ee-productClick", "홈_큐레이션1", "' + $(this).attr('data-attr').split('^')[3] + '");common.wlog("home_curation1_prod'+trackingCd.substr(trackingCd.length-1, 1)+'");common.link.moveGoodsDetailCuration("'+_data_goodsno+'", "'+_data_dispCatNo+'","like","'+rccode+'", "'+egcode+'", "'+egrank+'", "'+trackingCd+'");');
	});
    
    $("#main_curation02_01").find(".btnbag").each(function() {
    	$(this).attr("data-rccode", rccode);
    });

	$('#refBtn').on('click', function () {
		var $this = $(this);

		var totalPage = Number($this.data('total-page'));
		var currentPage = Number($this.data('current-page'));

		$('#main_curation02_01').slick('slickNext');

		if (currentPage < totalPage) {
			currentPage++;
		} else {
			currentPage = 1;
		}

		$this.data('current-page', currentPage);
		$this.find('.current').html(currentPage);
		common.reqAmplitude('큐레이션1_다른상품추천_클릭', {entry_source: '홈', click_source: '큐레이션1_다른상품추천', number: currentPage});
	});
    
	var recType = "p002";
	
   	var name = "";
   	
   	if(name == undefined || name == "") {
   		name = "고객";
   	}

   	var param = {
   		size : 40, //큐레이션 api 호출용
   		viewType : 'VertPop', // 세로형
      	popupYn : "Y",
      	titlRp : name, // 타이틀 replace 텍스트
      	viewArea : 'home_curation1_more_prod',
      	recType : recType, // 큐레이션 url 정보
      	loginRecType : "p202",
      	dispCatNo : '90000010001',
      	rccode : rccode,
		trackingCd: 'Home_Curation1_More'
   	};
   	
	// 기존 영역이기 때문에 이벤트 추가만 한다.
	curation.btnMoreEvent(param);

	gtm.goods.initProductImpression();

	//오특 플래그
	common.gnb.todaySpecial.setTodaySpecialFlag('.a_detail .newOyflag');
});
</script>


							</div>
						</div>
						<div class="inner">
							<div class="curation_slide type03" id="recobell_area2">
















								<div class="tit_type03">
									<span id="rectypeTitle">고객님을 위한 추천 상품</span>
									<button class="moreBtn" id="crt_more_p001"
										onclick="common.reqAmplitude('큐레이션2_더보기 클릭', {entry_source: '홈', click_source: '큐레이션2_더보기'});">
										<span>더보기</span>
									</button>
								</div>
								<div class="curation_slide type03">

									<ul id="main_curation03_01"
										class="slide_list slick_slider slick-initialized slick-slider"
										name="section1">










										<div aria-live="polite" class="slick-list">
											<div class="slick-track" role="listbox"
												style="opacity: 1; width: 2550px;">
												<li data-page-no="1"
													class="slick-slide slick-current slick-active"
													data-slick-index="0" aria-hidden="false"
													style="width: 510px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;"
													tabindex="-1" role="option"
													aria-describedby="slick-slide70">
													<ul class="curation_list">


														<li class="curation_item" data-idx="0"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000152102&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation2_1&amp;curation=recent&amp;egcode=a901_a901&amp;rccode=pc_main_02_c&amp;egrankcode=1&amp;t_page=홈&amp;t_click=큐레이션2_상품상세&amp;t_number=1"
															name="Home_Curation2_1" class="item a_detail"
															data-ref-goodsno="A000000152102" data-egrank="1"
															data-egcode="a901_a901"
															data-attr="홈^큐레이션2^[코어탄력세럼] 아이소이 불가리안 로즈 인텐시브 리프팅 세럼 20ml 기획 (20ml+탄력스팟 3ml)^1"
															data-impression="A000000152102^홈_큐레이션2^1"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="0"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000152102&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션2&quot;, &quot;1&quot;); common.wlog(&quot;home_curation2_prod1&quot;);common.link.moveGoodsDetailCuration(&quot;A000000152102&quot;, &quot;90000010001&quot;,&quot;recent&quot;,&quot;pc_main_02_c&quot;, &quot;a901_a901&quot;, &quot;1&quot;, &quot;Home_Curation2_1&quot;);"
															data-impression-visibility="1"><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015210212ko.jpg?l=ko"
																	alt="[코어탄력세럼] 아이소이 불가리안 로즈 인텐시브 리프팅 세럼 20ml 기획 (20ml+탄력스팟 3ml)"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">[코어탄력세럼] 아이소이 불가리안 로즈 인텐시브 리프팅
																		세럼 20ml 기획 (20ml+탄력스팟 3ml)</p>
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
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000152102" data-item-no="001"
																tabindex="0" data-rccode="pc_main_02_c">장바구니 담기</button>

														</li>




														<li class="curation_item" data-idx="1"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000154169&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation2_1&amp;curation=recent&amp;egcode=a901_a901&amp;rccode=pc_main_02_c&amp;egrankcode=1&amp;t_page=홈&amp;t_click=큐레이션2_상품상세&amp;t_number=2"
															name="Home_Curation2_1" class="item a_detail"
															data-ref-goodsno="A000000154169" data-egrank="1"
															data-egcode="a901_a901"
															data-attr="홈^큐레이션2^[1등 집착헤어팩]어노브 딥 데미지 트리트먼트 EX&nbsp;(본품207ml+100ml 추가 증정)^2"
															data-impression="A000000154169^홈_큐레이션2^2"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="0"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000154169&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션2&quot;, &quot;2&quot;); common.wlog(&quot;home_curation2_prod1&quot;);common.link.moveGoodsDetailCuration(&quot;A000000154169&quot;, &quot;90000010001&quot;,&quot;recent&quot;,&quot;pc_main_02_c&quot;, &quot;a901_a901&quot;, &quot;1&quot;, &quot;Home_Curation2_1&quot;);"
															data-impression-visibility="1"><span
																class="thumb_flag best">베스트</span><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015416947ko.jpg?l=ko"
																	alt="[1등 집착헤어팩]어노브 딥 데미지 트리트먼트 EX&nbsp;(본품207ml+100ml 추가 증정)"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">[1등 집착헤어팩]어노브 딥 데미지 트리트먼트
																		EX&nbsp;(본품207ml+100ml 추가 증정)</p>
																</div>
																<p class="prd_price">
																	<span class="tx_org"><span class="tx_num">22,000</span>원
																		~</span><span class="tx_cur"><span class="tx_num">15,400</span>원
																		~</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag sale">세일</span><span
																		class="icon_flag gift">증정</span><span
																		class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000154169" data-item-no="001"
																tabindex="0" data-rccode="pc_main_02_c">장바구니 담기</button>

														</li>


													</ul>
												</li>
												<li data-page-no="2" class="slick-slide"
													data-slick-index="1" aria-hidden="true"
													style="width: 510px; position: relative; left: -510px; top: 0px; z-index: 998; opacity: 0;"
													tabindex="-1" role="option"
													aria-describedby="slick-slide71">
													<ul class="curation_list">


														<li class="curation_item" data-idx="2"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175795&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation2_2&amp;curation=recent&amp;egcode=a901_a901&amp;rccode=pc_main_02_c&amp;egrankcode=1&amp;t_page=홈&amp;t_click=큐레이션2_상품상세&amp;t_number=3"
															name="Home_Curation2_2" class="item a_detail"
															data-ref-goodsno="A000000175795" data-egrank="1"
															data-egcode="a901_a901"
															data-attr="홈^큐레이션2^[리뷰이벤트/NEW] 롬앤 글래스팅 멜팅 밤^3"
															data-impression="A000000175795^홈_큐레이션2^3"
															data-ref-dispcatno="90000010001" data-ref-itemno="010"
															tabindex="-1"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000175795&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션2&quot;, &quot;3&quot;); common.wlog(&quot;home_curation2_prod2&quot;);common.link.moveGoodsDetailCuration(&quot;A000000175795&quot;, &quot;90000010001&quot;,&quot;recent&quot;,&quot;pc_main_02_c&quot;, &quot;a901_a901&quot;, &quot;1&quot;, &quot;Home_Curation2_2&quot;);"
															data-impression-visibility="1"><span
																class="thumb_flag best">베스트</span><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017579532ko.jpg?l=ko"
																	alt="[리뷰이벤트/NEW] 롬앤 글래스팅 멜팅 밤"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">[리뷰이벤트/NEW] 롬앤 글래스팅 멜팅 밤</p>
																</div>
																<p class="prd_price">
																	<span class="tx_org"><span class="tx_num">13,000</span>원
																	</span><span class="tx_cur"><span class="tx_num">12,350</span>원
																	</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag coupon">쿠폰</span><span
																		class="icon_flag gift">증정</span><span
																		class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000175795" data-item-no="001"
																tabindex="-1" data-rccode="pc_main_02_c">장바구니
																담기</button></li>




														<li class="curation_item" data-idx="3"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189223&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation2_2&amp;curation=recent&amp;egcode=a901_a901&amp;rccode=pc_main_02_c&amp;egrankcode=3&amp;t_page=홈&amp;t_click=큐레이션2_상품상세&amp;t_number=4"
															name="Home_Curation2_2" class="item a_detail"
															data-ref-goodsno="A000000189223" data-egrank="3"
															data-egcode="a901_a901"
															data-attr="홈^큐레이션2^[한정기획] 아이소이 BR 블레미쉬 케어 흔적크림35ml 기획(+20ml 추가증정)^4"
															data-impression="A000000189223^홈_큐레이션2^4"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189223&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션2&quot;, &quot;4&quot;); common.wlog(&quot;home_curation2_prod2&quot;);common.link.moveGoodsDetailCuration(&quot;A000000189223&quot;, &quot;90000010001&quot;,&quot;recent&quot;,&quot;pc_main_02_c&quot;, &quot;a901_a901&quot;, &quot;3&quot;, &quot;Home_Curation2_2&quot;);"
															data-impression-visibility="1"><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018922314ko.jpg?l=ko"
																	alt="[한정기획] 아이소이 BR 블레미쉬 케어 흔적크림35ml 기획(+20ml 추가증정)"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">[한정기획] 아이소이 BR 블레미쉬 케어 흔적크림35ml
																		기획(+20ml 추가증정)</p>
																</div>
																<p class="prd_price">
																	<span class="tx_org"><span class="tx_num">38,000</span>원
																	</span><span class="tx_cur"><span class="tx_num">25,270</span>원
																	</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag sale">세일</span><span
																		class="icon_flag coupon">쿠폰</span><span
																		class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000189223" data-item-no="001"
																tabindex="-1" data-rccode="pc_main_02_c">장바구니
																담기</button></li>


													</ul>
												</li>
												<li data-page-no="3" class="slick-slide"
													data-slick-index="2" aria-hidden="true"
													style="width: 510px; position: relative; left: -1020px; top: 0px; z-index: 998; opacity: 0;"
													tabindex="-1" role="option"
													aria-describedby="slick-slide72">
													<ul class="curation_list">


														<li class="curation_item" data-idx="4"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171422&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation2_3&amp;curation=recent&amp;egcode=a901_a901&amp;rccode=pc_main_02_c&amp;egrankcode=2&amp;t_page=홈&amp;t_click=큐레이션2_상품상세&amp;t_number=5"
															name="Home_Curation2_3" class="item a_detail"
															data-ref-goodsno="A000000171422" data-egrank="2"
															data-egcode="a901_a901"
															data-attr="홈^큐레이션2^[1&amp;1] 어노브 실크 오일 에센스 더블 기획세트 (70ml+70ml)^5"
															data-impression="A000000171422^홈_큐레이션2^5"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000171422&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션2&quot;, &quot;5&quot;); common.wlog(&quot;home_curation2_prod3&quot;);common.link.moveGoodsDetailCuration(&quot;A000000171422&quot;, &quot;90000010001&quot;,&quot;recent&quot;,&quot;pc_main_02_c&quot;, &quot;a901_a901&quot;, &quot;2&quot;, &quot;Home_Curation2_3&quot;);"
															data-impression-visibility="1"><span
																class="thumb_flag best">베스트</span><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017142211ko.jpg?l=ko"
																	alt="[1&amp;1] 어노브 실크 오일 에센스 더블 기획세트 (70ml+70ml)"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">[1&amp;1] 어노브 실크 오일 에센스 더블 기획세트
																		(70ml+70ml)</p>
																</div>
																<p class="prd_price">
																	<span class="tx_cur"><span class="tx_num">35,000</span>원
																	</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag gift">증정</span><span
																		class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000171422" data-item-no="001"
																tabindex="-1" data-rccode="pc_main_02_c">장바구니
																담기</button></li>




														<li class="curation_item" data-idx="5"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168287&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation2_3&amp;curation=recent&amp;egcode=a901_a901&amp;rccode=pc_main_02_c&amp;egrankcode=1&amp;t_page=홈&amp;t_click=큐레이션2_상품상세&amp;t_number=6"
															name="Home_Curation2_3" class="item a_detail"
															data-ref-goodsno="A000000168287" data-egrank="1"
															data-egcode="a901_a901"
															data-attr="홈^큐레이션2^[11월 올영픽/올리브영 단독기획]바이오더마 아토덤 울트라 크림 500ml+200ml^6"
															data-impression="A000000168287^홈_큐레이션2^6"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168287&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션2&quot;, &quot;6&quot;); common.wlog(&quot;home_curation2_prod3&quot;);common.link.moveGoodsDetailCuration(&quot;A000000168287&quot;, &quot;90000010001&quot;,&quot;recent&quot;,&quot;pc_main_02_c&quot;, &quot;a901_a901&quot;, &quot;1&quot;, &quot;Home_Curation2_3&quot;);"
															data-impression-visibility="1"><span
																class="thumb_flag best">베스트</span><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016828767ko.jpg?l=ko"
																	alt="[11월 올영픽/올리브영 단독기획]바이오더마 아토덤 울트라 크림 500ml+200ml"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">[11월 올영픽/올리브영 단독기획]바이오더마 아토덤 울트라
																		크림 500ml+200ml</p>
																</div>
																<p class="prd_price">
																	<span class="tx_org"><span class="tx_num">42,000</span>원
																	</span><span class="tx_cur"><span class="tx_num">28,350</span>원
																	</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag sale">세일</span><span
																		class="icon_flag coupon">쿠폰</span><span
																		class="icon_flag gift">증정</span><span
																		class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000168287" data-item-no="001"
																tabindex="-1" data-rccode="pc_main_02_c">장바구니
																담기</button></li>


													</ul>
												</li>
												<li data-page-no="4" class="slick-slide"
													data-slick-index="3" aria-hidden="true"
													style="width: 510px; position: relative; left: -1530px; top: 0px; z-index: 998; opacity: 0;"
													tabindex="-1" role="option"
													aria-describedby="slick-slide73">
													<ul class="curation_list">


														<li class="curation_item" data-idx="6"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171820&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation2_4&amp;curation=recent&amp;egcode=a901_a901&amp;rccode=pc_main_02_c&amp;egrankcode=4&amp;t_page=홈&amp;t_click=큐레이션2_상품상세&amp;t_number=7"
															name="Home_Curation2_4" class="item a_detail"
															data-ref-goodsno="A000000171820" data-egrank="4"
															data-egcode="a901_a901"
															data-attr="홈^큐레이션2^[로운PICK]일소 네추럴 마일드 클리어 노우즈 팩 5매입^7"
															data-impression="A000000171820^홈_큐레이션2^7"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000171820&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션2&quot;, &quot;7&quot;); common.wlog(&quot;home_curation2_prod4&quot;);common.link.moveGoodsDetailCuration(&quot;A000000171820&quot;, &quot;90000010001&quot;,&quot;recent&quot;,&quot;pc_main_02_c&quot;, &quot;a901_a901&quot;, &quot;4&quot;, &quot;Home_Curation2_4&quot;);"
															data-impression-visibility="1"><span
																class="thumb_flag best">베스트</span><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017182031ko.jpg?l=ko"
																	alt="[로운PICK]일소 네추럴 마일드 클리어 노우즈 팩 5매입"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">[로운PICK]일소 네추럴 마일드 클리어 노우즈 팩 5매입</p>
																</div>
																<p class="prd_price">
																	<span class="tx_org"><span class="tx_num">12,900</span>원
																	</span><span class="tx_cur"><span class="tx_num">11,900</span>원
																	</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag sale">세일</span><span
																		class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000171820" data-item-no="001"
																tabindex="-1" data-rccode="pc_main_02_c">장바구니
																담기</button></li>




														<li class="curation_item" data-idx="7"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000184129&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation2_4&amp;curation=recent&amp;egcode=a901_a901&amp;rccode=pc_main_02_c&amp;egrankcode=1&amp;t_page=홈&amp;t_click=큐레이션2_상품상세&amp;t_number=8"
															name="Home_Curation2_4" class="item a_detail"
															data-ref-goodsno="A000000184129" data-egrank="1"
															data-egcode="a901_a901"
															data-attr="홈^큐레이션2^에스트라 아토베리어365 로션 150ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)^8"
															data-impression="A000000184129^홈_큐레이션2^8"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000184129&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션2&quot;, &quot;8&quot;); common.wlog(&quot;home_curation2_prod4&quot;);common.link.moveGoodsDetailCuration(&quot;A000000184129&quot;, &quot;90000010001&quot;,&quot;recent&quot;,&quot;pc_main_02_c&quot;, &quot;a901_a901&quot;, &quot;1&quot;, &quot;Home_Curation2_4&quot;);"
															data-impression-visibility="1"><span
																class="thumb_flag best">베스트</span><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018412902ko.jpg?l=ko"
																	alt="에스트라 아토베리어365 로션 150ml 기획 (+하이드로에센스 25ml+무기자차선크림10ml 증정)"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">에스트라 아토베리어365 로션 150ml 기획
																		(+하이드로에센스 25ml+무기자차선크림10ml 증정)</p>
																</div>
																<p class="prd_price">
																	<span class="tx_org"><span class="tx_num">31,000</span>원
																	</span><span class="tx_cur"><span class="tx_num">22,040</span>원
																	</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag sale">세일</span><span
																		class="icon_flag coupon">쿠폰</span><span
																		class="icon_flag gift">증정</span><span
																		class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000184129" data-item-no="001"
																tabindex="-1" data-rccode="pc_main_02_c">장바구니
																담기</button></li>


													</ul>
												</li>
												<li data-page-no="5" class="slick-slide"
													data-slick-index="4" aria-hidden="true"
													style="width: 510px; position: relative; left: -2040px; top: 0px; z-index: 998; opacity: 0;"
													tabindex="-1" role="option"
													aria-describedby="slick-slide74">
													<ul class="curation_list">


														<li class="curation_item" data-idx="8"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189126&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation2_5&amp;curation=recent&amp;egcode=a901_a901&amp;rccode=pc_main_02_c&amp;egrankcode=10&amp;t_page=홈&amp;t_click=큐레이션2_상품상세&amp;t_number=9"
															name="Home_Curation2_5" class="item a_detail"
															data-ref-goodsno="A000000189126" data-egrank="10"
															data-egcode="a901_a901"
															data-attr="홈^큐레이션2^필리밀리 히팅 뷰러 2종 택1 (충전타입/건전지타입)^9"
															data-impression="A000000189126^홈_큐레이션2^9"
															data-ref-dispcatno="90000010001" data-ref-itemno="002"
															tabindex="-1"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189126&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션2&quot;, &quot;9&quot;); common.wlog(&quot;home_curation2_prod5&quot;);common.link.moveGoodsDetailCuration(&quot;A000000189126&quot;, &quot;90000010001&quot;,&quot;recent&quot;,&quot;pc_main_02_c&quot;, &quot;a901_a901&quot;, &quot;10&quot;, &quot;Home_Curation2_5&quot;);"
															data-impression-visibility="1"><span
																class="thumb_flag best">베스트</span><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018912610ko.jpg?l=ko"
																	alt="필리밀리 히팅 뷰러 2종 택1 (충전타입/건전지타입)"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">필리밀리 히팅 뷰러 2종 택1 (충전타입/건전지타입)</p>
																</div>
																<p class="prd_price">
																	<span class="tx_cur"><span class="tx_num">22,900</span>원
																		~</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000189126" data-item-no="001"
																tabindex="-1" data-rccode="pc_main_02_c">장바구니
																담기</button></li>




														<li class="curation_item" data-idx="9"><a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000119871&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation2_5&amp;curation=recent&amp;egcode=a901_a901&amp;rccode=pc_main_02_c&amp;egrankcode=6&amp;t_page=홈&amp;t_click=큐레이션2_상품상세&amp;t_number=10"
															name="Home_Curation2_5" class="item a_detail"
															data-ref-goodsno="A000000119871" data-egrank="6"
															data-egcode="a901_a901"
															data-attr="홈^큐레이션2^W.DRESSROOM 퍼퓸드 핸드크림 5종 택 1^10"
															data-impression="A000000119871^홈_큐레이션2^10"
															data-ref-dispcatno="90000010001" data-ref-itemno="006"
															tabindex="-1"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000119871&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션2&quot;, &quot;10&quot;); common.wlog(&quot;home_curation2_prod5&quot;);common.link.moveGoodsDetailCuration(&quot;A000000119871&quot;, &quot;90000010001&quot;,&quot;recent&quot;,&quot;pc_main_02_c&quot;, &quot;a901_a901&quot;, &quot;6&quot;, &quot;Home_Curation2_5&quot;);"
															data-impression-visibility="1"><span
																class="thumb_flag best">베스트</span><span class="thumImg"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0011/A00000011987119ko.jpg?l=ko"
																	alt="W.DRESSROOM 퍼퓸드 핸드크림 5종 택 1"
																	onerror="common.errorImg(this);"></span>
															<div class="prd_name">
																	<p class="tx_name">W.DRESSROOM 퍼퓸드 핸드크림 5종 택 1</p>
																</div>
																<p class="prd_price">
																	<span class="tx_org"><span class="tx_num">7,900</span>원
																		~</span><span class="tx_cur"><span class="tx_num">5,500</span>원
																		~</span>
																</p>
																<p class="prd_flag">
																	<span class="icon_flag sale">세일</span><span
																		class="icon_flag delivery">오늘드림</span>
																</p></a>
														<button type="button" class="btnbag"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000119871" data-item-no="001"
																tabindex="-1" data-rccode="pc_main_02_c">장바구니
																담기</button></li>


													</ul>
												</li>
											</div>
										</div>
































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
								<script type="text/javascript">
$(document).ready(function(){
    var recoGoodsList2Length = "29";
	if(recoGoodsList2Length > 0){
	    // 로딩바 제거 및 레코벨 상품 영역 show
	    $(".loading_box").hide();
	    $(".curation_area").show();
	}
	var clickCnt = 1;
    var isLogin = "false";
    var mbrAgrYn = $("#mktAgrYn").val();
    var recall = false;
    var rccode = "pc_main_02_c";

    if($("#recobell_area2").hasClass("type01")){
        slidesToShowVal=4;
        slidesToScrollVal=4;
        arrows=true;
    }
	
	$('#main_curation03_01').slick({
		dots: false,
		arrows: false,
		fade: true,
		infinite: true,
		speed: 100,
		slidesToShow: 1,
		slidesToScroll: 1,
		draggable: false
	});

	$('#main_curation03_01 a.item').each(function(i){
		var _item = $(this);			
		var _data_goodsno = _item.attr('data-ref-goodsno');
		var _data_dispCatNo = _item.attr('data-ref-dispCatNo');
		var egcode = _item.attr("data-egcode");
	    var egrank = _item.attr("data-egrank");
	    var trackingCd = _item.attr("name");
		_item.attr('onclick','javascript:gtm.goods.callGoodsGtmInfo("'+_data_goodsno+'", "", "ee-productClick", "홈_큐레이션2", "' + $(this).attr('data-attr').split('^')[3] + '"); common.wlog("home_curation2_prod'+trackingCd.substr(trackingCd.length-1, 1)+'");common.link.moveGoodsDetailCuration("'+_data_goodsno+'", "'+_data_dispCatNo+'","recent","'+rccode+'", "'+egcode+'", "'+egrank+'", "'+trackingCd+'");');
   });
	
	$('#main_curation03_01').find(".btnbag").each(function(){
		$(this).attr("data-rccode", rccode);
	});

	$('#refBtn2').on('click', function () {
		var $this = $(this);

		var totalPage = Number($this.data('total-page'));
		var currentPage = Number($this.data('current-page'));

		$('#main_curation03_01').slick('slickNext');

		if (currentPage < totalPage) {
			currentPage++;
		} else {
			currentPage = 1;
		}

		$this.data('current-page', currentPage);
		$this.find('.current').html(currentPage);
		common.reqAmplitude('큐레이션2_다른상품추천_클릭', {entry_source: '홈', click_source: '큐레이션2_다른상품추천', number: currentPage});
	});
	
	var param = {
		size : 30, //큐레이션 api 호출용
		viewType : 'VertPop', // 가로형
		popupYn : "Y",
		titlRp : "", // 타이틀 replace 텍스트
		viewArea : 'home_curation2_more_prod',
		recType : "p001",
		loginRecType : "p201",
		dispCatNo : '90000010001',
		rccode : rccode,
		trackingCd: 'Home_Curation2_More'
	};
	
	if("p001" != "m002") {
		param.cps = true;
		param.cpt = "m002";
	}
	
	// 기존 영역이기 때문에 이벤트 추가만 한다.
	curation.btnMoreEvent(param);

	// GTM Product Impression 공통 적용
	gtm.goods.initProductImpression();

	//오특 플래그
	common.gnb.todaySpecial.setTodaySpecialFlag('.a_detail .newOyflag');

});
</script>

							</div>
						</div>
					</div>
				</div>


				<!-- 큐레이션 E -->













































































































				<!-- 추천 기획전 -->
				<div class="main_plan_banner">
					<h3 class="main_sub_tit">
						<strong>Weekly Special</strong>
					</h3>
					<div class="recomm_plan">
						<ul class="recomm_plan_list">










							<li><a
								onclick="common.reqAmplitude('위클리스페셜 배너 클릭', {entry_source: '홈', click_source: 'weeklyspecial', banner_name: '광채나는글로우
', banner_number: '1'});"
								href="javascript:common.link.movePlanShop('500000102940044', 'Home_Planshop2_PROD', 't_page=홈&amp;t_click=weeklyspecial&amp;t_banner_name=광채나는글로우
&amp;t_number=1');"
								data-ref-dispcatno=""
								data-attr="홈^WeeklySpecial기획전^브랜드운영팀_웨이크메이크" data-trk="/"> <img
									src="https://image.oliveyoung.co.kr/uploads/images//categoryBanner/1279276419346446875.jpg"
									alt="브랜드운영팀_웨이크메이크">
									<div class="text_wrap">
										<dl style="color: #000000;">
											<dt>광채나는글로우</dt>
											<dt>쿠션&amp;파운데이션</dt>
											<dd>#졸리레이드#거울증정</dd>
										</dl>
									</div>
							</a></li>














							<li><a
								onclick="common.reqAmplitude('위클리스페셜 배너 클릭', {entry_source: '홈', click_source: 'weeklyspecial', banner_name: '1등 샴푸 라보에이치
', banner_number: '2'});"
								href="javascript:common.link.movePlanShop('500000102850136', 'Home_Planshop2_PROD', 't_page=홈&amp;t_click=weeklyspecial&amp;t_banner_name=1등 샴푸 라보에이치
&amp;t_number=2');"
								data-ref-dispcatno="" data-attr="홈^WeeklySpecial기획전^헤어_라보에이치"
								data-trk="/"> <img
									src="https://image.oliveyoung.co.kr/uploads/images//categoryBanner/6065360184442940089.jpg"
									alt="헤어_라보에이치">
									<div class="text_wrap">
										<dl style="color: #000000;">
											<dt>1등 샴푸 라보에이치</dt>
											<dt>블랙프라이데이 특가</dt>
											<dd>UP TO 43%+전구매 증정</dd>
										</dl>
									</div>
							</a></li>






















						</ul>
					</div>
				</div>
				<!-- //추천 기획전 -->




				<div class="main_plan_banner ty02">



					<h3 class="main_sub_tit">
						<strong>인기 행사만 모았어요!</strong>
					</h3>
					<div class="banner_wrap">
						<div
							class="slick_slider slick-initialized slick-slider slick-dotted"
							id="mainPlanSlider">

















							<div aria-live="polite" class="slick-list draggable">
								<div class="slick-track" role="listbox"
									style="opacity: 1; width: 6240px; transform: translate3d(-1040px, 0px, 0px);">
									<div class="slider_unit  slick-slide slick-cloned"
										data-slick-index="-2" aria-hidden="true" style="width: 520px;"
										tabindex="-1">









										<div class="plan_top">
											<div class="plan_banner"
												style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/5933098486848573045.jpg');">
												<a
													onclick="common.reqAmplitude('인기행사 배너 클릭', {entry_source: '홈', click_source: '인기행사_배너', banner_name: '클렌징 블프시작', banner_number: '7'});"
													href="javascript:common.link.movePlanShop('500000102730094', 'Home_Planshop3_PROD', 't_page=홈&amp;t_click=인기행사_배너&amp;t_banner_name=%ED%81%B4%EB%A0%8C%EC%A7%95+%EB%B8%94%ED%94%84%EC%8B%9C%EC%9E%91&amp;t_number=7');"
													data-ref-dispcatno="500000102730094"
													data-tracking-cd="Home_Planshop3_PROD"
													data-attr="홈^인기행사기획전상세^클렌징 블프시작^7" data-trk="/"
													data-attr-imp-goodsno="" tabindex="-1">
													<p>
														<strong class="tit" style="color: #000000;">클렌징
															블랙프라이데이 </strong> <strong class="tit" style="color: #000000;">BEST
															상품만 모아! </strong> <span class="desc" style="color: #000000;">#7일간
															혜택</span>
													</p>
												</a>
											</div>
										</div>








										<ul class="cate_prd_list">





											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165797&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_클렌징 블프시작_상품상세&amp;t_number=13"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000165797"
														data-attr="홈^인기행사만 모았어요^[대용량] 넘버즈인 1번 말끔 순삭 클렌징 오일 400ml 대용량 기획^1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000165797^홈_인기행사만 모았어요^1"
														data-impression-visibility="1" tabindex="-1"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016579710ko.jpg?l=ko"
														alt="[대용량] 넘버즈인 1번 말끔 순삭 클렌징 오일 400ml 대용량 기획"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000165797"
															data-attr="홈^인기행사만 모았어요^[대용량] 넘버즈인 1번 말끔 순삭 클렌징 오일 400ml 대용량 기획^1"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="-1"><span class="tx_brand">넘버즈인</span>
														<p class="tx_name">[대용량] 넘버즈인 1번 말끔 순삭 클렌징 오일 400ml
																대용량 기획</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000165797" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">35,000</span>원
														</span><span class="tx_cur"><span class="tx_num">23,520</span>원
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
														<button class="cartBtn" data-ref-goodsno="A000000165797"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>



											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000187479&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_클렌징 블프시작_상품상세&amp;t_number=14"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000187479"
														data-attr="홈^인기행사만 모았어요^비플레인 녹두 약산성 클렌징폼 160ml + 40ml 기획^2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000187479^홈_인기행사만 모았어요^2"
														data-impression-visibility="1" tabindex="-1"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018747906ko.jpg?l=ko"
														alt="비플레인 녹두 약산성 클렌징폼 160ml + 40ml 기획"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000187479"
															data-attr="홈^인기행사만 모았어요^비플레인 녹두 약산성 클렌징폼 160ml + 40ml 기획^2"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="-1"><span class="tx_brand">비플레인</span>
														<p class="tx_name">비플레인 녹두 약산성 클렌징폼 160ml + 40ml 기획</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000187479" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">21,900</span>원
														</span><span class="tx_cur"><span class="tx_num">17,670</span>원
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
														<button class="cartBtn" data-ref-goodsno="A000000187479"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>






										</ul>

									</div>
									<div class="slider_unit  right slick-slide slick-cloned"
										data-slick-index="-1" aria-hidden="true" style="width: 520px;"
										tabindex="-1">









										<div class="plan_top">
											<div class="plan_banner"
												style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/5680994098086568541.jpg');">
												<a
													onclick="common.reqAmplitude('인기행사 배너 클릭', {entry_source: '홈', click_source: '인기행사_배너', banner_name: '보습크림모음집', banner_number: '8'});"
													href="javascript:common.link.movePlanShop('500000102700122', 'Home_Planshop3_PROD', 't_page=홈&amp;t_click=인기행사_배너&amp;t_banner_name=%EB%B3%B4%EC%8A%B5%ED%81%AC%EB%A6%BC%EB%AA%A8%EC%9D%8C%EC%A7%91&amp;t_number=8');"
													data-ref-dispcatno="500000102700122"
													data-tracking-cd="Home_Planshop3_PROD"
													data-attr="홈^인기행사기획전상세^보습크림모음집^8" data-trk="/"
													data-attr-imp-goodsno="" tabindex="-1">
													<p>
														<strong class="tit" style="color: #000000;">건조하고
															민감한 11월, </strong> <strong class="tit" style="color: #000000;">필요한
															'크림' 모음집 </strong> <span class="desc" style="color: #000000;">#7일간
															최대 50%</span>
													</p>
												</a>
											</div>
										</div>








										<ul class="cate_prd_list">





											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000191177&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_보습크림모음집_상품상세&amp;t_number=15"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000191177"
														data-attr="홈^인기행사만 모았어요^아이오페 스템3 크림 50ml^1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000191177^홈_인기행사만 모았어요^1"
														data-impression-visibility="1" tabindex="-1"><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019117701ko.jpg?l=ko"
														alt="아이오페 스템3 크림 50ml" onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000191177"
															data-attr="홈^인기행사만 모았어요^아이오페 스템3 크림 50ml^1"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="-1"><span class="tx_brand">아이오페</span>
														<p class="tx_name">아이오페 스템3 크림 50ml</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000191177" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">70,000</span>원
														</span><span class="tx_cur"><span class="tx_num">50,400</span>원
														</span>
													</p>
													<p class="prd_flag">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag coupon">쿠폰</span><span
															class="icon_flag delivery">오늘드림</span>
													</p>
													<p class="prd_point_area tx_num">
														<span class="review_point"><span class="point"
															style="width: 100.0%">10점만점에 5.5점</span></span>(7)
													</p>
													<p class="prd_btn_area">
														<button class="cartBtn" data-ref-goodsno="A000000191177"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>



											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000153781&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_보습크림모음집_상품상세&amp;t_number=16"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000153781"
														data-attr="홈^인기행사만 모았어요^[채정안PICK/단독기획] CKD&nbsp;레티노콜라겐 저분자&nbsp;300&nbsp;크림&nbsp;40ml&nbsp;기획&nbsp;(40ml+10ml)^2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000153781^홈_인기행사만 모았어요^2"
														data-impression-visibility="1" tabindex="-1"><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015378114ko.jpg?l=ko"
														alt="[채정안PICK/단독기획] CKD&nbsp;레티노콜라겐 저분자&nbsp;300&nbsp;크림&nbsp;40ml&nbsp;기획&nbsp;(40ml+10ml)"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000153781"
															data-attr="홈^인기행사만 모았어요^[채정안PICK/단독기획] CKD&nbsp;레티노콜라겐 저분자&nbsp;300&nbsp;크림&nbsp;40ml&nbsp;기획&nbsp;(40ml+10ml)^2"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="-1"><span class="tx_brand">CKD</span>
														<p class="tx_name">[채정안PICK/단독기획] CKD&nbsp;레티노콜라겐
																저분자&nbsp;300&nbsp;크림&nbsp;40ml&nbsp;기획&nbsp;(40ml+10ml)</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000153781" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">38,000</span>원
														</span><span class="tx_cur"><span class="tx_num">20,520</span>원
														</span>
													</p>
													<p class="prd_flag">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag coupon">쿠폰</span><span
															class="icon_flag delivery">오늘드림</span>
													</p>
													<p class="prd_point_area tx_num">
														<span class="review_point"><span class="point"
															style="width: 98.0%">10점만점에 5.5점</span></span>(999+)
													</p>
													<p class="prd_btn_area">
														<button class="cartBtn" data-ref-goodsno="A000000153781"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>






										</ul>

									</div>
									<div
										class="slider_unit  slick-slide slick-current slick-active"
										data-slick-index="0" aria-hidden="false" style="width: 520px;"
										tabindex="-1" role="option" aria-describedby="slick-slide10">









										<div class="plan_top">
											<div class="plan_banner"
												style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/5358451737655223845.jpg');">
												<a
													onclick="common.reqAmplitude('인기행사 배너 클릭', {entry_source: '홈', click_source: '인기행사_배너', banner_name: '맨즈그루밍', banner_number: '1'});"
													href="javascript:common.link.movePlanShop('500000103010021', 'Home_Planshop3_PROD', 't_page=홈&amp;t_click=인기행사_배너&amp;t_banner_name=%EB%A7%A8%EC%A6%88%EA%B7%B8%EB%A3%A8%EB%B0%8D&amp;t_number=1');"
													data-ref-dispcatno="500000103010021"
													data-tracking-cd="Home_Planshop3_PROD"
													data-attr="홈^인기행사기획전상세^맨즈그루밍^1" data-trk="/"
													data-attr-imp-goodsno="" tabindex="0">
													<p>
														<strong class="tit" style="color: #000000;">아이디얼
															포맨 </strong> <strong class="tit" style="color: #000000;">작심1주,블프특가
														</strong> <span class="desc" style="color: #000000;">#7일특가#선착순증정</span>
													</p>
												</a>
											</div>
										</div>








										<ul class="cate_prd_list">





											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188808&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_맨즈그루밍_상품상세&amp;t_number=1"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000188808"
														data-attr="홈^인기행사만 모았어요^[11월 블프특가]아이디얼 포 맨 시카 흔적 올인원 플루이드 한정기획(75mL 증정)^1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000188808^홈_인기행사만 모았어요^1"
														data-impression-visibility="1" tabindex="0"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018880803ko.jpg?l=ko"
														alt="[11월 블프특가]아이디얼 포 맨 시카 흔적 올인원 플루이드 한정기획(75mL 증정)"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000188808"
															data-attr="홈^인기행사만 모았어요^[11월 블프특가]아이디얼 포 맨 시카 흔적 올인원 플루이드 한정기획(75mL 증정)^1"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="0"><span class="tx_brand">아이디얼포맨</span>
														<p class="tx_name">[11월 블프특가]아이디얼 포 맨 시카 흔적 올인원 플루이드
																한정기획(75mL 증정)</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000188808" tabindex="0">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">30,000</span>원
														</span><span class="tx_cur"><span class="tx_num">20,810</span>원
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
														<button class="cartBtn" data-ref-goodsno="A000000188808"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="0">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="0">새창보기</button>
													</p>
												</div>



											</li>



											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188803&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_맨즈그루밍_상품상세&amp;t_number=2"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000188803"
														data-attr="홈^인기행사만 모았어요^[11월 블프특가]아이디얼 포 맨&nbsp;퍼펙트 올인원 탄력 기획(올인원 30ml+탄력크림 30ml 증정)^2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000188803^홈_인기행사만 모았어요^2"
														data-impression-visibility="1" tabindex="0"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018880304ko.jpg?l=ko"
														alt="[11월 블프특가]아이디얼 포 맨&nbsp;퍼펙트 올인원 탄력 기획(올인원 30ml+탄력크림 30ml 증정)"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000188803"
															data-attr="홈^인기행사만 모았어요^[11월 블프특가]아이디얼 포 맨&nbsp;퍼펙트 올인원 탄력 기획(올인원 30ml+탄력크림 30ml 증정)^2"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="0"><span class="tx_brand">아이디얼포맨</span>
														<p class="tx_name">[11월 블프특가]아이디얼 포 맨&nbsp;퍼펙트 올인원 탄력
																기획(올인원 30ml+탄력크림 30ml 증정)</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000188803" tabindex="0">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">29,000</span>원
															~</span><span class="tx_cur"><span class="tx_num">19,860</span>원
															~</span>
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
														<button class="cartBtn" data-ref-goodsno="A000000188803"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="0">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="0">새창보기</button>
													</p>
												</div>



											</li>






										</ul>

									</div>
									<div class="slider_unit  right slick-slide slick-active"
										data-slick-index="1" aria-hidden="false" style="width: 520px;"
										tabindex="-1" role="option" aria-describedby="slick-slide11">









										<div class="plan_top">
											<div class="plan_banner"
												style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/508948120174502060.jpg');">
												<a
													onclick="common.reqAmplitude('인기행사 배너 클릭', {entry_source: '홈', click_source: '인기행사_배너', banner_name: '당충전필요할때', banner_number: '2'});"
													href="javascript:common.link.movePlanShop('500000102820183', 'Home_Planshop3_PROD', 't_page=홈&amp;t_click=인기행사_배너&amp;t_banner_name=%EB%8B%B9%EC%B6%A9%EC%A0%84%ED%95%84%EC%9A%94%ED%95%A0%EB%95%8C&amp;t_number=2');"
													data-ref-dispcatno="500000102820183"
													data-tracking-cd="Home_Planshop3_PROD"
													data-attr="홈^인기행사기획전상세^당충전필요할때^2" data-trk="/"
													data-attr-imp-goodsno="" tabindex="0">
													<p>
														<strong class="tit" style="color: #000000;">달달하고
															행복하게 </strong> <strong class="tit" style="color: #000000;">SWEET
															SNACK </strong> <span class="desc" style="color: #000000;">#1+1/2+1
															#BEST모음</span>
													</p>
												</a>
											</div>
										</div>








										<ul class="cate_prd_list">





											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000191890&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_당충전필요할때_상품상세&amp;t_number=3"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000191890"
														data-attr="홈^인기행사만 모았어요^밀카 초콜릿 4종 패키지 기획 313g^1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000191890^홈_인기행사만 모았어요^1"
														data-impression-visibility="1" tabindex="0"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019189001ko.jpg?l=ko"
														alt="밀카 초콜릿 4종 패키지 기획 313g"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000191890"
															data-attr="홈^인기행사만 모았어요^밀카 초콜릿 4종 패키지 기획 313g^1"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="0"><span class="tx_brand">밀카</span>
														<p class="tx_name">밀카 초콜릿 4종 패키지 기획 313g</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000191890" tabindex="0">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">8,900</span>원
														</span><span class="tx_cur"><span class="tx_num">6,900</span>원
														</span>
													</p>
													<p class="prd_flag">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</p>
													<p class="prd_point_area tx_num">
														<span class="review_point"><span class="point"
															style="width: 100.0%">10점만점에 5.5점</span></span>(11)
													</p>
													<p class="prd_btn_area">
														<button class="cartBtn" data-ref-goodsno="A000000191890"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="0">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="0">새창보기</button>
													</p>
												</div>



											</li>



											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189568&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_당충전필요할때_상품상세&amp;t_number=4"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000189568"
														data-attr="홈^인기행사만 모았어요^딜라이트 프로젝트 더티초코 디저트 3종^2"
														data-ref-dispcatno="90000010001" data-ref-itemno="003"
														data-trk="null"
														data-impression="A000000189568^홈_인기행사만 모았어요^2"
														data-impression-visibility="1" tabindex="0"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018956806ko.jpg?l=ko"
														alt="딜라이트 프로젝트 더티초코 디저트 3종"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000189568"
															data-attr="홈^인기행사만 모았어요^딜라이트 프로젝트 더티초코 디저트 3종^2"
															data-ref-dispcatno="90000010001" data-ref-itemno="003"
															data-trk="null" tabindex="0"><span class="tx_brand">딜라이트
																프로젝트</span>
														<p class="tx_name">딜라이트 프로젝트 더티초코 디저트 3종</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000189568" tabindex="0">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">3,200</span>원
															~</span><span class="tx_cur"><span class="tx_num">2,500</span>원
															~</span>
													</p>
													<p class="prd_flag">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</p>
													<p class="prd_point_area tx_num">
														<span class="review_point"><span class="point"
															style="width: 96.0%">10점만점에 5.5점</span></span>(999+)
													</p>
													<p class="prd_btn_area">
														<button class="cartBtn" data-ref-goodsno="A000000189568"
															data-ref-dispcatno="90000010001" data-ref-itemno="003"
															tabindex="0">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="0">새창보기</button>
													</p>
												</div>



											</li>






										</ul>

									</div>
									<div class="slider_unit  slick-slide" data-slick-index="2"
										aria-hidden="true" style="width: 520px;" tabindex="-1"
										role="option" aria-describedby="slick-slide12">









										<div class="plan_top">
											<div class="plan_banner"
												style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/2333911504943230794.jpg');">
												<a
													onclick="common.reqAmplitude('인기행사 배너 클릭', {entry_source: '홈', click_source: '인기행사_배너', banner_name: '붙이는주름관리', banner_number: '3'});"
													href="javascript:common.link.movePlanShop('500000102870138', 'Home_Planshop3_PROD', 't_page=홈&amp;t_click=인기행사_배너&amp;t_banner_name=%EB%B6%99%EC%9D%B4%EB%8A%94%EC%A3%BC%EB%A6%84%EA%B4%80%EB%A6%AC&amp;t_number=3');"
													data-ref-dispcatno="500000102870138"
													data-tracking-cd="Home_Planshop3_PROD"
													data-attr="홈^인기행사기획전상세^붙이는주름관리^3" data-trk="/"
													data-attr-imp-goodsno="" tabindex="-1">
													<p>
														<strong class="tit" style="color: #000000;">붙이는
															주름관리 시작! </strong> <strong class="tit" style="color: #000000;">마르시끄
															패치 3종 </strong> <span class="desc" style="color: #000000;">#추가할인
															쿠폰까지</span>
													</p>
												</a>
											</div>
										</div>








										<ul class="cate_prd_list">





											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000181697&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_붙이는주름관리_상품상세&amp;t_number=5"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000181697"
														data-attr="홈^인기행사만 모았어요^[11월올영픽] 마르시끄 링클 리페어 주름패치(미간, 팔자, 이마) 3종 택 1^1"
														data-ref-dispcatno="90000010001" data-ref-itemno="002"
														data-trk="null"
														data-impression="A000000181697^홈_인기행사만 모았어요^1"
														data-impression-visibility="1" tabindex="-1"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018169710ko.jpg?l=ko"
														alt="[11월올영픽] 마르시끄 링클 리페어 주름패치(미간, 팔자, 이마) 3종 택 1"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000181697"
															data-attr="홈^인기행사만 모았어요^[11월올영픽] 마르시끄 링클 리페어 주름패치(미간, 팔자, 이마) 3종 택 1^1"
															data-ref-dispcatno="90000010001" data-ref-itemno="002"
															data-trk="null" tabindex="-1"><span class="tx_brand">마르시끄</span>
														<p class="tx_name">[11월올영픽] 마르시끄 링클 리페어 주름패치(미간, 팔자,
																이마) 3종 택 1</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000181697" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">12,900</span>원
														</span><span class="tx_cur"><span class="tx_num">9,900</span>원
														</span>
													</p>
													<p class="prd_flag">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag coupon">쿠폰</span><span
															class="icon_flag delivery">오늘드림</span>
													</p>
													<p class="prd_point_area tx_num">
														<span class="review_point"><span class="point"
															style="width: 90.0%">10점만점에 5.5점</span></span>(999+)
													</p>
													<p class="prd_btn_area">
														<button class="cartBtn" data-ref-goodsno="A000000181697"
															data-ref-dispcatno="90000010001" data-ref-itemno="002"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>



											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000181613&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_붙이는주름관리_상품상세&amp;t_number=6"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000181613"
														data-attr="홈^인기행사만 모았어요^[11월올영픽] 마르시끄 링클 리페어 미간 주름패치 33개^2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000181613^홈_인기행사만 모았어요^2"
														data-impression-visibility="1" tabindex="-1"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018161301ko.jpg?l=ko"
														alt="[11월올영픽] 마르시끄 링클 리페어 미간 주름패치 33개"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000181613"
															data-attr="홈^인기행사만 모았어요^[11월올영픽] 마르시끄 링클 리페어 미간 주름패치 33개^2"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="-1"><span class="tx_brand">마르시끄</span>
														<p class="tx_name">[11월올영픽] 마르시끄 링클 리페어 미간 주름패치 33개</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000181613" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">12,900</span>원
														</span><span class="tx_cur"><span class="tx_num">9,900</span>원
														</span>
													</p>
													<p class="prd_flag">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag coupon">쿠폰</span><span
															class="icon_flag delivery">오늘드림</span>
													</p>
													<p class="prd_point_area tx_num">
														<span class="review_point"><span class="point"
															style="width: 92.0%">10점만점에 5.5점</span></span>(999+)
													</p>
													<p class="prd_btn_area">
														<button class="cartBtn" data-ref-goodsno="A000000181613"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>






										</ul>

									</div>
									<div class="slider_unit  right slick-slide"
										data-slick-index="3" aria-hidden="true" style="width: 520px;"
										tabindex="-1" role="option" aria-describedby="slick-slide13">









										<div class="plan_top">
											<div class="plan_banner"
												style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/864405830504790862.jpg');">
												<a
													onclick="common.reqAmplitude('인기행사 배너 클릭', {entry_source: '홈', click_source: '인기행사_배너', banner_name: '3만원대향수', banner_number: '4'});"
													href="javascript:common.link.movePlanShop('500000102810086', 'Home_Planshop3_PROD', 't_page=홈&amp;t_click=인기행사_배너&amp;t_banner_name=3%EB%A7%8C%EC%9B%90%EB%8C%80%ED%96%A5%EC%88%98&amp;t_number=4');"
													data-ref-dispcatno="500000102810086"
													data-tracking-cd="Home_Planshop3_PROD"
													data-attr="홈^인기행사기획전상세^3만원대향수^4" data-trk="/"
													data-attr-imp-goodsno="" tabindex="-1">
													<p>
														<strong class="tit" style="color: #000000;">블랙프라이데이
															향은? </strong> <strong class="tit" style="color: #000000;">취향대로
															향수 골라담기 </strong> <span class="desc" style="color: #000000;">#3만원대향수
															#파우치증정</span>
													</p>
												</a>
											</div>
										</div>








										<ul class="cate_prd_list">





											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000186173&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_3만원대향수_상품상세&amp;t_number=7"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000186173"
														data-attr="홈^인기행사만 모았어요^[블프특가][샤워젤 증정] CK 캘빈클라인 One EDT 50ml^1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000186173^홈_인기행사만 모았어요^1"
														data-impression-visibility="1" tabindex="-1"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018617303ko.jpg?l=ko"
														alt="[블프특가][샤워젤 증정] CK 캘빈클라인 One EDT 50ml"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000186173"
															data-attr="홈^인기행사만 모았어요^[블프특가][샤워젤 증정] CK 캘빈클라인 One EDT 50ml^1"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="-1"><span class="tx_brand">캘빈클라인</span>
														<p class="tx_name">[블프특가][샤워젤 증정] CK 캘빈클라인 One EDT
																50ml</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000186173" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">61,000</span>원
														</span><span class="tx_cur"><span class="tx_num">32,030</span>원
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
															style="width: 96.0%">10점만점에 5.5점</span></span>(735)
													</p>
													<p class="prd_btn_area">
														<button class="cartBtn" data-ref-goodsno="A000000186173"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>



											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000186891&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_3만원대향수_상품상세&amp;t_number=8"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000186891"
														data-attr="홈^인기행사만 모았어요^[블프특가] 버버리 브리트쉬어 EDT 30ml^2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000186891^홈_인기행사만 모았어요^2"
														data-impression-visibility="1" tabindex="-1"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018689101ko.jpg?l=ko"
														alt="[블프특가] 버버리 브리트쉬어 EDT 30ml"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000186891"
															data-attr="홈^인기행사만 모았어요^[블프특가] 버버리 브리트쉬어 EDT 30ml^2"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="-1"><span class="tx_brand">버버리</span>
														<p class="tx_name">[블프특가] 버버리 브리트쉬어 EDT 30ml</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000186891" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">73,000</span>원
														</span><span class="tx_cur"><span class="tx_num">39,860</span>원
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
															style="width: 96.0%">10점만점에 5.5점</span></span>(309)
													</p>
													<p class="prd_btn_area">
														<button class="cartBtn" data-ref-goodsno="A000000186891"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>




										</ul>

									</div>
									<div class="slider_unit  slick-slide" data-slick-index="4"
										aria-hidden="true" style="width: 520px;" tabindex="-1"
										role="option" aria-describedby="slick-slide14">









										<div class="plan_top">
											<div class="plan_banner"
												style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/5818977716061829679.jpg');">
												<a
													onclick="common.reqAmplitude('인기행사 배너 클릭', {entry_source: '홈', click_source: '인기행사_배너', banner_name: '헤어바디블프특가', banner_number: '5'});"
													href="javascript:common.link.movePlanShop('500000102800124', 'Home_Planshop3_PROD', 't_page=홈&amp;t_click=인기행사_배너&amp;t_banner_name=%ED%97%A4%EC%96%B4%EB%B0%94%EB%94%94%EB%B8%94%ED%94%84%ED%8A%B9%EA%B0%80&amp;t_number=5');"
													data-ref-dispcatno="500000102800124"
													data-tracking-cd="Home_Planshop3_PROD"
													data-attr="홈^인기행사기획전상세^헤어바디블프특가^5" data-trk="/"
													data-attr-imp-goodsno="" tabindex="-1">
													<p>
														<strong class="tit" style="color: #000000;">헤어&amp;바디케어
														</strong> <strong class="tit" style="color: #000000;">블프
															역대급 특가! </strong> <span class="desc" style="color: #000000;">#최대43%SALE
														</span>
													</p>
												</a>
											</div>
										</div>








										<ul class="cate_prd_list">





											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171848&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_헤어바디블프특가_상품상세&amp;t_number=9"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000171848"
														data-attr="홈^인기행사만 모았어요^[올영단독/대용량] 일리윤 세라마이드 아토 로션기획(600ML+600ML)^1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000171848^홈_인기행사만 모았어요^1"
														data-impression-visibility="1" tabindex="-1"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017184803ko.jpg?l=ko"
														alt="[올영단독/대용량] 일리윤 세라마이드 아토 로션기획(600ML+600ML)"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000171848"
															data-attr="홈^인기행사만 모았어요^[올영단독/대용량] 일리윤 세라마이드 아토 로션기획(600ML+600ML)^1"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="-1"><span class="tx_brand">일리윤</span>
														<p class="tx_name">[올영단독/대용량] 일리윤 세라마이드 아토
																로션기획(600ML+600ML)</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000171848" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">55,900</span>원
														</span><span class="tx_cur"><span class="tx_num">35,900</span>원
														</span>
													</p>
													<p class="prd_flag">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</p>
													<p class="prd_point_area tx_num">
														<span class="review_point"><span class="point"
															style="width: 98.0%">10점만점에 5.5점</span></span>(999+)
													</p>
													<p class="prd_btn_area">
														<button class="cartBtn" data-ref-goodsno="A000000171848"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>



											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189265&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_헤어바디블프특가_상품상세&amp;t_number=10"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000189265"
														data-attr="홈^인기행사만 모았어요^[1+1기획] 라보에이치 두피강화 캡슐트리트먼트 탈모증상완화 200ml 더블기획^2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000189265^홈_인기행사만 모았어요^2"
														data-impression-visibility="1" tabindex="-1"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018926508ko.jpg?l=ko"
														alt="[1+1기획] 라보에이치 두피강화 캡슐트리트먼트 탈모증상완화 200ml 더블기획"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000189265"
															data-attr="홈^인기행사만 모았어요^[1+1기획] 라보에이치 두피강화 캡슐트리트먼트 탈모증상완화 200ml 더블기획^2"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="-1"><span class="tx_brand">라보에이치</span>
														<p class="tx_name">[1+1기획] 라보에이치 두피강화 캡슐트리트먼트 탈모증상완화
																200ml 더블기획</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000189265" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">28,000</span>원
														</span><span class="tx_cur"><span class="tx_num">15,890</span>원
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
														<button class="cartBtn" data-ref-goodsno="A000000189265"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>








										</ul>

									</div>
									<div class="slider_unit  right slick-slide"
										data-slick-index="5" aria-hidden="true" style="width: 520px;"
										tabindex="-1" role="option" aria-describedby="slick-slide15">









										<div class="plan_top">
											<div class="plan_banner"
												style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/3778793962759556640.jpg');">
												<a
													onclick="common.reqAmplitude('인기행사 배너 클릭', {entry_source: '홈', click_source: '인기행사_배너', banner_name: '힙행열차', banner_number: '6'});"
													href="javascript:common.link.movePlanShop('500000102750242', 'Home_Planshop3_PROD', 't_page=홈&amp;t_click=인기행사_배너&amp;t_banner_name=%ED%9E%99%ED%96%89%EC%97%B4%EC%B0%A8&amp;t_number=6');"
													data-ref-dispcatno="500000102750242"
													data-tracking-cd="Home_Planshop3_PROD"
													data-attr="홈^인기행사기획전상세^힙행열차^6" data-trk="/"
													data-attr-imp-goodsno="" tabindex="-1">
													<p>
														<strong class="tit" style="color: #000000;">페리페라
															힙행열차 </strong> <strong class="tit" style="color: #000000;">눈
															깜빡하면 힙스터행 </strong> <span class="desc" style="color: #000000;">뭉게뭉게
															회스모키 ~24%</span>
													</p>
												</a>
											</div>
										</div>








										<ul class="cate_prd_list">





											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000174272&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_힙행열차_상품상세&amp;t_number=11"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000174272"
														data-attr="홈^인기행사만 모았어요^[NEW 힙행열차]페리페라 잉크무드글로이밤 ^1"
														data-ref-dispcatno="90000010001" data-ref-itemno="005"
														data-trk="null"
														data-impression="A000000174272^홈_인기행사만 모았어요^1"
														data-impression-visibility="1" tabindex="-1"><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017427211ko.jpg?l=ko"
														alt="[NEW 힙행열차]페리페라 잉크무드글로이밤 "
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000174272"
															data-attr="홈^인기행사만 모았어요^[NEW 힙행열차]페리페라 잉크무드글로이밤 ^1"
															data-ref-dispcatno="90000010001" data-ref-itemno="005"
															data-trk="null" tabindex="-1"><span class="tx_brand">페리페라</span>
														<p class="tx_name">[NEW 힙행열차]페리페라 잉크무드글로이밤</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000174272" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">13,000</span>원
														</span><span class="tx_cur"><span class="tx_num">9,900</span>원
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
															style="width: 92.0%">10점만점에 5.5점</span></span>(999+)
													</p>
													<p class="prd_btn_area">
														<button class="cartBtn" data-ref-goodsno="A000000174272"
															data-ref-dispcatno="90000010001" data-ref-itemno="005"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>



											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000136296&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_힙행열차_상품상세&amp;t_number=12"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000136296"
														data-attr="홈^인기행사만 모았어요^[NEW 힙행열차]페리페라 올테이크무드팔레트^2"
														data-ref-dispcatno="90000010001" data-ref-itemno="013"
														data-trk="null"
														data-impression="A000000136296^홈_인기행사만 모았어요^2"
														data-impression-visibility="1" tabindex="-1"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0013/A00000013629681ko.jpg?l=ko"
														alt="[NEW 힙행열차]페리페라 올테이크무드팔레트"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000136296"
															data-attr="홈^인기행사만 모았어요^[NEW 힙행열차]페리페라 올테이크무드팔레트^2"
															data-ref-dispcatno="90000010001" data-ref-itemno="013"
															data-trk="null" tabindex="-1"><span class="tx_brand">페리페라</span>
														<p class="tx_name">[NEW 힙행열차]페리페라 올테이크무드팔레트</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000136296" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">21,000</span>원
														</span><span class="tx_cur"><span class="tx_num">15,960</span>원
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
														<button class="cartBtn" data-ref-goodsno="A000000136296"
															data-ref-dispcatno="90000010001" data-ref-itemno="013"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>




										</ul>

									</div>
									<div class="slider_unit  slick-slide" data-slick-index="6"
										aria-hidden="true" style="width: 520px;" tabindex="-1"
										role="option" aria-describedby="slick-slide16">









										<div class="plan_top">
											<div class="plan_banner"
												style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/5933098486848573045.jpg');">
												<a
													onclick="common.reqAmplitude('인기행사 배너 클릭', {entry_source: '홈', click_source: '인기행사_배너', banner_name: '클렌징 블프시작', banner_number: '7'});"
													href="javascript:common.link.movePlanShop('500000102730094', 'Home_Planshop3_PROD', 't_page=홈&amp;t_click=인기행사_배너&amp;t_banner_name=%ED%81%B4%EB%A0%8C%EC%A7%95+%EB%B8%94%ED%94%84%EC%8B%9C%EC%9E%91&amp;t_number=7');"
													data-ref-dispcatno="500000102730094"
													data-tracking-cd="Home_Planshop3_PROD"
													data-attr="홈^인기행사기획전상세^클렌징 블프시작^7" data-trk="/"
													data-attr-imp-goodsno="" tabindex="-1">
													<p>
														<strong class="tit" style="color: #000000;">클렌징
															블랙프라이데이 </strong> <strong class="tit" style="color: #000000;">BEST
															상품만 모아! </strong> <span class="desc" style="color: #000000;">#7일간
															혜택</span>
													</p>
												</a>
											</div>
										</div>








										<ul class="cate_prd_list">





											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165797&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_클렌징 블프시작_상품상세&amp;t_number=13"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000165797"
														data-attr="홈^인기행사만 모았어요^[대용량] 넘버즈인 1번 말끔 순삭 클렌징 오일 400ml 대용량 기획^1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000165797^홈_인기행사만 모았어요^1"
														data-impression-visibility="1" tabindex="-1"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016579710ko.jpg?l=ko"
														alt="[대용량] 넘버즈인 1번 말끔 순삭 클렌징 오일 400ml 대용량 기획"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000165797"
															data-attr="홈^인기행사만 모았어요^[대용량] 넘버즈인 1번 말끔 순삭 클렌징 오일 400ml 대용량 기획^1"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="-1"><span class="tx_brand">넘버즈인</span>
														<p class="tx_name">[대용량] 넘버즈인 1번 말끔 순삭 클렌징 오일 400ml
																대용량 기획</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000165797" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">35,000</span>원
														</span><span class="tx_cur"><span class="tx_num">23,520</span>원
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
														<button class="cartBtn" data-ref-goodsno="A000000165797"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>



											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000187479&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_클렌징 블프시작_상품상세&amp;t_number=14"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000187479"
														data-attr="홈^인기행사만 모았어요^비플레인 녹두 약산성 클렌징폼 160ml + 40ml 기획^2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000187479^홈_인기행사만 모았어요^2"
														data-impression-visibility="1" tabindex="-1"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018747906ko.jpg?l=ko"
														alt="비플레인 녹두 약산성 클렌징폼 160ml + 40ml 기획"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000187479"
															data-attr="홈^인기행사만 모았어요^비플레인 녹두 약산성 클렌징폼 160ml + 40ml 기획^2"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="-1"><span class="tx_brand">비플레인</span>
														<p class="tx_name">비플레인 녹두 약산성 클렌징폼 160ml + 40ml 기획</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000187479" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">21,900</span>원
														</span><span class="tx_cur"><span class="tx_num">17,670</span>원
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
														<button class="cartBtn" data-ref-goodsno="A000000187479"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>






										</ul>

									</div>
									<div class="slider_unit  right slick-slide"
										data-slick-index="7" aria-hidden="true" style="width: 520px;"
										tabindex="-1" role="option" aria-describedby="slick-slide17">









										<div class="plan_top">
											<div class="plan_banner"
												style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/5680994098086568541.jpg');">
												<a
													onclick="common.reqAmplitude('인기행사 배너 클릭', {entry_source: '홈', click_source: '인기행사_배너', banner_name: '보습크림모음집', banner_number: '8'});"
													href="javascript:common.link.movePlanShop('500000102700122', 'Home_Planshop3_PROD', 't_page=홈&amp;t_click=인기행사_배너&amp;t_banner_name=%EB%B3%B4%EC%8A%B5%ED%81%AC%EB%A6%BC%EB%AA%A8%EC%9D%8C%EC%A7%91&amp;t_number=8');"
													data-ref-dispcatno="500000102700122"
													data-tracking-cd="Home_Planshop3_PROD"
													data-attr="홈^인기행사기획전상세^보습크림모음집^8" data-trk="/"
													data-attr-imp-goodsno="" tabindex="-1">
													<p>
														<strong class="tit" style="color: #000000;">건조하고
															민감한 11월, </strong> <strong class="tit" style="color: #000000;">필요한
															'크림' 모음집 </strong> <span class="desc" style="color: #000000;">#7일간
															최대 50%</span>
													</p>
												</a>
											</div>
										</div>








										<ul class="cate_prd_list">





											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000191177&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_보습크림모음집_상품상세&amp;t_number=15"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000191177"
														data-attr="홈^인기행사만 모았어요^아이오페 스템3 크림 50ml^1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000191177^홈_인기행사만 모았어요^1"
														data-impression-visibility="1" tabindex="-1"><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019117701ko.jpg?l=ko"
														alt="아이오페 스템3 크림 50ml" onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000191177"
															data-attr="홈^인기행사만 모았어요^아이오페 스템3 크림 50ml^1"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="-1"><span class="tx_brand">아이오페</span>
														<p class="tx_name">아이오페 스템3 크림 50ml</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000191177" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">70,000</span>원
														</span><span class="tx_cur"><span class="tx_num">50,400</span>원
														</span>
													</p>
													<p class="prd_flag">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag coupon">쿠폰</span><span
															class="icon_flag delivery">오늘드림</span>
													</p>
													<p class="prd_point_area tx_num">
														<span class="review_point"><span class="point"
															style="width: 100.0%">10점만점에 5.5점</span></span>(7)
													</p>
													<p class="prd_btn_area">
														<button class="cartBtn" data-ref-goodsno="A000000191177"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>



											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000153781&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_보습크림모음집_상품상세&amp;t_number=16"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000153781"
														data-attr="홈^인기행사만 모았어요^[채정안PICK/단독기획] CKD&nbsp;레티노콜라겐 저분자&nbsp;300&nbsp;크림&nbsp;40ml&nbsp;기획&nbsp;(40ml+10ml)^2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000153781^홈_인기행사만 모았어요^2"
														data-impression-visibility="1" tabindex="-1"><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015378114ko.jpg?l=ko"
														alt="[채정안PICK/단독기획] CKD&nbsp;레티노콜라겐 저분자&nbsp;300&nbsp;크림&nbsp;40ml&nbsp;기획&nbsp;(40ml+10ml)"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000153781"
															data-attr="홈^인기행사만 모았어요^[채정안PICK/단독기획] CKD&nbsp;레티노콜라겐 저분자&nbsp;300&nbsp;크림&nbsp;40ml&nbsp;기획&nbsp;(40ml+10ml)^2"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="-1"><span class="tx_brand">CKD</span>
														<p class="tx_name">[채정안PICK/단독기획] CKD&nbsp;레티노콜라겐
																저분자&nbsp;300&nbsp;크림&nbsp;40ml&nbsp;기획&nbsp;(40ml+10ml)</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000153781" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">38,000</span>원
														</span><span class="tx_cur"><span class="tx_num">20,520</span>원
														</span>
													</p>
													<p class="prd_flag">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag coupon">쿠폰</span><span
															class="icon_flag delivery">오늘드림</span>
													</p>
													<p class="prd_point_area tx_num">
														<span class="review_point"><span class="point"
															style="width: 98.0%">10점만점에 5.5점</span></span>(999+)
													</p>
													<p class="prd_btn_area">
														<button class="cartBtn" data-ref-goodsno="A000000153781"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>
											</li>
										</ul>

									</div>
									<div class="slider_unit  slick-slide slick-cloned"
										data-slick-index="8" aria-hidden="true" style="width: 520px;"
										tabindex="-1">
										<div class="plan_top">
											<div class="plan_banner"
												style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/5358451737655223845.jpg');">
												<a
													onclick="common.reqAmplitude('인기행사 배너 클릭', {entry_source: '홈', click_source: '인기행사_배너', banner_name: '맨즈그루밍', banner_number: '1'});"
													href="javascript:common.link.movePlanShop('500000103010021', 'Home_Planshop3_PROD', 't_page=홈&amp;t_click=인기행사_배너&amp;t_banner_name=%EB%A7%A8%EC%A6%88%EA%B7%B8%EB%A3%A8%EB%B0%8D&amp;t_number=1');"
													data-ref-dispcatno="500000103010021"
													data-tracking-cd="Home_Planshop3_PROD"
													data-attr="홈^인기행사기획전상세^맨즈그루밍^1" data-trk="/"
													data-attr-imp-goodsno="" tabindex="-1">
													<p>
														<strong class="tit" style="color: #000000;">아이디얼
															포맨 </strong> <strong class="tit" style="color: #000000;">작심1주,블프특가
														</strong> <span class="desc" style="color: #000000;">#7일특가#선착순증정</span>
													</p>
												</a>
											</div>
										</div>
										<ul class="cate_prd_list">
											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188808&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_맨즈그루밍_상품상세&amp;t_number=1"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000188808"
														data-attr="홈^인기행사만 모았어요^[11월 블프특가]아이디얼 포 맨 시카 흔적 올인원 플루이드 한정기획(75mL 증정)^1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000188808^홈_인기행사만 모았어요^1"
														data-impression-visibility="1" tabindex="-1"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018880803ko.jpg?l=ko"
														alt="[11월 블프특가]아이디얼 포 맨 시카 흔적 올인원 플루이드 한정기획(75mL 증정)"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000188808"
															data-attr="홈^인기행사만 모았어요^[11월 블프특가]아이디얼 포 맨 시카 흔적 올인원 플루이드 한정기획(75mL 증정)^1"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="-1"><span class="tx_brand">아이디얼포맨</span>
														<p class="tx_name">[11월 블프특가]아이디얼 포 맨 시카 흔적 올인원 플루이드
																한정기획(75mL 증정)</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000188808" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">30,000</span>원
														</span><span class="tx_cur"><span class="tx_num">20,810</span>원
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
														<button class="cartBtn" data-ref-goodsno="A000000188808"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>



											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188803&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_맨즈그루밍_상품상세&amp;t_number=2"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000188803"
														data-attr="홈^인기행사만 모았어요^[11월 블프특가]아이디얼 포 맨&nbsp;퍼펙트 올인원 탄력 기획(올인원 30ml+탄력크림 30ml 증정)^2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000188803^홈_인기행사만 모았어요^2"
														data-impression-visibility="1" tabindex="-1"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018880304ko.jpg?l=ko"
														alt="[11월 블프특가]아이디얼 포 맨&nbsp;퍼펙트 올인원 탄력 기획(올인원 30ml+탄력크림 30ml 증정)"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000188803"
															data-attr="홈^인기행사만 모았어요^[11월 블프특가]아이디얼 포 맨&nbsp;퍼펙트 올인원 탄력 기획(올인원 30ml+탄력크림 30ml 증정)^2"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="-1"><span class="tx_brand">아이디얼포맨</span>
														<p class="tx_name">[11월 블프특가]아이디얼 포 맨&nbsp;퍼펙트 올인원 탄력
																기획(올인원 30ml+탄력크림 30ml 증정)</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000188803" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">29,000</span>원
															~</span><span class="tx_cur"><span class="tx_num">19,860</span>원
															~</span>
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
														<button class="cartBtn" data-ref-goodsno="A000000188803"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>

											</li>
										</ul>

									</div>
									<div class="slider_unit  right slick-slide slick-cloned"
										data-slick-index="9" aria-hidden="true" style="width: 520px;"
										tabindex="-1">

										<div class="plan_top">
											<div class="plan_banner"
												style="background-image: url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/508948120174502060.jpg');">
												<a
													onclick="common.reqAmplitude('인기행사 배너 클릭', {entry_source: '홈', click_source: '인기행사_배너', banner_name: '당충전필요할때', banner_number: '2'});"
													href="javascript:common.link.movePlanShop('500000102820183', 'Home_Planshop3_PROD', 't_page=홈&amp;t_click=인기행사_배너&amp;t_banner_name=%EB%8B%B9%EC%B6%A9%EC%A0%84%ED%95%84%EC%9A%94%ED%95%A0%EB%95%8C&amp;t_number=2');"
													data-ref-dispcatno="500000102820183"
													data-tracking-cd="Home_Planshop3_PROD"
													data-attr="홈^인기행사기획전상세^당충전필요할때^2" data-trk="/"
													data-attr-imp-goodsno="" tabindex="-1">
													<p>
														<strong class="tit" style="color: #000000;">달달하고
															행복하게 </strong> <strong class="tit" style="color: #000000;">SWEET
															SNACK </strong> <span class="desc" style="color: #000000;">#1+1/2+1
															#BEST모음</span>
													</p>
												</a>
											</div>
										</div>
										<ul class="cate_prd_list">
											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000191890&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_당충전필요할때_상품상세&amp;t_number=3"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000191890"
														data-attr="홈^인기행사만 모았어요^밀카 초콜릿 4종 패키지 기획 313g^1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"
														data-trk="null"
														data-impression="A000000191890^홈_인기행사만 모았어요^1"
														data-impression-visibility="1" tabindex="-1"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019189001ko.jpg?l=ko"
														alt="밀카 초콜릿 4종 패키지 기획 313g"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000191890"
															data-attr="홈^인기행사만 모았어요^밀카 초콜릿 4종 패키지 기획 313g^1"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															data-trk="null" tabindex="-1"><span class="tx_brand">밀카</span>
														<p class="tx_name">밀카 초콜릿 4종 패키지 기획 313g</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000191890" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">8,900</span>원
														</span><span class="tx_cur"><span class="tx_num">6,900</span>원
														</span>
													</p>
													<p class="prd_flag">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</p>
													<p class="prd_point_area tx_num">
														<span class="review_point"><span class="point"
															style="width: 100.0%">10점만점에 5.5점</span></span>(11)
													</p>
													<p class="prd_btn_area">
														<button class="cartBtn" data-ref-goodsno="A000000191890"
															data-ref-dispcatno="90000010001" data-ref-itemno="001"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>
											</li>
											<li>

												<div class="prd_info ">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189568&amp;dispCatNo=90000010001&amp;trackingCd=Home_Planshop3&amp;t_page=홈&amp;t_click=인기행사_당충전필요할때_상품상세&amp;t_number=4"
														name="Home_Planshop3" class="prd_thumb goodsList"
														data-ref-goodsno="A000000189568"
														data-attr="홈^인기행사만 모았어요^딜라이트 프로젝트 더티초코 디저트 3종^2"
														data-ref-dispcatno="90000010001" data-ref-itemno="003"
														data-trk="null"
														data-impression="A000000189568^홈_인기행사만 모았어요^2"
														data-impression-visibility="1" tabindex="-1"><span
														class="thumb_flag best">베스트</span><img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018956806ko.jpg?l=ko"
														alt="딜라이트 프로젝트 더티초코 디저트 3종"
														onerror="common.errorImg(this);"></a>
													<div class="prd_name">
														<a href="javascript:;" name="Home_Planshop3"
															class="goodsList" data-ref-goodsno="A000000189568"
															data-attr="홈^인기행사만 모았어요^딜라이트 프로젝트 더티초코 디저트 3종^2"
															data-ref-dispcatno="90000010001" data-ref-itemno="003"
															data-trk="null" tabindex="-1"><span class="tx_brand">딜라이트
																프로젝트</span>
														<p class="tx_name">딜라이트 프로젝트 더티초코 디저트 3종</p></a>
													</div>
													<button class="btn_zzim jeem"
														data-ref-goodsno="A000000189568" tabindex="-1">
														<span>찜하기전</span>
													</button>
													<p class="prd_price">
														<span class="tx_org"><span class="tx_num">3,200</span>원
															~</span><span class="tx_cur"><span class="tx_num">2,500</span>원
															~</span>
													</p>
													<p class="prd_flag">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</p>
													<p class="prd_point_area tx_num">
														<span class="review_point"><span class="point"
															style="width: 96.0%">10점만점에 5.5점</span></span>(999+)
													</p>
													<p class="prd_btn_area">
														<button class="cartBtn" data-ref-goodsno="A000000189568"
															data-ref-dispcatno="90000010001" data-ref-itemno="003"
															tabindex="-1">장바구니</button>
														<button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
													</p>
												</div>



											</li>

										</ul>

									</div>
								</div>
							</div>

						</div>
					</div>
					<div class="banner_paging" role="toolbar">
						<ul class="slick-dots" role="tablist" style="display: block;">
							<li class="slick-active" aria-hidden="false" role="presentation"
								aria-selected="true" aria-controls="navigation10"
								id="slick-slide10"><button type="button" data-role="none"
									role="button" tabindex="0">1</button></li>
							<li aria-hidden="true" role="presentation" aria-selected="false"
								aria-controls="navigation11" id="slick-slide11"><button
									type="button" data-role="none" role="button" tabindex="0">2</button></li>
							<li aria-hidden="true" role="presentation" aria-selected="false"
								aria-controls="navigation12" id="slick-slide12"><button
									type="button" data-role="none" role="button" tabindex="0">3</button></li>
							<li aria-hidden="true" role="presentation" aria-selected="false"
								aria-controls="navigation13" id="slick-slide13"><button
									type="button" data-role="none" role="button" tabindex="0">4</button></li>
						</ul>
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
				<div class="main_onlyone_wrap">
					<h3 class="main_sub_tit">오직 올리브영에서만</h3>
					<div
						class="banner_wrap slick_slider slick-initialized slick-slider slick-dotted"
						id="OnlyoneSlider" role="toolbar">


						<div aria-live="polite" class="slick-list draggable">
							<div class="slick-track" role="listbox"
								style="opacity: 1; width: 4116px; transform: translate3d(-1029px, 0px, 0px);">
								<div class="slick-slide slick-cloned" data-slick-index="-3"
									aria-hidden="true" style="width: 343px;" tabindex="-1">
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
								<div class="slick-slide slick-cloned" data-slick-index="-2"
									aria-hidden="true" style="width: 343px;" tabindex="-1">
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
								<div class="slick-slide slick-cloned" data-slick-index="-1"
									aria-hidden="true" style="width: 343px;" tabindex="-1">



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
								<div class="slick-slide slick-current slick-active"
									data-slick-index="0" aria-hidden="false" style="width: 343px;"
									tabindex="-1" role="option" aria-describedby="slick-slide20">



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
								<div class="slick-slide slick-active" data-slick-index="1"
									aria-hidden="false" style="width: 343px;" tabindex="-1"
									role="option" aria-describedby="slick-slide21">
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
								<div class="slick-slide slick-active" data-slick-index="2"
									aria-hidden="false" style="width: 343px;" tabindex="-1"
									role="option" aria-describedby="slick-slide22">


									<a
										onclick="common.reqAmplitude('오직 올리브영 배너 클릭', {entry_source: '홈', click_source: '오직올리브영_배너', banner_name: '1101-4101_서부현', banner_number: '3'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102820182&amp;trackingCd=Home_Onlyone&amp;t_page=홈&amp;t_click=오직올리브영_배너&amp;t_banner_name=1101-4101_서부현&amp;t_number=3"
										class="onlyone_box"
										data-attr="홈^온리원관오직올리브영에서만^1101-4101_서부현^3" data-trk="/"
										tabindex="0"> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/8440553167349456219.jpg"
										alt="1101-4101_서부현">

										<div class="txt" style="color: #FFFFFF">



											<strong class="title">대용량 인기 간식</strong> <strong
												class="title">최대 50% 할인!</strong> <span class="desc">#왕크니까
												#왕맛있다</span>

										</div>
									</a>
								</div>
								<div class="slick-slide" data-slick-index="3" aria-hidden="true"
									style="width: 343px;" tabindex="-1" role="option"
									aria-describedby="slick-slide23">

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
								<div class="slick-slide" data-slick-index="4" aria-hidden="true"
									style="width: 343px;" tabindex="-1" role="option"
									aria-describedby="slick-slide24">



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
								<div class="slick-slide" data-slick-index="5" aria-hidden="true"
									style="width: 343px;" tabindex="-1" role="option"
									aria-describedby="slick-slide25">



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
								<div class="slick-slide slick-cloned" data-slick-index="6"
									aria-hidden="true" style="width: 343px;" tabindex="-1">



									<a
										onclick="common.reqAmplitude('오직 올리브영 배너 클릭', {entry_source: '홈', click_source: '오직올리브영_배너', banner_name: '111-5008_임용성', banner_number: '1'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103250011&amp;trackingCd=Home_Onlyone&amp;t_page=홈&amp;t_click=오직올리브영_배너&amp;t_banner_name=111-5008_임용성&amp;t_number=1"
										class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^111-5008_임용성^1"
										data-trk="/" tabindex="-1"> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/5890960228533835803.jpg"
										alt="111-5008_임용성">

										<div class="txt" style="color: #000000">



											<strong class="title">11월 신상품</strong> <strong class="title">출시
												기념 특가</strong> <span class="desc">#최대37%#쿠폰발급</span>

										</div>
									</a>
								</div>
								<div class="slick-slide slick-cloned" data-slick-index="7"
									aria-hidden="true" style="width: 343px;" tabindex="-1">



									<a
										onclick="common.reqAmplitude('오직 올리브영 배너 클릭', {entry_source: '홈', click_source: '오직올리브영_배너', banner_name: '111-5012_허예림', banner_number: '2'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103050026&amp;trackingCd=Home_Onlyone&amp;t_page=홈&amp;t_click=오직올리브영_배너&amp;t_banner_name=111-5012_허예림&amp;t_number=2"
										class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^111-5012_허예림^2"
										data-trk="/" tabindex="-1"> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/4115594780654286720.jpg"
										alt="111-5012_허예림">

										<div class="txt" style="color: #000000">



											<strong class="title">블랙프라이데이 </strong> <strong class="title">매일매일다른할인</strong>

											<span class="desc">#놓치지마세요</span>

										</div>
									</a>
								</div>
								<div class="slick-slide slick-cloned" data-slick-index="8"
									aria-hidden="true" style="width: 343px;" tabindex="-1">
									<a
										onclick="common.reqAmplitude('오직 올리브영 배너 클릭', {entry_source: '홈', click_source: '오직올리브영_배너', banner_name: '1101-4101_서부현', banner_number: '3'});"
										href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102820182&amp;trackingCd=Home_Onlyone&amp;t_page=홈&amp;t_click=오직올리브영_배너&amp;t_banner_name=1101-4101_서부현&amp;t_number=3"
										class="onlyone_box"
										data-attr="홈^온리원관오직올리브영에서만^1101-4101_서부현^3" data-trk="/"
										tabindex="-1"> <img
										src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/8440553167349456219.jpg"
										alt="1101-4101_서부현">

										<div class="txt" style="color: #FFFFFF">



											<strong class="title">대용량 인기 간식</strong> <strong
												class="title">최대 50% 할인!</strong> <span class="desc">#왕크니까
												#왕맛있다</span>

										</div>
									</a>
								</div>
							</div>
						</div>






























						<ul class="slick-dots" style="display: block;" role="tablist">
							<li class="slick-active" aria-hidden="false" role="presentation"
								aria-selected="true" aria-controls="navigation20"
								id="slick-slide20"><button type="button" data-role="none"
									role="button" tabindex="0">1</button></li>
							<li aria-hidden="true" role="presentation" aria-selected="false"
								aria-controls="navigation21" id="slick-slide21"><button
									type="button" data-role="none" role="button" tabindex="0">2</button></li>
						</ul>
					</div>
				</div>





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
					class="main_recomm_wrap slick-initialized slick-slider slick-dotted"
					id="mainReComSlider" role="toolbar">
					<button type="button" data-role="none"
						class="slick-prev slick-arrow" aria-label="Previous" role="button"
						style="display: block;">Previous</button>









					<div aria-live="polite" class="slick-list draggable">
						<div class="slick-track" role="listbox"
							style="opacity: 1; width: 5100px; transform: translate3d(-1020px, 0px, 0px);">
							<div class="slick-slide slick-cloned" data-slick-index="-1"
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
							<div class="slick-slide slick-current slick-active"
								data-slick-index="0" aria-hidden="false" style="width: 1020px;"
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
												onerror="common.errorImg(this);"></a>
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
							<div class="slick-slide" data-slick-index="1" aria-hidden="true"
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
							<div class="slick-slide" data-slick-index="2" aria-hidden="true"
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
							<div class="slick-slide slick-cloned" data-slick-index="3"
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
						</div>
					</div>























					<button type="button" data-role="none"
						class="slick-next slick-arrow" aria-label="Next" role="button"
						style="display: block;">Next</button>
					<ul class="slick-dots" style="display: block;" role="tablist">
						<li class="slick-active" aria-hidden="false" role="presentation"
							aria-selected="true" aria-controls="navigation30"
							id="slick-slide30"><button type="button" data-role="none"
								role="button" tabindex="0">1</button></li>
						<li aria-hidden="true" role="presentation" aria-selected="false"
							aria-controls="navigation31" id="slick-slide31"><button
								type="button" data-role="none" role="button" tabindex="0">2</button></li>
						<li aria-hidden="true" role="presentation" aria-selected="false"
							aria-controls="navigation32" id="slick-slide32"><button
								type="button" data-role="none" role="button" tabindex="0">3</button></li>
					</ul>
				</div>



























				<div class="today-new-goods">
					<h3>
						<strong>신상 업데이트</strong>
					</h3>
					<div class="today_newgoods_slide">
						<ul class="slide_list slick_slider slick-initialized slick-slider"
							id="todayGoods" style="">


							<div aria-live="polite" class="slick-list">
								<div class="slick-track" role="listbox"
									style="opacity: 1; width: 5100px;">
									<li class="slick-slide slick-current slick-active"
										data-slick-index="0" aria-hidden="false"
										style="width: 1020px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;"
										tabindex="-1" role="option" aria-describedby="slick-slide40">
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
									<li class="slick-slide" data-slick-index="1" aria-hidden="true"
										style="width: 1020px; position: relative; left: -1020px; top: 0px; z-index: 998; opacity: 0;"
										tabindex="-1" role="option" aria-describedby="slick-slide41">
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
									<li class="slick-slide" data-slick-index="2" aria-hidden="true"
										style="width: 1020px; position: relative; left: -2040px; top: 0px; z-index: 998; opacity: 0;"
										tabindex="-1" role="option" aria-describedby="slick-slide42">
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
									<li class="slick-slide" data-slick-index="3" aria-hidden="true"
										style="width: 1020px; position: relative; left: -3060px; top: 0px; z-index: 998; opacity: 0;"
										tabindex="-1" role="option" aria-describedby="slick-slide43">
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
									<li class="slick-slide" data-slick-index="4" aria-hidden="true"
										style="width: 1020px; position: relative; left: -4080px; top: 0px; z-index: 998; opacity: 0;"
										tabindex="-1" role="option" aria-describedby="slick-slide44">
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
								</div>
							</div>
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
							<div
								class="home-category swiper no-swipe swiper-container-initialized swiper-container-horizontal">
								<ul class="home-category-list swiper-wrapper"
									id="swiper-wrapper-97ece510c74c1096bb" aria-live="polite"
									style="transform: translate3d(0px, 0px, 0px);">

									<!--  브랜드의 유효한 상품 갯수 체크  -->

									<!-- 브랜드, 이미지, 상품이 모두 정상 존재하는지 validate -->

									<li
										class="home-category-item swiper-slide is-selected swiper-slide-active"
										data-ref-brndno="A001712" data-attr="홈^주목브랜드^나이팅게일^1"
										role="group" aria-label="1 / 10" style="margin-right: 8px;">
										<a
										onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드메뉴', brand_name: '나이팅게일', brand_number: '1'});"
										href="#" class="btn-category" data-attr="홈^주목브랜드^나이팅게일^1">
											나이팅게일 </a>
									</li>

									<!--  브랜드의 유효한 상품 갯수 체크  -->

									<!-- 브랜드, 이미지, 상품이 모두 정상 존재하는지 validate -->

									<li class="home-category-item swiper-slide swiper-slide-next"
										data-ref-brndno="A009191" data-attr="홈^주목브랜드^아쿠아픽^2"
										role="group" aria-label="2 / 10" style="margin-right: 8px;">
										<a
										onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드메뉴', brand_name: '아쿠아픽', brand_number: '2'});"
										href="#" class="btn-category" data-attr="홈^주목브랜드^아쿠아픽^2">
											아쿠아픽 </a>
									</li>

									<!--  브랜드의 유효한 상품 갯수 체크  -->















									<!-- 브랜드, 이미지, 상품이 모두 정상 존재하는지 validate -->

									<li class="home-category-item swiper-slide"
										data-ref-brndno="A002907" data-attr="홈^주목브랜드^라엘^3"
										role="group" aria-label="3 / 10" style="margin-right: 8px;">
										<a
										onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드메뉴', brand_name: '라엘', brand_number: '3'});"
										href="#" class="btn-category" data-attr="홈^주목브랜드^라엘^3"> 라엘
									</a>
									</li>





									<!--  브랜드의 유효한 상품 갯수 체크  -->















									<!-- 브랜드, 이미지, 상품이 모두 정상 존재하는지 validate -->

									<li class="home-category-item swiper-slide"
										data-ref-brndno="A010416" data-attr="홈^주목브랜드^잇츄^4"
										role="group" aria-label="4 / 10" style="margin-right: 8px;">
										<a
										onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드메뉴', brand_name: '잇츄', brand_number: '4'});"
										href="#" class="btn-category" data-attr="홈^주목브랜드^잇츄^4"> 잇츄
									</a>
									</li>
									<!--  브랜드의 유효한 상품 갯수 체크  -->
									<!-- 브랜드, 이미지, 상품이 모두 정상 존재하는지 validate -->

									<li class="home-category-item swiper-slide"
										data-ref-brndno="A003481" data-attr="홈^주목브랜드^바이탈뷰티^5"
										role="group" aria-label="5 / 10" style="margin-right: 8px;">
										<a
										onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드메뉴', brand_name: '바이탈뷰티', brand_number: '5'});"
										href="#" class="btn-category" data-attr="홈^주목브랜드^바이탈뷰티^5">
											바이탈뷰티 </a>
									</li>
									<!--  브랜드의 유효한 상품 갯수 체크  -->
									<!-- 브랜드, 이미지, 상품이 모두 정상 존재하는지 validate -->

									<li class="home-category-item swiper-slide"
										data-ref-brndno="A001588" data-attr="홈^주목브랜드^랩노쉬^6"
										role="group" aria-label="6 / 10" style="margin-right: 8px;">
										<a
										onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드메뉴', brand_name: '랩노쉬', brand_number: '6'});"
										href="#" class="btn-category" data-attr="홈^주목브랜드^랩노쉬^6">
											랩노쉬 </a>
									</li>
									<!--  브랜드의 유효한 상품 갯수 체크  -->
									<!-- 브랜드, 이미지, 상품이 모두 정상 존재하는지 validate -->

									<li class="home-category-item swiper-slide"
										data-ref-brndno="A010131" data-attr="홈^주목브랜드^바이오가^7"
										role="group" aria-label="7 / 10" style="margin-right: 8px;">
										<a
										onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드메뉴', brand_name: '바이오가', brand_number: '7'});"
										href="#" class="btn-category" data-attr="홈^주목브랜드^바이오가^7">
											바이오가 </a>
									</li>
									<!--  브랜드의 유효한 상품 갯수 체크  -->
									<!-- 브랜드, 이미지, 상품이 모두 정상 존재하는지 validate -->

									<li class="home-category-item swiper-slide"
										data-ref-brndno="A003272" data-attr="홈^주목브랜드^힐링버드^8"
										role="group" aria-label="8 / 10" style="margin-right: 8px;">
										<a
										onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드메뉴', brand_name: '힐링버드', brand_number: '8'});"
										href="#" class="btn-category" data-attr="홈^주목브랜드^힐링버드^8">
											힐링버드 </a>
									</li>
									<!--  브랜드의 유효한 상품 갯수 체크  -->
									<!-- 브랜드, 이미지, 상품이 모두 정상 존재하는지 validate -->

									<li class="home-category-item swiper-slide"
										data-ref-brndno="A000130" data-attr="홈^주목브랜드^돌체앤가바나^9"
										role="group" aria-label="9 / 10" style="margin-right: 8px;">
										<a
										onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드메뉴', brand_name: '돌체앤가바나', brand_number: '9'});"
										href="#" class="btn-category" data-attr="홈^주목브랜드^돌체앤가바나^9">
											돌체앤가바나 </a>
									</li>
									<!--  브랜드의 유효한 상품 갯수 체크  -->
									<!-- 브랜드, 이미지, 상품이 모두 정상 존재하는지 validate -->

									<li class="home-category-item swiper-slide"
										data-ref-brndno="A000132" data-attr="홈^주목브랜드^오딧세이^10"
										role="group" aria-label="10 / 10" style="margin-right: 8px;">
										<a
										onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드메뉴', brand_name: '오딧세이', brand_number: '10'});"
										href="#" class="btn-category" data-attr="홈^주목브랜드^오딧세이^10">
											오딧세이 </a>
									</li>
								</ul>
								<button type="button" class="swiper-button-prev">
									<span class="blind">prev slide</span>
								</button>
								<button type="button" class="swiper-button-next">
									<span class="blind">next slide</span>
								</button>
								<span class="swiper-notification" aria-live="assertive"
									aria-atomic="true"></span>
							</div>
							<!-- E : 브랜드 탭 리스트 -->

							<!-- S : 인기브랜드 탭 내용 영역 -->
							<div
								class="brand_panel_area swiper swiper-container-initialized swiper-container-horizontal swiper-container-autoheight">
								<div class="brand_tab_list swiper-wrapper"
									id="swiper-wrapper-22e0708868b73aa9" aria-live="polite"
									style="height: 559px; transform: translate3d(0px, 0px, 0px);">
									<!-- S : 브랜드 슬라이드 아이템 -->
									<!--  브랜드의 유효한 상품 갯수 체크  -->

									<div class="main_brand swiper-slide swiper-slide-active"
										data-ref-brndno="A001712" role="group" aria-label="1 / 10"
										style="width: 1020px;">
										<!-- S : 인기브랜드 이미지 -->
										<div class="brand-info-wrap">
											<a
												onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드배너', banner_name: '나이팅게일', banner_number: '1'});"
												href="javascript:common.link.moveBrandShop('A001712', 'Home_Brand_Banner', '', 't_page=홈&amp;t_click=주목브랜드_브랜드배너&amp;t_brand_name=나이팅게일&amp;t_number=1');"
												class="link" data-attr="홈^주목브랜드_배너^나이팅게일">
												<div class="brand-info">
													<strong class="brand-name">나이팅게일</strong> <span
														class="desc"><i class="icon-like"></i>220명이 좋아합니다.</span>
												</div>
												<div class="thumbnail"
													style="background-image: url('https://image.oliveyoung.co.kr/uploads/images/display/90000010001/380/119366935850213678.jpg');"></div>
											</a>
										</div>
										<!-- E : 인기브랜드 이미지 -->
										<!-- S : 인기브랜드 상품목록 -->
										<ul class="curation_basket">
											<li>
												<div class="thum" data-ref-goodsno="A000000102967"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^나이팅게일 데일리더마 클렌징패드 마일드 (70매)^1"
													data-impression="A000000102967^홈_주목브랜드^1"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000102967&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_1_1&quot;);common.link.moveGoodsDetail(&quot;A000000102967&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0010/A00000010296711ko.jpg?l=ko"
														alt="나이팅게일 데일리더마 클렌징패드 마일드 (70매)"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000102967"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000102967">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000102967&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_1_1&quot;);common.link.moveGoodsDetail(&quot;A000000102967&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1&quot;);"
														class="a_detail" data-ref-goodsno="A000000102967"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^나이팅게일 데일리더마 클렌징패드 마일드 (70매)^1"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">나이팅게일 데일리더마 클렌징패드 마일드 (70매)</dt>
															<dd class="price">
																<del>12,500원</del>
																<strong>11,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>
											</li>
											<li>
												<div class="thum" data-ref-goodsno="A000000141661"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^나이팅게일 데일리더마 클렌징패드 마일드 애씨드 70매 (10매 증정)^2"
													data-impression="A000000141661^홈_주목브랜드^2"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000141661&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_1_2&quot;);common.link.moveGoodsDetail(&quot;A000000141661&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014166109ko.jpg?l=ko"
														alt="나이팅게일 데일리더마 클렌징패드 마일드 애씨드 70매 (10매 증정)"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000141661"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000141661">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000141661&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_1_2&quot;);common.link.moveGoodsDetail(&quot;A000000141661&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2&quot;);"
														class="a_detail" data-ref-goodsno="A000000141661"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^나이팅게일 데일리더마 클렌징패드 마일드 애씨드 70매 (10매 증정)^2"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">나이팅게일 데일리더마 클렌징패드 마일드 애씨드 70매 (10매
																증정)</dt>
															<dd class="price">
																<strong>15,500원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>
											</li>
										</ul>
										<!-- E : 인기브랜드 상품목록 -->
									</div>
									<!--  브랜드의 유효한 상품 갯수 체크  -->

									<div class="main_brand swiper-slide swiper-slide-next"
										data-ref-brndno="A009191" role="group" aria-label="2 / 10"
										style="width: 1020px;">
										<!-- S : 인기브랜드 이미지 -->
										<div class="brand-info-wrap">
											<a
												onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드배너', banner_name: '아쿠아픽', banner_number: '2'});"
												href="javascript:common.link.moveBrandShop('A009191', 'Home_Brand_Banner', '', 't_page=홈&amp;t_click=주목브랜드_브랜드배너&amp;t_brand_name=아쿠아픽&amp;t_number=2');"
												class="link" data-attr="홈^주목브랜드_배너^아쿠아픽">
												<div class="brand-info">
													<strong class="brand-name">아쿠아픽</strong> <span class="desc"></span>
												</div>
												<div class="thumbnail"
													style="background-image: url('https://image.oliveyoung.co.kr/uploads/images/display/90000010001/9/5862871006508140884.jpg');"></div>
											</a>
										</div>
										<!-- E : 인기브랜드 이미지 -->
										<!-- S : 인기브랜드 상품목록 -->
										<ul class="curation_basket">
											<li>
												<div class="thum" data-ref-goodsno="B000000188696"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^[꼬끼리PICK]아쿠아픽 코드리스 구강세정기 AQ-230  ^1"
													data-impression="B000000188696^홈_주목브랜드^1"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;B000000188696&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_2_1&quot;);common.link.moveGoodsDetail(&quot;B000000188696&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/B00000018869604ko.jpg?l=ko"
														alt="[꼬끼리PICK]아쿠아픽 코드리스 구강세정기 AQ-230  "
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="B000000188696"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="B000000188696">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;B000000188696&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_2_1&quot;);common.link.moveGoodsDetail(&quot;B000000188696&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1&quot;);"
														class="a_detail" data-ref-goodsno="B000000188696"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^[꼬끼리PICK]아쿠아픽 코드리스 구강세정기 AQ-230  ^1"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">[꼬끼리PICK]아쿠아픽 코드리스 구강세정기 AQ-230</dt>
															<dd class="price">
																<del>86,500원</del>
																<strong>80,900원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag coupon">쿠폰</span>
															</dd>
														</dl></a>
												</div>
											</li>
											<li>
												<div class="thum" data-ref-goodsno="B000000188699"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^아쿠아픽 구강세정기 AQ-320  ^2"
													data-impression="B000000188699^홈_주목브랜드^2"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;B000000188699&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_2_2&quot;);common.link.moveGoodsDetail(&quot;B000000188699&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/B00000018869902ko.jpg?l=ko"
														alt="아쿠아픽 구강세정기 AQ-320  " onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="B000000188699"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="B000000188699">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;B000000188699&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_2_2&quot;);common.link.moveGoodsDetail(&quot;B000000188699&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2&quot;);"
														class="a_detail" data-ref-goodsno="B000000188699"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^아쿠아픽 구강세정기 AQ-320  ^2"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">아쿠아픽 구강세정기 AQ-320</dt>
															<dd class="price">
																<del>120,000원</del>
																<strong>103,900원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag coupon">쿠폰</span>
															</dd>
														</dl></a>
												</div>
											</li>
										</ul>
										<!-- E : 인기브랜드 상품목록 -->
									</div>
									<!--  브랜드의 유효한 상품 갯수 체크  -->
									<div class="main_brand swiper-slide" data-ref-brndno="A002907"
										role="group" aria-label="3 / 10" style="width: 1020px;">
										<!-- S : 인기브랜드 이미지 -->
										<div class="brand-info-wrap">
											<a
												onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드배너', banner_name: '라엘', banner_number: '3'});"
												href="javascript:common.link.moveBrandShop('A002907', 'Home_Brand_Banner', '', 't_page=홈&amp;t_click=주목브랜드_브랜드배너&amp;t_brand_name=라엘&amp;t_number=3');"
												class="link" data-attr="홈^주목브랜드_배너^라엘">
												<div class="brand-info">
													<strong class="brand-name">라엘</strong> <span class="desc"></span>
												</div>
												<div class="thumbnail"
													style="background-image: url('https://image.oliveyoung.co.kr/uploads/images/display/90000010001/9/929889707866746807.jpg');"></div>
											</a>
										</div>
										<!-- E : 인기브랜드 이미지 -->
										<!-- S : 인기브랜드 상품목록 -->
										<ul class="curation_basket">

											<li>
												<div class="thum" data-ref-goodsno="A000000157030"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^[1+1][11월 올영픽] 라엘 유기농 순면커버 입는오버나이트 4p 2종 택1 (M/L) ^1"
													data-impression="A000000157030^홈_주목브랜드^1"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000157030&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_3_1&quot;);common.link.moveGoodsDetail(&quot;A000000157030&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015703018ko.jpg?l=ko"
														alt="[1+1][11월 올영픽] 라엘 유기농 순면커버 입는오버나이트 4p 2종 택1 (M/L) "
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000157030"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000157030">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000157030&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_3_1&quot;);common.link.moveGoodsDetail(&quot;A000000157030&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1&quot;);"
														class="a_detail" data-ref-goodsno="A000000157030"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^[1+1][11월 올영픽] 라엘 유기농 순면커버 입는오버나이트 4p 2종 택1 (M/L) ^1"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">[1+1][11월 올영픽] 라엘 유기농 순면커버 입는오버나이트
																4p 2종 택1 (M/L)</dt>
															<dd class="price">
																<strong>7,400원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag plus">1+1</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>

											<li>
												<div class="thum" data-ref-goodsno="A000000188205"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^[11월 올영픽][리뷰이벤트] [의료기기] 라엘 이너케어 젤 질세정기 2종 택 1 (3개입/3개입 4팩)^2"
													data-impression="A000000188205^홈_주목브랜드^2"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000188205&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_3_2&quot;);common.link.moveGoodsDetail(&quot;A000000188205&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018820503ko.jpg?l=ko"
														alt="[11월 올영픽][리뷰이벤트] [의료기기] 라엘 이너케어 젤 질세정기 2종 택 1 (3개입/3개입 4팩)"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000188205"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000188205">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188205&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_3_2&quot;);common.link.moveGoodsDetail(&quot;A000000188205&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2&quot;);"
														class="a_detail" data-ref-goodsno="A000000188205"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^[11월 올영픽][리뷰이벤트] [의료기기] 라엘 이너케어 젤 질세정기 2종 택 1 (3개입/3개입 4팩)^2"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">[11월 올영픽][리뷰이벤트] [의료기기] 라엘 이너케어 젤
																질세정기 2종 택 1 (3개입/3개입 4팩)</dt>
															<dd class="price">
																<del>12,900원</del>
																<strong>9,500원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>

										</ul>
										<!-- E : 인기브랜드 상품목록 -->
									</div>

									<!--  브랜드의 유효한 상품 갯수 체크  -->

									<div class="main_brand swiper-slide" data-ref-brndno="A010416"
										role="group" aria-label="4 / 10" style="width: 1020px;">
										<!-- S : 인기브랜드 이미지 -->
										<div class="brand-info-wrap">
											<a
												onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드배너', banner_name: '잇츄', banner_number: '4'});"
												href="javascript:common.link.moveBrandShop('A010416', 'Home_Brand_Banner', '', 't_page=홈&amp;t_click=주목브랜드_브랜드배너&amp;t_brand_name=잇츄&amp;t_number=4');"
												class="link" data-attr="홈^주목브랜드_배너^잇츄">
												<div class="brand-info">
													<strong class="brand-name">잇츄</strong> <span class="desc"></span>
												</div>
												<div class="thumbnail"
													style="background-image: url('https://image.oliveyoung.co.kr/uploads/images/display/90000010001/9/3441196000032157838.jpg');"></div>
											</a>
										</div>
										<!-- E : 인기브랜드 이미지 -->
										<!-- S : 인기브랜드 상품목록 -->
										<ul class="curation_basket">

											<li>
												<div class="thum" data-ref-goodsno="B000000192163"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^The 잇츄 S 10개입 4종 택 1^1"
													data-impression="B000000192163^홈_주목브랜드^1"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;B000000192163&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_4_1&quot;);common.link.moveGoodsDetail(&quot;B000000192163&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/B00000019216301ko.jpg?l=ko"
														alt="The 잇츄 S 10개입 4종 택 1"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="B000000192163"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="B000000192163">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;B000000192163&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_4_1&quot;);common.link.moveGoodsDetail(&quot;B000000192163&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1&quot;);"
														class="a_detail" data-ref-goodsno="B000000192163"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^The 잇츄 S 10개입 4종 택 1^1"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">The 잇츄 S 10개입 4종 택 1</dt>
															<dd class="price">
																<strong>18,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag blank"></span>
															</dd>
														</dl></a>
												</div>

											</li>

											<li>
												<div class="thum" data-ref-goodsno="B000000192167"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^The 잇츄 S 43개입 4종 택 1^2"
													data-impression="B000000192167^홈_주목브랜드^2"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;B000000192167&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_4_2&quot;);common.link.moveGoodsDetail(&quot;B000000192167&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/B00000019216701ko.jpg?l=ko"
														alt="The 잇츄 S 43개입 4종 택 1"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="B000000192167"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="B000000192167">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;B000000192167&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_4_2&quot;);common.link.moveGoodsDetail(&quot;B000000192167&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2&quot;);"
														class="a_detail" data-ref-goodsno="B000000192167"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^The 잇츄 S 43개입 4종 택 1^2"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">The 잇츄 S 43개입 4종 택 1</dt>
															<dd class="price">
																<strong>77,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag blank"></span>
															</dd>
														</dl></a>
												</div>

											</li>

										</ul>
										<!-- E : 인기브랜드 상품목록 -->
									</div>

									<!--  브랜드의 유효한 상품 갯수 체크  -->

									<div class="main_brand swiper-slide" data-ref-brndno="A003481"
										role="group" aria-label="5 / 10" style="width: 1020px;">
										<!-- S : 인기브랜드 이미지 -->
										<div class="brand-info-wrap">
											<a
												onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드배너', banner_name: '바이탈뷰티', banner_number: '5'});"
												href="javascript:common.link.moveBrandShop('A003481', 'Home_Brand_Banner', '', 't_page=홈&amp;t_click=주목브랜드_브랜드배너&amp;t_brand_name=바이탈뷰티&amp;t_number=5');"
												class="link" data-attr="홈^주목브랜드_배너^바이탈뷰티">
												<div class="brand-info">
													<strong class="brand-name">바이탈뷰티</strong> <span
														class="desc"></span>
												</div>
												<div class="thumbnail"
													style="background-image: url('https://image.oliveyoung.co.kr/uploads/images/display/90000010001/9/5637124279935451488.jpg');"></div>
											</a>
										</div>
										<!-- E : 인기브랜드 이미지 -->
										<!-- S : 인기브랜드 상품목록 -->
										<ul class="curation_basket">

											<li>
												<div class="thum" data-ref-goodsno="A000000170830"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^[11월 올영픽] [파우치증정]바이탈뷰티 메타그린 슬림업x포차코 기획세트(30일분)^1"
													data-impression="A000000170830^홈_주목브랜드^1"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
													data-ref-dispcatno="90000010001" data-ref-itemno="005"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000170830&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_5_1&quot;);common.link.moveGoodsDetail(&quot;A000000170830&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017083044ko.jpg?l=ko"
														alt="[11월 올영픽] [파우치증정]바이탈뷰티 메타그린 슬림업x포차코 기획세트(30일분)"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000170830"
															data-ref-dispcatno="90000010001" data-ref-itemno="005">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000170830">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000170830&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_5_1&quot;);common.link.moveGoodsDetail(&quot;A000000170830&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1&quot;);"
														class="a_detail" data-ref-goodsno="A000000170830"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^[11월 올영픽] [파우치증정]바이탈뷰티 메타그린 슬림업x포차코 기획세트(30일분)^1"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
														data-ref-dispcatno="90000010001" data-ref-itemno="005"><dl>
															<dt class="tit">[11월 올영픽] [파우치증정]바이탈뷰티 메타그린 슬림업x포차코
																기획세트(30일분)</dt>
															<dd class="price">
																<del>36,000원</del>
																<strong>27,700원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag gift">증정</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>

											<li>
												<div class="thum" data-ref-goodsno="A000000189123"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^[11월 올영픽] [스마트톡증정]바이탈뷰티 메타그린 부스터샷 7일 x 포차코 기획세트^2"
													data-impression="A000000189123^홈_주목브랜드^2"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
													data-ref-dispcatno="90000010001" data-ref-itemno="002"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000189123&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_5_2&quot;);common.link.moveGoodsDetail(&quot;A000000189123&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018912313ko.jpg?l=ko"
														alt="[11월 올영픽] [스마트톡증정]바이탈뷰티 메타그린 부스터샷 7일 x 포차코 기획세트"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000189123"
															data-ref-dispcatno="90000010001" data-ref-itemno="002">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000189123">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189123&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_5_2&quot;);common.link.moveGoodsDetail(&quot;A000000189123&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2&quot;);"
														class="a_detail" data-ref-goodsno="A000000189123"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^[11월 올영픽] [스마트톡증정]바이탈뷰티 메타그린 부스터샷 7일 x 포차코 기획세트^2"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
														data-ref-dispcatno="90000010001" data-ref-itemno="002"><dl>
															<dt class="tit">[11월 올영픽] [스마트톡증정]바이탈뷰티 메타그린 부스터샷 7일
																x 포차코 기획세트</dt>
															<dd class="price">
																<del>28,000원</del>
																<strong>21,500원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag gift">증정</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>

										</ul>
										<!-- E : 인기브랜드 상품목록 -->
									</div>

									<!--  브랜드의 유효한 상품 갯수 체크  -->

									<div class="main_brand swiper-slide" data-ref-brndno="A001588"
										role="group" aria-label="6 / 10" style="width: 1020px;">
										<!-- S : 인기브랜드 이미지 -->
										<div class="brand-info-wrap">
											<a
												onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드배너', banner_name: '랩노쉬', banner_number: '6'});"
												href="javascript:common.link.moveBrandShop('A001588', 'Home_Brand_Banner', '', 't_page=홈&amp;t_click=주목브랜드_브랜드배너&amp;t_brand_name=랩노쉬&amp;t_number=6');"
												class="link" data-attr="홈^주목브랜드_배너^랩노쉬">
												<div class="brand-info">
													<strong class="brand-name">랩노쉬</strong> <span class="desc"></span>
												</div>
												<div class="thumbnail"
													style="background-image: url('https://image.oliveyoung.co.kr/uploads/images/display/90000010001/9/8430416741855425740.jpg');"></div>
											</a>
										</div>
										<!-- E : 인기브랜드 이미지 -->
										<!-- S : 인기브랜드 상품목록 -->
										<ul class="curation_basket">
											<li>
												<div class="thum" data-ref-goodsno="A000000191813"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^[올영단독] 랩노쉬X올드페리도넛 단백쿠키 버라이어티팩 7개입^1"
													data-impression="A000000191813^홈_주목브랜드^1"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000191813&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_6_1&quot;);common.link.moveGoodsDetail(&quot;A000000191813&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019181307ko.jpg?l=ko"
														alt="[올영단독] 랩노쉬X올드페리도넛 단백쿠키 버라이어티팩 7개입"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000191813"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000191813">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000191813&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_6_1&quot;);common.link.moveGoodsDetail(&quot;A000000191813&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1&quot;);"
														class="a_detail" data-ref-goodsno="A000000191813"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^[올영단독] 랩노쉬X올드페리도넛 단백쿠키 버라이어티팩 7개입^1"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">[올영단독] 랩노쉬X올드페리도넛 단백쿠키 버라이어티팩 7개입</dt>
															<dd class="price">
																<del>9,800원</del>
																<strong>6,990원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag coupon">쿠폰</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li>
												<div class="thum" data-ref-goodsno="A000000173891"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^[고단백질]랩노쉬 프로틴 드링크 카카오 350ml_NEW (저당,저지방)^2"
													data-impression="A000000173891^홈_주목브랜드^2"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000173891&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_6_2&quot;);common.link.moveGoodsDetail(&quot;A000000173891&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017389105ko.jpg?l=ko"
														alt="[고단백질]랩노쉬 프로틴 드링크 카카오 350ml_NEW (저당,저지방)"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000173891"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000173891">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000173891&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_6_2&quot;);common.link.moveGoodsDetail(&quot;A000000173891&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2&quot;);"
														class="a_detail" data-ref-goodsno="A000000173891"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^[고단백질]랩노쉬 프로틴 드링크 카카오 350ml_NEW (저당,저지방)^2"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">[고단백질]랩노쉬 프로틴 드링크 카카오 350ml_NEW
																(저당,저지방)</dt>
															<dd class="price">
																<strong>3,200원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag plus">2+1</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
										</ul>
										<!-- E : 인기브랜드 상품목록 -->
									</div>
									<!--  브랜드의 유효한 상품 갯수 체크  -->
									<div class="main_brand swiper-slide" data-ref-brndno="A010131"
										role="group" aria-label="7 / 10" style="width: 1020px;">
										<!-- S : 인기브랜드 이미지 -->
										<div class="brand-info-wrap">
											<a
												onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드배너', banner_name: '바이오가', banner_number: '7'});"
												href="javascript:common.link.moveBrandShop('A010131', 'Home_Brand_Banner', '', 't_page=홈&amp;t_click=주목브랜드_브랜드배너&amp;t_brand_name=바이오가&amp;t_number=7');"
												class="link" data-attr="홈^주목브랜드_배너^바이오가">
												<div class="brand-info">
													<strong class="brand-name">바이오가</strong> <span class="desc"></span>
												</div>
												<div class="thumbnail"
													style="background-image: url('https://image.oliveyoung.co.kr/uploads/images/display/90000010001/9/5708321406227304168.jpg');"></div>
											</a>
										</div>
										<!-- E : 인기브랜드 이미지 -->
										<!-- S : 인기브랜드 상품목록 -->
										<ul class="curation_basket">
											<li>
												<div class="thum" data-ref-goodsno="A000000190626"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^바이오가 모이스춰 바디워시 앤 헤어 1000ml^1"
													data-impression="A000000190626^홈_주목브랜드^1"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000190626&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_7_1&quot;);common.link.moveGoodsDetail(&quot;A000000190626&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019062601ko.jpg?l=ko"
														alt="바이오가 모이스춰 바디워시 앤 헤어 1000ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000190626"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000190626">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190626&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_7_1&quot;);common.link.moveGoodsDetail(&quot;A000000190626&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1&quot;);"
														class="a_detail" data-ref-goodsno="A000000190626"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^바이오가 모이스춰 바디워시 앤 헤어 1000ml^1"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">바이오가 모이스춰 바디워시 앤 헤어 1000ml</dt>
															<dd class="price">
																<strong>21,500원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>
											<li>
												<div class="thum" data-ref-goodsno="A000000190615"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^바이오가 밀크 프로틴 로션 500ml^2"
													data-impression="A000000190615^홈_주목브랜드^2"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000190615&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_7_2&quot;);common.link.moveGoodsDetail(&quot;A000000190615&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019061501ko.jpg?l=ko"
														alt="바이오가 밀크 프로틴 로션 500ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000190615"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000190615">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190615&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_7_2&quot;);common.link.moveGoodsDetail(&quot;A000000190615&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2&quot;);"
														class="a_detail" data-ref-goodsno="A000000190615"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^바이오가 밀크 프로틴 로션 500ml^2"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">바이오가 밀크 프로틴 로션 500ml</dt>
															<dd class="price">
																<strong>21,500원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>

										</ul>
										<!-- E : 인기브랜드 상품목록 -->
									</div>

									<!--  브랜드의 유효한 상품 갯수 체크  -->


									<div class="main_brand swiper-slide" data-ref-brndno="A003272"
										role="group" aria-label="8 / 10" style="width: 1020px;">
										<!-- S : 인기브랜드 이미지 -->
										<div class="brand-info-wrap">
											<a
												onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드배너', banner_name: '힐링버드', banner_number: '8'});"
												href="javascript:common.link.moveBrandShop('A003272', 'Home_Brand_Banner', '', 't_page=홈&amp;t_click=주목브랜드_브랜드배너&amp;t_brand_name=힐링버드&amp;t_number=8');"
												class="link" data-attr="홈^주목브랜드_배너^힐링버드">
												<div class="brand-info">
													<strong class="brand-name">힐링버드</strong> <span class="desc"></span>
												</div>
												<div class="thumbnail"
													style="background-image: url('https://image.oliveyoung.co.kr/uploads/images/display/90000010001/9/7499563979897764528.jpg');"></div>
											</a>
										</div>
										<!-- E : 인기브랜드 이미지 -->
										<!-- S : 인기브랜드 상품목록 -->
										<ul class="curation_basket">

											<li>
												<div class="thum" data-ref-goodsno="A000000179866"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^[트와이스 나연PICK] 힐링버드 노워시 트리트먼트 오리지널 200ml+데미지 트리트먼트 100ml 한정 기획^1"
													data-impression="A000000179866^홈_주목브랜드^1"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000179866&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_8_1&quot;);common.link.moveGoodsDetail(&quot;A000000179866&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017986633ko.jpg?l=ko"
														alt="[트와이스 나연PICK] 힐링버드 노워시 트리트먼트 오리지널 200ml+데미지 트리트먼트 100ml 한정 기획"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000179866"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000179866">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000179866&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_8_1&quot;);common.link.moveGoodsDetail(&quot;A000000179866&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1&quot;);"
														class="a_detail" data-ref-goodsno="A000000179866"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^[트와이스 나연PICK] 힐링버드 노워시 트리트먼트 오리지널 200ml+데미지 트리트먼트 100ml 한정 기획^1"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">[트와이스 나연PICK] 힐링버드 노워시 트리트먼트 오리지널
																200ml+데미지 트리트먼트 100ml 한정 기획</dt>
															<dd class="price">
																<del>27,000원</del>
																<strong>15,750원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag coupon">쿠폰</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>

											<li>
												<div class="thum" data-ref-goodsno="A000000171589"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^[대용량] 힐링버드 울트라 프로틴 헤어 오일리치 150ml (고농축/아르간 오일)^2"
													data-impression="A000000171589^홈_주목브랜드^2"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000171589&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_8_2&quot;);common.link.moveGoodsDetail(&quot;A000000171589&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017158909ko.jpg?l=ko"
														alt="[대용량] 힐링버드 울트라 프로틴 헤어 오일리치 150ml (고농축/아르간 오일)"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000171589"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000171589">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000171589&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_8_2&quot;);common.link.moveGoodsDetail(&quot;A000000171589&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2&quot;);"
														class="a_detail" data-ref-goodsno="A000000171589"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^[대용량] 힐링버드 울트라 프로틴 헤어 오일리치 150ml (고농축/아르간 오일)^2"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">[대용량] 힐링버드 울트라 프로틴 헤어 오일리치 150ml
																(고농축/아르간 오일)</dt>
															<dd class="price">
																<del>28,000원</del>
																<strong>17,640원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag coupon">쿠폰</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>

										</ul>
										<!-- E : 인기브랜드 상품목록 -->
									</div>

									<!--  브랜드의 유효한 상품 갯수 체크  -->


									<div class="main_brand swiper-slide" data-ref-brndno="A000130"
										role="group" aria-label="9 / 10" style="width: 1020px;">
										<!-- S : 인기브랜드 이미지 -->
										<div class="brand-info-wrap">
											<a
												onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드배너', banner_name: '돌체앤가바나', banner_number: '9'});"
												href="javascript:common.link.moveBrandShop('A000130', 'Home_Brand_Banner', '', 't_page=홈&amp;t_click=주목브랜드_브랜드배너&amp;t_brand_name=돌체앤가바나&amp;t_number=9');"
												class="link" data-attr="홈^주목브랜드_배너^돌체앤가바나">
												<div class="brand-info">
													<strong class="brand-name">돌체앤가바나</strong> <span
														class="desc"></span>
												</div>
												<div class="thumbnail"
													style="background-image: url('https://image.oliveyoung.co.kr/uploads/images/display/90000010001/9/2827385775522827397.jpg');"></div>
											</a>
										</div>
										<!-- E : 인기브랜드 이미지 -->
										<!-- S : 인기브랜드 상품목록 -->
										<ul class="curation_basket">

											<li>
												<div class="thum" data-ref-goodsno="A000000191783"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^[증정/리뷰이벤트]돌체앤가바나 라이트블루 EDT 25ml^1"
													data-impression="A000000191783^홈_주목브랜드^1"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000191783&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_9_1&quot;);common.link.moveGoodsDetail(&quot;A000000191783&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019178302ko.jpg?l=ko"
														alt="[증정/리뷰이벤트]돌체앤가바나 라이트블루 EDT 25ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000191783"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000191783">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000191783&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_9_1&quot;);common.link.moveGoodsDetail(&quot;A000000191783&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1&quot;);"
														class="a_detail" data-ref-goodsno="A000000191783"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^[증정/리뷰이벤트]돌체앤가바나 라이트블루 EDT 25ml^1"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">[증정/리뷰이벤트]돌체앤가바나 라이트블루 EDT 25ml</dt>
															<dd class="price">
																<strong>73,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag gift">증정</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>

											<li>
												<div class="thum" data-ref-goodsno="A000000191791"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^[증정/리뷰이벤트]돌체앤가바나 라이트블루 뿌르 옴므 오 인텐스 EDP 50ml^2"
													data-impression="A000000191791^홈_주목브랜드^2"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000191791&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_9_2&quot;);common.link.moveGoodsDetail(&quot;A000000191791&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019179102ko.jpg?l=ko"
														alt="[증정/리뷰이벤트]돌체앤가바나 라이트블루 뿌르 옴므 오 인텐스 EDP 50ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000191791"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000191791">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000191791&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_9_2&quot;);common.link.moveGoodsDetail(&quot;A000000191791&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2&quot;);"
														class="a_detail" data-ref-goodsno="A000000191791"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^[증정/리뷰이벤트]돌체앤가바나 라이트블루 뿌르 옴므 오 인텐스 EDP 50ml^2"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">[증정/리뷰이벤트]돌체앤가바나 라이트블루 뿌르 옴므 오 인텐스
																EDP 50ml</dt>
															<dd class="price">
																<strong>92,000원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag gift">증정</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>

										</ul>
										<!-- E : 인기브랜드 상품목록 -->
									</div>

									<!--  브랜드의 유효한 상품 갯수 체크  -->


									<div class="main_brand swiper-slide" data-ref-brndno="A000132"
										role="group" aria-label="10 / 10" style="width: 1020px;">
										<!-- S : 인기브랜드 이미지 -->
										<div class="brand-info-wrap">
											<a
												onclick="common.reqAmplitude('주목하는_브랜드관 클릭', {entry_source: '홈', click_source: '주목브랜드_브랜드배너', banner_name: '오딧세이', banner_number: '10'});"
												href="javascript:common.link.moveBrandShop('A000132', 'Home_Brand_Banner', '', 't_page=홈&amp;t_click=주목브랜드_브랜드배너&amp;t_brand_name=오딧세이&amp;t_number=10');"
												class="link" data-attr="홈^주목브랜드_배너^오딧세이">
												<div class="brand-info">
													<strong class="brand-name">오딧세이</strong> <span class="desc"></span>
												</div>
												<div class="thumbnail"
													style="background-image: url('https://image.oliveyoung.co.kr/uploads/images/display/90000010001/9/6857944483119585825.jpg');"></div>
											</a>
										</div>
										<!-- E : 인기브랜드 이미지 -->
										<!-- S : 인기브랜드 상품목록 -->
										<ul class="curation_basket">

											<li>
												<div class="thum" data-ref-goodsno="A000000192144"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^오딧세이 챕터파이브 안티옥시던트 라이트하우스 토너 140ml^1"
													data-impression="A000000192144^홈_주목브랜드^1"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000192144&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_10_1&quot;);common.link.moveGoodsDetail(&quot;A000000192144&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019214403ko.jpg?l=ko"
														alt="오딧세이 챕터파이브 안티옥시던트 라이트하우스 토너 140ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000192144"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000192144">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000192144&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;1&quot;);common.wlog(&quot;home_brand_tab_10_1&quot;);common.link.moveGoodsDetail(&quot;A000000192144&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1&quot;);"
														class="a_detail" data-ref-goodsno="A000000192144"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^오딧세이 챕터파이브 안티옥시던트 라이트하우스 토너 140ml^1"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=1"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">오딧세이 챕터파이브 안티옥시던트 라이트하우스 토너 140ml</dt>
															<dd class="price">
																<del>38,000원</del>
																<strong>29,070원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag coupon">쿠폰</span><span
																	class="icon_flag gift">증정</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>

											<li>
												<div class="thum" data-ref-goodsno="A000000192145"
													data-egrank="null" data-egcode="null"
													data-attr="홈^주목브랜드^오딧세이 챕터파이브 안티옥시던트 라이트하우스 모이스처라이저 110ml^2"
													data-impression="A000000192145^홈_주목브랜드^2"
													data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
													data-ref-dispcatno="90000010001" data-ref-itemno="001"
													data-impression-visibility="1"
													onclick="location.href = gtm.goods.callGoodsGtmInfo(&quot;A000000192145&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_10_2&quot;);common.link.moveGoodsDetail(&quot;A000000192145&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;);">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019214502ko.jpg?l=ko"
														alt="오딧세이 챕터파이브 안티옥시던트 라이트하우스 모이스처라이저 110ml"
														onerror="common.errorImg(this);">
													<div class="my">
														<button type="button" class="myCart cartBtnRecoBell"
															data-ref-goodsno="A000000192145"
															data-ref-dispcatno="90000010001" data-ref-itemno="001">
															<span>장바구니</span>
														</button>
														<button type="button" class="mySee btn_zzim"
															data-ref-goodsno="A000000192145">
															<span>찜하기전</span>
														</button>
													</div>
												</div>
												<div class="info">
													<a
														href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000192145&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_주목브랜드&quot;, &quot;2&quot;);common.wlog(&quot;home_brand_tab_10_2&quot;);common.link.moveGoodsDetail(&quot;A000000192145&quot;, &quot;90000010001&quot;,&quot;Home_Brand&quot;, &quot;t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2&quot;);"
														class="a_detail" data-ref-goodsno="A000000192145"
														data-egrank="null" data-egcode="null"
														data-attr="홈^주목브랜드^오딧세이 챕터파이브 안티옥시던트 라이트하우스 모이스처라이저 110ml^2"
														data-tracking-param="t_page=홈&amp;t_click=주목브랜드_상품상세&amp;t_number=2"
														data-ref-dispcatno="90000010001" data-ref-itemno="001"><dl>
															<dt class="tit">오딧세이 챕터파이브 안티옥시던트 라이트하우스 모이스처라이저
																110ml</dt>
															<dd class="price">
																<del>44,000원</del>
																<strong>33,660원</strong>
															</dd>
															<dd class="icon">
																<span class="icon_flag sale">세일</span><span
																	class="icon_flag coupon">쿠폰</span><span
																	class="icon_flag gift">증정</span><span
																	class="icon_flag delivery">오늘드림</span>
															</dd>
														</dl></a>
												</div>

											</li>

										</ul>
										<!-- E : 인기브랜드 상품목록 -->
									</div>

									<!-- E : 브랜드 슬라이드 아이템 -->
								</div>
								<button type="button"
									class="swiper-button-prev swiper-button-disabled" tabindex="-1"
									aria-label="Previous slide"
									aria-controls="swiper-wrapper-22e0708868b73aa9"
									aria-disabled="true">
									<span class="blind">prev slide</span>
								</button>
								<button type="button" class="swiper-button-next" tabindex="0"
									aria-label="Next slide"
									aria-controls="swiper-wrapper-22e0708868b73aa9"
									aria-disabled="false">
									<span class="blind">next slide</span>
								</button>
								<span class="swiper-notification" aria-live="assertive"
									aria-atomic="true"></span>
							</div>
							<!-- E : 인기브랜드 탭 내용 영역 -->
						</div>
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
</body>
</html>