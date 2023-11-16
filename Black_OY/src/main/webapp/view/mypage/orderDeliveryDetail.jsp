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


				<jsp:include page="/view/mypage/layout/mypageside.jsp" flush="false"></jsp:include>


				<div class="mypage-conts">
				
								
					<form id="detail-form" name="detailForm">
					<c:forEach items="${ detailList }" var="odl">
						
						<div class="title-area linezero">
							<h2 class="tit">상세정보</h2>
						</div>

						<ul class="infor-data mypage-flag-apply">
							<li>
								<span>주문일자&nbsp;&nbsp;:</span> <strong>${ odl.uodDate }</strong>
							</li>
							<li>
								<span>주문번호&nbsp;&nbsp;:</span> <strong>${ odl.uodOrderId }</strong>

							</li>

						</ul>

						<h3 class="sub-title3">올리브영 배송상품</h3>

						<table class="board-list-2s">
							<caption>올리브영 배송상품</caption>
							<colgroup>
								<col style="width: %;">
								<col style="width: 130px;">
								<col style="width: 8%;">
								<col style="width: 130px;">
								<col style="width: 110px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">상품명</th>
									<th scope="col">판매가</th>
									<th scope="col">수량</th>
									<th scope="col">구매가</th>
									<th scope="col">진행현황</th>
								</tr>
							</thead>
							<tbody class="history3">

								<tr>

									<td class="subject">
										<div class="area">

											<a class="thum"
												href="<%-- 상품상세페이지 이동 --%>">
												<img
												src="${ odl.uodDisplsrc }"
												alt="${ odl.uodDisplN }"
												onerror="common.errorImg(this);">
											</a>
											<div class="textus" style="width: 68%;">
												<a class=""
													href="<%-- 상품상세페이지 이동 --%>">
													<span class="tit">${ odl.uodBrand }</span> 
													<span class="txt">${ odl.uodDisplN }</span>
												</a>

											</div>

										</div>
									</td>
									<td class="colorBlack"><strong>${ odl.uodProPrice }</strong> 원</td>
									<td>${ odl.uodamount }</td>
									<td class="colorOrange"><strong>${ odl.uodorderPrice }</strong> 원</td>

									<td class="bgnone"><strong>${ odl.uodState }</strong> 
									
									<c:if test="${ fn:contains(ol.uodState, '환불') }">
									<span class="color1sSize">처리일시<br>${ odl.uodRFdate }
									</span>
										<button type="button" class="BtnDelete"
											data-ord-no="${ odl.uodOrderId }" data-ord-goods-seq="1"
											data-cnsl-ord-proc-seq="0" data-ord-dtl-sct-cd="20"
											data-chg-accp-sct-cd=""
											onclick="<%-- 환불사유 자세히 보기 모달창 스크립트 --%>">자세히
											보기</button>
									</c:if>
											
									</td>

								</tr>
						

							</tbody>
						</table>
						</c:forEach>
						
						
						<div class="area-over mgT20">

							<h3 class="sub-title3 flex-layout justify-between"
								style="width: 100%;">배송지 정보</h3>

						</div>
					
						<c:choose>
							<c:when test="${ not empty deliveryList }">
								
								<c:forEach items="${ deliveryList }" var="odv">
						
									<table class="board-write-2s view">
										<caption>배송지 정보 보기</caption>
										<colgroup>
											<col style="width: 20%;">
											<col style="width: 30%;">
											<col style="width: 20%;">
											<col style="width: 30%;">
										</colgroup>
										<tbody>
			
											<tr>
												<th scope="row">받는분</th>
												<td colspan="3">${ odv.uodRecip }</td>
											</tr>
			
											<tr>
												<th scope="row">연락처1</th>
												<td colspan="3">${ odv.uodTel1 }<br/></td> 
											</tr>
											
											<tr class="addr">
												<th scope="row">주소</th>
												<td colspan="3">(${ odv.uodZip })<br>도로명 : ${ odv.uodRAddr } ${ odv.uodBAddr }<br> 
												<span class="data">지&nbsp; &nbsp;번 : ${ odv.uodAddr } ${ odv.uodBAddr }</span>
												</td>
											</tr>
										</tbody>
									</table>
			
									<!-- 배송요청사항 테이블 분리 -->
									<div class="area-over mgT20">
										<h3 class="sub-title3">배송 요청사항</h3>
										
									</div>
									<table class="board-write-2s view">
										<caption>배송지 정보 보기</caption>
										<colgroup>
											<col style="width:20%;">
											<col style="width:30%;">
											<col style="width:20%;">
											<col style="width:30%;">
										</colgroup>
										<tbody>
											<c:if test="${ not empty odv.uodMsg }">
												<tr>
													<th scope="row">배송 메시지</th>
													<td colspan="3">${ odv.uodMsg }</td>
												</tr>
											</c:if>
										</tbody>
			
									</table>
									</c:forEach>
											
							</c:when>
							<c:otherwise>
								<table class="board-write-2s view">
										<caption>배송지 정보 보기</caption>
										<colgroup>
											<col style="width: 20%;">
											<col style="width: 30%;">
											<col style="width: 20%;">
											<col style="width: 30%;">
										</colgroup>
										<tbody>
			
											<tr>
												<td colspan="5" class="nodata">오류발생</td>	
											</tr>
			
											
										</tbody>
									</table>
								
							
							</c:otherwise>
						</c:choose>
						
						
						<!-- //배송요청사항 테이블 분리 -->
					
					
						<h3 class="sub-title3">결제 정보</h3>
						<c:forEach items="${ paymentList }" var="pl">

						<div class="price-conts">
							<ul class="list ">
								<li>
									<dl>
										<dt>주문금액</dt>
										<dd>
											${ pl.uodOrderPrice }<em>원</em>
										</dd>
									</dl>
									<ul>
										<li><span class="txt">총 상품금액</span> <span class="won">${ pl.uodProPrice }<em>원</em></span>
										</li>
										<li><span class="txt">총 배송비</span> <span class="won">${ pl.uodDeliPrice }<em>원</em></span>
										</li>

									</ul>
								</li>


								<li>
									<dl>
										<dt>쿠폰할인금액</dt>
										<dd>
											${ pl.uodCouponPrice }<em>원</em>
										</dd>
									</dl>
									<ul>

									</ul>

								</li>
								<li>
									<dl>
										<dt>포인트 및 기타결제</dt>
										<dd>
											${ pl.uodEtcPrice }<em>원</em>
										</dd>
									</dl>
									<ul>



									</ul>
								</li>


							</ul>


							<div class="price-sum">
								<div>
									<strong>총 결제금액</strong><span>${ pl.uodPayPrice }<em>원</em></span>
								</div>


								<c:choose>
									<c:when test="${ not empty pl.uodCardType }">
										<span class="txt">${ pl.uodCardType } 
										
										<c:choose>
											<c:when test="${ pl.uodInstType eq 0 }">
											일시불
											</c:when>
											<c:otherwise>
												${ pl.uodInstType }
											</c:otherwise>
										</c:choose>
										
										
										</span>
									</c:when>
									<c:otherwise>
										${ pl.uodPayType }
									</c:otherwise>
								</c:choose>
								
								
								
							</div>


						</div>


						<c:if test="${ not empty pl.uodRFPrice }">
						<h3 class="sub-title3">환불내역</h3>
						<div class="price-conts twoType">
							<ul class="list lineBzero">
								<li>
									<dl>
										<dt>취소 금액</dt>

										<dd>
											${ pl.uodPayPrice }<em>원</em>
										</dd>

									</dl>
									<ul>
										<li><span class="txt">취소 상품금액</span> <span class="won">${ pl.uodProPrice }<em>원</em></span>
										</li>

										<li><span class="txt">취소 배송비</span> <span class="won">${ pl.uodDeliPrice }<em>원</em></span>

										</li>

									</ul>
								</li>

								<li>
									<dl>
										<dt>포인트 및 기타결제 반환</dt>

										<dd>
											${ pl.uodEtcPrice }<em>원</em>
										</dd>

									</dl>
									<ul>

									</ul>
								</li>
							</ul>

							<div class="price-sum">
								<div>
									<button type="button" class="ButtonBasic"
										onclick="<%-- 환불이력을 알려주는 모달창 스크립트 --%>">환불이력</button>
									<strong>환불금액</strong><span>${ pl.uodRFPrice }<em>원</em></span>
								</div>

								<c:choose>
								
									<c:when test="${ not empty pl.uodCardType }">
										<span class="txt">${ pl.uodCardType }
											<c:choose>
												<c:when test="${ pl.uodInstType eq 0 }">
												일시불
												</c:when>
												<c:otherwise>
													${ pl.uodInstType }
												</c:otherwise>
											</c:choose>
											 취소
										</span>
									</c:when>
									<c:otherwise>
										<span class="txt">${ pl.uodPayType } 취소</span>
									</c:otherwise>
									
								</c:choose>
								
															
							</div>
						</div>
						
						</c:if>
							</c:forEach>
							
					
						<div class="area1sButton mgT40">
							<a href="<%=contextPath %>/mypage/orderDelivery/orderDelivery.do" class="btnGray">목록</a>
						</div>
						
				
					</form>
<%-- 
모달창
				<div class="popup-contents2 w500">
					<div class="pop-conts">
						<h1 class="ptit">취소 상세정보</h1>
				
						<div class="scroll-area" style="max-height:490px;">
								
							<div class="address-data">	
								<div class="date_area">
									<p>처리일시 <em>:</em> <span>2023년11월16일 15시01분51초</span></p>
								</div>
								
								<div class="area">
									<table class="boardPopup">
										<caption></caption>
										<colgroup>
											<col style="width:60px;">
											<col style="width:*;">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">사유</th>
												<td>고객단순변심</td>
											</tr>
										</tbody>
									</table>
								</div>
								
							</div>				
								
						<div class="area1sButton">
							<a href="javascript:fnLayerSet('layer_pop_wrap', 'close');" class="btnGreen">확인</a>
						</div>
				
						<button type="button" class="ButtonClose" onclick="fnLayerSet('layer_pop_wrap', 'close');">팝업창 닫기</button>
					</div>
				</div>
--%>								
							
							
						
					
				
				
				</div>
					
				
				
				</div>

			</div>

		</div>

	</div>



	<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>