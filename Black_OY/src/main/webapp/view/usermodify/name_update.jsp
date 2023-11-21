<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<%@ include file="/WEB-INF/inc/session_auth.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/CJbase.css" />
<link rel="stylesheet" href="../css/CJparticipate.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body style="height: 863px;">
<!--skip navigation-->
<div class="skipNavi">
	<a href="#contentsWrap">본문으로 바로가기</a>
</div>
<!--//skip navigation-->
	
<div id="bodyWrap" class="wide">
	
	<!--header-->
<form id="headerFrm" method="get">
    <input type="hidden" name="h_search_keyword" id="h_search_keyword">
</form>
    <!-- 참여사 관련 판단 로직 변경 2016-06-20 pjh0416 -->
     
    <!--header-->
        <div id="part_headerWrap">
            <div class="part_header_wrap">
                <h1 class="cj_logo"><span class="logo">CJ ONE</span> TRUE LIFESTYLE MEMBERSHIP</h1>
                    <div id="coop_header_wrap"><p class="part_logo">건강한 아름다움을 제안하는 글로벌 라이프스타일 플랫폼<img src="https://www.cjone.com/cjmweb/upfile/20191007_1837101.png" alt="올리브영"></p></div>
                <!-- 160216 수정 - 제휴 브랜드별 헤더 문구 및 로고 추가 -->
                    
                    
            <!-- //160216 수정 - 제휴 브랜드별 헤더 문구 및 로고 추가 -->
            </div>
        </div>
    

	<!--//header-->
	
	<!--컨텐츠-->
	<div id="contentsWrap">
	
		<div id="contents">
			<div class="location_wrap">
				<div class="location"><a href="<%=contextPath %>/olive/main.do" class="home"><span class="haze">홈</span></a>
				<a href="<%=contextPath %>/olive/pwdCheck.do" class="now"><span>회원정보 수정</span></a></div> 
			</div>
			<div class="cont_header">
				<h1 class="h1_tit">회원정보 변경</h1>
			</div>
			<div class="cont_area">

				<div class="mypage_sec">
					<!-- 본인인증 -->
					<div class="certi_box">
						<h2 class="haze">본인인증</h2>
						<div class="regi_complete certification_sec">
							<p class="certi_txt">회원정보에 등록된 이름을 변경하기 위해 본인확인 방법을 선택해주세요.</p>
							<ul class="way" data-control="hover">
								<li class="type1"><span class="bg"></span>
								<a href="javascript:;" class="btn btn_em" onclick="javascript:fnCheckKmcPopup(event);" title="새 창">
								<span>휴대전화 인증</span></a></li>
							<!-- 	
								<li class="type2" style="border-right:0px;"><span class="bg"></span><a href="javascript:;" onclick="javascript:fnCheckPlusPPopup(event);" class="btn btn_em" title="새 창">공인인증서 인증</a></li> -->
								
								
							</ul>
						</div>
					</div>
					<!-- 인증 실패 안내 -->
					<div class="certi_fail">
						<h2 class="haze">인증 실패 안내</h2>
						<div class="fail">
							<dl>
								<dt>본인인증에 실패하셨나요?</dt>
								<dd>회원님의 정보가 해당 인증기관에 등록되어 있지 않거나<br> 기타 다른 이유로 실패한 경우일 수 있습니다.</dd>
							</dl>
							<div class="btn_sec">
							</div>
						</div>
						<div class="error">
							<dl>
								<dt>인증 오류가 해결되지 않을 경우 엔?</dt>
								<dd>
									<ul class="bul_list">
										<li><span class="dot_arr">나이스평가정보 1600-1522</span></li>
										<li><span class="dot_arr">KMC 한국모바일인증 02-2033-8500</span></li>
										<li><span class="dot_arr">CJ ONE 고객센터 1577-8888</span></li>
									</ul>
								</dd>
							</dl>
						</div>
					</div>

					<!-- 이용 안내 -->
					<div class="box_gray box_btm">
						<dl class="box_info">
							<dt>이용안내</dt>
							<dd>
								<ul class="bul_list">
									<li class="dot_arr">신용평가기관에 개명된 이름이 먼저 등록되어 있어야 합니다.</li>
									<li class="dot_arr">개명된 이름으로 가입된 본인명의의 휴대전화 또는 공인인증서, 체크/신용카드 인증으로 본인확인 가능합니다.</li>
									<li class="dot_arr">본인인증을 위해 입력하신 정보는 CJ ONE에 별도 저장되지 않고, 해당 인증기관에서 직접 수집하며 인증 이외의 용도로 이용 또는 저장하지 않습니다.</li>
								</ul>
							</dd>
						</dl>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!--//contents-->
	
	<!-- footer -->
    <div id="footer">
    	






