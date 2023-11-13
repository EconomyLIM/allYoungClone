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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="/Black_OY/js/head.js"></script>

<title>블랙올리브영 온라인몰</title>
</head>
<body>
	<jsp:include page="/layout/head.jsp"></jsp:include>

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
								<li class="subMenu"><a href="<%=contextPath %>/olive/usermodify.do"
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
						<a class="btnMore" id="orderListMore" href="<%-- 주문배송조회 페이지 --%>"
							data-attr="마이페이지^주문배송조회_더보기^더보기">더보기</a>
					</div>
					<div class="layer_pop_wrap" id="service_survey" style=""></div>
					
					<a href="<%-- 주문배송조회 페이지 --%>" class="order_view"
						data-attr="마이페이지^주문배송조회_요약건수">
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
											<a href="<%-- 해당 상품 페이지 링크 --%>" class="prd_thumb goodsList"
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

									<c:if test="${ not empty userpAsk }">
										<c:forEach items="${ userpAsk }" var="pa">


										</c:forEach>
									</c:if>
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

									<c:if test="${ not empty userQnA }">
										<c:forEach items="${ userQnA }" var="qna">


										</c:forEach>
									</c:if>


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