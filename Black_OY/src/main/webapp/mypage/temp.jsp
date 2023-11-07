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
<div>
</div>



<div class="infoUpgr" style="display:none;">
	<p>
		<a class="ie" href="https://www.microsoft.com/ko-kr/download/internet-explorer.aspx" target="_blank">ie 업그레이드</a>
		<a class="cr" href="https://www.google.co.kr/chrome/browser/desktop/" target="_blank">크롬 업그레이드</a>
		<a class="ff" href="https://www.mozilla.org/ko/firefox/new/" target="_blank">파폭 업그레이드</a>
		<a class="op" href="http://www.opera.com/ko/download" target="_blank">오페라 업그레이드</a>
	</p>
</div>



<iframe allow="join-ad-interest-group" data-tagging-id="AW-416582525" data-load-time="1699341019810" height="0" width="0" style="display: none; visibility: hidden;" src="https://td.doubleclick.net/td/rul/416582525?random=1699341019798&amp;cv=11&amp;fst=1699341019798&amp;fmt=3&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be3b60v887520987&amp;gcd=11l1l1l1l1&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fwww.oliveyoung.co.kr%2Fstore%2Fmypage%2FmyPageMain.do%3Ft_page%3DLuxe%2520Edit%2520%25EA%25B7%25B8%25EB%259E%259C%25EB%2593%259C%2520%25EC%2598%25A4%25ED%2594%2588%2520%25EA%25B8%25B0%25ED%259A%258D%25EC%25A0%2584%2520%25EC%2583%2581%25EC%2584%25B8%26t_click%3D%25EC%2583%2581%25EB%258B%25A8%25ED%2597%25A4%25EB%258D%2594%26t_header_type%3D%25EB%25A7%2588%25EC%259D%25B4%25ED%258E%2598%25EC%259D%25B4%25EC%25A7%2580&amp;ref=https%3A%2F%2Fwww.oliveyoung.co.kr%2Fstore%2Fplanshop%2FgetPlanShopDetail.do%3FdispCatNo%3D500000102780092%26t_page%3D%25EB%259E%25AD%25ED%2582%25B9%26t_click%3DGNB%26t_gnb_type%3DLUXE%2520EDIT%26t_swiping_type%3DN&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EB%A7%88%EC%9D%B4%ED%8E%98%EC%9D%B4%EC%A7%80%20%7C%20%EC%98%AC%EB%A6%AC%EB%B8%8C%EC%98%81&amp;auid=1852664292.1697784846&amp;fledge=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Chromium%3B118.0.5993.120%7CGoogle%2520Chrome%3B118.0.5993.120%7CNot%253DA%253FBrand%3B99.0.0.0&amp;uamb=0&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dgtag.config"></iframe><div id="Wrapper">
	<div id="skip_navi"><a href="#Container">본문바로가기</a></div>
	
	<!-- 상단 띠 배너 - 어워즈관 S -->
	<div class="banUpperBox" style="display: none">
		<div class="inner">
			<a href="javascript:common.link.commonMoveUrl('amusement/intro.do')" id="top_banner_image"></a>
			<a href="" class="btn_upper_close">오늘 안 보기</a>
		</div>
		<div class="dimBan"><div class="in"></div></div>
	</div>
	<div class="dimBanWhite" style="display:none"><div class="in"></div></div>
	<div class="dimBanBlack"></div>
	<!-- 상단 띠 배너 - 어워즈관 E -->

	<!-- 상단 띠 배너 - IE대응 S -->
	<div class="banUpperBox2">
		<div class="inner">
			<p>고객님의 브라우저에서는 올리브영 온라인몰이 정상 동작하지 않습니다.<br>다른 브라우저로 접속해주세요.</p>
			<ul>
				<li>크롬</li>
				<li>엣지</li>
				<li>사파리</li>
			</ul>
		</div>
	</div>
	<!-- 상단 띠 배너 - IE대응 E -->

