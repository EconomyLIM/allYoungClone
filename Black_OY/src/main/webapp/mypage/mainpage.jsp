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

<div id="Contents">
		
		

		<div class="mypage-head rate_04">
			<h1 class="tit"><a href="https://www.oliveyoung.co.kr/store/mypage/myPageMain.do">마이페이지</a></h1>
			
			<div class="grd-box">
				<div class="info_user clrfix">
					
					<div class="thum">
						<span class="bg"></span>
						
							
							
								<img src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg" alt="" onerror="common.errorImg(this);">
							
						
					</div>
					<p class="txt">
						BABY OLIVE <strong class="name">김호영</strong>님 반갑습니다.
					</p>
					<ul class="mem_opt">
						
						<li id="membershipBenefit"><a href="javascript:common.wlog('mypage_coupon_onbenefit_tab');" onclick="mypage.header.getMembership()">올리브 멤버스 라운지</a></li>
						
						<li id="profileModify"><a href="javascript:common.wlog('mypage_profile');" onclick="mypage.header.goReviewerProfile('VHdCeVV6R3J1MTBMaWFjcWllYWRjZz09', {t_page: '마이페이지', t_click: '나의프로필이미지'})">나의 프로필</a></li>
					</ul>
				</div>

				
				

				<div class="point-box ">
					<ul class="infor clrfix" id="pointInfo">
						<li id="cjOnePoingInfo" onclick="location.href='https://www.oliveyoung.co.kr/store/mypage/getCJOnePointInfo.do'+'?'+ getEventParameterString({t_page: '마이페이지', t_click: 'CJONE포인트'})">
							<span class="tit">CJ ONE 포인트</span>
							<a class="num" href="javascript:;">6,680<em class="unit">P</em></a>
						</li>
						<li id="couponList" onclick="location.href='https://www.oliveyoung.co.kr/store/mypage/getCouponList.do'+'?'+ getEventParameterString({t_page: '마이페이지', t_click: '쿠폰'})">
							<span class="tit">쿠폰</span>
							<a class="num" href="javascript:;" data-attr="마이페이지^쿠폰^쿠폰함이동">2<em class="unit">개</em></a>
						</li>
						<li id="depositList" onclick="location.href='https://www.oliveyoung.co.kr/store/mypage/getDepositList.do'+'?'+ getEventParameterString({t_page: '마이페이지', t_click: '마이월렛_예치금'})">
							<span class="tit">예치금</span>
							<a class="num" href="javascript:;">0<em class="unit">원</em></a>
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
								<li class="subMenu"><a href="javascript:;" mymenuid="0101" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getOrderList.do" data-attr="마이페이지^메뉴^주문/배송 조회" data-tracking-name="주문배송조회 클릭" data-tracking-properties="t_page=마이페이지&amp;t_click=주문배송조회">주문/배송 조회</a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0102" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getOrderCancelList.do" data-attr="마이페이지^메뉴^취소/반품/교환 내역" data-tracking-name="취소반품교환내역 클릭" data-tracking-properties="t_page=마이페이지&amp;t_click=취소반품교환내역">취소/반품/교환 내역</a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0103" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getDealList.do" data-attr="마이페이지^메뉴^거래증빙서류 확인" data-tracking-properties="t_page=마이페이지&amp;t_click=거래증빙서류확인">거래증빙서류 확인</a></li>
							</ul>
							<ul class="line">
								<li class="subMenu"><a href="javascript:;" mymenuid="0201" data-ref-linkurl="https://www.oliveyoung.co.kr/store/cart/getCart.do" data-attr="마이페이지^메뉴^장바구니" data-tracking-properties="t_page=마이페이지&amp;t_click=장바구니">장바구니</a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0202" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getWishList.do" data-attr="마이페이지^메뉴^좋아요" data-tracking-properties="t_page=마이페이지&amp;t_click=좋아요">좋아요</a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0203" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getReWhsgList.do" data-attr="마이페이지^메뉴^재입고 알림" data-tracking-name="재입고알림 클릭" data-tracking-properties="t_page=마이페이지&amp;t_click=재입고알림">재입고 알림</a></li>
							</ul>
							<ul class="line">
								<li class="subMenu"><a href="javascript:common.wlog('mypage_giftcard');" mymenuid="0300" data-ref-linkurl="https://www.oliveyoung.co.kr/store/myGiftCard/getMyGiftCard.do" data-attr="마이페이지^메뉴^기프트카드" data-tracking-name="기프트카드 클릭" data-tracking-properties="t_page=마이페이지&amp;t_click=마이월렛_기프트카드">기프트카드</a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0301" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getCJOnePointInfo.do" data-attr="마이페이지^메뉴^CJ ONE 포인트" data-tracking-name="CJONE포인트 클릭" data-tracking-properties="t_page=마이페이지&amp;t_click=CJONE포인트">CJ ONE 포인트</a></li>
								<li class="subMenu"><a href="javascript:common.wlog('mypage_coupon');" mymenuid="0302" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getCouponList.do" data-attr="마이페이지^메뉴^쿠폰" data-tracking-properties="t_page=마이페이지&amp;t_click=쿠폰">쿠폰</a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0303" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getDepositList.do" data-attr="마이페이지^메뉴^예치금" data-tracking-properties="t_page=마이페이지&amp;t_click=마이월렛_예치금">예치금</a></li>
								
							</ul>
						</li>
						<li><h2>마이 활동</h2>
							<ul>
								<li class="subMenu"><a href="javascript:;" mymenuid="0401" data-ref-linkurl="https://www.oliveyoung.co.kr/store/counsel/getQnaList.do" data-attr="마이페이지^메뉴^1:1문의내역" data-tracking-name="1대1문의 클릭" data-tracking-properties="t_page=마이페이지&amp;t_click=문의현황_1대1문의">1:1문의내역</a></li>
								
								<li class="subMenu"><a href="javascript:;" mymenuid="0402" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getGdasList.do" data-attr="마이페이지^메뉴^리뷰" data-tracking-properties="t_page=마이페이지&amp;t_click=리뷰">리뷰 (<span class="num_review" id="_gdasPossibleTotCnt">0</span>)<img src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/icon_lnb_new2.png" class="new" id="_newGdasPossible" style="display: none;" alt="신규 리뷰 작성"></a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0403" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getGoodsQnaList.do" data-attr="마이페이지^메뉴^상품Q&amp;A내역" data-tracking-name="상품QnA 클릭" data-tracking-properties="t_page=마이페이지&amp;t_click=문의현황_상품QnA">상품Q&amp;A내역</a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0404" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getMyEventList.do" data-attr="마이페이지^메뉴^이벤트 참여 현황" data-tracking-name="이벤트참여현황 클릭" data-tracking-properties="t_page=마이페이지&amp;t_click=이벤트참여현황">이벤트 참여 현황</a></li>

								<li class="subMenu"><a href="javascript:;" mymenuid="0405" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getMyOllyoungList.do" data-attr="마이페이지^메뉴^올영체험단 리뷰" data-tracking-properties="t_page=마이페이지&amp;t_click=올영체험단리뷰">체험단 리뷰</a></li>
							</ul>
						</li>
						<li><h2>마이 정보</h2>
							<ul>
								<li class="subMenu"><a href="javascript:;" mymenuid="0501" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getMktReceiptInfo.do" data-attr="마이페이지^메뉴^회원정보 수정" data-tracking-properties="t_page=마이페이지&amp;t_click=회원정보수정">회원정보 수정</a></li>
								<li class="subMenu"><a href="javascript:;" mymenuid="0502" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getDeliveryInfo.do" data-attr="마이페이지^메뉴^배송지/환불계좌" data-tracking-name="배송지환불계좌 클릭" data-tracking-properties="t_page=마이페이지&amp;t_click=배송지환불계좌">배송지/환불계좌</a></li>
								<li class="subMenu"><a href="javascript:common.wlog('mypage_intereststore');" mymenuid="0505" data-ref-linkurl="https://www.oliveyoung.co.kr/store/store/getStoreMain.do?tabType=favorTab" data-attr="마이페이지^메뉴^관심 매장 관리" data-tracking-name="관심매장 클릭" data-tracking-properties="t_page=마이페이지&amp;t_click=관심매장">관심 매장 관리</a></li>
								
								<li class="subMenu"><a href="javascript:;" mymenuid="0504" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/custInfoOut.do" data-attr="마이페이지^메뉴^회원탈퇴" data-tracking-properties="t_page=마이페이지&amp;t_click=회원탈퇴">회원탈퇴</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<!-- //마이페이지 SUB 메뉴 -->

