<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/CJbase.css" />
<link rel="stylesheet" href="../css/CJparticipate.css" />
</head>
<body style="">
<!--skip navigation-->
<div class="skipNavi">
	<a href="#contentsWrap" class="">본문으로 바로가기</a>
</div>
<!--//skip navigation-->
<div id="bodyWrap" class="wide">

	<!--header-->

<form method="post" id="getCoopForm" name="getCoopForm">
    <input type="hidden" name="get_coopco_cd" id="get_coopco_cd" value="7030">
    <input type="hidden" name="get_brnd_cd" id="get_brnd_cd" value="3000">
    <input type="hidden" name="get_mcht_no" id="get_mcht_no" value="3000">
</form>

<script type="text/javascript">

$('document').ready( function() {
    //참여사에서 들어올 때만 로고 가져오기
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
        //$("#h_search_keyword").val(encodeURIComponent(search_keyword));
        //$("#headerFrm").attr("action", "https://www.cjone.com/cjmweb/search.do?h_search_keyword=" + encodeURIComponent(search_keyword));
        $("#h_search_keyword").val(search_keyword);
        // 20210209임시수정
        location.href = "https://www.cjone.com/cjmweb/search.do?h_search_keyword=" + search_keyword;
        		
    }   
};

function goStore() {
    cjone.openModal('/cjmweb/layer/store/search.do');
}


//DashBoard 관련 function 
var isFirstDashOpen = false;
$(function () {
   /**
    * 대시보드 열기/ 닫기:
    **/
    $('[data-control="personalInfo"]').on({
        'click': function (e) {
            e.preventDefault();
            personalInfoAction();
        }
    });
    
    // ie8에서 trim()함수 오류로 인한 정의
    if(typeof String.prototype.trim !== 'function') {
        String.prototype.trim = function() {
            return this.replace(/^\s+|\s+$/g, ''); 
        };
    }
    
});


//DashBoard html 불러오기
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


//알림정보 추가 조회
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

//알림 리스트 생성
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

//알림 상세로 이동
function goNotifyAction(notify_seq,link_url){
    if(readNotifyAction(notify_seq) == true ){
        ga('send', 'event', 'MY Dash Board 영역', '알림메세지', '알림메세지');      
        $(location).attr("href",link_url);
    }
}

