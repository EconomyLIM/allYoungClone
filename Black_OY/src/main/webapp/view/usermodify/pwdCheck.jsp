<%@page import="user.domain.OuserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/inc/include.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/CJbase.css" />
<link rel="stylesheet" href="../../css/CJparticipate.css" />
<link rel="stylesheet" href="../css/CJbase.css" />
<link rel="stylesheet" href="../css/CJparticipate.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<body style="height: 914px;">
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

		<!--header-->
		<div id="part_headerWrap">
			<div class="part_header_wrap">
				<h1 class="cj_logo">
					<span class="logo">CJ ONE</span> TRUE LIFESTYLE MEMBERSHIP
				</h1>
				<div id="coop_header_wrap">
					<p class="part_logo">
						건강한 아름다움을 제안하는 글로벌 라이프스타일 플랫폼<img
							src="https://www.cjone.com/cjmweb/upfile/20191007_1837101.png" alt="올리브영">
					</p>
				</div>

			</div>
			
		</div>
		<div id="contentsWrap">
			<form id="form1" method="post" action="<%=contextPath%>/olive/userInfo.do">
				<input type="hidden" name="coopco_cd" id="coopco_cd" value="7030">
				<input type="hidden" name="brnd_cd" id="brnd_cd" value="3000">
				<input type="hidden" name="mcht_no" id="mcht_no" value="3000">
				<input type="hidden" name="coop_return_url" id="coop_return_url"
					value="https://www.oliveyoung.co.kr/store/mypage/getMktReceiptInfo.do?refresh=Y">
				<input type="hidden" name="__chkpwd" id="__chkpwd" value="">
				<input type="hidden" name="pwd" id="security_pwd" value="">
				<input type="hidden" name="access_token" id="access_token" value="">
				<input type="hidden" name="noAgr" id="noAgr"
					value="AGRTYPCD_10,AGRTYPCD_11,AGRTYPCD_30,AGRTYPCD_40,AGRTYPCD_31,AGRTYPCD_Y14LT">
			</form>
			<input type="hidden" name="tmpField">
			<div id="contents">
				<div class="location_wrap">
					<div class="location">
						<a href="#" class="home"><span class="haze">홈</span></a>
						<a href="/" class="now"><span>회원정보 	수정</span></a>
					</div>
				</div>
				<div class="cont_header">
					<h1 class="h1_tit">회원정보 수정</h1>
					<p class="h_desc">회원님의 소중한 정보를 안전하게 관리하세요.</p>
				</div>
				<div class="cont_area">
				
					<div class="mypage_sec modify">
						<div class="regi_complete">
							<span class="bg bg face_type2" style="display:block;  margin:0 auto 35px; background:url('/Black_OY/images/cjone/ico_regi_complete.png') no-repeat -300px 0; width:89px; height:89px;background-position:-100px -200px;"></span>
							<p class="h2_tit">회원정보를 수정하시려면 비밀번호를 입력하셔야 합니다.</p>
							<p class="h_desc">회원님의 개인정보 보호를 위한 본인 확인 절차이오니, CJ ONE 회원 로그인
								시 사용하시는 비밀번호를 입력해주세요.</p>
							<div class="pwd_box">
								<span class="input_txt w330">
									<input type="password" id="pwd" class="text" placeholder="비밀번호를 입력해주세요." 
									title="비밀번호" maxlength="20">
								</span>
							</div>
							<div class="btn_center">
								<button type="button" id="btnCancel" class="btn">취소</button>
								<button type="button" id ="btnPwdCheck" class="btn btn_em">확인</button>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
		<!--//contents-->

		<!--footer-->
		<div id="footer">


			<div class="footer_wrap">

				<div class="site_info">
					<span class="ceo_info">대표이사 유인상</span>
					<address>주소 04323 서울시 용산구 한강대로 366 트윈시티 10층</address>
					<!--20191021 CJ ONE APP 사업자 정보 주소 변경-->
					<span class="customer_info">CJ ONE 고객센터 1577-8888</span> <span
						class="license_num">사업자 등록번호 104-81-36565</span>
				</div>

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

				<div class="fixedTop hide" data-control="goTop"
					style="bottom: 149px;">
					<a href="#headerWrap" title="페이지 처음으로 이동"><span class="haze">TOP</span></a>
				</div>

			</div>

			<div id="div_confirm" style="display: none;">
				<div class="ui_modal"
					style="position: fixed; background-color: rgb(255, 255, 255); outline: none; background-clip: padding-box; top: 50%; left: 50%; margin-left: -200px; margin-top: -160px; width: 400px; z-index: 9101;"
					tabindex="0">

					<div id="layerWrap" class="custom">
						<h1 id="h_confirm_title">알림</h1>

						<div class="inner" tabindex="0">
							<p id="p_confirm_text"></p>
						</div>


						<div class="btn_center">
							<a href="javascript:closeLayerConfirm();" id="a_confirm_y"
								class="btn"><span id="span_confirm_y">확인</span></a>
							<button id="a_confirm_n" type="button"
								onclick="closeLayerConfirm();" class="btn cancel">
								<span id="span_confirm_n">취소</span>
							</button>
						</div>

						<button id="btn_confirm_close" type="button"
							onclick="closeLayerConfirm();" class="close">닫기</button>
					</div>

				</div>
				<div class="ui_modal_overlay"
					style="position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; z-index: 9100;"></div>
			</div>
			<!-- //레이어 팝업(confirm) 내용 -->
			<!-- 레이어 팝업(alert) 내용 -->
			<div id="div_alert" style="display: none;">
				<div class="ui_modal"
					style="position: fixed; background-color: rgb(255, 255, 255); outline: none; background-clip: padding-box; top: 50%; left: 50%; margin-left: -200px; margin-top: -160px; width: 400px; z-index: 9101;"
					tabindex="0">

					<div id="layerWrap" class="custom">

						<div class="inner" tabindex="0">
							<p id="p_alert_text"></p>
						</div>

						<div class="btn_center">
							<a href="javascript:closeLayerAlert();" id="a_alert"
								class="btn close"><span id="span_alert">확인</span></a>
						</div>
					</div>

				</div>
				<div class="ui_modal_overlay"
					style="position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; z-index: 9100;"></div>
			</div>
			<!-- //레이어 팝업(alert) 내용 -->
		</div>
		<!--//footer-->

	</div>
	<!--script 영역-->

	<script>
	 $(function () {
	     $('#pwd').keydown(function(event) {
	     	if ( event.which == 13 ){
	     		$("#btnPwdCheck").click();	
	     	}
	     });	
	});
		// 취소
	$("#btnCancel").on("click", function () {
		alert("회원정보 수정을 취소하시겠습니까?");
		location.href = '<%=contextPath%>/olive/usermodify.do';
	});
	//비밀번호 체크

    function pwdCheck() {
        var u_pwd = $("#pwd").val();
        
        if (u_pwd == "") {
            alert("비밀번호를 입력해 주세요.");
            $("#pwd").focus();
            return false;
        } else if ( u_pwd != "${logOn.u_pwd}"){
        	alert("비밀번호가 일치하지 않습니다.");
        	$("#pwd").focus();
        	return false;
        }
        return true;
	}
    $("#btnPwdCheck").on("click", function () {
		if (pwdCheck() ) {
			$("#form1").submit();
		}
	});
    </script>

</body>
</html>