<!-- //마이페이지 SUB -->
<script src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.side.js?dumm=202311020005"></script>
<script>
	$(window).ready(function(){
	    mypage.side.init();
	    
	    if(_isLogin) {
	    	var gdasPossibleTotCnt = sessionStorage.getItem("gdasPossibleTotCnt");
	    	// if( common.isEmpty(gdasPossibleTotCnt) ) {
	    		common.Ajax.sendJSONRequest(
						"POST"
					  , _baseUrl + "mypage/getGdasPossibleTotCnt.do"
					  , null
					  , function(res) {
						  if(res.result != null && res.result > 0) {
							  sessionStorage.setItem("gdasPossibleTotCnt", res.result.numberFormat());
						} else {
							 sessionStorage.setItem("gdasPossibleTotCnt", "0");							
						}
						$("#_gdasPossibleTotCnt").text( sessionStorage.getItem("gdasPossibleTotCnt") );
						  
				  });
	    	//} else {
	    	//	$("#_gdasPossibleTotCnt").text( gdasPossibleTotCnt );
	    	//}
	    	
	    	// [3283136] 마이페이지 PC GUI 개편 및 장바구니 버튼 추가 요청의 件(CHY)
	    	// 신규 리뷰 작성 여부의 따라 N 아이콘 표출
    		var lastCheckDtime = localStorage.getItem("lastCheckDtime");
           	common.Ajax.sendJSONRequest(
       				"POST"
       			  , _baseUrl + "mypage/getNewGdasPossibleCnt.do"
       			  , {"lastCheckDtime" : lastCheckDtime}
       			  , function(res) {
     				  if(res.result > 0) {
     					$("#_newGdasPossible").show();
     				  } else {
     					  $("#_newGdasPossible").hide();
     				  }
       		  });
	    }
	    
	});
</script>


			
			<div class="mypage-conts">
				<script src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.header.js?dumm=202311020005"></script>
				<script>
					$(window).ready(function(){
						mypage.header.init();
					});
				</script>
				







		<!-- 마이페이지 컨텐츠 -->





<!-- //마이페이지 컨텐츠 스크립트 -->



			</div>
		</div>
		
	</div>
	
<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>