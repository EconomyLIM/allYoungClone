<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

<script>
	$(function() {
		$.ajax({
			type : 'get'
			, async : false
			, cache: false
			, url : '/Black_OY/olive/getCateMRankingAjax'
			, dataType : 'json'
			, data : {  }
			, success : function(data) {
				//console.log(data);
				let ul = $(".common-menu ul");
				for (var i = 0; i < data.cateM.length; i++) {
					
				let li = $("<li>");
				let button = $("<button>").attr({
					"type" : "button"
					, "data-mid" : data.cateM[i].cateMID
				}).text(data.cateM[i].cateMName);
				li.append(button);
				ul.append(li);
				}
            }
			, error : function (data, textStatus) {
				console.log('error');
            }
		}); 
		
		$(".btn_zzim.jeem").on("click", function() {
			$(this).toggleClass("on");
			if($(this).hasClass("on")) {
				$(".layerAlim.zzimOn.wishPrd").fadeIn(1000).fadeOut(1000);
			} else {
				$(".layerAlim.zzimOff.wishPrd").fadeIn(1000).fadeOut(1000);
			}
		});
		
		$(".common-menu button").on("click", function() {
			location.href = '<%=contextPath%>/olive/ranking.do?mid=' + $(this).data('mid') + '&m_click=' + $(this).val();
		})
	})
</script>

<jsp:include page="/layout/head.jsp"></jsp:include>
<div id="Wrapper">
	<!-- #Container -->
	<div id="Container">
		<!-- #Contents -->
		<div class="title-best">
			<h1>랭킹<span>오늘의 랭킹! 요즘 가장 핫한 상품</span></h1>
		</div>

		<div class="best-area">
			<ul class="comm5sTabs tabN3" data-ref-selected="900000100100001">
				<li data-ref-dispcatno="900000100100001" class="on">
					<button type="button" onclick="javascript:location.href='<%=contextPath%>/olive/ranking.do?click=판매 랭킹'">판매 랭킹</button>
				</li>
				<li data-ref-dispcatno="900000100100002">
					<button type="button" onclick="javascript:location.href='<%=contextPath%>/olive/ranking.do?click=리뷰 베스트'">리뷰 베스트</button>
				</li>
				<li data-ref-dispcatno="900000100100004">
					<button type="button" onclick="javascript:location.href='<%=contextPath%>/olive/ranking.do?click=실시간 랭킹'">실시간 랭킹</button>
				</li>
				
			</ul>

		<div class="common-menu">
				<ul>
					<li class="on"><button type="button" data-mid="">전체</button></li>
				</ul>
			</div>
				<div class="TabsConts on">
					<ul class="cate_prd_list ">
					<c:forEach items="${list }" var="list" varStatus="status">
							<li class="flag">
								<div class="prd_info ">
									<a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000160943&amp;dispCatNo=90000010009&amp;trackingCd=Best_Sellingbest&amp;t_page=랭킹&amp;t_click=판매랭킹_전체_상품상세&amp;t_number=1" name="Best_Sellingbest" class="prd_thumb goodsList" data-ref-goodsno="A000000160943" data-attr="랭킹^판매랭킹리스트_전체^[11/17 단하루 특가] 셀리맥스 시카 지우개패드 60매 (토너 패드)^1" data-ref-dispcatno="90000010009" data-ref-itemno="001" data-trk="/" data-impression="A000000160943^랭킹_판매랭킹리스트_전체^1" data-impression-visibility="1">
										<!-- <span class="newOyflag today"><em>오특</em></span>
										<span class="newOyflag time" style="display:none;">
											<div class="main-today">
												<div class="timer ready">
													<span class="nums h">
														<span class="num" data-timer-val="0">0</span>
														<span class="num" data-timer-val="0">0</span>
													</span>
													<span class="nums m">
														<span class="num" data-timer-val="0">0</span>
														<span class="num" data-timer-val="0">0</span>
													</span>
												</div>
											</div>
										</span> -->
										<span class="thumb_flag best"><fmt:formatNumber value="${status.count}" pattern="00"/></span>
										<img src="${list.displImgSrc }" alt="${list.displProName }" onerror="common.errorImg(this);">
									</a>
									<div class="prd_name">
										<a href="javascript:;" name="Best_Sellingbest" class="goodsList" data-ref-goodsno="A000000160943" data-attr="랭킹^판매랭킹리스트_전체^[11/17 단하루 특가] 셀리맥스 시카 지우개패드 60매 (토너 패드)^1" data-ref-dispcatno="90000010009" data-ref-itemno="001" data-trk="/">
											<span class="tx_brand">${list.brandName }</span>
											<p class="tx_name">${list.displProName }</p>
										</a>
									</div>
									<button class="btn_zzim jeem" data-ref-goodsno="A000000160943"><span>찜하기전</span></button>
									<p class="prd_price"><span class="tx_org"><span class="tx_num"><fmt:formatNumber value="${list.proPrice }" pattern="#,###"/></span>원 </span><span class="tx_cur"><span class="tx_num"><fmt:formatNumber value="${list.afterPrice }" pattern="#,###"/></span>원 </span></p>
									<p class="prd_flag">
										<c:if test="${list.pdc eq 1}">
											<span class="icon_flag sale">세일</span>
										</c:if>
										<c:if test="${list.prc eq 1}">
											<span class="icon_flag coupon">쿠폰</span>
										</c:if>
										<!-- 기간계 상품, 브랜드 증정품만 아이콘 노출 -->
										<c:if test="${list.pmp eq 1}">
											<span class="icon_flag gift" id="free_gift">증정</span>
										</c:if>
										<c:if test="${list.stock eq 1}">
											<span class="icon_flag delivery" id="quick_yn">오늘드림</span>
										</c:if>
									</p>
									<p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:94.0%">10점만점에 5.5점</span></span>(435)</p>
									<p class="prd_btn_area"><button class="cartBtn" data-ref-goodsno="A000000160943" data-ref-dispcatno="90000010009" data-ref-itemno="001">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p>
								</div>
							</li>
						<c:if test="${status.count % 4 == 0 or status.last}">
				            </ul>
				            <c:if test="${not status.last}">
				                <ul class="cate_prd_list">
				            </c:if>
				        </c:if>
					</c:forEach>
			</div>	
		</div>
	</div>
	<!-- //#Container -->

