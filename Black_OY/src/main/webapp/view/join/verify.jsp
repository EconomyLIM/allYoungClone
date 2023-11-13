<%@page import="user.domain.OuserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<body style="height: 914px;">
	<!--skip navigation-->
	<div class="skipNavi">
		<a href="#contentsWrap">본문으로 바로가기</a>
	</div>
	<!--//skip navigation-->
	<div id="bodyWrap">

		<!--header-->

		<form id="headerFrm" method="get">
			<input type="hidden" name="h_search_keyword" id="h_search_keyword">
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
		<!--//header-->

		<!--contents-->
		<div id="contentsWrap">
			<div id="contents">
				<!--title-->

				<div class="location_wrap">



					<div class="location">
						<a href="https://www.cjone.com/cjmweb/main.do" class="home"><span
							class="haze">홈</span></a><a
							href="https://www.cjone.com/cjmweb/join.do" class="now"><span>회원가입</span></a>
					</div>


				</div>

				<div class="cont_header">



					<h1 class="h1_tit">회원가입</h1>


					<p class="h_desc">라이프스타일 멤버십 CJ ONE! 외식, 쇼핑, 엔터테인먼트 서비스를 한 장의
						카드로 즐기세요~</p>
				</div>
				<!--title-->
				<div class="cont_area">
					<div class="member_join uni">
						<!--step-->
						<div id="layer1"
							style="position: absolute; margin-left: -212px; top: 5%; left: 50%; width: 0px; height: 0px; display: none; z-index: -1">
							<font face="verdana, arial, helvetica, sans-serif" size="2">
								<div
									style="float: left; background-color: white; padding: 3px; border: 1px solid black;">
									<span
										style="float: right; padding-right: 0px; margin-right: 0px; background-color: gray; color: white; font-weight: bold; width ='20px'; text-align: center; cursor: pointer"
										onclick="javascript:hideIt()">&nbsp;X&nbsp;</span>
									<iframe id="jumin_frame" style="width: 0px; height: 0px;"
										frameborder="no"></iframe>
								</div>
							</font>
						</div>
						<div class="step_join">
							<ul class="col4">
								<li class="step1 on">본인인증 <span class="haze">진행 중</span><span
									class="line"></span></li>
								<li class="step2">약관동의 <span class="haze">진행 전</span><span
									class="line"></span></li>
								<li class="step3">회원정보 입력 <span class="haze">진행 전</span><span
									class="line"></span></li>
								<li class="step4">가입완료 <span class="haze">진행 전</span></li>
							</ul>
						</div>
						<form method="post" name="vnoform" id="vnoform">
							<input type="hidden" name="coopco_cd" id="coopco_cd" value="7030">
							<input type="hidden" name="brnd_cd" id="brnd_cd" value="3000">
							<input type="hidden" name="mcht_no" id="mcht_no" value="3000">
							<input type="hidden" name="upd_coopco_id" id="upd_coopco_id"
								value=""> <input type="hidden" name="coop_return_url"
								id="coop_return_url" value=""> <input type="hidden"
								name="evt_typ" id="evt_typ" value=""> <input
								type="hidden" name="sub_type" id="sub_type" value="1"> <input
								type="hidden" name="ipin_use_yn" id="ipin_use_yn" value="">

							<!-- ipin 업체에서 응답받기 원하는 데이타를 설정하기 위해 사용. 인증결과 응답시, 해당 값을 그대로 송신함. -->
							<input type="hidden" name="enc_data" id="enc_data"> <input
								type="hidden" name="param_r1" id="param_r1"> <input
								type="hidden" name="param_r2" id="param_r2"> <input
								type="hidden" name="param_r3" id="param_r3"> <input
								type="hidden" name="enc_com" id="enc_com">

							<!-- 2010.12.21 가입출처 제휴사 정보 추가.(오쇼핑,더마켓의 다음온, 링크프라이스를 통한 회원가입시 가입출처 정보) -->


							<!--//step-->
							<div class="box_member">
								<h2 class="haze">본인인증</h2>

								<div class="certification_sec">



									<p class="certi_txt">안전한 회원가입을 위한 본인인증 단계입니다. 원하시는 인증방법을
										선택해주세요.</p>


									<ul class="way">








										<li class="type1"><span class="bg"></span><a
											href="javascript:;" class="btn btn_em"
											onclick="javascript:location.href='phone1.html' " title="새 창"><span>휴대전화
													인증</span></a></li>














										<li class="type2" style="border-right: 0px;"><span
											class="bg"></span><a href="#" class="btn btn_em"
											onclick="javascript:fnCheckPlusPPopup(event);" title="새 창">공동인증서
												인증</a></li>



									</ul>
								</div>
							</div>
							<div class="certi_fail">
								<h3 class="haze">인증 실패 안내</h3>
								<div class="fail">
									<dl>
										<dt>본인인증에 실패하셨나요?</dt>
										<dd>
											회원님의 정보가 해당 인증기관에 등록되어 있지 않거나<br> 기타 다른 이유로 실패한 경우일 수
											있습니다.
										</dd>
									</dl>
									<div class="btn_sec">












										<a href="javascript:;"
											onclick="javascript:fnCheckKcbMobilePopup(event);"
											class="btn btn_sm" title="새 창"><span class="arr">휴대전화
												인증</span></a>






									</div>
								</div>
								<div class="error">
									<dl>
										<dt>인증 오류가 해결되지 않을 경우엔?</dt>
										<dd>
											<ul class="bul_list">
												<li><span class="dot_arr">나이스평가정보 1600-1522</span></li>
												<li><span class="dot_arr">KMC 한국모바일인증
														02-2033-8500</span></li>
												<li><span class="dot_arr">CJ ONE 고객센터 1577-8888</span></li>
											</ul>
										</dd>
									</dl>
								</div>
							</div>
						</form>
					</div>

					<!-- //이용안내 -->
					<div class="box_gray box_btm">
						<dl class="box_info">
							<dt>이용안내</dt>
							<dd>
								<ul class="bul_list">
									<li class="dot_arr">본인인증 시 제공되는 정보는 <em class="em">해당
											인증기관에서 직접 수집하며,</em> 인증 이외의 용도로 이용 또는 저장하지 않습니다.
									</li>
									<li class="dot_arr">기존의 제휴 브랜드 웹사이트에 1개 이상 가입되어 있으신 회원님은
										새로운 CJ ONE 통합 아이디를 생성하신 후 CJ ONE 멤버십으로 가입하실 수 있습니다.<br>(기존에
										각 브랜드 사이트에서 사용하던 ID와 비밀번호 동일하게 변경됨)
									</li>
								</ul>
							</dd>
						</dl>
					</div>

				</div>
			</div>

			<script type="text/javascript">
    //<![CDATA[
        <!-- Copyright 2003, Sandeep Gangadharan -->
        <!-- For more free scripts go to http://sivamdesign.com/scripts/ -->
        var y1 = 20;   // change the # on the left to adjuct the Y co-ordinate
        (document.getElementById) ? dom = true : dom = false;

        function hideIt() {
			$('#layer1').css('display','none');
			$('#layer1').css('z-index','-1');
			$('#layer1').css('width','0px');
			$('#layer1').css('height','0px');
			$('#jumin_frame').css('width','0px');
			$('#jumin_frame').css('height','0px');
			$('#jumin_frame').attr('src','');
			$('#jumin_frame').css('display','none');
        }

        function showIt(src,width,height) {
			$('#layer1').css('display','');
            $('#layer1').css('z-index','100000');
            $('#layer1').css('width',width);
            $('#layer1').css('height',height);
			$('#jumin_frame').css('width',width);
			$('#jumin_frame').css('height',height);
			$('#jumin_frame').attr('src',src);
			$('#jumin_frame').css('display','');
        }

        function placeIt() {
          if (dom && !document.all) {document.getElementById("layer1").style.top = window.pageYOffset + (window.innerHeight - (window.innerHeight-y1)) + "px";}
          if (document.all) {document.all["layer1"].style.top = document.documentElement.scrollTop + (document.documentElement.clientHeight - (document.documentElement.clientHeight-y1)) + "px";}
          window.setTimeout("placeIt()", 10); }
    //]]>
    </script>
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

			<script type="text/javascript">        
        
        if(document.location.protocol == 'http:'){
        $(function() {
                var getBrowserVersion = function(ver) {
                    var rv = -1;
                    var ua = navigator.userAgent;
                    var re = null;
                    
                    if(ver == "MSIE"){
                        re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
                    }else{
                        re = new RegExp(ver+"/([0-9]{1,}[\.0-9]{0,})");
                    }
                    
                    if (re.exec(ua) != null){
                        rv = parseFloat(RegExp.$1);
                    }
                    return rv;
                };
                
                var chrome_ver = function(){
                    var flag = false;
                    
                    var ua = navigator.userAgent;
                    
                    var b_ver = -1;
                    if(ua.indexOf("Chrome") > -1){
                          b_ver = getBrowserVersion('Chrome');
                    }else if(ua.indexOf("CriOS") > -1){
                    	b_ver = getBrowserVersion('CriOS');                    	
                    }

                    
                    if((ua.indexOf("Chrome") > -1 || ua.indexOf("CriOS") > -1) && b_ver >= 80){
                        flag = true;
                    }
                    
                    return flag;
                };
                
               if(document.location.protocol == 'http:' && chrome_ver()){
               $.ajax({
                   url: 'https://www.cjone.com/cjmweb/member/ssoLogin.do?callback=?', 
                   dataType: "jsonp",
                   type:"post",
                   success: function(data) {
                       if (data.resultCd == "1") {
                           var mainChk = location.pathname;
                           if (mainChk == "/cjmweb/main.do" || mainChk == "/cjmweb/event-coupon/event.do" || mainChk == "/cjmweb/event-coupon/coupon.do" || mainChk == "/cjmweb/point-card/brand.do" || mainChk == "/cjmweb/point-card/guide.do" || mainChk == "/cjmweb/point-card/branded-card.do" || mainChk == "/cjmweb/customer/faq/searchFaq.do") {
                               location.href = "https://www.cjone.com"+mainChk;
                           } else {
                               location.reload();
                           }
                       }
                   },
                   error: function(xhr) {
                       console.log(xhr);
                   }
               });
            }            
        });
        }
       </script>

			<!-- 로그인여부 여부 체크 -->

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

				<div class="fixedTop hide" data-control="goTop">
					<a href="#headerWrap" title="페이지 처음으로 이동"><span class="haze">TOP</span></a>
				</div>

			</div>
			<!--// 20191021 CJ ONE APP 사업자 정보 노출 전체 영역 -->
			<!-- 레이어 팝업(confirm) 내용 -->
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
		<!-- //footer -->
	</div>

	<!--script 영역-->
	<script src="/cjmweb/js/modules/cjoneCore.js"></script>
	<script src="/cjmweb/js/modules/commonUi.js"></script>
	<script src="/cjmweb/js/frontUi.js"></script>
	<script src="/cjmweb/js/modules/jquery.bxslider.js"></script>

	<script>
        $(function () {
            $('[data-control="hover"]').hover();
        });

    </script>

	<script type="text/javascript">
