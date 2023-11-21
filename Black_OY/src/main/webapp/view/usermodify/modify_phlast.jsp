<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<%@ include file="/WEB-INF/inc/session_auth.jspf"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<meta http-equiv="Content-Language" content="ko-KR">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, viewport-fit=cover">
<meta name="format-detection" content="telephone=no">
<link href="https://img4.kmcert.com/kmcis/new_web/css/common.css?ver=202206201405"
	media="screen" rel="stylesheet">
<link
	href="https://img4.kmcert.com/kmcis/new_web/css/site.css?ver=202211241512"
	media="screen" rel="stylesheet">
<script src="https://img4.kmcert.com/kmcis/new_web/js/jquery.min.js"></script>
<script src="https://img4.kmcert.com/kmcis/new_web/js/common.js"></script>
<script src="https://img4.kmcert.com/kmcis/new_web/js/design.js"></script>
<script src="https://img4.kmcert.com/comm/js/kcComm.js"></script>
<script src="https://img4.kmcert.com/kmcis/comm/js/kmcisComm.js"></script>
<script src="https://img4.kmcert.com/kmcis/qr_web/js/kmcisWeb_v3.js?ver=20220622"></script>

<title>휴대폰 인증 정보 입력 | 본인확인서비스-한국모바일인증(주)</title>
<script type="text/javascript">
	window.onload = function() {

	}

	function errAlert() {
		alert('금일 휴대폰인증 오류가 0회 발생하였습니다.\n5회 인증 실패시 본인확인서비스가 제한됩니다');
	}

	function img_reload() {
		// 새로고침 방법 변경 - 2014.05.29  kmcweb1
		var d = new Date();
		document.getElementById("captcha_div").innerHTML = "<img src='/KmcCaptcha.png?var1="
				+ d.getTime() + "' alt='보안문자'/>";
	}

	function play_sound() {
		var d = new Date();

		var agent = window.navigator.userAgent;
		var ie = agent.indexOf("MSIE");
		var ie8 = agent.indexOf("IE8");

		var trident = agent.indexOf("Trident");

		if (ie > 0) {
			if (ie8 > 0) {
				document.getElementById('ifmAudioCaptcha').src = '/audio.wav';
			} else {
				document.getElementById("audioSupport").innerHTML = "음성 <BGSOUND  src='/audio.wav?var1="
						+ d.getTime() + "'  loop='1' />";
			}
		} else {
			if (trident > 0) {
				document.getElementById("audioSupport").innerHTML = "음성 <BGSOUND  src='/audio.wav?var1="
						+ d.getTime() + "'  loop='1' />";
			} else {
				document.getElementById("audioSupport").innerHTML = "<audio controls autoplay src='/audio.wav?var1="
						+ d.getTime() + "' ></audio>";
			}
		}
	}

	function call_check() {
		// 이통사 서비스 점검 체크
		//		if(!checkCommId('SKT')) {
		//			return;
		//		}

		var val = document.getElementById("Sex").value;

		call_cplogn();

	}

	function call_check_noMsg() {
		// 이통사 서비스 점검 체크
		//		if(!checkCommId('SKT')) {
		//			return;
		//		}

		call_cplogn_noMsg();

	}
