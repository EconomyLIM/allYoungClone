<%@page import="user.domain.OuserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/CJbase.css" />
<link rel="stylesheet" href="../../css/CJparticipate.css" />
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

		<script type="text/javascript">

$('document').ready( function() {
      fn_GetCoopBrndInfo(); 
});

function fn_GetCoopBrndInfo(){
    var param = $("#getCoopForm").serialize();
    $.ajax({
        url            :   "/cjmweb/common/getbrandInfo.do"
       ,data           :   param 
       ,dataType       :   "json"
       ,async          :   false
       ,type           :   "POST"
       ,cache          :   false
       ,success        :   function( objJson ) {
            
          var brnd_nm = objJson.brnd_nm;
          var brnd_desc_sum = objJson.brnd_desc_sum;
          var brnd_bi_img5_mask = objJson.brnd_bi_img5_mask;
          
          if( brnd_nm != null ){
              var html = '';
              html += '<p class="part_logo">';
              html += brnd_desc_sum ;
              html += '<img src="/cjmweb/upfile/' + brnd_bi_img5_mask + '" alt="' + brnd_nm + '"></p>';
              $("#coop_header_wrap").append(html);
           }
          
          if( objJson.correctBrandYn == "N" ){
              alert('잘못된 경로로 접근하였습니다.');
              if( location.pathname.indexOf("/cjmweb/join") > -1 
                       || location.pathname.indexOf("/cjmweb/member/find-id") > -1 
                       || location.pathname.indexOf("/cjmweb/member/find-passwd") > -1
                       || location.pathname.indexOf("/cjmweb/member/change-passwd-step") > -1
                       || location.pathname.indexOf("/cjmweb/member/passwd") > -1
                       || location.pathname.indexOf("/cjmweb/member/account-lock/verify-account") > -1
                ){
                  location.replace(location.pathname);
                } else if(location.pathname.indexOf("/cjmweb/member/terms-of-withdrawal") > -1){
                    location.replace("/cjmweb/main.do");
                }
          }
       }
       ,error          :   function( objJson ) {
           //alert('잘못된 경로로 접근하였습니다.');
       } 
   });
}

function search(){
    var search_keyword = $("#search_keyword").val();
    if($(".tSearch").hasClass("on")) {
        if(search_keyword.trim().length == 0) {
            alert("검색어를 입력해주세요.");
            $("#search_keyword").focus();
            return false;               
        }  
        if(search_keyword.trim().length > 20) {
            alert("검색어는 최대 20자까지 검색 가능합니다.");
            $("#search_keyword").focus();
            return false;
        }
        ga('send', 'event', 'Header 영역', '통합검색', '통합검색');
        digitalData.click.track= "Header^통합검색";
        _satellite.track('clicks');
	 $("#h_search_keyword").val(search_keyword);

        location.href = "https://www.cjone.com/cjmweb/search.do?h_search_keyword=" + search_keyword;
        		
    }   
};
function goStore() {
    cjone.openModal('/cjmweb/layer/store/search.do');
}


var isFirstDashOpen = false;
$(function () {

    $('[data-control="personalInfo"]').on({
        'click': function (e) {
            e.preventDefault();
            personalInfoAction();
        }
    });
    
    if(typeof String.prototype.trim !== 'function') {
        String.prototype.trim = function() {
            return this.replace(/^\s+|\s+$/g, ''); 
        };
    }
});

function personalInfoAction() {
    if(loginCheck() == true){
        if(isFirstDashOpen == false){
            var $appendArea = $('#personalInfo');
            var t = new Date().getTime();
            $.ajax({
                url: '/cjmweb/common/layer/dash-board-action.do?t='+t
            }).done(function (html) {
                var $html = $(html).find('div:eq(0)').parent();
                $appendArea.html($html).show();
                isFirstDashOpen = true;
                var $this = $('[data-control="personalInfo"]');
                $this.triggerHandler('toggle');
                // Google Analytics
                ga('send', 'event', 'Header 영역', 'NOW', 'NOW');
                // Adobe Analytics
                digitalData.click.track= "Header^NOW";
                _satellite.track('clicks');
                $("#noticeList_box").scroll( function() {
                    var elem = $("#noticeList_box");
                    if ( elem[0].scrollHeight - elem.scrollTop() == elem.outerHeight()){
                      notifyMessageAction();
                    }
                });
                $('[data-control="randomNum"]').charMotion('runUp');
                $('[data-control="tooltip"]').tooltip();
                $('[data-control="scrollView"]').scrollview();              
                
            });
        }else{
            var $this = $('[data-control="personalInfo"]');
            $this.triggerHandler('toggle');
         // Google Analytics
            ga('send', 'event', 'Header 영역', 'NOW', 'NOW');
            // Adobe Analytics
            digitalData.click.track= "Header^NOW";
            _satellite.track('clicks');
        }    
    }else{
        linkLogin();
    }
}