<script>
	$(window).ready(function(){
		//넷퍼넬 키 반환 호출(전역)
		NetFunnel_Complete();
		
		//넷퍼넬 키 반환 호출(main.do) act_03
		var checkNfl = "";
		if(checkNfl != undefined && checkNfl != "" ){
			NetFunnel_Complete({cookie_id:"NetFunnel_Main", action_id:"act_03"});
		}  

	    common.header.init();

		$('.btn_upper_close').on('click', function(){
	        common.bann.setPopInfo("awardsTopBanner", "noNeed");
		    $('.banUpperBox').hide();
		    $('.dimBanWhite').hide();
		    //오늘 하루 안보기 소스 넣어주세요.
		});

		var parser = new UserAgentUtil(navigator.userAgent);
		if(parser.getBrowser().name.indexOf("msie") >= 0) {
			$(".banUpperBox2").show();
		}
	});
	
	function awardsMoveBan(){
		console.log(0);
		console.log("oyawards_headerbanner");
		common.wlog("oyawards_headerbanner");
		    var $banUpperBox = $('.banUpperBox'),
		    	$dimBan = $banUpperBox.children('.dimBan'),
		    	$dimBanWhite = $('.dimBanWhite');

		    $dimBan.animate({'width': '100%'}, 200);
		    $dimBanWhite.show().animate({'left': 0}, 200).delay('200').queue(function(){
		        $dimBan.children('.in').show().animate({'width': '100%'}, 200);
		        $dimBanWhite.children('.in').show().animate({'left':0}, 200);
		    });
		    /* $('.dimBanWhite').animate({'left': 0}, 200).queue(function(){
		        $('.dimBanBlack').show();
		        $('.dimBanBlack').animate({'opacity': 1}, 500);
		    }); 제거  */

		    setTimeout(function(){
		        //alert('링크이동');
		    	location.href= "/store/awards/getAwardsMain.do?bannerGo=Y";
		    }, 700);
	    var $banUpperBox = $('.banUpperBox'),
	    	$dimBan = $banUpperBox.children('.dimBan');
	    $dimBan.animate({'width': '100%'}, 200);
	    $('.dimBanWhite').animate({'left': 0}, 200).queue(function(){
	        $('.dimBanBlack').show();
	        $('.dimBanBlack').animate({'opacity': 1}, 500);
	    });

	    setTimeout(function(){
	        //alert('링크이동')
	    	common.link.commonMoveUrl("awards/getAwardsMain.do?bannerGo=Y");
	    }, 500);
	}
</script>

<!-- RecoBell Script Start -->
<script type="text/javascript" src="//logger.ai.oliveyoung.co.kr/js/eglpcidgen.min.js"></script>
<script src="https://static.oliveyoung.co.kr/pc-static-root/js//common/libs/sha256.js"></script>
<script type="text/javascript">
try {
	var recoSsoMbrNo = 'M0000023155618';
	var recoCuid = '8b47cf9f-efd1-48e4-8f83-10ee8a07945b';
	// User ID 암호화
	var hashedRecoSsoMbrNo = CryptoJS.SHA256(recoSsoMbrNo).toString();
	
	if(recoSsoMbrNo === 'null'){
	    hashedRecoSsoMbrNo = "";
	}

}catch(e){}

</script>
<!-- RecoBell Script End  -->

<!--Pixel init Script Start-->
<script>
	! function(b, e, f, g, a, c, d) {
		b.fbq || (a = b.fbq = function() {
			a.callMethod ? a.callMethod.apply(a, arguments) : a.queue.push(arguments)
		}, b._fbq || (b._fbq = a), a.push = a, a.loaded = !0, a.version = "2.0", a.queue = [], c = e.createElement(f), c.async = !0, c.src = g, d = e.getElementsByTagName(f)[0], d.parentNode.insertBefore(c, d))
	}(window, document, "script", "https://connect.facebook.net/en_US/fbevents.js");
	fbq("init", "1926423667616265");
	fbq("track", "PageView");
</script>
<!--Pixel init Script End-->


