<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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


	<div id="Container">

		<div id="Contents">

			<jsp:include page="/view/mypage/layout/mypagehead.jsp" flush="false"></jsp:include>
			

			<div class="mypage-ix">


				<!-- 마이페이지 SUB 메뉴 -->
				<jsp:include page="/view/mypage/layout/mypageside.jsp" flush="false"></jsp:include>
				
				<div class="mypage-conts">
				<script src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.header.js?dumm=202311090001"></script>


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
	
	
	<!-- 구매 날짜, 유형 선택 -->
	<jsp:include page="/view/mypage/layout/searchoption.jsp" flush="false"></jsp:include>
	
	<script src="/Black_OY/js/searchoption.js"></script>
	<%
		String myPageURL = "orderDelivery.do";
	%>
	<script>
		var myPageURL = "<%= myPageURL %>"
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
				<c:when test="${ not empty orderList }">
				
					<tbody class="history">
						<c:forEach items="${ orderList }" var="ol">
						<tr>
	
	
							<td rowspan="1">
								<ul class="mypage-flag-apply">
	
	
									<li class="order-date">${ ol.uodDate }</li>
	
									<li class="color1s">${ ol.uodOrderId }</li>
	
									<li><a href="#" class="btnDetail"
										data-oper-dt="2023.11.03" data-origin-bizpl-cd=""
										data-pos-no="" data-receipt-no="" data-deal-sp=""
										data-frst-receipt-no=""
										onclick="javascript:redirectDetail('${ol.uodOrderId}')">상세보기</a>
									</li>
										
	
								</ul>
							</td>
	
	
							<td class="subject ">
								<div class="area">
	
	
	
									<a class="thum"
										href="<%-- 상품상세페이지 이동 --%>">
										<img
										src="${ ol.uodDisplsrc }"
										alt="${ ol.uodDisplN }"
										onerror="common.errorImg(this);">
									</a>
									<div class="textus">
										<a class=""
											href="<%-- 상품상세페이지 이동 --%>">
											<span class="tit">${ ol.uodBrand }</span> <span class="txt">${ ol.uodDisplN }</span>
										</a> 
										
										<c:if test="${ ol.uodDisplN ne ol.uodProN }">
											<span class="color1sSize">
												<i class="tit">옵션</i>
												${ ol.uodProN }
											</span>
										</c:if>
	
	
	
										<button type="button" class="btn_bag mgT10" name="Order"
											onclick="modalcall()"
											data-goods-no="A000000163041" data-item-no="006"
											data-quick-yn="N">
											<span>장바구니 담기</span>
										</button>
	
									</div>
	
	
	
								</div>
							</td>
							<td class="">${ ol.uodamount }</td>
							<td class="colorOrange">
								<!--  오프라인구매용 금액 --> <strong>${ ol.uodorderPrice }</strong> 원
	
							</td>
	
							<td>
								<strong>${ ol.uodState }</strong> 
								<c:if test="${ fn:contains(ol.uodState, '환불') }">
									<span class="color1sSize">처리일시<br>${ ol.uodRFdate }
									</span>
										<button type="button" class="BtnDelete"
											data-ord-no="<%-- 주문번호 --%>" data-ord-goods-seq="1"
											data-cnsl-ord-proc-seq="0" data-ord-dtl-sct-cd="20"
											data-chg-accp-sct-cd="" data-rtn-proc-sct-cd=""
											onclick="<%-- 환불사유 모달창 띄우는 스크립트 --%>">자세히
											보기</button>
								</c:if>
							</td>
					
						</tr>
						</c:forEach>
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
<script>
	function redirectDetail(orderId) {
		var url = '<%= contextPath %>/olive/orderDeliveryDetail.do' + '?orderId=' + encodeURIComponent(orderId);
		location.href = url;
	}
</script>

<script>
   function modalcall() {
    $( "#dialog-message" ).dialog({
      modal: true,
      buttons: {
        Ok: function() {
          $( this ).dialog( "close" );
        }
      }
    });
  } 
  </script>


<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>