/* 		// ipin 용 실명확인 
		window.name ="Parent_window"; 	
	//<![CDATA[

		// 아이핀 팝업 띄우기
		function fnIpinPopupVno(event){
			//event.preventDefault();
			var pop_status;
			commSetCertificationserviceLogCate('join','ipin');
			(event.preventDefault) ? event.preventDefault() : event.returnValue = false;
			pop_status = window.open('/cjmweb/common/include/ipin_check.do?mode=vno&svc_cd=01&coopco_cd=7030&brnd_cd=3000&mcht_no=3000&coop_return_url=', 'popupIPIN', 'width=450,height=550,top=100,left=100,fullscreen=no,menubar=no,status=no,toolbar=no,titlebar=no,location=no,scrollbars=no');
			pop_status.focus();

		}
		function fnIpinPopupSci(event){
			//event.preventDefault();
			var pop_status;
			commSetCertificationserviceLogCate('join','ipin');
			(event.preventDefault) ? event.preventDefault() : event.returnValue = false;
			pop_status = window.open('/cjmweb/common/include/ipin_check.do?mode=sci&svc_cd=01&coopco_cd=7030&brnd_cd=3000&mcht_no=3000&coop_return_url=', 'popupIPIN', 'width=450,height=550,top=100,left=100,fullscreen=no,menubar=no,status=no,toolbar=no,titlebar=yes,location=no,scrollbars=no');
			pop_status.focus();
		}
		
		// 본인인증 팝업 띄우기
		// 한신평
		function fnCheckPlusPopup(event){
			//event.preventDefault();
			var pop_status;
			commSetCertificationserviceLogCate('join','mobile');
			(event.preventDefault) ? event.preventDefault() : event.returnValue = false;
			pop_status = window.open('/cjmweb/common/include/cp_check.do?mode=vno&svc_cd=01&coopco_cd=7030&brnd_cd=3000&mcht_no=3000&coop_return_url=', 'popupCP', 'width=500,height=465,top=100,left=100,fullscreen=no,menubar=no,status=no,toolbar=no,titlebar=yes,location=no,scrollbars=no');
			pop_status.focus();
		}
		// 한신평 공인인증
		function fnCheckPlusPPopup(event){
			//event.preventDefault();
			var pop_status;
			commSetCertificationserviceLogCate('join','certifi');
			(event.preventDefault) ? event.preventDefault() : event.returnValue = false;
			pop_status = window.open('/cjmweb/common/include/cp_check.do?mode=vno&svc_cd=01&typ_cd=04&coopco_cd=7030&brnd_cd=3000&mcht_no=3000&coop_return_url=', 'popupCP', 'width=500,height=465,top=100,left=100,fullscreen=no,menubar=no,status=no,toolbar=no,titlebar=yes,location=no,scrollbars=no');
			pop_status.focus();
		}
		// 한국모바일인증
		function fnCheckKmcPopup(event) {
			//event.preventDefault();
			var pop_status;
			commSetCertificationserviceLogCate('join','mobile');
			(event.preventDefault) ? event.preventDefault() : event.returnValue = false;
			pop_status = window.open('/cjmweb/common/include/cp_check.do?mode=kmc&svc_cd=01&coopco_cd=7030&brnd_cd=3000&mcht_no=3000&coop_return_url=', 'popupCP', 'width=425,height=640,top=100,left=100,fullscreen=no,menubar=no,status=no,toolbar=no,titlebar=yes,location=no,scrollbars=no');
			pop_status.focus();
		}
		function fnCheckKmcPopup2() {
			showIt('/cjmweb/common/include/cp_check.do?mode=kmc&svc_cd=01&coopco_cd=7030&brnd_cd=3000&mcht_no=3000&coop_return_url=',425,640);
		}
		// KCB 휴대폰인증
		function fnCheckKcbMobilePopup(event) {
			(event.preventDefault) ? event.preventDefault() : event.returnValue = false;
			window.open('/cjmweb/common/include/cp_check.do?mode=kcb&svc_cd=01&coopco_cd=7030&brnd_cd=3000&mcht_no=3000', 'popupCP', 'width=430,height=640,top=100,left=100,fullscreen=no,menubar=no,status=no,toolbar=no,titlebar=yes,location=no,scrollbars=no');
		}
		// KCB 카드인증
		function fnCheckKcbCardPopup(event) {
			(event.preventDefault) ? event.preventDefault() : event.returnValue = false;
			window.open('/cjmweb/common/include/card_check.do?mode=kcb&svc_cd=01&coopco_cd=7030&brnd_cd=3000&mcht_no=3000', 'popupCard', 'width=430,height=712,top=100,left=100,fullscreen=no,menubar=no,status=no,toolbar=no,titlebar=yes,location=no,scrollbars=no');
		}
		 */
		// 인증기관에서 받아온값
		function setEncInfo(enc_data, parm1, parm2, parm3, enc_com) {
			$('#enc_data').val(enc_data);
			$('#param_r1').val(parm1);
			$('#param_r2').val(parm2);
			$('#param_r3').val(parm3);
			$('#enc_com').val(enc_com);
			$('#ipin_use_yn').val("Y");

			actionAjax();			
		}
		
		function setCpEncInfo(enc_data, enc_com) {
            $('#enc_data').val(enc_data);
            $('#enc_com').val(enc_com);
            $('#ipin_use_yn').val("N");

			actionAjax();
        }
		
		function actionAjax(){
    		var param = $("#vnoform").serialize();
			$.ajax({
				url : '/cjmweb/join/verify-accountCheck.do'
				,dataType:'json'
				,async: false
				,type: 'POST'
				, data : param,
				success:function(data)
				{
					//if(data.reqBox.str_msg !='' && data.reqBox.str_msg != null &&  data.reqBox.str_msg != 'undefined'){
					//	var str_msg ="" + data.reqBox.str_msg;
	 				//	str_msg = str_msg.replace(/\\n/g, '\n');
	 				//	//alert(str_msg);
					//} 
		
		 			if(data.reqBox.hg_nm != "undefined" && data.reqBox.hg_nm != null && data.reqBox.hg_nm != '' )$("#vnoform01 #hg_nm").val(data.reqBox.hg_nm);					
		 			if(data.reqBox.vno != "undefined" && data.reqBox.vno != null && data.reqBox.vno != '' )$("#vnoform01 #vno").val(data.reqBox.vno);
		 			if(data.reqBox.ipin_ci != "undefined" && data.reqBox.ipin_ci != null && data.reqBox.ipin_ci != '' )$("#vnoform01 #ipin_ci").val(data.reqBox.ipin_ci);
		 			if(data.reqBox.ipin_di != "undefined" && data.reqBox.ipin_di != null && data.reqBox.ipin_di != '' )$("#vnoform01 #ipin_di").val(data.reqBox.ipin_di);
		 			if(data.reqBox.gender != "undefined" && data.reqBox.gender != null && data.reqBox.gender != '' )$("#vnoform01 #gender").val(data.reqBox.gender);
		 			if(data.reqBox.legl_birth_dy != "undefined" && data.reqBox.legl_birth_dy != null && data.reqBox.legl_birth_dy != '' )$("#vnoform01 #legl_birth_dy").val(data.reqBox.legl_birth_dy);
		 			if(data.reqBox.frgnr_yn != "undefined" && data.reqBox.frgnr_yn != null && data.reqBox.frgnr_yn != '' )$("#vnoform01 #frgnr_yn").val(data.reqBox.frgnr_yn);
		 			if(data.reqBox.under_14 != "undefined" && data.reqBox.under_14 != null && data.reqBox.under_14 != '' )$("#vnoform01 #under_14").val(data.reqBox.under_14);
		 			if(data.reqBox.mbr_no != "undefined" && data.reqBox.mbr_no != null && data.reqBox.mbr_no != '' )$("#vnoform01 #mbr_no").val(data.reqBox.mbr_no);
		 			if(data.reqBox.mbr_id != "undefined" && data.reqBox.mbr_id != null && data.reqBox.mbr_id != '' )$("#vnoform01 #mbr_id").val(data.reqBox.mbr_id);
		 			if(data.reqBox.mbr_typ_cd != "undefined" && data.reqBox.mbr_typ_cd != null && data.reqBox.mbr_typ_cd != '' )$("#vnoform01 #mbr_typ_cd").val(data.reqBox.mbr_typ_cd);
		 			if(data.reqBox.rejoin_yn != "undefined" && data.reqBox.rejoin_yn != null && data.reqBox.rejoin_yn != '' )$("#vnoform01 #rejoin_yn").val(data.reqBox.rejoin_yn);
		 			if(data.reqBox.nm_cnfm_yn != "undefined" && data.reqBox.nm_cnfm_yn != null && data.reqBox.nm_cnfm_yn != '' )$("#vnoform01 #nm_cnfm_yn").val(data.reqBox.nm_cnfm_yn);
		 			if(data.reqBox.ret_code != "undefined" && data.reqBox.ret_code != null && data.reqBox.ret_code != '' )$("#vnoform01 #ret_code").val(data.reqBox.ret_code);
		 			if(data.reqBox.auth_yn != "undefined" && data.reqBox.auth_yn != null && data.reqBox.auth_yn != '' )$("#vnoform01 #auth_yn").val(data.reqBox.auth_yn);
		 			if(data.reqBox.flag != "undefined" && data.reqBox.flag != null && data.reqBox.flag != '' )$("#vnoform01 #flag").val(data.reqBox.flag);
		 			if(data.reqBox.mask_mbr_id != "undefined" && data.reqBox.mask_mbr_id != null && data.reqBox.mask_mbr_id != '' )$("#vnoform01 #mask_mbr_id").val(data.reqBox.mask_mbr_id);
		 			if(data.reqBox.mask_hg_nm != "undefined" && data.reqBox.mask_hg_nm != null && data.reqBox.mask_hg_nm != '' )$("#vnoform01 #mask_hg_nm").val(data.reqBox.mask_hg_nm);
		 			if(data.reqBox.sub_type != "undefined" && data.reqBox.sub_type != null && data.reqBox.sub_type != '' )$("#vnoform01 #sub_type").val(data.reqBox.sub_type);
		 			if(data.reqBox.ci != "undefined" && data.reqBox.ci != null && data.reqBox.ci != '' )$("#vnoform01 #ci").val(data.reqBox.ci);
		 			if(data.reqBox.secss_req_dy != "undefined" && data.reqBox.secss_req_dy != null && data.reqBox.secss_req_dy != '' )$("#vnoform01 #secss_req_dy").val(data.reqBox.secss_req_dy);
		 			if(data.reqBox.phone_no != "undefined" && data.reqBox.phone_no != null && data.reqBox.phone_no != '' )$("#vnoform01 #phone_no").val(data.reqBox.phone_no);

		 			if(data.etc_map != "undefined" && data.etc_map != null && data.etc_map != '' ){
						var obj = data.etc_map;
						var html = ""
						var idx = 0;
						$.each(obj, function(index,item){
							idx = index+1;
							html += "<input type='hidden' name='etc"+idx+"' id='etc"+idx+"' value='"+item.etc+"' />";
						});
						$("#vnoform01").append(html);							    	
				    }		 			
					
 					$('#vnoform01').attr('action', '/cjmweb'+data.reqBox.action_url);
 					//$('#vnoform01').submit();	
                    
 					if(data.reqBox.str_msg !='' && data.reqBox.str_msg != null &&  data.reqBox.str_msg != 'undefined'){
                        var str_msg ="" + data.reqBox.str_msg;
                        str_msg = str_msg.replace(/\\n/g, '\n');
                        
                        layerDialogs('A', str_msg, function() {
                            $('#vnoform01').submit();
                        }); 
                    } else {
                    	$('#vnoform01').submit();
                    }
				}
			});
		}
	//]]>
	</script>
	<!--//script 영역-->

	<!-- ajax 처리시 추가 input -->
	<form method="post" name="vnoform01" id="vnoform01">
		<input type="hidden" name="coopco_cd" id="coopco_cd" value="7030">
		<input type="hidden" name="brnd_cd" id="brnd_cd" value="3000">
		<input type="hidden" name="mcht_no" id="mcht_no" value="3000">
		<input type="hidden" name="upd_coopco_id" id="upd_coopco_id" value="">
		<input type="hidden" name="coop_return_url" id="coop_return_url"
			value=""> <input type="hidden" name="evt_typ" id="evt_typ"
			value=""> <input type="hidden" name="sub_type" id="sub_type"
			value="1"> <input type="hidden" name="ipin_use_yn"
			id="ipin_use_yn" value=""> <input type="hidden" id="hg_nm"
			name="hg_nm" value=""> <input type="hidden" id="vno"
			name="vno" value=""> <input type="hidden" id="ipin_ci"
			name="ipin_ci" value=""> <input type="hidden" id="ipin_di"
			name="ipin_di" value=""> <input type="hidden" id="gender"
			name="gender" value=""> <input type="hidden"
			id="legl_birth_dy" name="legl_birth_dy" value=""> <input
			type="hidden" id="frgnr_yn" name="frgnr_yn" value=""> <input
			type="hidden" id="under_14" name="under_14" value=""> <input
			type="hidden" id="mbr_no" name="mbr_no" value=""> <input
			type="hidden" id="mbr_id" name="mbr_id" value=""> <input
			type="hidden" id="mbr_typ_cd" name="mbr_typ_cd" value=""> <input
			type="hidden" id="rejoin_yn" name="rejoin_yn" value=""> <input
			type="hidden" id="nm_cnfm_yn" name="nm_cnfm_yn" value=""> <input
			type="hidden" id="ret_code" name="ret_code" value=""> <input
			type="hidden" id="auth_yn" name="auth_yn" value=""> <input
			type="hidden" id="flag" name="flag" value=""> <input
			type="hidden" id="mask_mbr_id" name="mask_mbr_id" value=""> <input
			type="hidden" id="mask_hg_nm" name="mask_hg_nm" value=""> <input
			type="hidden" id="ci" name="ci" value=""> <input
			type="hidden" id="secss_req_dy" name="secss_req_dy" value="">
		<input type="hidden" id="phone_no" name="phone_no" value="">
	</form>


	<script type="text/javascript" data-import="true"
		src="/cjmweb/js/modules/placeholder.js"></script>
	<script type="text/javascript" data-import="true"
		src="/cjmweb/js/modules/formatter.js"></script>
</body>

</html>