//알림 읽음처리
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
                <h1 class="cj_logo"><span class="logo">CJ ONE</span> TRUE LIFESTYLE MEMBERSHIP</h1>
                    <div id="coop_header_wrap"><p class="part_logo">건강한 아름다움을 제안하는 글로벌 라이프스타일 플랫폼<img src="https://www.cjone.com/cjmweb/upfile/20191007_1837101.png" alt="올리브영"></p></div>
                <!-- 160216 수정 - 제휴 브랜드별 헤더 문구 및 로고 추가 -->
                    
                    
            <!-- //160216 수정 - 제휴 브랜드별 헤더 문구 및 로고 추가 -->
            </div>
        </div>
    

	<!--//header-->

	<!--contents-->
	<div id="contentsWrap">
		<div id="contents">
			<form method="post" id="form1" name="form1" action="/cjmweb/join.do">
				<input type="hidden" name="coopco_cd" id="coopco_cd" value="7030">
				<input type="hidden" name="brnd_cd" id="brnd_cd" value="3000">
				<input type="hidden" name="mcht_no" id="mcht_no" value="3000">
				<input type="hidden" name="upd_coopco_id" id="upd_coopco_id" value="">
				<input type="hidden" name="coop_return_url" id="coop_return_url" value="">
				<input type="hidden" name="evt_typ" id="evt_typ" value="">
				<input type="hidden" name="sub_type" id="sub_type" value="">
				<input type="hidden" name="tester_yn" id="tester_yn" value="">
				<input type="hidden" name="hg_nm" id="hg_nm" value="">
				<!-- 2016.06.14 회원조회(간편)일때 마스킹된 id노출 -->
				<input type="hidden" name="mbr_id" id="mbr_id" value="">
				<input type="hidden" name="mask_mbr_id" id="mask_mbr_id" value="">
				<input type="hidden" name="ci" id="ci" value="">
				<input type="hidden" name="str_msg" id="str_msg" value="">
				
			
				<!-- 2010.12.21 가입출처 제휴사 정보 추가.(오쇼핑,더마켓의 다음온, 링크프라이스를 통한 회원가입시 가입출처 정보) -->

				<div class="cont_header">
					<h1 class="h1_tit">올리브영+CJ ONE 통합회원 가입</h1>
					<p class="h_desc">통합 아이디로 CJ ONE 브랜드 혜택도 받고! 포인트도 쌓고!</p>
				</div>
				
				<!-- inner -->
				<div class="check_member">
					<div class="box_member">
						<h2 class="haze">가입 여부 확인</h2>
						<!--가입여부확인-->
						<div class="check_member_box">
							<dl class="check_member_txt">
								<dt>회원가입 여부 안내</dt>
								<dd>
									<ul class="bul_list">
										<li class="dot_arr">기존 회원가입 정보와 일치하는 정보를 입력하셔야 회원가입 여부를 정확하게 확인하실 수 있습니다. <em class="em">입력하신 정보는 회원가입 여부에만 사용되며 저장되지 않습니다.</em></li>
										<li class="dot_arr">올리브영, CJ더마켓, CJ온스타일, COOKIT, CJ문화재단, ONEiVERSE 에서는 전자상거래에 의거하여 만 14세 미만의 어린이/학생의 회원가입을 제한합니다.</li>
									</ul>
								</dd>
							</dl>
							
							<div class="check_member_form">
								<span class="input_txt w450"><input type="text" class="text" id="user_nm" name="user_nm" placeholder="이름을 입력해주세요." title="이름을 입력해주세요." data-format="engkor" autocomplete="off"></span>
								<p class="msg_info hide" id="msg_user_nm">이름을 입력하세요.</p>
								<span class="input_txt w450"><input type="text" class="text" id="legl_birth_dy" name="legl_birth_dy" placeholder="법정생년월일 6자리를 입력해주세요." title="법정생년월일 6자리를 입력해주세요." data-format="num" maxlength="6" autocomplete="off"></span>
								<p class="msg_info hide" id="msg_legl_birth_dy">법정생년월일을 정확히 입력해 주세요.</p>
								<span class="input_txt w450"><input type="text" class="text" id="mob_no" name="mob_no" placeholder="휴대전화번호 뒤 7~8자리를 입력해주세요. (01X 제외)" title="휴대전화번호 뒤 7~8자리를 입력해주세요. (01X 제외)" data-format="num" maxlength="8" autocomplete="off"></span>
								<p class="msg_info hide" id="msg_mob_no">국번제외한 휴대폰번호를 입력해주세요. (ex.010-123-5678 &gt; 1235678)</p>
								<div class="btn_sec">
									<a href="/Black_OY/user/joinCheck.do" class="btn btn_em" id="btnCheRegister">가입여부 확인</a>
								</div> 
							</div>
						</div>
						<!--//가입여부확인-->

						<!-- 제휴브랜드 -->
						<div class="allianceBrand_box">
							<h2 class="haze">CJ ONE 제휴 브랜드</h2>
							<div class="in_sec">
								<ul class="alliance_list"><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7350&amp;brnd_cd=3501&amp;mcht_no=3501"><img src="/cjmweb/upfile/20231018_18b411578a371.png" alt="아쿠아플라넷"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7010&amp;brnd_cd=1000&amp;mcht_no=1000"><img src="/cjmweb/upfile/20190809_1724081.png" alt="CGV"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7290&amp;brnd_cd=2901&amp;mcht_no=2901" class=""><img src="/cjmweb/upfile/20230428_187c62d824681.png" alt="NHN Bugs"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7190&amp;brnd_cd=1900&amp;mcht_no=1900" class=""><img src="/cjmweb/upfile/20230918_18aa5c510d591.png" alt="TVING"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7150&amp;brnd_cd=1501&amp;mcht_no=1501" class=""><img src="/cjmweb/upfile/20180914_1352121.png" alt="CJ문화재단"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7410&amp;brnd_cd=4101&amp;mcht_no=4101" class=""><img src="/cjmweb/upfile/20230905_18a642046f241.png" alt="꾸까"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7030&amp;brnd_cd=3000&amp;mcht_no=3000"><img src="/cjmweb/upfile/20191007_1836371.png" alt="올리브영"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7050&amp;brnd_cd=5000&amp;mcht_no=30" class=""><img src="/cjmweb/upfile/20210510_17953c8f11841.png" alt="CJ온스타일"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7060&amp;brnd_cd=6010&amp;mcht_no=6010" class=""><img src="/cjmweb/upfile/20190703_0846461.png" alt="CJ더마켓"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7280&amp;brnd_cd=2801&amp;mcht_no=2801" class=""><img src="/cjmweb/upfile/20230224_18681b2982541.png" alt="진맛과"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7230&amp;brnd_cd=2301&amp;mcht_no=2301"><img src="/cjmweb/upfile/20210827_17b86a5fb1071.png" alt="CJ더마켓(오프라인)"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7060&amp;brnd_cd=6130&amp;mcht_no=6130" class=""><img src="/cjmweb/upfile/20190628_1544231.png" alt="쿡킷"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7050&amp;brnd_cd=5010&amp;mcht_no=5010"><img src="/cjmweb/upfile/20190820_1553051.png" alt="스타일온에어"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7240&amp;brnd_cd=2401&amp;mcht_no=2401" class=""><img src="/cjmweb/upfile/20220927_1837ca73d8a11.png" alt="ONEiVERSE"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7370&amp;brnd_cd=3701&amp;mcht_no=3701" class=""><img src="/cjmweb/upfile/20230822_18a1c9a1e0131.png" alt="메가MGC커피"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2220&amp;mcht_no=2220" class=""><img src="/cjmweb/upfile/20210608_179ea5ff31341.png" alt="엔테라스"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2210&amp;mcht_no=2210"><img src="/cjmweb/upfile/20210608_179ea654d5361.png" alt="엔버거"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2200&amp;mcht_no=2200" class=""><img src="/cjmweb/upfile/20210608_179ea59d4f111.png" alt="더플레이스 다이닝"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2190&amp;mcht_no=2190"><img src="/cjmweb/upfile/20210608_179ea51de4881.png" alt="N서울타워"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2040&amp;mcht_no=2040" class=""><img src="/cjmweb/upfile/20230927_18ad55e935d91.png" alt="빕스"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2010&amp;mcht_no=2010" class=""><img src="/cjmweb/upfile/20160901_1057571.png" alt="뚜레쥬르"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2170&amp;mcht_no=2170"><img src="/cjmweb/upfile/20160811_0202191.png" alt="계절밥상"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2120&amp;mcht_no=2120" class=""><img src="/cjmweb/upfile/20160811_0224521.png" alt="제일제면소"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2090&amp;mcht_no=2090" class=""><img src="/cjmweb/upfile/20190718_1653551.png" alt="더플레이스"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2150&amp;mcht_no=2150"><img src="/cjmweb/upfile/20210929_17c2f1854d751.png" alt="더스테이크하우스"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7020&amp;brnd_cd=2140&amp;mcht_no=2140" class=""><img src="/cjmweb/upfile/20160811_0241291.png" alt="CJ푸드월드"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7330&amp;brnd_cd=3301&amp;mcht_no=3301"><img src="/cjmweb/upfile/20230427_187c10d760921.png" alt="트립닷컴"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7340&amp;brnd_cd=3401&amp;mcht_no=3401" class=""><img src="/cjmweb/upfile/20230510_18802ce454a11.png" alt="제주모바일"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7360&amp;brnd_cd=3601&amp;mcht_no=3601" class=""><img src="/cjmweb/upfile/20230705_1892477672631.png" alt="여행이지(교원투어)"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7380&amp;brnd_cd=3801&amp;mcht_no=3801" class=""><img src="/cjmweb/upfile/20230731_189a987ef3b61.png" alt="멀티캠퍼스(OPIc)"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7270&amp;brnd_cd=2701&amp;mcht_no=2701"><img src="/cjmweb/upfile/20230217_1865e6c9f6931.png" alt="CU"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7390&amp;brnd_cd=3901&amp;mcht_no=3901"><img src="/cjmweb/upfile/20230705_189245795cc21.png" alt="에브리바이크"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7310&amp;brnd_cd=3101&amp;mcht_no=3101" class=""><img src="/cjmweb/upfile/20230516_1882233f95d51.png" alt="HD현대오일뱅크"></a></li><li><a href="/cjmweb/point-card/brand/detail.do?coopco_cd=7130&amp;brnd_cd=1301&amp;mcht_no=1301"><img src="/cjmweb/upfile/20180803_1401051.png" alt="CJ대한통운"></a></li></ul>

							</div>
						</div>
						<!-- //제휴브랜드 -->
					</div>
					<div class="box_gray box_btm">
						<dl class="box_info">
							<dt>이용안내</dt>
							<dd>
								<ul class="bul_list">
									<li class="dot_arr">회원이 되시면 <em class="em">하나의 통합된 회원 ID와 비밀번호로 CJ ONE 및 각 브랜드 웹 사이트의 다양한 서비스(포인트 조회, 카드등록, 정보변경 서비스 등)를 이용하실 수 있습니다.</em></li>
									<li class="dot_arr">CJ ONE에 가입하더라도 <em class="em">약관 동의되지 않은 CJ ONE 제휴 브랜드에는 개인정보가 제공되지 않습니다.</em></li>
									<li class="dot_arr">CJ ONE은 CJ ONE 제휴 브랜드의 통합 멤버십 서비스입니다.</li>
									<li class="dot_arr">하나의 아이디(ID)로 CJ ONE 제휴 브랜드 사이트를 안전하고 편리하게 이용할 수 있습니다.</li>
									<li class="dot_arr">기존의 각 CJ ONE 제휴 브랜드 사이트에 1개 이상 가입되어 있는 회원님은 새로운 CJ ONE 통합 아이디(ID)를 생성하신 후 가입하실 수 있습니다.</li>
								</ul>
							</dd>
						</dl>
					</div>
	
					<!-- //이용안내 -->
				</div>
				<!-- //inner -->
			</form>
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
	
	<div class="fixedTop" data-control="goTop" style="bottom: 50px;"><a href="#headerWrap" title="페이지 처음으로 이동"><span class="haze">TOP</span></a></div>
	
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
</div>
<!-- script 영역-->
<!-- <script src="/cjmweb/js/modules/cjoneCore.js"></script>
<script src="/cjmweb/js/modules/commonUi.js"></script>
<script src="/cjmweb/js/frontUi.js"></script>
<script src="/cjmweb/js/modules/jquery.bxslider.js"></script>

 -->