<form id="initForm" name="initForm" method="get">
	<input type="hidden" id="dispCatNo" name="dispCatNo" value="900000100100001">
	<input type="hidden" id="fltDispCatNo" name="fltDispCatNo" value="">
	<input type="hidden" id="pageIdx" name="pageIdx" value="0">
	<input type="hidden" id="rowsPerPage" name="rowsPerPage" value="0">
	<input type="hidden" id="t_page" name="t_page" value="랭킹">
	<input type="hidden" id="t_click" name="t_click" value="">
</form>
	<div class="laytoast" id="brandOff" style="display: none;">
		<div class="inner">
			<p class="txt_recom txt_01">브랜드<br><em>좋아요</em></p>
		</div>
	</div>
	<div class="laytoast on" id="brandOn" style="display: none;">
		<div class="inner">
			<p class="txt_recom txt_01">브랜드<br><em>좋아요</em></p>
		</div>
	</div>
	<!-- 브랜드 찜 확인 레이어 -->
	<div class="layerAlim brand zzimOn" style="display:none;"><!-- zzimOn / zzimOff -->
	 <span class="icon"></span>
	 <p>브랜드<strong>좋아요</strong></p>
	</div>

	<div class="layerAlim brand zzimOff" style="display:none;"><!-- zzimOn / zzimOff -->
	 <span class="icon"></span>
	 <p>브랜드<strong>좋아요</strong></p>
	</div>
	<!-- 브랜드 찜 확인 레이어 -->
	
	<!-- 찜 확인 레이어 -->
	<div class="layerAlim zzimOn wishPrd" style="display:none;">
		<span class="icon"></span>
		<p class="one"><strong>좋아요</strong></p>
	</div>
	<!--// 찜 확인 레이어 -->
	
	<!-- 찜 취소 레이어 -->
	<div class="layerAlim zzimOff wishPrd" style="display:none;">
		<span class="icon"></span>
		<p class="one"><strong>좋아요</strong></p>
	</div>
	<!--// 찜 취소 레이어 -->

	<!-- 2017-02-23 수정 : TOP 바로가기 버튼 추가 -->
	<div id="directTop" style="display: none;">
		<button><span></span>TOP</button>
	</div>
	<!--/ㅁ 2017-02-23 수정 : TOP 바로가기 버튼 추가 -->
</div>
<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>