<!-- script type="text/javascript">if(typeof _satellite !== "undefined" && _satellite) {_satellite.pageBottom();}</script -->
<script type="text/javascript">
// footer 이벤트 선택 함수(1=이용약관,2=이전이용약관, 3=ARS 본인인증,4=법적고지, 5=이메일무단수집거부, 6=사이트맵, 그이외 개인정보취급)
function goFooterMenu(type){
	var pageUrl="";
	if("1"==type){
		pageUrl="https://www.cjone.com/cjmweb/terms.do?type="+type;
		location.href=pageUrl;
	}
	else if("2"==type){
		pageUrl="https://www.cjone.com/cjmweb/previous-terms.do?type="+type;
		location.href=pageUrl;
	}
	else if("3"==type){
		pageUrl="/cjmweb/layer/verify-account.do?type="+type;	
		cjone.openModal(pageUrl);
	}
	else if("4"==type){
		pageUrl="/cjmweb/layer/legal-notices.do?type="+type;	
		cjone.openModal(pageUrl);
	}
	else if("5"==type){
		pageUrl="/cjmweb/layer/email-security.do?type="+type;	
		cjone.openModal(pageUrl);
	}
	else if("6"==type){
		pageUrl="https://www.cjone.com/cjmweb/sitemap.do?type="+type;
		location.href=pageUrl;
	}
	else if("7"==type){
		pageUrl="/cjmweb/layer/isms-p.do?type="+type;	
		cjone.openModal(pageUrl);
	}
	// 등록일 format(yyyymmdd)
	else{
		if(""==type){
			pageUrl="https://www.cjone.com/cjmweb/privacy.do?privacyDate="+type+"&recent_yn=Y";

			location.href=pageUrl;
		}
		else{
			pageUrl="https://www.cjone.com/cjmweb/privacy.do?privacyDate="+type+"&recent_yn=N";
			location.href=pageUrl;
		}
	}
}
</script>
<!-- 로그인여부 여부 체크 -->

<!-- 로그인여부 여부 체크 -->

<!--20191021 CJ ONE APP 사업자 정보 노출 전체 영역-->
<div class="footer_wrap">			
	  
	<div class="site_info">
		<span class="ceo_info">대표이사 유인상</span>
		<address>주소 04323 서울시 용산구 한강대로 366 트윈시티 10층</address><!--20191021 CJ ONE APP 사업자 정보 주소 변경-->
		<span class="customer_info">CJ ONE 고객센터 1577-8888</span>
		<span class="license_num">사업자 등록번호 104-81-36565</span>
	</div>
	<!--20191112 CJONE APP 사업자 정보 노출 추가-->
    <div class="site_info pd0">
        <span class="ceo_info">호스팅사업자 CJ올리브네트웍스</span>
        <span class="license_num">통신판매업신고번호 2017-서울용산-0451</span>
    </div>
    <!--//20191112 CJONE APP 사업자 정보 노출 추가-->
	<p class="copyright">
		<span class="img"><img src="https://www.cjone.com/cjmweb/images/common/logo_cjolivenetworks_footer.png" alt="CJ 올리브넥트웍스"></span>
		Copyright (c)2016 CJ OLIVENETWORKS. All Rights Reserved
	</p>
	
	<div class="fixedTop hide" data-control="goTop"><a href="#headerWrap" title="페이지 처음으로 이동"><span class="haze">TOP</span></a></div>
	
</div>
<!--// 20191021 CJ ONE APP 사업자 정보 노출 전체 영역 -->
<!-- 레이어 팝업(confirm) 내용 -->
<div id="div_confirm" style="display: none;">
	<div class="ui_modal" style="position: fixed; background-color: rgb(255, 255, 255); outline: none; background-clip: padding-box; top: 50%; left: 50%; margin-left: -200px; margin-top: -160px; width: 400px; z-index: 9101;" tabindex="0">

		<div id="layerWrap" class="custom">
		 	<h1 id="h_confirm_title">알림</h1>

			<div class="inner" tabindex="0">
				<p id="p_confirm_text"></p>
			</div>
			

			<div class="btn_center">
				<a href="javascript:closeLayerConfirm();" id="a_confirm_y" class="btn"><span id="span_confirm_y">확인</span></a>
				<button id="a_confirm_n" type="button" onclick="closeLayerConfirm();" class="btn cancel"><span id="span_confirm_n">취소</span></button>
			</div>

			<button id="btn_confirm_close" type="button" onclick="closeLayerConfirm();" class="close">닫기</button>
		</div>

	</div>
	<div class="ui_modal_overlay" style="position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; z-index: 9100;"></div>