<div id="Container">
	
	<div id="Contents">
		
			<div class="mypage-head rate_04">
			<h1 class="tit"><a href="https://www.oliveyoung.co.kr/store/mypage/myPageMain.do">마이페이지</a></h1>
			
			<div class="grd-box">
				<div class="info_user clrfix">
					
						<img src="https://image.oliveyoung.co.kr/uploads/images/mbrProfile/2023/11/06/1699251894483.png" alt="" onerror="common.errorProfileImg(this);" onload="common.onLoadProfileImg(this, 120);" style="display: none;">
					
					<div class="thum">
						<span class="bg"></span>
						
							
								<img src="https://image.oliveyoung.co.kr/uploads/images/mbrProfile/2023/11/06/1699251894483.png?RS=120x120&amp;CS=120x120" alt="" class="profileThum_s" style="background:url(https://static.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg) no-repeat 0 0;background-size:120px">
							
							
						
					</div>
					<c:forEach items="${ userInfo }" var="info">
						
						<p class="txt">
						<%-- 등급 --%>${ info.uGrade } <strong class="name"><%-- 이름 --%>${ info.uName }</strong>님 반갑습니다.
					</p></c:forEach>
					<ul class="mem_opt">
						
						<li id="membershipBenefit"><a href="javascript:common.wlog('mypage_coupon_onbenefit_tab');" onclick="mypage.header.getMembership()">올리브 멤버스 라운지</a></li>
						
						<li id="profileModify"><a href="javascript:common.wlog('mypage_profile');" onclick="mypage.header.goReviewerProfile('VHdCeVV6R3J1MTBMaWFjcWllYWRjZz09', {t_page: '마이페이지', t_click: '나의프로필이미지'})">나의 프로필</a></li>
					</ul>
				</div>

				
				

				<div class="point-box ">
					<ul class="infor clrfix" id="pointInfo">
						<li id="cjOnePoingInfo" onclick="location.href='https://www.oliveyoung.co.kr/store/mypage/getCJOnePointInfo.do'+'?'+ getEventParameterString({t_page: '마이페이지', t_click: 'CJONE포인트'})">
							<span class="tit">CJ ONE 포인트</span>
							<a class="num" href="javascript:;"><%= request.getAttribute("userCoupon")%><em class="unit">P</em></a>
						</li>
						<li id="couponList" onclick="location.href='https://www.oliveyoung.co.kr/store/mypage/getCouponList.do'+'?'+ getEventParameterString({t_page: '마이페이지', t_click: '쿠폰'})">
							<span class="tit">쿠폰</span>
							<a class="num" href="javascript:;" data-attr="마이페이지^쿠폰^쿠폰함이동"><%-- 쿠폰갯수 --%><em class="unit">개</em></a>
						</li>
						<li id="depositList" onclick="location.href='https://www.oliveyoung.co.kr/store/mypage/getDepositList.do'+'?'+ getEventParameterString({t_page: '마이페이지', t_click: '마이월렛_예치금'})">
							<span class="tit">예치금</span>
							<a class="num" href="javascript:;"><%-- 예치금 잔액 --%><em class="unit">원</em></a>
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
								
								<li class="subMenu"><a href="javascript:;" mymenuid="0402" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getGdasList.do" data-attr="마이페이지^메뉴^리뷰" data-tracking-properties="t_page=마이페이지&amp;t_click=리뷰">리뷰 (<span class="num_review" id="_gdasPossibleTotCnt"><%-- 리뷰갯수 --%></span>)<img src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/icon_lnb_new2.png" class="new" id="_newGdasPossible" style="display: none;" alt="신규 리뷰 작성"></a></li>
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
			<div class="title-area2">
				<h2 class="tit">주문/배송 조회<em>(최근 1개월)</em></h2>
				<a class="btnMore" id="orderListMore" href="javascript:common.link.moveOrderList(getEventParameterString({t_page: '마이페이지', t_click: '주문배송조회'}));" data-attr="마이페이지^주문배송조회_더보기^더보기">더보기</a>
			</div>
			<div class="layer_pop_wrap" id="service_survey" style=""></div>
			<a href="javascript:common.link.moveOrderList(getEventParameterString({t_page: '마이페이지', t_click: '주문배송조회'}));" class="order_view" data-attr="마이페이지^주문배송조회_요약건수">
				<ul class="mypage-step">
					<li>
						<em>
							
							<%-- 주문접수 --%>
						</em>
						<span>주문접수</span>
					</li>
					<li>
						<em>
							
							<%-- 결제완료 --%>
						</em>
						<span>결제완료</span>
					</li>
					<li>
						<em>
							
							<%-- 배송준비중 --%>
						</em>
						<span>배송준비중</span>
					</li>
					<li>
						<em>
							
							<%-- 배송중 --%>
						</em>
						<span>배송중</span>
					</li>
					<li>
						<em>
							
							<%-- 배송완료 --%>	
						</em>
						<span>배송완료</span>
					</li>
				</ul>
			</a>
			
			
			<div class="title-area mgT15">
				<h2 class="tit">좋아요</h2>
				<a class="btnMore" id="wishListMore" href="javascript:common.link.moveWishList(getEventParameterString({t_page: '마이페이지', t_click: '좋아요'}))">더보기</a>
			</div>
		
			<!-- 좋아요 상품 목록 -->
			
			<div class="list-four"><!-- 상품 3개 list-three, 상품 4개 list-four -->
				
					
						<ul class="cate_prd_list" id="wishList" name="wishList"><!-- 상품 4개 일때 -->
							
								<li <%-- 상품id --%>>
									<div class="prd_info"><a href="javascript:;" class="prd_thumb goodsList" data-ref-goodsno="A000000166675" data-ref-dispcatno="" data-ref-itemno="001"><span class="thumb_flag best">베스트</span><%-- 상품 이미지 --%></a><div class="prd_name"><a href="javascript:;" class="goodsList" data-ref-goodsno="A000000166675" data-ref-dispcatno="" data-ref-itemno="001"><span class="tx_brand">아누아</span><p class="tx_name">[리필기획] 아누아 어성초 77 수딩 토너 350ml 리필 기획세트(350ml+350ml리필)</p></a></div><button class="btn_zzim jeem on" data-ref-goodsno="A000000166675"><span>찜하기후</span></button><p class="prd_price"><span class="tx_org"><span class="tx_num">49,000</span>원 </span><span class="tx_cur"><span class="tx_num">34,000</span>원 </span></p><p class="prd_flag"><span class="icon_flag sale">세일</span></p></div>

								</li>
							
								<li data-goods-no="A000000188803">
									<div class="prd_info"><a href="javascript:;" class="prd_thumb goodsList" data-ref-goodsno="A000000188803" data-ref-dispcatno="" data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018880304ko.jpg?l=ko" alt="[11월 블프특가]아이디얼 포 맨&nbsp;퍼펙트 올인원 탄력 기획(올인원 30ml+탄력크림 30ml 증정)" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" class="goodsList" data-ref-goodsno="A000000188803" data-ref-dispcatno="" data-ref-itemno="001"><span class="tx_brand">아이디얼포맨</span><p class="tx_name">[11월 블프특가]아이디얼 포 맨&nbsp;퍼펙트 올인원 탄력 기획(올인원 30ml+탄력크림 30ml 증정)</p></a></div><button class="btn_zzim jeem on" data-ref-goodsno="A000000188803"><span>찜하기후</span></button><p class="prd_price"><span class="tx_org"><span class="tx_num">29,000</span>원 ~</span><span class="tx_cur"><span class="tx_num">19,860</span>원 ~</span></p><p class="prd_flag"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span><span class="icon_flag gift">증정</span><span class="icon_flag delivery">오늘드림</span></p></div>

								</li>
							
								<li data-goods-no="A000000190280">
									<div class="prd_info"><a href="javascript:;" class="prd_thumb goodsList" data-ref-goodsno="A000000190280" data-ref-dispcatno="" data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019028015ko.jpg?l=ko" alt="[유트루PICK/한정기획] 라네즈 크림스킨(170ml+170ml리필)" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" class="goodsList" data-ref-goodsno="A000000190280" data-ref-dispcatno="" data-ref-itemno="001"><span class="tx_brand">라네즈</span><p class="tx_name">[유트루PICK/한정기획] 라네즈 크림스킨(170ml+170ml리필)</p></a></div><button class="btn_zzim jeem on" data-ref-goodsno="A000000190280"><span>찜하기후</span></button><p class="prd_price"><span class="tx_org"><span class="tx_num">33,000</span>원 </span><span class="tx_cur"><span class="tx_num">23,760</span>원 </span></p><p class="prd_flag"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span><span class="icon_flag delivery">오늘드림</span></p></div>

								</li>
							
						</ul>
					
					
				
			</div>
			<!-- //좋아요 상품 목록 -->
		
			<div class="area-over" id="cousel">
				<div class="left">
					<div class="title-area">
						<h2 class="tit">1 : 1 문의내역</h2>
						<a class="btnMore" id="qnaListMore" href="javascript:common.link.moveQnaList('','마이페이지');">더보기</a>
					</div>
					<div class="list-customer">
						<ul>
	
		
		
									<li class="nodata">최근 1개월간 문의하신 내용이 없습니다.</li>
		
									
						</ul>
					</div>
				</div>
				<div class="right" id="goodsQna">
					<div class="title-area">
						<h2 class="tit">상품Q&amp;A내역</h2>
						<a class="btnMore" id="goodsQnaListMore" href="javascript:common.link.moveGoodsQnaList(getEventParameterString({t_page: '마이페이지', t_click: '문의현황_상품QnA내역'}))">더보기</a>
					</div>
		
					<div class="list-customer">
						<ul>
	
		
		
							<li class="nodata">최근 1개월간 문의하신 내용이 없습니다.</li>
		
	
						</ul>
					</div>
			
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