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
	<div id="Container">

		<div id="Contents">

			<div class="mypage-head rate_05">
				<h1 class="tit">
					<a href="https://www.oliveyoung.co.kr/store/mypage/myPageMain.do">마이페이지</a>
				</h1>

				<div class="grd-box">
					<div class="info_user clrfix">

						<div class="thum">
							<span class="bg"></span> <img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg"
								alt="" onerror="common.errorImg(this);">

						</div>
						<p class="txt">
							*등급명 <strong class="name">*회원이름</strong>님 반갑습니다.
						</p>
						<ul class="mem_opt">

							<li id="membershipBenefit"><a
								href="javascript:common.wlog('mypage_coupon_onbenefit_tab');"
								onclick="mypage.header.getMembership()">올리브 멤버스 라운지</a></li>

							<li id="profileModify"><a
								href="javascript:common.wlog('mypage_profile');"
								onclick="mypage.header.goReviewerProfile('RFRPOENqK1dLNzdvMGdWbHhWc09OQT09', {t_page: '마이페이지', t_click: '나의프로필이미지'})">나의
									프로필</a></li>
						</ul>
					</div>

					<div class="point-box ">
						<ul class="infor clrfix" id="pointInfo">
							<li id="cjOnePoingInfo"
								onclick="location.href='https://www.oliveyoung.co.kr/store/mypage/getCJOnePointInfo.do'+'?'+ getEventParameterString({t_page: '마이페이지', t_click: 'CJONE포인트'})">
								<span class="tit">CJ ONE 포인트</span> <a class="num"
								href="javascript:;">?<em class="unit">P</em></a>
							</li>
							<li id="couponList"
								onclick="location.href='https://www.oliveyoung.co.kr/store/mypage/getCouponList.do'+'?'+ getEventParameterString({t_page: '마이페이지', t_click: '쿠폰'})">
								<span class="tit">쿠폰</span> <a class="num" href="javascript:;"
								data-attr="마이페이지^쿠폰^쿠폰함이동">?<em class="unit">개</em></a>
							</li>
							<li id="depositList"
								onclick="location.href='https://www.oliveyoung.co.kr/store/mypage/getDepositList.do'+'?'+ getEventParameterString({t_page: '마이페이지', t_click: '마이월렛_예치금'})">
								<span class="tit">예치금</span> <a class="num" href="javascript:;">0<em
									class="unit">원</em></a>
							</li>

						</ul>
					</div>
				</div>
			</div>


			<div class="mypage-ix">
				<div class="mypage-lnb">
					<ul>
						<li><h2>마이 쇼핑</h2>
							<ul>
								<li class="subMenu"><a href="javascript:;" mymenuid="0101"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getOrderList.do"
									data-attr="마이페이지^메뉴^주문/배송 조회" data-tracking-name="주문배송조회 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=주문배송조회">주문/배송
										조회</a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0102"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getOrderCancelList.do"
									data-attr="마이페이지^메뉴^취소/반품/교환 내역"
									data-tracking-name="취소반품교환내역 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=취소반품교환내역">취소/반품/교환
										내역</a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0103"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getDealList.do"
									data-attr="마이페이지^메뉴^거래증빙서류 확인"
									data-tracking-properties="t_page=마이페이지&amp;t_click=거래증빙서류확인">거래증빙서류
										확인</a></li>
							</ul>
							<ul class="line">
								<li class="subMenu"><a href="javascript:;" mymenuid="0201"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/cart/getCart.do"
									data-attr="마이페이지^메뉴^장바구니"
									data-tracking-properties="t_page=마이페이지&amp;t_click=장바구니">장바구니</a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0202"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getWishList.do"
									data-attr="마이페이지^메뉴^좋아요"
									data-tracking-properties="t_page=마이페이지&amp;t_click=좋아요">좋아요</a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0203"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getReWhsgList.do"
									data-attr="마이페이지^메뉴^재입고 알림" data-tracking-name="재입고알림 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=재입고알림">재입고
										알림</a></li>
							</ul>
							<ul class="line">
								<li class="subMenu"><a
									href="javascript:common.wlog('mypage_giftcard');"
									mymenuid="0300"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/myGiftCard/getMyGiftCard.do"
									data-attr="마이페이지^메뉴^기프트카드" data-tracking-name="기프트카드 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=마이월렛_기프트카드">기프트카드</a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0301"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getCJOnePointInfo.do"
									data-attr="마이페이지^메뉴^CJ ONE 포인트"
									data-tracking-name="CJONE포인트 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=CJONE포인트">CJ
										ONE 포인트</a></li>
								<li class="subMenu"><a
									href="javascript:common.wlog('mypage_coupon');" mymenuid="0302"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getCouponList.do"
									data-attr="마이페이지^메뉴^쿠폰"
									data-tracking-properties="t_page=마이페이지&amp;t_click=쿠폰">쿠폰</a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0303"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getDepositList.do"
									data-attr="마이페이지^메뉴^예치금"
									data-tracking-properties="t_page=마이페이지&amp;t_click=마이월렛_예치금">예치금</a></li>

							</ul></li>
						<li><h2>마이 활동</h2>
							<ul>
								<li class="subMenu"><a href="javascript:;" mymenuid="0401"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/counsel/getQnaList.do"
									data-attr="마이페이지^메뉴^1:1문의내역" data-tracking-name="1대1문의 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=문의현황_1대1문의">1:1문의내역</a></li>

								<li class="subMenu"><a href="javascript:;" mymenuid="0402"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getGdasList.do"
									data-attr="마이페이지^메뉴^리뷰"
									data-tracking-properties="t_page=마이페이지&amp;t_click=리뷰">리뷰 (<span
										class="num_review" id="_gdasPossibleTotCnt"></span>)<img
										src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/icon_lnb_new2.png"
										class="new" id="_newGdasPossible" style="" alt="신규 리뷰 작성"></a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0403"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getGoodsQnaList.do"
									data-attr="마이페이지^메뉴^상품Q&amp;A내역" data-tracking-name="상품QnA 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=문의현황_상품QnA">상품Q&amp;A내역</a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0404"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getMyEventList.do"
									data-attr="마이페이지^메뉴^이벤트 참여 현황" data-tracking-name="이벤트참여현황 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=이벤트참여현황">이벤트
										참여 현황</a></li>

								<li class="subMenu"><a href="javascript:;" mymenuid="0405"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getMyOllyoungList.do"
									data-attr="마이페이지^메뉴^올영체험단 리뷰"
									data-tracking-properties="t_page=마이페이지&amp;t_click=올영체험단리뷰">체험단
										리뷰</a></li>
							</ul></li>
						<li><h2>마이 정보</h2>
							<ul>
								<li class="subMenu on"><a href="javascript:;"
									mymenuid="0501"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getMktReceiptInfo.do"
									data-attr="마이페이지^메뉴^회원정보 수정"
									data-tracking-properties="t_page=마이페이지&amp;t_click=회원정보수정">회원정보
										수정</a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0502"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getDeliveryInfo.do"
									data-attr="마이페이지^메뉴^배송지/환불계좌" data-tracking-name="배송지환불계좌 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=배송지환불계좌">배송지/환불계좌</a></li>
								<li class="subMenu"><a
									href="javascript:common.wlog('mypage_intereststore');"
									mymenuid="0505"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/store/getStoreMain.do?tabType=favorTab"
									data-attr="마이페이지^메뉴^관심 매장 관리" data-tracking-name="관심매장 클릭"
									data-tracking-properties="t_page=마이페이지&amp;t_click=관심매장">관심
										매장 관리</a></li>

								<li class="subMenu"><a href="javascript:;" mymenuid="0504"
									data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/custInfoOut.do"
									data-attr="마이페이지^메뉴^회원탈퇴"
									data-tracking-properties="t_page=마이페이지&amp;t_click=회원탈퇴">회원탈퇴</a></li>
							</ul></li>
					</ul>
				</div>
				<!-- //마이페이지 SUB 메뉴 -->
				<!-- //마이페이지 SUB -->




				<!-- 데이터입력 -->
				<div class="mypage-conts">
					<script
						src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.header.js?dumm=202311090002"></script>
					<script>
						$(window).ready(function() {
							mypage.header.init();
						});
					</script>

					<div class="title-area">
						<h2 class="tit">회원정보 수정</h2>
					</div>

					<h3 class="sub-title9 mgT30">기본정보 수정</h3>
					<div class="txt-box">
						<p class="txt">회원 정보 및 비밀번호는 CJ ONE 사이트를 통해 수정 가능합니다.</p>
						<p class="txt">(카카오 간편회원은 CJ ONE에서 통합회원 전환하여 비밀번호 설정/수정 가능)</p>
						<ul class="btn_pos">
							<li><a href="javascript:;" class="btn_move"><span>회원정보
										수정</span></a></li>
							<li><a href="javascript:;" class="btn_move"><span>비밀번호
										수정</span></a></li>
						</ul>
					</div>
					<div class="modify_box line mgT40">
						<div class="chk_head">
							<h4 class="tit">서비스·이벤트 정보 수신 동의 (선택)</h4>
							<input type="hidden" id="svcEvtAgrYnVal" value="Y">
							<p class="pos_chk">
								<input type="checkbox" id="svcEvtAgrYn" class="chkSmall"
									title="서비스·이벤트 정보 수신 동의 (선택)" checked="checked"><label
									for="svcEvtAgrYn">동의합니다</label>
							</p>
						</div>

						<div class="modi_boxg">
							<dl class="info_chk clrfix">
								<dt>알림 수신 채널 선택</dt>
								<dd>
									<ul class="chk_list clrfix">
										<li><input type="checkbox" id="smsRcvAgrYn" class="chk18"
											title="문자(SMS/LMS)" checked="checked"><label
											for="smsRcvAgrYn">문자(SMS/LMS)</label></li>
										<li><input type="checkbox" id="pushMsgRcvYn"
											class="chk18" title="APP PUSH" checked="checked"><label
											for="pushMsgRcvYn">APP PUSH</label></li>
									</ul>
								</dd>
							</dl>
							<ul class="list_dots">
								<li>구매 정보 및 주요 서비스 정책 변경 건은 수신 동의 여부와 관계 없이 발송됩니다.</li>
							</ul>
						</div>

						<table class="tbl_agree mgT15">
							<caption>서비스·이벤트 정보 수신 동의표</caption>
							<colgroup>
								<col style="width: 33%;">
								<col style="width: 33%;">
								<col style="width: 34%;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">수집·이용 목적</th>
									<th scope="col">수집 항목</th>
									<th scope="col">보유 및 이용 기간</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>각종 이벤트, 회원 혜택, 할인 행사 등의 사전 안내 및 이를 기반한 마케팅 활동</td>
									<td><em class="udline">이름, 휴대전화, 배송지주소, 생년월일, 성별, 상품
											구매정보, 서비스 이용 내역, 광고성 정보 수신 채널 (문자, APP PUSH)</em></td>
									<td><em class="udline">회원 탈퇴 후 30일까지 또는 해당 서비스 동의 철회
											시까지</em></td>
								</tr>
							</tbody>
						</table>

						<p class="txt_dg mgT10">※ 회원은 본 서비스 이용 동의에 대한 거부를 할 수 있으며, 미동의
							시 본 서비스에 대한 혜택을 받으실 수 없습니다.</p>
					</div>

					<!-- 위치정보 이용 동의 영역 -->
					<div class="modify_box line mgT40">
						<div class="chk_head">
							<h4 class="tit">위치기반 서비스 이용 동의 (선택)</h4>
							<p class="pos_chk">
								<input type="checkbox" id="svcLocAgrYn" class="chkSmall"
									title="위치기반 서비스 이용 동의 (선택)"><label for="svcLocAgrYn">동의합니다</label>
							</p>
						</div>



						<div class="serviceAgreement mgT15">
							<div class="agreementBox pdzero">
								<div class="contScroll">
									<h2 class="terms-title1" id="TermsOrder1-1">제 1조 (목적)</h2>
									<p>본 약관은 씨제이올리브영 주식회사(이하 “회사”라고 합니다)가 제공하는 위치기반 서비스(이하
										“서비스”라고 합니다)를 이용함에 있어 회사와 회사의 서비스를 이용하는 자(이하 “회원”이라 합니다) 간의
										권리·의무 및 기타 필요한 사항을 규정함을 목적으로 합니다.</p>

									<h2 class="terms-title1" id="TermsOrder1-2">제2조(이용약관의 효력 및
										변경)</h2>
									<ol class="list">
										<li>① 본 약관은 서비스를 신청한 고객 또는 개인위치정보주체가 본 약관에 동의하고 회사 소정의
											절차에 따라 서비스의 이용자로 등록함으로써 효력이 발생합니다</li>
										<li>② 회원이 온라인에서 본 약관의 "동의하기" 버튼을 클릭하였을 경우 본 약관의 내용을 모두 읽고
											이를 충분히 이해하였으며, 그 적용에 동의한 것으로 봅니다.</li>
										<li>③ 회사는 위치기반서비스의 변경사항을 반영하기 위하여 필요한 경우 등에는 위치정보의 보호 및
											이용 등에 관한 법률, 콘텐츠산업 진흥법, 전자상거래 등에서의 소비자보호에 관한 법률, 소비자기본법, 약관의
											규제에 관한 법률 등 관련법령을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.</li>
										<li>④ 회사가 약관을 개정할 경우에는 적용일자, 개정사유, 현행약관 및 개정약관의 내용과 개정약관
											적용일까지 동의 또는 거부의 의사표시를 하지 아니하면 개정약관에 동의한 것으로 본다는 내용을 각 명시하여 다음
											각호의 방법 중 하나로 게시 및 통지합니다.
											<ol>
												<li>1. 서비스 홈페이지 등 게시 : 개정약관 적용일 15일 전부터 적용일 이후 상당한 기간
													(단, 개정되는 내용이 이용자 권리의 중대한 변경을 발생시키는 경우 적용일 최소 30일 전에 게시합니다)</li>
												<li>2. 회원에게 전자적 형태(전자우편, SMS 등)로 개별 통지 : 개정약관 적용일로부터
													15일 전 (단, 개정되는 내용이 이용자 권리의 중대한 변경을 발생시키는 경우 적용일 최소 30일 전에
													통지합니다)</li>
											</ol>
										</li>
										<li>⑤ 회사의 전항에 따른 게시 내지 통지 후에도 회원이 개정약관 적용일까지 개정약관에 대해 동의
											또는 거부의 의사표시를 하지 않을 때에는 회원이 해당 개정약관에 동의한 것으로 봅니다.</li>
										<li>⑥ 회원이 개정약관에 동의하지 않을 경우 회원은 이용계약을 해지할 수 있습니다.</li>
									</ol>

									<h2 class="terms-title1" id="TermsOrder1-3">제3조(관계법령의 적용)</h2>
									<p>본 약관은 신의성실의 원칙에 따라 공정하게 적용하며, 본 약관에 명시되지 아니한 사항에 대하여는
										관계법령 또는 상관례에 따릅니다.</p>

									<h2 class="terms-title1" id="TermsOrder1-4">제4조(서비스의 내용 등)</h2>
									<ol class="list">
										<li>① 회사가 제공하는 위치기반서비스 및 개인위치정보의 보유목적과 기간은 아래와 같습니다.</li>
										<table>
											<caption>회사가 제공하는 위치기반서비스 및 개인위치정보의 보유목적과 기간</caption>
											<colgroup>
												<col style="width: 34%;">
												<col style="width: auto;">
											</colgroup>
											<thead>
												<tr>
													<th>서비스 명</th>
													<th>서비스 내용 및 (보유)목적</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1.매장안내-직접검색</td>
													<td>매장명/주소지(지역명, 도로명)기반, 매장 직접 검색하여 검색된 매장과 현재 고객 위치
														간의 거리(Km)를 가까운 매장 순으로 제공</td>
												</tr>
												<tr>
													<td>2.매장안내-지역검색</td>
													<td>지역, 시/군/구 선택 후 검색하면 해당 지역에 해당되는 모든 매장과 현재 고객 위치 간의
														거리를 가까운 매장 순으로 제공</td>
												</tr>
												<tr>
													<td>3.매장안내-관심매장</td>
													<td>고객이 직접 즐겨찾기 기능으로 등록한 관심매장과 현재 고객 위치와의 거리 정보 제공</td>
												</tr>
												<tr>
													<td>4.매장안내-판매매장 찾기</td>
													<td>브랜드와 상품명 입력 후 검색 시, 해당 상품 보유 가능성을 고객 위치와 가까운 매장순으로
														제공</td>
												</tr>
												<tr>
													<td>5.상품상세-구매가능 매장확인</td>
													<td>해당 상품의 보유 가능성을 ‘매장 검색’ 기능을 통해 가까운 매장순으로 제공하거나, 고객이
														등록한 ‘관심매장’에서의 상품 보유 여부 제공</td>
												</tr>
												<tr>
													<td>6.픽업주문서-매장선택</td>
													<td>주문서에서 픽업 선택 시, ‘최근 이용 매장’, ‘관심매장’, ‘그 외 매장’에 대해,
														거리 순으로 픽업 가능 매장명 노출</td>
												</tr>
												<tr>
													<td>7.장바구니-픽업 탭</td>
													<td>장바구니에서 픽업 탭 선택 시, ‘가까운 매장’, ‘최근 이용 매장’, ‘관심 매장’에
														대해, 고객 위치 맵 기준 픽업 가능한 매장명 노출</td>
												</tr>
											</tbody>
										</table>
										<li class="pdT10">② 회사는 「위치정보의 보호 및 이용 등에 관한 법률」 제16조
											제2항에 따라 위치정보 이용·제공사실 확인자료를 자동 기록·보존하며, 해당 자료는 6개월간 보관합니다.</li>
										<li>③ 회사는 개인위치정보의 이용 또는 제공목적을 달성한 때에는 제3항의 위치정보 이용·제공사실
											확인자료를 제외한 개인위치정보를 즉시 파기합니다. 다만, 다른 법률에 따라 보유하여야 하거나 회원이
											개인위치정보의 보유에 별도로 동의한 경우에는 회원이 동의한 때로부터 최대 1년간 이를 보유할 수 있습니다.</li>
									</ol>

									<h2 class="terms-title1" id="TermsOrder1-5">제5조(서비스 이용요금 및
										조건)</h2>
									<p>회사가 제공하는 위치정보 서비스는 무료이며, 회원이 본 약관에 동의한 경우 이용 가능합니다. 단,
										무선 서비스 이용 시 발생하는 데이터 통신료는 별도이며, 회원이 가입한 각 이동통신사의 정책에 따릅니다.</p>

									<h2 class="terms-title1 pdT10" id="TermsOrder1-6">제6조(서비스
										추가·변경)</h2>
									<p>회사가 서비스의 추가·변경이 필요한 경우, 제4조에 그 내용을 반영하여 제2조 제4항에 따라 게시
										내지 통지하여야 합니다.</p>

									<h2 class="terms-title1" id="TermsOrder1-7">제7조(서비스이용의 제한
										및 중지)</h2>
									<ol class="list">
										<li>① 회사는 아래 각 호의 1에 해당하는 사유가 발생한 경우 서비스의 일부 혹은 전부의 이용을
											제한하거나 중지할 수 있습니다.
											<ol>
												<li>1.회원이 회사 서비스의 운영을 고의 또는 중과실로 방해하는 경우</li>
												<li>2.서비스용 설비 점검, 보수 또는 공사로 인하여 부득이한 경우</li>
												<li>3.전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우</li>
												<li>4.국가비상사태, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 서비스 이용에 지장이
													있는 때</li>
												<li>5.기타 중대한 사유로 인하여 회사가 서비스 제공을 지속하는 것이 부적당하다고 인정하는 경우</li>
											</ol>
										</li>
										<li>② 회사는 전항의 규정에 의하여 서비스의 이용을 제한하거나 중지한 때에는 그 사유 및 제한기간
											등을 서비스 홈페이지 등에 게시하거나 전자적 형태(전자우편, SMS 등)로 개별 통지하여야 합니다.</li>
										<li>③ 회사가 전항에 따른 게시 내지 통지를 할 수 없는 부득이한 사유가 있는 경우 사후에 게시
											내지 통지할 수 있습니다.</li>
									</ol>

									<h2 class="terms-title1" id="TermsOrder1-8">제8조(개인위치정보의 이용
										또는 제공)</h2>
									<ol class="list">
										<li>① 회사는 개인위치정보를 이용하여 서비스를 제공하고자 하는 경우에는 본 약관에 명시한 후
											개인위치정보주체의 동의를 얻어야 합니다.</li>
										<li>② 회사는 회원의 동의 없이 개인위치정보를 제3자에게 제공하지 않으며, 제3자에게 제공하는
											경우에는 제공받는 자 및 제공목적을 사전에 회원에게 고지하고 동의를 받습니다. 단, 통계작성, 학술연구 또는
											시장조사를 위하여 특정 개인을 알아볼 수 없는 형태로 가공하여 제공하는 경우에는 별도의 동의 없이 제3자에게
											개인위치정보를 제공할 수 있습니다.</li>
										<li>③ 제2항에 따라 개인위치정보를 회원이 지정하는 제3자에게 제공하는 경우에는 개인위치정보를
											수집한 해당 통신 단말장치 또는 전자우편주소 등으로 매회 회원에게 제공받는 자, 제공일시 및 제공목적(이하
											“정보제공내역”이라 합니다)을 즉시 통보합니다. 단, 아래 각 호에 해당하는 경우에는 회원이 미리 특정하여
											지정한 통신단말장치 또는 전자우편주소, 온라인게시 등으로 통보합니다.
											<ol>
												<li>1. 개인위치정보를 수집한 해당 통신단말장치가 문자, 음성 또는 영상의 수신기능을 갖추지
													아니한 경우</li>
												<li>2. 회원이 개인위치정보를 수집한 해당 통신단말장치 외의 통신단말장치 또는 전자우편주소
													등으로 통보할 것을 미리 요청한 경우</li>
											</ol>
										</li>
										<li>④ 회원은 제1항·제2항에 따른 동의를 하는 경우 이용·제공목적, 제공받는 자의 범위 및
											위치기반서비스 이용약관의 내용 중 일부와 회원의 개인위치정보에 대한 제3자 제공의 경우 통보방법에 대하여
											동의를 유보할 수 있습니다.</li>
									</ol>

									<h2 class="terms-title1" id="TermsOrder1-9">제9조(개인위치정보주체의
										권리 및 행사방법)</h2>
									<ol class="list">
										<li>① 회원은 회사에 대하여 언제든지 개인위치정보를 이용한 위치기반서비스 제공 및 개인위치정보의
											제3자 제공에 대한 동의의 전부 또는 일부를 철회할 수 있습니다. 이 경우 회사는 제공받은 개인위치정보 및
											위치정보 이용, 제공 사실 확인자료를 파기합니다. 단, 동의의 일부를 철회하는 경우에는 철회하는 부분의
											개인위치정보 및 위치정보 이용·제공사실 확인자료에 한합니다.</li>
										<li>② 회원은 회사에 대하여 언제든지 개인위치정보의 이용 또는 제공의 일시적인 중지를 요구할 수
											있고, 회사는 이를 거절할 수 없으며 이를 위한 기술적 수단을 갖추고 있습니다.</li>
										<li>③ 회원은 회사에 대하여 아래 각 호의 자료에 대한 열람 또는 고지를 요구할 수 있고,
											해당자료에 오류가 있는 경우에는 그 정정을 요구할 수 있습니다. 이 경우 회사는 정당한 사유 없이 회원의
											요구를 거절할 수 없습니다.
											<ol>
												<li>1. 개인정보주체에 대한 위치정보 수집, 이용, 제공사실 확인자료</li>
												<li>2. 개인정보주체의 개인위치정보가 위치정보의 보호 및 이용 등에 관한 법률 또는 다른 법률
													규정에 의하여 제3자에게 제공된 이유 및 내용</li>
											</ol>
										</li>
										<li>④ 회원은 제1항 내지 제3항의 권리행사를 위해 회사의 고객센터 등을 통하여 요청할 수
											있습니다.</li>
									</ol>

									<h2 class="terms-title1" id="TermsOrder1-10">제10조(법정대리인의
										권리 및 행사방법)</h2>
									<ol class="list">
										<li>① 회사는 14세 미만의 회원의 경우, 개인위치정보를 이용한 위치기반서비스 제공 및
											개인위치정보의 제3자 제공에 대하여 해당 회원과 그 법정대리인 모두의 동의를 받아야 합니다.</li>
										<li>② 회사는 다음 각 호의 어느 하나에 해당하는 방법으로 법정대리인이 동의했는지를 확인합니다.
											<ol>
												<li>1. 동의 내용을 게재한 인터넷 사이트에 법정대리인이 동의 여부를 표시하도록 하고
													위치정보사업자등이 그 동의 표시를 확인했음을 법정대리인의 휴대전화 문자메시지로 알리는 방법</li>
												<li>2. 동의 내용을 게재한 인터넷 사이트에 법정대리인이 동의 여부를 표시하도록 하고
													법정대리인의 신용카드·직불카드 등의 카드정보를 제공받는 방법</li>
												<li>3. 동의 내용을 게재한 인터넷 사이트에 법정대리인이 동의 여부를 표시하도록 하고
													법정대리인의 휴대전화 본인인증 등을 통해 본인 여부를 확인하는 방법</li>
												<li>4. 동의 내용이 적힌 서면을 법정대리인에게 직접 발급하거나, 우편 또는 팩스를 통하여
													전달하고 법정대리인이 동의 내용에 대하여 서명날인 후 제출하도록 하는 방법</li>
												<li>5. 동의 내용이 적힌 전자우편을 발송하여 법정대리인으로부터 동의의 의사표시가 적힌
													전자우편을 전송받는 방법</li>
												<li>6. 전화를 통하여 동의 내용을 법정대리인에게 알리고 동의를 얻거나 인터넷주소 등 동의
													내용을 확인할 수 있는 방법을 안내하고 재차 전화 통화를 통하여 동의를 얻는 방법</li>
												<li>7. 그 밖에 제1호부터 제6호까지의 규정에 따른 방법에 준하는 방법으로 법정대리인에게 동의
													내용을 알리고 동의의 의사표시를 확인하는 방법</li>
											</ol>
										</li>
										<li>③ 법정대리인은 만14세 미만 아동의 개인위치정보를 수집ㆍ이용ㆍ제공에 동의하는 경우 동의유보권,
											동의철회권 및 일시중지권, 열람ㆍ고지요구권을 행사할 수 있습니다.</li>
									</ol>

									<h2 class="terms-title1" id="TermsOrder1-11">제11조(8세 이하의
										아동 등의 보호의무자의 권리·의무 및 행사방법)</h2>
									<ol class="list">
										<li>① 회사는 아래의 경우에 해당하는 자(이하 “8세 이하의 아동” 등이라 합니다)의 보호의무자가
											8세 이하의 아동 등의 생명 또는 신체보호를 위하여 개인위치정보의 이용 또는 제공에 동의하는 경우에는 본인의
											동의가 있는 것으로 봅니다.
											<ol>
												<li>1. 8세 이하의 아동</li>
												<li>2. 피성년후견인</li>
												<li>3. 「장애인복지법」 제2조제2항제2호의 규정에 의한 정신적 장애를 가진 자로서
													「장애인고용촉진 및 직업재활법」 제2조제2호의 규정에 의한 중증장애인에 해당하는 자(「장애인복지법」
													제32조의 규정에 의하여 장애인등록을 한 자에 한한다)</li>

											</ol>
										</li>
										<li>② 제1항에 따른 동의를 하고자 하는 8세 이하 아동 등의 보호의무자는 각 호의 사항을 기재하여
											기명날인 또는 서명한 서면동의서에 보호의무자임을 증명하는 서면을 첨부하여 회사에 제출하여야 합니다.
											<ol>
												<li>1. 8세 이하의 아동등의 성명, 주소 및 생년월일</li>
												<li>2. 보호의무자의 성명, 주소 및 연락처</li>
												<li>3. 개인위치정보 이용 또는 제공의 목적이 8세 이하의 아동등의 생명 또는 신체의 보호에
													한정된다는 사실</li>
												<li>4. 동의의 연월일</li>
											</ol>
										</li>
										<li>③ 보호의무자는 8세 이하의 아동 등의 개인위치정보 이용 또는 제공에 동의하는 경우
											개인정보주체인 회원의 권리 전부를 행사할 수 있습니다.</li>
									</ol>


									<h2 class="terms-title1" id="TermsOrder1-12">제12조(위치정보관리책임자의
										지정)</h2>
									<ol class="list">
										<li>① 회사는 위치정보를 적절히 관리·보호하고 개인위치정보주체의 불만을 원활히 처리할 수 있도록
											실질적인 책임을 질 수 있는 지위에 있는 자를 위치정보관리책임자로 지정해 운영합니다.</li>
										<li>② 위치정보관리책임자의 구체적인 사항은 본 약관의 제16조에 따릅니다.</li>
									</ol>

									<h2 class="terms-title1" id="TermsOrder1-13">제13조(손해배상)</h2>
									<p>회사가 위치정보의 보호 및 이용 등에 관한 법률 제15조 내지 제26조의 규정을 위반한 행위로
										회원에게 손해가 발생한 경우 회원은 회사에 대하여 손해배상 청구를 할 수 있습니다. 이 경우 회사는 고의,
										과실이 없음을 입증하지 못하는 경우 책임을 면할 수 없습니다.</p>

									<h2 class="terms-title1" id="TermsOrder1-14">제14조(준거법 및
										재판관할)</h2>
									<ol class="list">
										<li>① 본 약관은 대한민국법령에 의하여 규정되고 이행됩니다.</li>
										<li>② 회원 및 법정대리인의 권리와 그 행사방법은 제소 당시의 이용자의 주소에 의하며, 주소가 없는
											경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지
											않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.</li>
									</ol>

									<h2 class="terms-title1" id="TermsOrder1-15">제15조(분쟁의 조정 및
										기타)</h2>
									<ol class="list">
										<li>① 회사는 위치정보와 관련된 분쟁에 대해 당사자간 협의가 이루어지지 아니하거나 협의를 할 수
											없는 경우에는 「위치정보의 보호 및 이용 등에 관한 법률」 규정에 의해 방송통신위원회에 재정을 신청할 수
											있습니다.</li>
										<li>② 회사 또는 회원은 위치정보와 관련된 분쟁에 대해 당사자간 협의가 이루어지지 아니하거나 협의를
											할 수 없는 경우에는 「개인정보보호법」 규정에 의한 개인정보분쟁조정위원회에 조정을 신청할 수 있습니다.</li>
									</ol>

									<h2 class="terms-title1" id="TermsOrder1-16">제16조(사업자정보 및
										위치정보 관리 책임자)</h2>
									<ol class="list">
										<li>① 회사의 상호 및 주소 등은 다음과 같습니다.
											<ol>
												<li>-상 호 : 씨제이올리브영 주식회사</li>
												<li>-주 소 : (04323) 서울특별시 용산구 한강대로 372, 24층 (동자동, KDB타워)</li>
												<li>-대표전화 : 1522-0882</li>
											</ol>
										</li>

										<li>② 회사는 다음과 같이 위치정보 관리책임자를 지정하고 있습니다.
											<ol>
												<li>-위치정보관리 책임자 : 이진희</li>
												<li>-E-MAIL : oliveweb@cj.net</li>
											</ol>
										</li>
									</ol>

									<h2 class="terms-title1" id="TermsOrder2">부칙</h2>
									<p>제1조(시행일) 이 약관은 2023년 11월 2일부터 시행한다.</p>

									<p>
										이용약관 버전번호: v1.0<br> 이용약관 시행일자: 2023.11.2<br>
									</p>

								</div>
							</div>
						</div>

						<p class="txt_dg mgT10">※ 회원은 본 서비스 이용 동의에 대한 거부를 할 수 있으며, 미동의
							시 본 서비스에 대한 이용이 어려우실 수 있습니다.</p>
					</div>
					<!-- 위치정보 이용 동의 영역 -->

					<div class="area1sButton pdzero mgT30">
						<a href="javascript:;" class="btnGreen45 w150"
							onclick="javascript:customer.mktRcvSend();return false;">저장</a>
					</div>
				</div>
			</div>

		</div>
<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>