</div>
<!-- //레이어 팝업(confirm) 내용 -->
<!-- 레이어 팝업(alert) 내용 -->
<div id="div_alert" style="display: none;">
	<div class="ui_modal" style="position: fixed; background-color: rgb(255, 255, 255); outline: none; background-clip: padding-box; top: 50%; left: 50%; margin-left: -200px; margin-top: -160px; width: 400px; z-index: 9101;" tabindex="0">

		<div id="layerWrap" class="custom">

			<div class="inner" tabindex="0">
				<p id="p_alert_text"></p>
			</div>

			<div class="btn_center">
				<a href="javascript:closeLayerAlert();" id="a_alert" class="btn close"><span id="span_alert">확인</span></a>
			</div>
		</div>

	</div>
	<div class="ui_modal_overlay" style="position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; z-index: 9100;"></div>
</div>
<!-- //레이어 팝업(alert) 내용 -->
    </div>
	<!-- //footer -->
	
	<form method="post" id="vnoform" name="vnoform" action="">
		<input type="hidden" name="ipin_use_yn" id="ipin_use_yn" value="">
		<!-- ipin 업체에서 응답받기 원하는 데이타를 설정하기 위해 사용. 인증결과 응답시, 해당 값을 그대로 송신함. -->
		<input type="hidden" name="enc_data" id="enc_data">
		<input type="hidden" name="param_r1" id="param_r1">
		<input type="hidden" name="param_r2" id="param_r2">
		<input type="hidden" name="param_r3" id="param_r3">
		<input type="hidden" name="enc_com" id="enc_com">
		<input type="hidden" name="coopco_cd" id="coopco_cd" value="7030">
		<input type="hidden" name="brnd_cd" id="brnd_cd" value="3000">
		<input type="hidden" name="mcht_no" id="mcht_no" value="3000">	
	</form>	

	<!-- 가상주민번호 서비스를 호출하기 위해서는 다음과 같은 form이 필요합니다 -->
	<form name="form_ipin" id="form_ipin" method="post">
	    <input type="hidden" name="m" id="m" value="pubmain">
	    <input type="hidden" name="enc_data" id="enc_data" value="">
	    <!-- 업체에서 응답받기 원하는 데이타를 설정하기 위해 사용. 인증결과 응답시, 해당 값을 그대로 송신함. -->
	    <input type="hidden" name="param_r1" id="param_r1">
	    <input type="hidden" name="param_r2" id="param_r2">
	    <input type="hidden" name="param_r3" id="param_r3">

	    <input type="hidden" name="req_info" value="">
	</form>	
				
</div>	
					