<script>
// 가입여부 확인 입력오류 메세지 출력
document.getElementById("user_nm").addEventListener("input", checkField);
document.getElementById("legl_birth_dy").addEventListener("input", checkField);
document.getElementById("mob_no").addEventListener("input", checkField);

function checkField(event) {
    var inputField = event.target; // 변경된 입력 필드
    var msgElement = document.getElementById("msg_" + inputField.id); // 해당 메시지 태그

    if (inputField.textContent == "") {
        msgElement.classList.remove("hide");
        msgElement.classList.add("show");
    } else {
        msgElement.classList.remove("show");
        msgElement.classList.add("hide");
    }
}
</script>
<script>
	document.getElementById("btnCheRegister").onclick = function () {
		this.href = this.href+"?tel="+document.getElementById("mob_no").value+"&u_name="+document.getElementById("user_nm").value 
				+"&u_birth="+document.getElementById("legl_birth_dy").value;
	}
</script>



<script>
/*
	$(function () {
		enterKey("mob_no","goExistCheck()");
	    cjone.importJs(['/cjmweb/js/modules/formatter'], function () {
	        $('[data-format]').formatter();
	    });
	});
	$("#btnCheRegister").click(goExistCheck);
		
	function showErrorMsg(occur_loc){
		$("#msg_user_nm").addClass("hide");
		$("#msg_legl_birth_dy").addClass("hide");
		$("#msg_mob_no").addClass("hide");
		
		$("#user_nm").removeClass("error");
		$("#legl_birth_dy").removeClass("error");
		$("#mob_no").removeClass("error");
		
		$("#" + occur_loc).addClass("error");
		$("#msg_" + occur_loc).removeClass("hide");
	}
 	
	function goExistCheck(){
		if($("#user_nm").val() == "" || $("#user_nm").val() == "이름") {
			showErrorMsg("user_nm");
			$("#user_nm").focus();
			return ;
		} 
	
		if($("#legl_birth_dy").val() == "" || $("#legl_birth_dy").val() == "법정생년월일 6자리") {
			showErrorMsg("legl_birth_dy");
			$("#legl_birth_dy").focus();
			return ;
		} 
	
		if($("#legl_birth_dy").val().length < 6) {
			showErrorMsg("legl_birth_dy");
			$("#legl_birth_dy").focus();
			return ;
		} 
		if($("#mob_no").val() == "") {
			showErrorMsg("mob_no");
			$("#mob_no").focus();
			return ;
		} 
	
		if($("#mob_no").val().length < 7) {
			showErrorMsg("mob_no");
			$("#mob_no").focus();
			return ;
		} 
	
		// 숫자만 입력하게
		//if(!chkPatten(document.form1.legl_birth_dy,'regNum','')) return ;
		//if(!chkPatten(document.form1.mob_no,'regNum','')) return ;
	
		$("#msg_user_nm").addClass("hide");
		$("#msg_birth_dy").addClass("hide");
		$("#msg_mob_no").addClass("hide");


		var url = "/cjmweb/join.do";
		$('#form1').attr('action', url);
		$('#form1').submit();
		*/
	}

</script>
		
<!--//script 영역-->


<!-- <script type="text/javascript" data-import="true" src="/cjmweb/js/modules/formatter.js"></script><script type="text/javascript" data-import="true" src="/cjmweb/js/modules/placeholder.js"></script> -->

<script>

</script>

</body>
</html>