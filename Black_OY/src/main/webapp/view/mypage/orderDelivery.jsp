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

	
	
		<li><em>0</em>
	

			<span>주문접수</span>
		</li>

	
	
		<li><em>0</em>
	

			<span>결제완료</span>
		</li>

	
	
		<li><em>0</em>
	

			<span>배송준비중</span>
		</li>

	
	
		<li><em>0</em>
	

			<span>배송중</span>
		</li>


	
	
	
	
		<li><em>0</em>
	

			<span>배송완료</span>
		</li>
	</ul>










	
	
	<fieldset class="search-period mgT30">
		<legend></legend>
		<!-- 2019.10.20 오프라인리뷰관련 추가 -->
		
			<div class="select_con" id="_selectOrderTypeZone">
				<p>구매 유형</p>
				<ul class="select-type">
					<li class="on"><button type="button" data-order_type="">전체</button></li>
					
						<li><button type="button" data-order_type="10">온라인몰 구매</button></li>
					
						<li><button type="button" data-order_type="20">매장 구매</button></li>
					
				</ul>
			</div>
		

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
				<select id="cal-start-year" title="년도를 선택하세요" style="width:76px;"><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option><option value="2023" selected="selected">2023</option></select>
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
				<option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09" selected="selected">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>
				<label for="cal-start-day">일</label>
				<span class="des">~</span>
				<select id="cal-end-year" title="년도를 선택하세요" style="width:76px;"><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option><option value="2023" selected="selected">2023</option></select>
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
				<option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09" selected="selected">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option></select>
				<label for="cal-end-day">일</label>
			</div>
		  </div>
		  <!-- //오프라인 리뷰 -->
		  <!-- 2016-12-23 수정 -->
		<button type="button" class="btnLookup" id="do-search-period">조회</button>
	</fieldset>
<script type="text/javascript" src="https://static.oliveyoung.co.kr/pc-static-root/js/common/searchPeriod.js?dumm=202311090001"></script>
<script>
//[3394070] 올영체험단 리뷰 배너 오류 문의 件 요청으로 올영체험단 리뷰는 시작시 12개월로 선택되게 조건 변경 되어 START_DATE, END_DATE 변경
START_DATE   = '';
END_DATE     = '';
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

	<tbody class="history">
		<tr>
			<td colspan="5" class="nodata">기간 내 주문내역이 없습니다</td>
		</tr>
	</tbody>
	

	</table>
	

			</div>

<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>