<!--script 영역-->
    <script src="/cjmweb/js/modules/cjoneCore.js"></script>
    <script src="/cjmweb/js/modules/commonUi.js"></script>
    <script src="/cjmweb/js/frontUi.js"></script>
    <script src="/cjmweb/js/modules/jquery.bxslider.js"></script>


    
	<script type="text/javascript">
        $(function () {
            $('[data-control="hover"]').hover();
        });
        
        
        	$('.type3').hide();
        	$('.type2').attr('style', 'border-right:0px;');
    	

		// ipin 용 실명확인 
		window.name ="Parent_window"; 
 		
		//<![CDATA[
		// 아이핀 팝업 띄우기
		function fnIpinPopupVno(event){
			//event.preventDefault();
			(event.preventDefault) ? event.preventDefault() : event.returnValue = false;
			window.open('/cjmweb/common/include/ipin_check.do?mode=vno&svc_cd=04&coopco_cd=7030&brnd_cd=3000&mcht_no=3000', 'popupIPIN', 'width=450,height=550,top=100,left=100,fullscreen=no,menubar=no,status=no,toolbar=no,titlebar=yes,location=no,scrollbars=no');
		}
		function fnIpinPopupSci(event){
			//event.preventDefault();
			(event.preventDefault) ? event.preventDefault() : event.returnValue = false;
			window.open('/cjmweb/common/include/ipin_check.do?mode=sci&svc_cd=04&coopco_cd=7030&brnd_cd=3000&mcht_no=3000', 'popupIPIN', 'width=450,height=550,top=100,left=100,fullscreen=no,menubar=no,status=no,toolbar=no,titlebar=yes,location=no,scrollbars=no');
		}
		
		// 본인인증 팝업 띄우기
		
		// 한국모바일인증
		function fnCheckKmcPopup(event) {
			//event.preventDefault();
			(event.preventDefault) ? event.preventDefault() : event.returnValue = false;
			location.href = '/Black_OY/view/usermodify/modify_phfirst.jsp';
		}
		function fnCheckKcbMobilePopup(event) {
			(event.preventDefault) ? event.preventDefault() : event.returnValue = false;
			window.open('/cjmweb/common/include/cp_check.do?mode=kcb&svc_cd=04&coopco_cd=7030&brnd_cd=3000&mcht_no=3000', 'popupCP', 'width=430,height=640,top=100,left=100,fullscreen=no,menubar=no,status=no,toolbar=no,titlebar=yes,location=no,scrollbars=no');
		}
		function fnCheckKcbCardPopup(event) {
			(event.preventDefault) ? event.preventDefault() : event.returnValue = false;
			window.open('/cjmweb/common/include/card_check.do?mode=kcb&svc_cd=04&coopco_cd=7030&brnd_cd=3000&mcht_no=3000', 'popupCard', 'width=430,height=712,top=100,left=100,fullscreen=no,menubar=no,status=no,toolbar=no,titlebar=yes,location=no,scrollbars=no');
		}
		
		// ipin 인증후 리턴 함수
		function setEncInfo(enc_data, parm1, parm2, parm3, enc_com) {
			console.log("setEncInfo called");
			$('#enc_data').val(enc_data);
			$('#param_r1').val(parm1);
			$('#param_r2').val(parm2);
			$('#param_r3').val(parm3);
			$('#enc_com').val(enc_com);
			$('#ipin_use_yn').val("Y");
			
            actionAjax();
		}	

		function setCpEncInfo(enc_data, enc_com) {
			console.log("setCpEncInfo called");
            $('#enc_data').val(enc_data);
            $('#enc_com').val(enc_com);
            $('#ipin_use_yn').val("N");
            
            actionAjax();
        }
		
		function actionAjax(){
			var param = $("#vnoform").serialize();
			$.ajax({
				url : '/cjmweb/member/name-change/process.do'
				,dataType:'json'
				,async: false
				,type: 'POST'
				, data : param,
				success:function(data)
				{
					if(data.reqBox.str_msg !='' && data.reqBox.str_msg != null &&  data.reqBox.str_msg != 'undefined'){
						var str_msg ="" + data.reqBox.str_msg;
	 					str_msg = str_msg.replace(/\\n/g, '\n');
	 					alert(str_msg);
					}

		 			if(data.reqBox.mbr_id != "undefined" && data.reqBox.mbr_id != null && data.reqBox.mbr_id != '' )$("#vnoform01 #mbr_id").val(data.reqBox.mbr_id);					
		 			if(data.reqBox.hg_nm != "undefined" && data.reqBox.hg_nm != null && data.reqBox.hg_nm != '' )$("#vnoform01 #hg_nm").val(data.reqBox.hg_nm);
					
					$('#vnoform01').attr('action', '/cjmweb'+data.reqBox.action_url);
					$('#vnoform01').submit();	
				}
			});   			
		} 		
	//]]>
        
    </script>
<!--//script 영역-->
<form name="vnoform01" id="vnoform01" method="post">
	<input type="hidden" name="mbr_id" id="mbr_id" value="">
	<input type="hidden" name="hg_nm" id="hg_nm" value="">
	<input type="hidden" name="coopco_cd" id="coopco_cd" value="7030">
	<input type="hidden" name="brnd_cd" id="brnd_cd" value="3000">
	<input type="hidden" name="mcht_no" id="mcht_no" value="3000">
</form>

<script type="text/javascript" data-import="true" src="/cjmweb/js/modules/placeholder.js"></script><script type="text/javascript" data-import="true" src="/cjmweb/js/modules/formatter.js"></script></body>
</html>