var noti_page_num = 1 ;
var readProcessResult = false;
function notifyMessageAction(page_num){
    if(noti_page_num == 99) return; //더이상 조회할건 없음.
    
    noti_page_num = noti_page_num + 1;
    
    $.ajax({
        url : '/cjmweb/layer/notify/notify-list.do',
        dataType : 'json',
        data : 'page_num='+noti_page_num,
        async : true,
        type : 'POST',
        error : function(err) { 
        },
        success : function(response, statusText) {
            if (response.notifylist != undefined && response.notifylist != null && response.notifylist.length > 0) {
                makeList(response.notifylist);
                if(response.notifylist < 10){
                    noti_page_num = 99; //추가조회 없음
                }
            }else{
                noti_page_num = 99; //추가조회 없음
            }
        }
    });
}

function makeList (jsonList) {
    if (jsonList != undefined && jsonList != null && jsonList.length > 0){ 
        $(jsonList).each(function(index,data) {             
             html ="";
             html += '<li>';
             if(data.read_yn == "Y"){
                 html +='<a class="visited" href="javascript:goNotifyAction('+ data.notify_seq +','+ data.notify_link_url +')">';
             }else{
                 html +='<a href="javascript:goNotifyAction('+ data.notify_seq +','+ data.notify_link_url +')">';
             }
             
             if(data.notify_section_name != "" && data.notify_section_name != undefined ) {
                 html += '  <p>['+ data.notify_section_name +'] '+ data.notify_msg +'</p>';  
             } else {
                 html += '  <p>'+ data.notify_msg +'</p>';
             }
             
             html += '  <span class="date">' + data.aprv_fr_dy +' ' + data.reg_time + '</span>';
             html += '</a>';
             html += '</li>';

             $("#noticeList").append(html);
        });
    }
}

function goNotifyAction(notify_seq,link_url){
    if(readNotifyAction(notify_seq) == true ){
        ga('send', 'event', 'MY Dash Board 영역', '알림메세지', '알림메세지');      
        $(location).attr("href",link_url);
    }
}

function readNotifyAction(notify_seq){
    $.ajax({
        url : '/cjmweb/layer/notify/notify-read.do',
        dataType : 'json',
        data : 'notify_seq='+notify_seq,
        async : false,
        type : 'POST',
        error : function(err) { 
            readProcessResult = false;
        },
        success : function(response, statusText) {
            if(statusText == 'success'){
                readProcessResult = true;
            }else{
                readProcessResult = false;
            }
        }
    });
    return readProcessResult;
}
    
function linkLogin() {
    var current = location.href;
    var rtn = '';
    if(current.indexOf('/cjmweb/main.do')> -1) {
        rtn = 'https://www.cjone.com/cjmweb/main.do?s=m';
        rtn = '?return_url='+encodeURI(rtn);
    }
    location.href = 'https://www.cjone.com/cjmweb/login.do'+rtn;
}

function linkCardMng() {
    if( !loginCheck() ) {
        if(confirm('카드 등록을 위해 로그인이 필요합니다.\n계속 진행하시겠습니까?')) {
            //location.href='https://www.cjone.com/cjmweb/my-one/card.do';
            $(location).attr('href', '/cjmweb/login.do?return_url='+escape('https://www.cjone.com/cjmweb/my-one/card.do'));
            return false;
        }
    } else {
        location.href='https://www.cjone.com/cjmweb/my-one/card.do';
        return false;
    }
    return false;
}

function goNft(){
	var url = "/nft.html";
	
    
    url = "https://m.cjone.com" + url;
    
    
    
	location.href = url;
}

