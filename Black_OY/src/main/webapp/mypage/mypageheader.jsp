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
<link rel="stylesheet" href="../css/style.css">
<title>블랙올리브영 온라인몰</title>

</head>
<body>


<div class="mypage-head rate_04">
			<h1 class="tit"><a href="https://www.oliveyoung.co.kr/store/mypage/myPageMain.do">마이페이지</a></h1>
			
			<div class="grd-box">
				<div class="info_user clrfix">
					
					<div class="thum">
						<span class="bg"></span>
						
							
								<!-- 회원프로필 이미지 출력 -->
								<img src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg" alt="" onerror="common.errorImg(this);">
							
						
					</div>
					<p class="txt">
						<!-- 회원등급  --> <strong class="name"><!-- 회원이름 --></strong>님 반갑습니다.
					</p>
					<ul class="mem_opt">
						
						<li id="membershipBenefit"><a href="javascript:common.wlog('mypage_coupon_onbenefit_tab');" onclick="mypage.header.getMembership()">올리브 멤버스 라운지</a></li>
						
						<li id="profileModify"><a href="javascript:common.wlog('mypage_profile');" onclick="mypage.header.goReviewerProfile('VHdCeVV6R3J1MTBMaWFjcWllYWRjZz09', {t_page: '마이페이지', t_click: '나의프로필이미지'})">나의 프로필</a></li>
					</ul>
				</div>

				
				

				<div class="point-box ">
					<ul class="infor clrfix" id="pointInfo">
						<li id="cjOnePoingInfo" onclick=""><!-- onclick 값은 마이페이지-cjone포인트 페이지로 이동 -->
							<span class="tit">CJ ONE 포인트</span>
							<a class="num" href="javascript:;"><!-- 회원 보유 포인트 --><em class="unit">P</em></a>
						</li>
						<li id="couponList" onclick=""><!-- onclick값은 마이페이지-쿠폰 페이지로 이동 -->
							<span class="tit">쿠폰</span>
							<a class="num" href="javascript:;" data-attr="마이페이지^쿠폰^쿠폰함이동"><!-- 회원 보유 쿠폰 갯수 --><em class="unit">개</em></a>
						</li>
						<li id="depositList" onclick="location.href='https://www.oliveyoung.co.kr/store/mypage/getDepositList.do'+'?'+ getEventParameterString({t_page: '마이페이지', t_click: '마이월렛_예치금'})"><!-- 예치금 페이지로 이동 -->
							<span class="tit">예치금</span>
							<a class="num" href="javascript:;"><!-- 회원의 예치금이 얼마 --><em class="unit">원</em></a>
						</li>
						
					</ul>
				</div>
			</div>
		</div>




</body>
</html>