</script>
</head>
<body ondragstart="return false" onselectstart="return false"
	oncontextmenu="return false" style="zoom: 1;">
	<!-- 이동통신사 장애 알림 -->
	<script type="text/javascript">
		function checkCommId(telecom) {
			var result1 = "1";
			var result2 = "2";
			var result3 = "3";
			var result4 = "4";

			return result3;
		}
	</script>

	<div id="wrap">
		<header id="header">
			<script type="text/javascript">
				var isDupClick = false;

				function goTab(tabGun) {
					var f = document.goTabForm;

					if (isDupClick) {
						alert('이미 진행중입니다.');
						return;
					}

					if (tabGun == "app") {
						f.action = "https://www.kmcert.com/kmcis/simpleCert_web_v3/kmcisApp01.jsp";
					} else if (tabGun == "sms") {
						f.action = "https://www.kmcert.com/kmcis/web_v4/kmcisSms01.jsp";
					} else {
						f.action = "https://www.kmcert.com/kmcis/simpleCert_web_v3/kmcisApp01.jsp";
					}

					isDupClick = true;

					f.submit();
				}
			</script>
			<form name="goTabForm" method="post" >
				<input type="hidden" name="reqInfo"
					value="FF3C0E7EC1A2A8EF675600B2C421F87785F62E8E44C8B86DCD70D56AB7C7F0A568BDC8D8651D1BBF243F7C764696F8CF672D10627188AFA294140A1631209084E19FEB81795467A64615AAFDAE5B740719746E4A8EADEC98F2990469F1BA5CA8B6E1B0D03AD07AF9F52B0CA872ABCBF4E628D11D66D145166B922D22131E93C20315D4201E97AC7BA481BC177C99049AD4EACBECF473EA47BAC2C46775A8221BD8F5A215DF3535587AE4B272AB34602F057F4DF54510BAD12A74A29E8EB0577A44F136697B0150ADD38180199A806E49D46B552D45888DA8096C427FCBCC0D471EB658B188627536661EDAE7D902034DCBF4B677A1701CD4BBC6AF819EAE0766">
				<input type="hidden" name="returnURL"
					value="30AE4190ABA49F31B0B08B570F0712C134735204AA80C3494155F0BEF3CA1D7E926E6DB3FA4346606FD3BACFD3BF0720F7EC14F53A6FFF982237CFACF3E4F1E1ED7BEC2A3C2A5A793B6BDEA4DB0CE62B">
				<input type="hidden" name="reqInfo1"
					value="E86A3C280320B80B2D3D6FDCD9E36FC3681CD330F86427C701AE21842D3A0DBE">
				<input type="hidden" name="reqInfo2" value="KMC000001-"> <input
					type="hidden" name="reqCommIdStated" value="SKT"> <input
					type="hidden" name="reqCommIdStatedYn" value="N"> <input
					type="hidden" name="reqCriOSYn" value="Y">
			</form>
			<h1>
				<a href="#;"><img
					src="https://img4.kmcert.com/kmcis/new_web/img/logo_pass.png"
					alt="PASS"></a>
			</h1>
			<ul class="gnb_wrap col-2">
				<li onclick="javascript:goTab('app');"><a href="#" id="qr_auth">PASS로
						인증하기</a></li>
				<li class="on" onclick="javascript:goTab('sms');"><a
					title="선택됨" href="#" id="sms_auth">문자(SMS)로 인증</a></li>
			</ul>
		</header>

		<section id="ct" class="certify_user2 certifyWrap certifyWrap_02">
			<form id="cplogn" name="cplogn" method="post"
				action="<%=contextPath%>/olive/nameTelUpdate.do">
				<div class="">
					<fieldset>
						<legend>휴대폰 본인확인 입력</legend>
						<ul class="frm_type">
							<li class="name">
								<h3>
									<label for="username">이름</label>
								</h3>
								<div class="input input_del">
									<input type="text" autocomplete="name" name="userName"
										id="userName" placeholder="성명입력" title="이름" value="">
								</div>
							</li>
							<li class="mynum">
								<h3>
									<label for="mynum1">생년월일/성별</label>
								</h3>
								<ul class="ui_cols">
									<li><span class="input input_mynum"> <input
											type="text" name="Birth" id="Birth" maxlength="6"
											title="주민등록번호 앞 6자리" value=""> <span
											class="mark firsChild" id="mynum1_mark"><i></i><i></i><i></i><i></i><i></i><i></i></span>
									</span></li>
									<li><i></i></li>
									<li><span class="input input_mynum last"> <input
											type="text" name="Sex" id="Sex" maxlength="1"
											title="주민등록번호 7번째 자리" value=""> <span
											class="mark firstChild" id="mynum2_mark"><i></i></span>
									</span> <span class="mynum_after"><code class="blind"></code><i></i><i></i><i></i><i></i><i></i><i></i></span>
									</li>
								</ul>
							</li>
							<li>
								<h3>
									<label for="mobileno">휴대폰번호</label>
								</h3>
								<div class="input input_del">
									<input type="text" name="No" id="No" placeholder="숫자만 입력"
										title="휴대폰번호" maxlength="11" value="">
								</div>
							</li>
							<li>
								<h3>
									<label for="mobileno">보안문자</label>
								</h3>
								<div class="input input_del secur_wrap">
									<div class="num_area" style="width: 60%">
										<div style="width: 100% !important; height: 33px !important;">
											<div class="secret_num" id="captcha_div"
												style="float: left; width: 166px !important;">
												<img src="	https://www.kmcert.com/KmcCaptcha.png" alt="보안문자">
											</div>
											<div class="secuBtn"
												style="display: inline-block; float: left; width: 80px !important; margin-left: 4px; margin-top: 5px;">
												<a href="#" title="새로고침"><img
													src="https://img4.kmcert.com/kmcis/comm/images/img/refresh_big.png"
													style="border: 1px solid gray; border-radius: 6px; width: 46%;"
													alt="새로고침" ></a> <a rel="nofollow" href="#"
													onclick="javascript:play_sound()" title="음성듣기"> <img
													src="https://img4.kmcert.com/kmcis/comm/images/img/sound_big.png"
													alt="음성듣기"
													style="border: 1px solid gray; border-radius: 6px; width: 46%;">
												</a>
												<iframe name="ifmAudioCaptcha" id="ifmAudioCaptcha"
													style="display: none;" width="0" height="0"
													title="보안문자_hiddenFrame_IE대응"></iframe>
												<span id="audioSupport" style="display: none"
													title="보안문자_음성대응"></span>
												<div class="BDC_Placeholder" id="CAPTCHA_AudioPlaceholder">&nbsp;</div>
											</div>
										</div>
									</div>
									<div class="ipt_area" style="width: 40%">
										<div class="input input_del">
											<input type="text" autocomplete="secur" name="securityNum"
												id="securityNum" placeholder="보안문자 입력" title="보안문자 입력"
												maxlength="5" value="">
										</div>
									</div>
								</div>
							</li>
						</ul>
					</fieldset>
					<div class="certi_btn_area">
						<ul class="btn_area2 bt2">
							<li><button type="button" id="btnCancel"
									class="btn_r btn_type6">취소</button></li>
							<li><button type="button" id="btnSubmit"
									class="btn_r btn_type btn_type3">확인</button></li>
						</ul>
					</div>
				</div>
				<input type="hidden" name="reqInfo"
					value="FF3C0E7EC1A2A8EF675600B2C421F87785F62E8E44C8B86DCD70D56AB7C7F0A568BDC8D8651D1BBF243F7C764696F8CF672D10627188AFA294140A1631209084E19FEB81795467A64615AAFDAE5B740719746E4A8EADEC98F2990469F1BA5CA8B6E1B0D03AD07AF9F52B0CA872ABCBF4E628D11D66D145166B922D22131E93C20315D4201E97AC7BA481BC177C99049AD4EACBECF473EA47BAC2C46775A8221BD8F5A215DF3535587AE4B272AB34602F057F4DF54510BAD12A74A29E8EB0577A44F136697B0150ADD38180199A806E49D46B552D45888DA8096C427FCBCC0D471EB658B188627536661EDAE7D902034DCBF4B677A1701CD4BBC6AF819EAE0766">
				<input type="hidden" name="reqInfo1"
					value="E86A3C280320B80B2D3D6FDCD9E36FC3681CD330F86427C701AE21842D3A0DBE">
				<input type="hidden" name="reqInfo2" value="KMC000001-"> <input
					type="hidden" name="returnURL"
					value="30AE4190ABA49F31B0B08B570F0712C134735204AA80C3494155F0BEF3CA1D7E926E6DB3FA4346606FD3BACFD3BF0720F7EC14F53A6FFF982237CFACF3E4F1E1ED7BEC2A3C2A5A793B6BDEA4DB0CE62B">
				<input type="hidden" name="CommId" value="SKT"> <input
					type="hidden" name="BirthY" value="2023"> <input
					type="hidden" name="BirthM" value=""> <input type="hidden"
					name="BirthD" value=""> <input type="hidden"
					name="reqCommIdStated" value="SKT"> <input type="hidden"
					name="reqCommIdStatedYn" value="N"> <input type="hidden"
					name="reqCriOSYn" value="Y"> <input type="hidden"
					name="reqSeq" value="936733842"> <input type="hidden"
					name="icsgCode" value="ICSG01">
			</form>
			<div class="passCertiInfo">
				<ul>
					<li>
						<p>
							PASS앱 설치 및 가입 후 이용이 가능합니다. <br> 앱마켓(구글 플레이스토어 / 애플 앱스토어) 에서
							<span class="highlighter"><strong>“PASS”</strong> 검색!</span>
						</p>
					</li>
				</ul>
			</div>
		</section>
		
