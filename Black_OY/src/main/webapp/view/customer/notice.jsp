<%@page import="user.domain.LogOnDTO"%>
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
</head>
<body>
	<jsp:include page="/layout/head.jsp"></jsp:include>
	<div>
<div id="Container">
		<!-- #Contents -->
		<div id="Contents">
			<div class="sub_title_area customer">
				<h1>고객센터 <span>무엇을 도와드릴까요?</span></h1>
				<button type="button" class="btn_inquiry" id="regForm1on1" onclick="javascript:location.href='https://www.oliveyoung.co.kr/store/counsel/getQnaForm.do';">1<em>:</em>1 문의하기</button>
			</div>

			



			<ul class="comm1sTabs threeSet customer">
				<li id="tabFaq"><a href="javascript:common.faq.getFaqList('99');">FAQ</a></li>
				<li id="tab1on1" class="on"><a href="javascript:common.link.moveQnaList();" title="선택됨">1:1문의</a></li>
				<li id="tabNotice"><a href="https://www.oliveyoung.co.kr/store/counsel/getNoticeList.do?t_page=고객센터&amp;t_click=공지사항_리스트">공지사항</a></li>
			</ul>

			<!-- 기간조회 -->
			
	<fieldset class="search-period mgT30">
		<legend></legend>
		<!-- 2019.10.20 오프라인리뷰관련 추가 -->
		

		<div class="select_con">
		<p>구매기간</p>
			<ul class="select-month">
<!-- 			[3394070] 올영체험단 리뷰 배너 오류 문의 件 요청으로 올영체험단 리뷰는 시작시 12개월로 선택되게 조건 변경 -->
				<li class="on"><button type="button" data-month="-1">1개월</button></li>
				<li><button type="button" data-month="-3">3개월</button></li>
				<li><button type="button" data-month="-6">6개월</button></li>
				<li><button type="button" data-month="-12">12개월</button></li>

				
			</ul>
			<div class="select-range">
				<select id="cal-start-year" title="년도를 선택하세요" style="width:76px;"><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option><option value="2023" selected="selected">2023</option></select>
				<label for="cal-start-year">년</label>
				<select id="cal-start-month" title="달월을 선택하세요" style="width:60px;">
					<option value="01">1</option>
					<option value="02">2</option>
					<option value="03">3</option>
					<option value="04">4</option>
					<option value="05">5</option>
					<option value="06">6</option>
					<option value="07">7</option>
					<option value="08">8</option>
					<option value="09">9</option>
					<option value="10" selected="selected">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>
				<label for="cal-start-month">월</label>
				<select id="cal-start-day" title="날일을 선택하세요" style="width:60px;">
				<option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14" selected="selected">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>
				<label for="cal-start-day">일</label>
				<span class="des">~</span>
				<select id="cal-end-year" title="년도를 선택하세요" style="width:76px;"><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option><option value="2023" selected="selected">2023</option></select>
				<label for="cal-end-year">년</label>
				<select id="cal-end-month" title="달월을 선택하세요" style="width:60px;">
					<option value="01">1</option>
					<option value="02">2</option>
					<option value="03">3</option>
					<option value="04">4</option>
					<option value="05">5</option>
					<option value="06">6</option>
					<option value="07">7</option>
					<option value="08">8</option>
					<option value="09">9</option>
					<option value="10">10</option>
					<option value="11" selected="selected">11</option>
					<option value="12">12</option>
				</select>
				<label for="cal-end-month">월</label>
				<select id="cal-end-day" title="날일을 선택하세요" style="width:60px;">
				<option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14" selected="selected">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option></select>
				<label for="cal-end-day">일</label>
			</div>
		  </div>
		  <!-- //오프라인 리뷰 -->
		  <!-- 2016-12-23 수정 -->
		<button type="button" class="btnLookup" id="do-search-period">조회</button>
	</fieldset>
<script type="text/javascript" src="https://static.oliveyoung.co.kr/pc-static-root/js/common/searchPeriod.js?dumm=202311090002"></script>
<script>
//[3394070] 올영체험단 리뷰 배너 오류 문의 件 요청으로 올영체험단 리뷰는 시작시 12개월로 선택되게 조건 변경 되어 START_DATE, END_DATE 변경
START_DATE   = '';
END_DATE     = '';
ollyoungYn = '';

$(document).ready(function(){
	var cnslChk = "Y";
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
</script>
			<!-- //기간조회 -->
			
			<div class="list-customer onenone m2105">
				<ul>

	
					<li id="5063493">
						
						<a href="#n" role="button" class="stit complete" title="답변 내용보기">
							<strong>
								답변완료
							</strong>반품신청을 취소 가능한가요?
							<span class="data">2023.11.03</span>
						</a>
		
		
		
						<ul class="conts">
							<li class="question">
								<strong>문의</strong>
								<ul>
								
								    <li class="inquiry_type"><span>온라인몰</span> &gt; <span>취소/교환/환불</span></li>
								
		
									<li><em>주문일자</em>2023.10.26</li>
		
			
									<li><em>문의상품</em>[단독기획]메이크프렘 세이프 미 릴리프 모이스처 클렌징폼150ml 1+1기획</li>
			
			
								</ul>
								<p>
									반품신청을 취소 가능한가요?
								</p>
							</li>
						</ul>
					</li>
	
					<li id="5035019">
						
						<a href="#n" role="button" class="stit complete" title="답변 내용보기">
							<strong>
								답변완료
							</strong>상봉역점 주차되나용?
							<span class="data">2023.10.26</span>
						</a>
		
		
		
						<ul class="conts">
							<li class="question">
								<strong>문의</strong>
								<ul>
								
								    <li class="inquiry_type"><span>매장</span> &gt; <span>매장 문의</span></li>
								
		
			
			
								</ul>
								<p>
									상봉역점 주차되나용?
								</p>
							</li>
						</ul>
					</li>
	
					<li id="5034146">
						
						<a href="#n" role="button" class="stit complete" title="답변 내용보기">
							<strong>
								답변완료
							</strong>올영세일 언제 하나용?
							<span class="data">2023.10.26</span>
						</a>
		
		
		
						<ul class="conts">
							<li class="question">
								<strong>문의</strong>
								<ul>
								
								    <li class="inquiry_type"><span>온라인몰</span> &gt; <span>이벤트</span></li>
								
		
			
			
								</ul>
								<p>
									올영세일 언제 하나용?
								</p>
							</li>
						</ul>
					</li>
	

	
				</ul>
			</div>

			<!-- pageing star -->
			
			

	<div class="pageing">

		<strong title="현재 페이지">1</strong>

	</div>

			<!-- //pageing end -->

			<div class="area1sButton pdT30">
				<a href="javascript:common.link.moveQnaForm();" class="btnGreen" data-attr="고객센터^FAQ^1:1문의">1:1문의하기</a>
			</div>

		</div>
		<!-- //#Contents -->
	</div>	
	</div>
	<jsp:include page="/layout/footer.jsp"></jsp:include>

</body>
</html>