</script>
		<form id="headerFrm" method="get">
			<input type="hidden" name="h_search_keyword" id="h_search_keyword">
		</form>
		<!-- 참여사 관련 판단 로직 변경 2016-06-20 pjh0416 -->

		<!--header-->
		<div id="part_headerWrap">
			<div class="part_header_wrap">
				<h1 class="cj_logo">
					<span class="logo">CJ ONE</span> TRUE LIFESTYLE MEMBERSHIP
				</h1>
				<div id="coop_header_wrap">
					<p class="part_logo">
						건강한 아름다움을 제안하는 글로벌 라이프스타일 플랫폼<img
							src="/cjmweb/upfile/20191007_1837101.png" alt="올리브영">
					</p>
				</div>

			</div>
			
		</div>
		<div id="contentsWrap">
			<form id="form1" method="post" action="">
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
						<a href="https://www.cjone.com/cjmweb/main.do" class="home"><span
							class="haze">홈</span></a><a
							href="https://www.cjone.com/cjmweb/member/passwd.do" class="now"><span>회원정보
								수정</span></a>
					</div>
				</div>
				<div class="cont_header">
					<h1 class="h1_tit">회원정보 수정</h1>
					<p class="h_desc">회원님의 소중한 정보를 안전하게 관리하세요.</p>
				</div>
				<div class="cont_area">
				
					<div class="mypage_sec modify">
						<div class="regi_complete">
							<span class="bg bg face_type2"></span>
							<p class="h2_tit">회원정보를 수정하시려면 비밀번호를 입력하셔야 합니다.</p>
							<p class="h_desc">회원님의 개인정보 보호를 위한 본인 확인 절차이오니, CJ ONE 회원 로그인
								시 사용하시는 비밀번호를 입력해주세요.</p>
							<div class="pwd_box">
								<span class="input_txt w330"> <input type="password"
									id="pwd" class="text" placeholder="비밀번호를 입력해주세요." title="비밀번호"
									maxlength="20">
								</span>
							</div>
							<div class="btn_center">
								<button type="button" onclick="javascript:goCancel();"
									class="btn">취소</button>
								<button type="button" onclick="javascript:goCheck();"
									class="btn btn_em">확인</button>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
		<!--//contents-->

		<!--footer-->
		<div id="footer">
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
						src="/cjmweb/images/common/logo_cjolivenetworks_footer.png"
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
	    $(document).ready(function(){
			
			
			enterKey("pwd","goCheck()");
		});
        
		// 취소
		function goCancel() {
			$("#form1").attr("action", "/cjmweb/main.do");
			$("#form1").submit();
			 
		} 
		
		// 비밀번호 확인 
		function goCheck() {
			if($("#pwd").val() == ""){
				alert('비밀번호를 입력해 주세요.');
				$("#pwd").focus();
			}else{
				//var params = encodeURI($('#form1').serialize());
				$('#security_pwd').val(BASE64.encode($('#pwd').val()));
				var params = $('#form1').serialize();
				$.ajax({
			 		url: "/cjmweb/member/passwd-check.do",	
			 		data: params,
			 		dataType: "json",		 		
			 		type:"post",
			 		async: false,
			 		success: function(data) {
			 			var str_msg ="" + data.reqBox.str_msg;
			 			if(data.reqBox.result_code == "2" ){
			 				// 비밀번호 틀릴경우
			 				if( str_msg != "undefined" && str_msg != null && str_msg != '' ){
			 					str_msg = str_msg.replace(/\\n/g, '\n');
			 					alert(str_msg);
			 				}
			 				$('#pwd').val('');
			 				//location.replace("/cjmweb"+ data.reqBox.action_url );
			 			}else if(data.reqBox.result_code == "3" ){
			 				// 페이지 변경
			 				if(  str_msg != "undefined" && str_msg != null && str_msg != '' ){
			 					str_msg = str_msg.replace(/\\n/g, '\n');
			 					alert(dstr_msg);
			 				}
			 				$("#form1").attr("action", "/cjmweb" + data.reqBox.action_url);
			 				$("#form1").submit();
			 			}else if(data.reqBox.result_code == "1"){
			 				// 비밀번호 확인완료 및 수정페이지 이동
			 				$("#__chkpwd").val(data.reqBox.__chkpwd);
			 				$("#form1").attr("action", "/cjmweb" + data.reqBox.action_url);
			 				$("#form1").submit();
			 			}
			 		}, 
			 		error: function(xhr) {
			 		      //에러
			 	    }
			 	});
			}
		}

        //로그인 사용자 정보와 카카오 계정정보 일치여부 판단
        function goMemberInfo() {
            if($('#access_token').val().trim() == ""){
                alert('오류가 발생했습니다.\n잠시 후 다시 시도해 주세요.');
                return false;
            }
             $.ajax({
                 url : '/cjmweb/member/mbrSetupInfoAjax.do',
                 data: {
                     access_token : $("#access_token").val(),
                     inReq : "01",
                     sns_typ_cd : "10"
                 },
                 dataType: "json",
                 type:"post",
                 cache : false,
                 async : false,
                 success: function(res) { 
                     if(res.pass_yn == "Y"){
                          $("#form1").attr("action", "/cjmweb/member/modification.do").submit();
                     }else{
                         var msg = "로그인 사용자 정보와 일치하지 않아 더이상 진행할 수 없습니다.\n다시 로그인 해주시기 바랍니다.";
                         alert(msg);
                         location.href= "/cjmweb/main.do";
                     }
                 },
                 error: function(res){
                     alert('카카오 회원정보 불러오기에 실패하였습니다.');
                 }
             });
        }       
        
    </script>

</body>
</html>