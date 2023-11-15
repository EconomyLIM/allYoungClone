<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<%@ include file="/WEB-INF/inc/session_auth.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="/Black_OY/js/head.js"></script>

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
					<script
						src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.header.js?dumm=202311020005"></script>
					<script>
					$(window).ready(function(){
						mypage.header.init();
					});
				</script>

					<div class="title-area2">
						<h2 class="tit">
							주문/배송 조회<em>(최근 1개월)</em>
						</h2>
						<a class="btnMore" id="orderListMore" href="<%=contextPath %>/mypage/orderDelivery/orderDelivery.do"
							data-attr="마이페이지^주문배송조회_더보기^더보기">더보기</a>
					</div>
					<div class="layer_pop_wrap" id="service_survey" style=""></div>

					<a href="<%=contextPath %>/mypage/orderDelivery/orderDelivery.do" class="order_view"
						data-attr="마이페이지^주문배송조회_요약건수">
						<ul class="mypage-step">
							<c:forEach items="${ userOrderState }" var="order">
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
					</a>

					<div class="title-area mgT15">
						<h2 class="tit">좋아요</h2>
						<a class="btnMore" id="wishListMore"
							href="javascript:common.link.moveWishList(getEventParameterString({t_page: '마이페이지', t_click: '좋아요'}))">더보기</a>
					</div>

					<!-- 좋아요 상품 목록 -->
					<div class="list-four">

						<ul class="cate_prd_list" id="wishList" name="wishList">
							<!-- 상품 4개 일때 -->
							<c:if test="${ not empty userPlike }">
								<c:forEach items="${ userPlike }" var="pl">
									<li data-goods-no="${ pl.plpId }">
										<div class="prd_info">
											<a href="<%=contextPath %>/olive/productDetail.do?goodsNo=${pl.plpdispId}" class="prd_thumb goodsList"
												data-ref-goodsno="${ pl.plpId }" data-ref-dispcatno=""
												data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img
												src="${ pl.plImgsrc }" alt="${ pl.plpdispId }"
												onerror="common.errorImg(this);"></a>
											<div class="prd_name">
												<a href="<%-- 상품 페이지 이동 --%>" class="goodsList"
													data-ref-goodsno="${ pl.plpId }" data-ref-dispcatno=""
													data-ref-itemno="001"><span class="tx_brand">${ pl.plbrand }</span>
													<p class="tx_name">${ pl.plpdispN }</p></a>
											</div>
											<button class="btn_zzim jeem on"
												data-ref-goodsno="A000000190116">
												<span>찜하기후</span>
											</button>
											<p class="prd_price">
												<span class="tx_org"><span class="tx_num">${ pl.plpricep }</span>원
												</span><span class="tx_cur"><span class="tx_num">${ pl.plpricea }</span>원
												</span>
											</p>
											<p class="prd_flag">
												<c:if test="${ pl.pmd eq 1 }">
													<span class="icon_flag sale">세일</span>
												</c:if>
												<c:if test="${ pl.pmp eq 1 }">
													<span class="icon_flag gift">증정</span>
												</c:if>
												<c:if test="${ pl.pmc eq 1 }">
													<span class="icon_flag coupon">쿠폰</span>
												</c:if>
												<c:if test="${	pl.stock > 0}">
													<span class="icon_flag delivery">오늘드림</span>
												</c:if>
											</p>
										</div>

									</li>
								</c:forEach>

							</c:if>

						</ul>

					</div>


					<!-- 1:1문의 -->
					<div class="area-over" id="cousel">
						<div class="left">
							<div class="title-area">
								<h2 class="tit">1 : 1 문의내역</h2>
								<a class="btnMore" id="qnaListMore"
									href="<%--  고객센터 1:1문의하기 페이지 --%>">더보기</a>
							</div>
							<div class="list-customer">
								<ul>
									<c:choose>
										<c:when test="${ not empty userpAsk }">
											<c:forEach items="${ userpAsk }" var="pa">
													<li>
														<p class="stit">

															<strong style="background:#ff7f00">${ pa.paskState }</strong>
															<a href="<%-- 1:1문의 페이지 - 해당문의로 이동 --%>">${ pa.paskQuestion }</a>
															<span class="data">${ pa.paskDate }</span>
														</p>	
													</li>
												
											</c:forEach>
										</c:when>
										<c:otherwise>
											<li class="nodata">최근 1개월간 문의하신 내용이 없습니다.</li>
										</c:otherwise>
									</c:choose>
								</ul>
							</div>
						</div>

						<!-- 상품QnA -->
						<div class="right" id="goodsQna">
							<div class="title-area">
								<h2 class="tit">상품Q&amp;A내역</h2>
								<a class="btnMore" id="goodsQnaListMore"
									href="<%-- 상품QnA 페이지 이동 --%>">더보기</a>
							</div>

							<div class="list-customer">
								<ul>
									<c:choose>
										<c:when test="${ not empty userQnA }">
											<c:forEach items="${ userQnA }" var="qa">
												<li>
													<p class="stit">
														<strong style="background:#ff7f00">${ qa.qnaState }</strong>
														<a href="<%-- QnA페이지 - 해당QnA페이지로 이동 --%>">${ qa.qnaQus }</a>
														<span class="data">${ qa.qnaDate }</span>
														
													</p>	
												</li>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<li class="nodata">최근 1개월간 문의하신 내용이 없습니다.</li>
										</c:otherwise>
									</c:choose>
								</ul>
							</div>

						</div>
					</div>




				</div>

			</div>

		</div>

	</div>


	<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>