<!-- footer -->
		<div class="footerBanner">
			<a href="https://www.tauth.net/pass/bridge/link/add/A102"
				onclick="window.open(this.href,'','width=800,height=930, scrollbars=1'); return false;"
				title="SKT 이벤트 배너 - 새창"> <img
				src="https://img4.kmcert.com/kmcis/qr_web/images/adverimg_skt.jpg"
				alt="손쉬운 발급, 3년 사용 안전하고 간편한 PASS인증서">
			</a>
		</div>
		<div id="footer">
			<script type="text/javascript">
				function goAgreePop(value1, value2) {
					var UserAgent = navigator.userAgent.toLowerCase();

					if (UserAgent.indexOf("chrome") != -1) {
						window
								.open(
										value1,
										value2,
										'width=413, height=551, resizable=0, scrollbars=no, status=0, titlebar=0, toolbar=0');
					}
					if (UserAgent.indexOf("version") != -1) {
						window
								.open(
										value1,
										value2,
										'width=427, height=490, resizable=0, scrollbars=no, status=0, titlebar=0, toolbar=0');
					} else {
						window
								.open(
										value1,
										value2,
										'width=385, height=635, resizable=0, scrollbars=no, status=0, titlebar=0, toolbar=0');
					}
				}
			</script>
			<div class="footer_kmc">
				<a
					href="javascript:goAgreePop('/kmcis/comm/kmcisHpUse_popUpBox.html','personal','all');"
					title="이용약관 전문보기-새창" style="color: #4F4F4F;">이용약관</a> | <a href="#"
					onclick="window.open('http://www.sktelecom.com/view/footer/privacy.do','skt','left=0,top=0,scrollbars=yes,realzable=yes');return false;"
					title="SKT 개인정보처리방침 전문보기-새창" style="color: #4F4F4F;"> 개인정보처리방침</a>
				| <span style="color: #4F4F4F;">GlobalSign 256 SSL 암호화 적용</span> <span
					class="kmc_logo"></span>
				<div
					style="float: right; margin-top: 50% color:#4F4F4F; width: 72px; height: 23px; overflow: hidden; line-height: 0; text-indent: -9999px"
					title="한국모바일인증 로고">한국모바일인증 로고</div>
			</div>
		</div>
		<!-- 키보드보안 6.5 REAL URL -->
	</div>
	<form name="KmcisTotFom" method="post"
		action="https://www.kmcert.com/kmcis/web/kmcisTot.jsp">
		<input type="hidden" name="reqInfo"
			value="FF3C0E7EC1A2A8EF675600B2C421F87785F62E8E44C8B86DCD70D56AB7C7F0A568BDC8D8651D1BBF243F7C764696F8CF672D10627188AFA294140A1631209084E19FEB81795467A64615AAFDAE5B740719746E4A8EADEC98F2990469F1BA5CA8B6E1B0D03AD07AF9F52B0CA872ABCBF4E628D11D66D145166B922D22131E93C2968A34995BA5E1114B61E289B28A0F9B180081472E4CCFEE0CE7C311FDA24BBD0184B3CED5E95296057BF504ED130511E34B6C2AE9F66B608E71457635C2E190C007854E0C9D6C7B36CADFF70BC27D9760FA03080A33D3BBB8874F1EF08C52B2849081FF6A5FEFAC0D036C75BDEE04799396C3B9E4DA6FDB4C96A56EE45F24D8">
		<input type="hidden" name="returnURL"
			value="30AE4190ABA49F31B0B08B570F0712C134735204AA80C3494155F0BEF3CA1D7E926E6DB3FA4346606FD3BACFD3BF0720F7EC14F53A6FFF982237CFACF3E4F1E1ED7BEC2A3C2A5A793B6BDEA4DB0CE62B">
		<input type="hidden" name="reqInfo1"
			value="E86A3C280320B80B2D3D6FDCD9E36FC3681CD330F86427C701AE21842D3A0DBE">
		<input type="hidden" name="reqInfo2" value="KMC000001-"> <input
			type="hidden" name="reqCriOSYn" value="Y">
	</form>

<script>
	$("#btnCancel").on("click", function () {
		location.href = "<%=contextPath%>/olive/userInfo.do";
	});
$(function () {
    $('#securityNum').keydown(function(event) {
    	if ( event.which == 13 ){
    		$("#btnSubmit").click();	
    	}
    });	
}); 
	$("#btnSubmit").on("click", function () {
		$("#cplogn").submit();
		
	});

</script>
</body>
</html>