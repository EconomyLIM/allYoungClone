<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/inc/include.jspf" %>
<%@ include file="/WEB-INF/inc/session_auth.jspf" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>회원정보 수정 완료│CJ ONE</title>
<meta name="Description" content="회원님의 소중한 정보가 수정되었습니다." />
<meta http-equiv="X-UA-Compatible" content="IE=edge ,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes">
<meta name="format-detection" content="telephone=no" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Pragma" content="no-cache" />

<link rel="shortcut icon" href="https://www.cjone.com/cjmweb/images/ico/favicon.ico"
	type="images/x-ico" />
<link rel="alternate"
	href="https://m.cjone.com:8443/cjmmobile/setup/memberInfoupdate.do?return_url=close" />
<link rel="stylesheet" href="../../css/CJbase.css" />
<link rel="stylesheet" href="../../css/CJparticipate.css" />
<script>
	// google analytics 사용안함 처리했을 때 ga function이 없어서 에러나던 부분 처리.
	window.ga = function() {
	}
</script>
<script type="text/javascript">
	var digitalData = {
		page : {
			pageInfo : {
				pageName : "[P]회원^회원정보 수정^수정정보 입력^수정완료",
				siteType : "P",
				LayerPageName : "",
				searchKeywords : "",
				searchResult_account : "",
				searchType : ""
			}
		},
		user : {
			loginStatus : "logged in",
			custID : "2b2fda3471a6d3a1880397dffeff6bd6",
			level : "10"
		},
		shop : {
			location : "",
			brand : "",
			name : ""
		},
		consult : {
			type : ""
		},
		myshop : {
			name : "",
			brand : ""
		},
		click : {
			track : ""
		},
		order : {
			productName : "",
			payment_method : "",
			ordertype : "",
			auto_charging_basis_amount : "",
			auto_charging_date : "",
			auto_charging_price : "",
			cancel_amount : "",
			price : ""
		}
	};
</script>
</head>


<body>
	<!--skip navigation-->
	<div class="skipNavi">
		<a href="#contentsWrap">본문으로 바로가기</a>
	</div>
	<!--//skip navigation-->

	<div id="bodyWrap" class="wide">

		<!--header-->

		<form method="post" id="getCoopForm" name="getCoopForm">
			<input type="hidden" name="get_coopco_cd" id="get_coopco_cd"
				value="7030"> <input type="hidden" name="get_brnd_cd"
				id="get_brnd_cd" value="3000"> <input type="hidden"
				name="get_mcht_no" id="get_mcht_no" value="3000">
		</form>

		<form id="headerFrm" method="get">
			<input type="hidden" name="h_search_keyword" id="h_search_keyword">
		</form>
		<!-- 참여사 관련 판단 로직 변경 2016-06-20 pjh0416 -->

		<!--header-->
		<div id="part_headerWrap">
			<div class="part_header_wrap">
				<h1 class="cj_logo">
					<span class="logo">CJ ONE</span> TRUE LIFESTYLE MEMBERSHIP</h1>
				<div id="coop_header_wrap"></div>
			</div>
		</div>

		<!--//header-->

		<!--contents-->
		<div id="contentsWrap">
			<form name="form1" id="form1" method="post"
				action="">
				<input type="hidden" name="coopco_cd" id="coopco_cd" value="7030" />
				<input type="hidden" name="brnd_cd" id="brnd_cd" value="3000" /> <input
					type="hidden" name="mcht_no" id="mcht_no" value="3000" /> <input
					type="hidden" name="coop_return_url" id="coop_return_url"
					value="https://www.oliveyoung.co.kr/store/mypage/getMktReceiptInfo.do?refresh=Y" />
				<input type="hidden" name="join_coopco_list" id="join_coopco_list"
					value="" /> <input type="hidden" id="under_14" name="under_14"
					value="" />
			</form>
			<div id="contents">
				<div class="location_wrap">
					<div class="location">
						<a href="#" class="home"><span
							class="haze">홈</span></a><a
							href="pwdCheck.jsp" class="now"><span>회원정보 수정</span></a>
					</div>
				</div>
				<div class="cont_header">
					<h1 class="h1_tit">회원정보 수정</h1>
					<p class="h_desc">회원님의 소중한 정보를 안전하게 관리하세요.</p>
				</div>
				<div class="cont_area">
					<div class="mypage_sec">
						<div class="regi_complete">
							<span class="bg face_type2"></span>
							<p class="h2_tit">회원님의 정보가 수정되었습니다.</p>
							<p class="fc_gray">잠시 후 올리브영 페이지로 이동됩니다. [바로가기] 버튼을 클릭하시면 바로
								이동됩니다.</p>

							<div class="btn_center">


								<a href="<%=contextPath %>/olive/usermodify.do"
									class="btn btn_em" title="올리브영 웹사이트">바로가기</a>
								<script type="text/javascript">
									setTimeout(() => {
				    	  				window.location.href="<%=contextPath %>/olive/usermodify.do";
									}, 5000); 
								</script>
							</div>
						</div>
						<!--banner type a-->
						<div class="banner_sec">

							<!--banner type a-->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--//컨텐츠-->

		<div id="footer">


			<!--20191021 CJ ONE APP 사업자 정보 노출 전체 영역-->
			<div class="footer_wrap">

				<div class="site_info">
					<span class="ceo_info">대표이사 유인상</span>
					<address>주소 04323 서울시 용산구 한강대로 366 트윈시티 10층</address>
					<!--20191021 CJ ONE APP 사업자 정보 주소 변경-->
					<span class="customer_info">CJ ONE 고객센터 1577-8888</span> <span
						class="license_num">사업자 등록번호 104-81-36565</span>
				</div>
				<!--20191112 CJONE APP 사업자 정보 노출 추가-->
				<div class="site_info pd0">
					<span class="ceo_info">호스팅사업자 CJ올리브네트웍스</span> <span
						class="license_num">통신판매업신고번호 2017-서울용산-0451</span>
				</div>
				<!--//20191112 CJONE APP 사업자 정보 노출 추가-->
				<p class="copyright">
					<span class="img"><img
						src="https://www.cjone.com/cjmweb/images/common/logo_cjolivenetworks_footer.png"
						alt="CJ 올리브넥트웍스"></span> Copyright (c)2016 CJ OLIVENETWORKS. All
					Rights Reserved
				</p>

				<div class="fixedTop" data-control="goTop">
					<a href="#headerWrap" title="페이지 처음으로 이동"><span class="haze">TOP</span></a>
				</div>

			</div>
			<!--// 20191021 CJ ONE APP 사업자 정보 노출 전체 영역 -->
		</div>
	</div>

</body>
</html>