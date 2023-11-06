<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../css/CJbase.css" />
<link rel="stylesheet" href="../css/CJparticipate.css" />
</head>
<body>
<body>
<!--skip navigation-->
<div class="skipNavi">
   <a href="#contentsWrap">본문으로 바로가기</a>
</div>
<!--//skip navigation-->
<div id="bodyWrap">
   
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
        /* 
        $("#headerFrm").attr("action", "https://www.cjone.com/cjmweb/search.do?h_search_keyword=" + search_keyword);
        $("#headerFrm").submit();
         */
         
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
                    <div id="coop_header_wrap"><p class="part_logo">건강한 아름다움을 제안하는 글로벌 라이프스타일 플랫폼<img src="/cjmweb/upfile/20191007_1837101.png" alt="올리브영"></p></div>
                <!-- 160216 수정 - 제휴 브랜드별 헤더 문구 및 로고 추가 -->
                    
                    
            <!-- //160216 수정 - 제휴 브랜드별 헤더 문구 및 로고 추가 -->
            </div>
        </div>
    

   <!--//header-->

   <!--contents-->
   <div id="contentsWrap">
      <div id="contents">
         <!--title-->
         
         <div class="location_wrap">
          
                
            
                
                 <div class="location"><a href="https://www.cjone.com/cjmweb/main.do" class="home"><span class="haze">홈</span></a><a href="https://www.cjone.com/cjmweb/join.do" class="now"><span>회원가입</span></a></div>
                
              
         </div>
         
         <div class="cont_header">
             
                    
                    
                        <h1 class="h1_tit">회원가입</h1>
                    
                         
            <p class="h_desc">라이프스타일 멤버십 CJ ONE! 외식, 쇼핑, 엔터테인먼트 서비스를 한 장의 카드로 즐기세요~</p>
         </div>
         <!--title-->
         <div class="cont_area">
            <div class="member_join uni">
               <!--step-->
               <div class="step_join">
                  
                     
                     
                         <ul class="col4">
                                    <li class="step1">본인인증 <span class="haze">진행 완료</span><span class="line"></span></li>
                                    <li class="step2">약관동의 <span class="haze">진행 완료</span><span class="line"></span></li>
                                    <li class="step3 on">회원정보 입력 <span class="haze">진행 중</span><span class="line"></span></li>
                                    <li class="step4">가입완료 <span class="haze">진행 전</span></li>
                                </ul>
                     
                  
               </div>
               <!--//step-->
               
                        
                    
               <div class="member_data">
                  <h2 class="haze">회원정보 입력</h2>
                  <!-- <p class="msg_emph">
                     CJ ONE 회원가입을 위해 <em>회원정보를 입력</em>해주세요.
                  </p> -->

                  <div class="member_info">
                     <form id="form1" method="post" action="">
                         <input type="hidden" id="coopco_cd" name="coopco_cd" value="7030">
                         <input type="hidden" id="brnd_cd" name="brnd_cd" value="3000">
                         <input type="hidden" id="mcht_no" name="mcht_no" value="3000">
                         <input type="hidden" name="coop_return_url" id="coop_return_url" value="">
                         <input type="hidden" id="sub_type" name="sub_type" value="1">
                         <input type="hidden" id="ipin_use_yn" name="ipin_use_yn" value="">
                         <input type="hidden" id="hg_nm" name="hg_nm" value="이수환">
                         <input type="hidden" id="vno" name="vno" value="">
                         <!-- ####주민번호미보유#### 주민번호삭제 -->
                         <input type="hidden" id="ipin_ci" name="ipin_ci" value="BbsvNWk1mdc5XVc15zRkJnUtVGjsQhgH/yb1b1CyDeRgEROBXbgIYB+4GXnADTnpcfHRkc4n9FRRtqWaNV0NaA==">
                         <input type="hidden" id="ssn1" name="ssn1" value="">
                         <input type="hidden" id="ssn2" name="ssn2" value="">
                         <input type="hidden" id="ipin_di" name="ipin_di" value="">
                         <input type="hidden" id="gender" name="gender" value="M">
                         <input type="hidden" id="legl_birth_dy" name="legl_birth_dy" value="19620216">
                         <input type="hidden" id="frgnr_yn" name="frgnr_yn" value="N">
                         <input type="hidden" id="under_14" name="under_14" value="N">
                         <input type="hidden" id="id_validate" name="id_validate" value="">
                         <input type="hidden" id="agr_dy" name="agr_dy" value="20231106">
                         <input type="hidden" id="agr_tm" name="agr_tm" value="175010">
                         <input type="hidden" id="agr_yn" name="agr_yn" value="Y">
                         <input type="hidden" name="svcuse_agr_typ_cd" value="10,11,30,40,">
                         <input type="hidden" name="agr_sub_yn99" id="agr_sub_yn99" value="Y"> <!-- 3자 동의파라메터   -->
                         <input type="hidden" id="mbr_no" name="mbr_no" value="">
                         <input type="hidden" id="mbr_typ_cd" name="mbr_typ_cd" value="11">
                         <input type="hidden" id="legl_rep_nm" name="legl_rep_nm" value="">
                         <input type="hidden" id="legl_birth_day" name="legl_birth_day" value="">
                         <input type="hidden" id="legl_ipin_ci" name="legl_ipin_ci" value="">
                         <input type="hidden" id="legl_cert" name="legl_cert" value="">
                         <input type="hidden" id="legl_typ_cd" name="legl_typ_cd" value="">
                         <input type="hidden" id="legl_rep_agr_yn" name="legl_rep_agr_yn" value="">
                         <input type="hidden" id="join_coopco_list" name="join_coopco_list" value="">
                         <input type="hidden" id="rejoin_yn" name="rejoin_yn" value="N">
                         <input type="hidden" id="actionUrl" name="actionUrl" value="">
                         <input type="hidden" id="nm_cnfm_yn" name="nm_cnfm_yn" value="">
                         <input type="hidden" id="coopco_hg_nm" name="coopco_hg_nm" value="올리브영">
                         <input type="hidden" name="agr_typ_onln" value="10,20,">
                         <input type="hidden" id="card_chk" name="card_chk" value="N">
                         <input type="hidden" name="evt_typ" id="evt_typ" value="">
                         <input type="hidden" id="clndr_typ_cd" name="clndr_typ_cd" value="S">
                         <input type="hidden" id="upd_coopco_id" name="upd_coopco_id" value="">
                         <input type="hidden" id="sns_yn" name="sns_yn" value="">
                         <input type="hidden" name="omni_agr_list" id="omni_agr_list" value="10|7060|6040,10|7130|1301,10|7040|4070,10|7030|3000,10|7240|2401,10|7010|1000,10|7020|2000,10|7190|1900">
                         <!-- 2010.12.21 가입출처 제휴사 정보 추가.(오쇼핑,더마켓의 다음온, 링크프라이스를 통한 회원가입시 가입출처 정보) -->
                         
                            
                     
                        <div class="table_header">
                           <h3 class="h3_tit">기본정보</h3>
                           <div class="info"><p class="msg_mandatory"><span class="haze">"필수"</span> 표시는 필수 입력 항목입니다.</p></div>
                        </div>
                        <div class="table_col">
                           <table>
                              <caption>회원기본정보 입력 표로 회원정보 이름, 아이디, 비밀번호, 비밀번호 확인, 생년월일, 휴대전화, 이메일을 나타냅니다.</caption>
                              <colgroup>
                                 <col class="title">
                                 <col class="body">
                              </colgroup>
                              <tbody>
                                 <tr class="input">
                                    <th scope="row" class="mandatory">
                                       <label for="input_member_name"><span class="haze">"필수"</span> 이름</label>
                                    </th>
                                    <td>
                                       <span class="input_txt"><input type="text" readonly="" value="이수환" class="text readonly member_name" id="input_member_name"></span><!-- 에러시 .error 클래스 추가 -->
                                    </td>
                                 </tr>
                                 <tr class="input">
                                    <th scope="row" class="mandatory">
                                       <label for="mbr_id"><span class="haze">"필수"</span> 아이디</label>
                                    </th>
                                    <td>
                                       <div class="input_group">
                                          <span class="input_txt w250"><input type="text" class="text" title="사용 할 영문 아이디 명 입력" placeholder="아이디를 입력해주세요." name="mbr_id" id="mbr_id" maxlength="12" value=""><!-- 에러시 .error 클래스 추가 --></span>
                                          
                                             <button type="button" class="btn btn_search" onclick="javascript:idCheck();">중복확인</button>
                                          
                                          <a class="btn btn_sm" onclick="cjone.openModal('/cjmweb/join/cjPotalIdInfo.do')" href="javascript://;"><span class="arr">CJ ONE 통합 아이디 안내</span></a>
                                          <p class="msg_info em hide" id="alert_mbr_id"></p>
                                       </div>
                                       <p class="msg_desc">CGV,CJ온스타일 등 기존의 CJ ONE  제휴 브랜드 회원님의 경우는 기존에 사용하고 계신 아이디가 새롭게 생성하신 <br>통합 아이디로 변경됩니다.</p>
                                    </td>
                                 </tr>
                                 <tr class="input">
                                    <th scope="row" class="mandatory">
                                       <label for="pwd"><span class="haze">"필수"</span> 비밀번호</label>
                                    </th>
                                    <td>
                                       <div class="input_group">
                                          <span class="input_txt w250"><input type="password" class="text" placeholder="비밀번호를 입력해주세요." name="pwd" id="pwd" maxlength="50"></span>
                                          <span class="pwd_lv" id="alert_pwd_strength"></span>
                                          <p class="msg_info em hide" id="msg_pwd">비밀번호는 영문자, 숫자, 특수문자 모두 최소 1가지 이상 조합한 8~12자리이어야 합니다.</p>
                                       </div>
                                        <p class="msg_desc">영문자, 숫자,특수문자 조합하여 8~12자리, 아이디와 4자리이상 동일,반복 문자숫자 불가<br>사용 가능 특수 문자 : !"#$%&amp;'()*+,-./:;&lt;=&gt;?@[]^_`{|}~</p><!-- 사용 가능 특수문자 -->
                                    </td>
                                 </tr>
                                 <tr class="input">
                                    <th scope="row" class="mandatory">
                                       <label for="pwd_check"><span class="haze">"필수"</span> 비밀번호 확인</label>
                                    </th>
                                    <td>
                                       <div class="input_group">
                                          <span class="input_txt"><input type="password" class="text" placeholder="비밀번호를 재입력해주세요." name="pwd_check" id="pwd_check" maxlength="50"></span>
                                          <p class="msg_info em hide" id="msg_pwd_check">비밀번호와 비밀번호 확인이 일치하지 않습니다.</p>
                                       </div>
                                    </td>
                                 </tr>
                                 <tr class="input">
                                    <th scope="row" class="mandatory">
                                       <label for="birth_yy">
                                       <span class="haze">"필수"</span> 생년월일</label>
                                    </th>
                                    <td>
                                       <div class="birthday_select">
                                          <span class="select w120 hide" data-skin="form">
                                             <select title="생년월일 중 년 선택" id="birth_yy" name="birth_yy">
                                                [<option value="">년</option>, <option value="2023">2023</option>, <option value="2022">2022</option>, <option value="2021">2021</option>, <option value="2020">2020</option>, <option value="2019">2019</option>, <option value="2018">2018</option>, <option value="2017">2017</option>, <option value="2016">2016</option>, <option value="2015">2015</option>, <option value="2014">2014</option>, <option value="2013">2013</option>, <option value="2012">2012</option>, <option value="2011">2011</option>, <option value="2010">2010</option>, <option value="2009">2009</option>, <option value="2008">2008</option>, <option value="2007">2007</option>, <option value="2006">2006</option>, <option value="2005">2005</option>, <option value="2004">2004</option>, <option value="2003">2003</option>, <option value="2002">2002</option>, <option value="2001">2001</option>, <option value="2000">2000</option>, <option value="1999">1999</option>, <option value="1998">1998</option>, <option value="1997">1997</option>, <option value="1996">1996</option>, <option value="1995">1995</option>, <option value="1994">1994</option>, <option value="1993">1993</option>, <option value="1992">1992</option>, <option value="1991">1991</option>, <option value="1990">1990</option>, <option value="1989">1989</option>, <option value="1988">1988</option>, <option value="1987">1987</option>, <option value="1986">1986</option>, <option value="1985">1985</option>, <option value="1984">1984</option>, <option value="1983">1983</option>, <option value="1982">1982</option>, <option value="1981">1981</option>, <option value="1980">1980</option>, <option value="1979">1979</option>, <option value="1978">1978</option>, <option value="1977">1977</option>, <option value="1976">1976</option>, <option value="1975">1975</option>, <option value="1974">1974</option>, <option value="1973">1973</option>, <option value="1972">1972</option>, <option value="1971">1971</option>, <option value="1970">1970</option>, <option value="1969">1969</option>, <option value="1968">1968</option>, <option value="1967">1967</option>, <option value="1966">1966</option>, <option value="1965">1965</option>, <option value="1964">1964</option>, <option value="1963">1963</option>, <option value="1962" selected="">1962</option>, <option value="1961">1961</option>, <option value="1960">1960</option>, <option value="1959">1959</option>, <option value="1958">1958</option>, <option value="1957">1957</option>, <option value="1956">1956</option>, <option value="1955">1955</option>, <option value="1954">1954</option>, <option value="1953">1953</option>, <option value="1952">1952</option>, <option value="1951">1951</option>, <option value="1950">1950</option>, <option value="1949">1949</option>, <option value="1948">1948</option>, <option value="1947">1947</option>, <option value="1946">1946</option>, <option value="1945">1945</option>, <option value="1944">1944</option>, <option value="1943">1943</option>, <option value="1942">1942</option>, <option value="1941">1941</option>, <option value="1940">1940</option>, <option value="1939">1939</option>, <option value="1938">1938</option>, <option value="1937">1937</option>, <option value="1936">1936</option>, <option value="1935">1935</option>, <option value="1934">1934</option>, <option value="1933">1933</option>, <option value="1932">1932</option>, <option value="1931">1931</option>, <option value="1930">1930</option>, <option value="1929">1929</option>, <option value="1928">1928</option>, <option value="1927">1927</option>, <option value="1926">1926</option>, <option value="1925">1925</option>, <option value="1924">1924</option>, <option value="1923">1923</option>, <option value="1922">1922</option>, <option value="1921">1921</option>, <option value="1920">1920</option>, <option value="1919">1919</option>, <option value="1918">1918</option>, <option value="1917">1917</option>, <option value="1916">1916</option>, <option value="1915">1915</option>, <option value="1914">1914</option>, <option value="1913">1913</option>, <option value="1912">1912</option>, <option value="1911">1911</option>, <option value="1910">1910</option>, <option value="1909">1909</option>, <option value="1908">1908</option>, <option value="1907">1907</option>, <option value="1906">1906</option>, <option value="1905">1905</option>, <option value="1904">1904</option>, <option value="1903">1903</option>, <option value="1902">1902</option>, <option value="1901">1901</option>, <option value="1900">1900</option>]
                                             </select>
                                          </span><div class="select_wrap w120">   <div class="item_seleced"><a href="#1962" title="생년월일 중 년 선택 목록 열기" data-title="생년월일 중 년 선택">1962<span class="haze">선택됨</span></a></div>   <div class="item_list_wrap ">      <div class="item_list ui_scrollarea">         <ul class="ui_content"><li><a href="#"><span>년</span></a></li><li><a href="#2023"><span>2023</span></a></li><li><a href="#2022"><span>2022</span></a></li><li><a href="#2021"><span>2021</span></a></li><li><a href="#2020"><span>2020</span></a></li><li><a href="#2019"><span>2019</span></a></li><li><a href="#2018"><span>2018</span></a></li><li><a href="#2017"><span>2017</span></a></li><li><a href="#2016"><span>2016</span></a></li><li><a href="#2015"><span>2015</span></a></li><li><a href="#2014"><span>2014</span></a></li><li><a href="#2013"><span>2013</span></a></li><li><a href="#2012"><span>2012</span></a></li><li><a href="#2011"><span>2011</span></a></li><li><a href="#2010"><span>2010</span></a></li><li><a href="#2009"><span>2009</span></a></li><li><a href="#2008"><span>2008</span></a></li><li><a href="#2007"><span>2007</span></a></li><li><a href="#2006"><span>2006</span></a></li><li><a href="#2005"><span>2005</span></a></li><li><a href="#2004"><span>2004</span></a></li><li><a href="#2003"><span>2003</span></a></li><li><a href="#2002"><span>2002</span></a></li><li><a href="#2001"><span>2001</span></a></li><li><a href="#2000"><span>2000</span></a></li><li><a href="#1999"><span>1999</span></a></li><li><a href="#1998"><span>1998</span></a></li><li><a href="#1997"><span>1997</span></a></li><li><a href="#1996"><span>1996</span></a></li><li><a href="#1995"><span>1995</span></a></li><li><a href="#1994"><span>1994</span></a></li><li><a href="#1993"><span>1993</span></a></li><li><a href="#1992"><span>1992</span></a></li><li><a href="#1991"><span>1991</span></a></li><li><a href="#1990"><span>1990</span></a></li><li><a href="#1989"><span>1989</span></a></li><li><a href="#1988"><span>1988</span></a></li><li><a href="#1987"><span>1987</span></a></li><li><a href="#1986"><span>1986</span></a></li><li><a href="#1985"><span>1985</span></a></li><li><a href="#1984"><span>1984</span></a></li><li><a href="#1983"><span>1983</span></a></li><li><a href="#1982"><span>1982</span></a></li><li><a href="#1981"><span>1981</span></a></li><li><a href="#1980"><span>1980</span></a></li><li><a href="#1979"><span>1979</span></a></li><li><a href="#1978"><span>1978</span></a></li><li><a href="#1977"><span>1977</span></a></li><li><a href="#1976"><span>1976</span></a></li><li><a href="#1975"><span>1975</span></a></li><li><a href="#1974"><span>1974</span></a></li><li><a href="#1973"><span>1973</span></a></li><li><a href="#1972"><span>1972</span></a></li><li><a href="#1971"><span>1971</span></a></li><li><a href="#1970"><span>1970</span></a></li><li><a href="#1969"><span>1969</span></a></li><li><a href="#1968"><span>1968</span></a></li><li><a href="#1967"><span>1967</span></a></li><li><a href="#1966"><span>1966</span></a></li><li><a href="#1965"><span>1965</span></a></li><li><a href="#1964"><span>1964</span></a></li><li><a href="#1963"><span>1963</span></a></li><li><a href="#1962" data-selected="true"><span>1962</span></a></li><li><a href="#1961"><span>1961</span></a></li><li><a href="#1960"><span>1960</span></a></li><li><a href="#1959"><span>1959</span></a></li><li><a href="#1958"><span>1958</span></a></li><li><a href="#1957"><span>1957</span></a></li><li><a href="#1956"><span>1956</span></a></li><li><a href="#1955"><span>1955</span></a></li><li><a href="#1954"><span>1954</span></a></li><li><a href="#1953"><span>1953</span></a></li><li><a href="#1952"><span>1952</span></a></li><li><a href="#1951"><span>1951</span></a></li><li><a href="#1950"><span>1950</span></a></li><li><a href="#1949"><span>1949</span></a></li><li><a href="#1948"><span>1948</span></a></li><li><a href="#1947"><span>1947</span></a></li><li><a href="#1946"><span>1946</span></a></li><li><a href="#1945"><span>1945</span></a></li><li><a href="#1944"><span>1944</span></a></li><li><a href="#1943"><span>1943</span></a></li><li><a href="#1942"><span>1942</span></a></li><li><a href="#1941"><span>1941</span></a></li><li><a href="#1940"><span>1940</span></a></li><li><a href="#1939"><span>1939</span></a></li><li><a href="#1938"><span>1938</span></a></li><li><a href="#1937"><span>1937</span></a></li><li><a href="#1936"><span>1936</span></a></li><li><a href="#1935"><span>1935</span></a></li><li><a href="#1934"><span>1934</span></a></li><li><a href="#1933"><span>1933</span></a></li><li><a href="#1932"><span>1932</span></a></li><li><a href="#1931"><span>1931</span></a></li><li><a href="#1930"><span>1930</span></a></li><li><a href="#1929"><span>1929</span></a></li><li><a href="#1928"><span>1928</span></a></li><li><a href="#1927"><span>1927</span></a></li><li><a href="#1926"><span>1926</span></a></li><li><a href="#1925"><span>1925</span></a></li><li><a href="#1924"><span>1924</span></a></li><li><a href="#1923"><span>1923</span></a></li><li><a href="#1922"><span>1922</span></a></li><li><a href="#1921"><span>1921</span></a></li><li><a href="#1920"><span>1920</span></a></li><li><a href="#1919"><span>1919</span></a></li><li><a href="#1918"><span>1918</span></a></li><li><a href="#1917"><span>1917</span></a></li><li><a href="#1916"><span>1916</span></a></li><li><a href="#1915"><span>1915</span></a></li><li><a href="#1914"><span>1914</span></a></li><li><a href="#1913"><span>1913</span></a></li><li><a href="#1912"><span>1912</span></a></li><li><a href="#1911"><span>1911</span></a></li><li><a href="#1910"><span>1910</span></a></li><li><a href="#1909"><span>1909</span></a></li><li><a href="#1908"><span>1908</span></a></li><li><a href="#1907"><span>1907</span></a></li><li><a href="#1906"><span>1906</span></a></li><li><a href="#1905"><span>1905</span></a></li><li><a href="#1904"><span>1904</span></a></li><li><a href="#1903"><span>1903</span></a></li><li><a href="#1902"><span>1902</span></a></li><li><a href="#1901"><span>1901</span></a></li><li><a href="#1900"><span>1900</span></a></li></ul>      </div>      <div class="scroll ui_scrollbar">         <span class="bg_top"></span>         <span class="bg bg_mid" style="display: none;"></span>         <span class="bg_btm"></span>      </div>   </div></div>
                                          <span class="symbol">년</span>
                                          <span class="select w70 hide" data-skin="form">
                                             <select title="생년월일 중 월 선택" class="narrow" id="birth_mm" name="birth_mm">
                                                [<option value="">월</option>, <option value="01">01</option>, <option value="02" selected="">02</option>, <option value="03">03</option>, <option value="04">04</option>, <option value="05">05</option>, <option value="06">06</option>, <option value="07">07</option>, <option value="08">08</option>, <option value="09">09</option>, <option value="10">10</option>, <option value="11">11</option>, <option value="12">12</option>]
                                             </select>
                                          </span><div class="select_wrap w70">   <div class="item_seleced"><a href="#02" title="생년월일 중 월 선택 목록 열기" data-title="생년월일 중 월 선택">02<span class="haze">선택됨</span></a></div>   <div class="item_list_wrap ">      <div class="item_list ui_scrollarea">         <ul class="ui_content"><li><a href="#"><span>월</span></a></li><li><a href="#01"><span>01</span></a></li><li><a href="#02" data-selected="true"><span>02</span></a></li><li><a href="#03"><span>03</span></a></li><li><a href="#04"><span>04</span></a></li><li><a href="#05"><span>05</span></a></li><li><a href="#06"><span>06</span></a></li><li><a href="#07"><span>07</span></a></li><li><a href="#08"><span>08</span></a></li><li><a href="#09"><span>09</span></a></li><li><a href="#10"><span>10</span></a></li><li><a href="#11"><span>11</span></a></li><li><a href="#12"><span>12</span></a></li></ul>      </div>      <div class="scroll ui_scrollbar">         <span class="bg_top"></span>         <span class="bg bg_mid" style="display: none;"></span>         <span class="bg_btm"></span>      </div>   </div></div>
                                          <span class="symbol">월</span>
                                          <span class="select w70 hide" data-skin="form">
                                             <select title="생년월일 중 일 선택" class="narrow" id="birth_dd" name="birth_dd">
                                                [<option value="">일</option>, <option value="01">01</option>, <option value="02">02</option>, <option value="03">03</option>, <option value="04">04</option>, <option value="05">05</option>, <option value="06">06</option>, <option value="07">07</option>, <option value="08">08</option>, <option value="09">09</option>, <option value="10">10</option>, <option value="11">11</option>, <option value="12">12</option>, <option value="13">13</option>, <option value="14">14</option>, <option value="15">15</option>, <option value="16" selected="">16</option>, <option value="17">17</option>, <option value="18">18</option>, <option value="19">19</option>, <option value="20">20</option>, <option value="21">21</option>, <option value="22">22</option>, <option value="23">23</option>, <option value="24">24</option>, <option value="25">25</option>, <option value="26">26</option>, <option value="27">27</option>, <option value="28">28</option>]
                                             </select>
                                          </span><div class="select_wrap w70">   <div class="item_seleced"><a href="#16" title="생년월일 중 일 선택 목록 열기" data-title="생년월일 중 일 선택">16<span class="haze">선택됨</span></a></div>   <div class="item_list_wrap ">      <div class="item_list ui_scrollarea">         <ul class="ui_content"><li><a href="#"><span>일</span></a></li><li><a href="#01"><span>01</span></a></li><li><a href="#02"><span>02</span></a></li><li><a href="#03"><span>03</span></a></li><li><a href="#04"><span>04</span></a></li><li><a href="#05"><span>05</span></a></li><li><a href="#06"><span>06</span></a></li><li><a href="#07"><span>07</span></a></li><li><a href="#08"><span>08</span></a></li><li><a href="#09"><span>09</span></a></li><li><a href="#10"><span>10</span></a></li><li><a href="#11"><span>11</span></a></li><li><a href="#12"><span>12</span></a></li><li><a href="#13"><span>13</span></a></li><li><a href="#14"><span>14</span></a></li><li><a href="#15"><span>15</span></a></li><li><a href="#16" data-selected="true"><span>16</span></a></li><li><a href="#17"><span>17</span></a></li><li><a href="#18"><span>18</span></a></li><li><a href="#19"><span>19</span></a></li><li><a href="#20"><span>20</span></a></li><li><a href="#21"><span>21</span></a></li><li><a href="#22"><span>22</span></a></li><li><a href="#23"><span>23</span></a></li><li><a href="#24"><span>24</span></a></li><li><a href="#25"><span>25</span></a></li><li><a href="#26"><span>26</span></a></li><li><a href="#27"><span>27</span></a></li><li><a href="#28"><span>28</span></a></li></ul>      </div>      <div class="scroll ui_scrollbar">         <span class="bg_top"></span>         <span class="bg bg_mid" style="display: none;"></span>         <span class="bg_btm"></span>      </div>   </div></div>
                                          <span class="symbol">일</span>
                                       </div>
                                       <p class="msg_desc">설정하신 생일을 기준으로 <em>15일 전</em> 생일쿠폰이 발행됩니다.</p>
                                    </td>
                                 </tr>
                                 <tr class="input">
                                    <th scope="row" class="mandatory">
                                       <label for="mob_no_1"><span class="haze">"필수"</span> 휴대전화번호</label>
                                    </th>
                                    <td>
                                    
                                                   
                                                    <span class="input_txt mob_no">
                                                       010-****-7310
                                                       <input type="hidden" name="mob_no_1" id="mob_no_1" value="010">
                                                       <input type="hidden" name="mob_no_2" id="mob_no_2" value="9294">
                                                       <input type="hidden" name="mob_no_3" id="mob_no_3" value="7310">
                                                    </span>
                                                   
                                                   
                                                
                                       <p class="msg_desc">주문 및 배송, 쿠폰, 이벤트 정보 등을 제공 받으실 수 있습니다.</p>
                                    </td>
                                 </tr>
                                 <tr class="input">
                                    <th scope="row" class="mandatory">
                                       <label for="email_addr1"><span class="haze">"필수"</span> 이메일</label>
                                    </th>
                                    <td>
                                       <div class="email_write">
                                          <span class="input_txt w110" data-skin="form">
                                             <input type="text" class="text small" title="이메일 아이디 입력" name="email_addr1" id="email_addr1" value="" placeholder="이메일 아이디" data-format="email" autocomplete="off">
                                          </span>
                                          <span class="symbol">@</span>
                                          <span class="input_txt w110">
                                             <input type="text" class="text small" title="이메일 도메인 입력" name="email_addr2" id="email_addr2" value="" placeholder="이메일 도메인" data-format="email" readonly="readonly" autocomplete="off">
                                          </span>
                                          <span class="select w100 hide" data-skin="form">
                                          <select title="이메일 도메인 선택" name="email_addr_opt" id="email_addr_opt" data-control="emailSelector">
                                             
                                                <option value="0">직접입력</option>
                                             
                                                <option value="naver.com">네이버</option>
                                             
                                                <option value="hanmail.net">한메일</option>
                                             
                                                <option value="nate.com">네이트</option>
                                             
                                                <option value="gmail.com">지메일</option>
                                               
                                          </select>
                                          </span><div class="select_wrap w100">   <div class="item_seleced"><a href="#naver.com" title="이메일 도메인 선택 목록 열기" data-title="이메일 도메인 선택">네이버<span class="haze">선택됨</span></a></div>   <div class="item_list_wrap ">      <div class="item_list ui_scrollarea">         <ul class="ui_content"><li><a href="#0"><span>직접입력</span></a></li><li><a href="#naver.com" data-selected="true"><span>네이버</span></a></li><li><a href="#hanmail.net"><span>한메일</span></a></li><li><a href="#nate.com"><span>네이트</span></a></li><li><a href="#gmail.com"><span>지메일</span></a></li></ul>      </div>      <div class="scroll ui_scrollbar">         <span class="bg_top"></span>         <span class="bg bg_mid" style="display: none;"></span>         <span class="bg_btm"></span>      </div>   </div></div>
                                          <p class="msg_info em hide" id="alert_email_addr">이메일 주소를 다시 확인해주세요.</p>
                                       </div>
                                       <p class="msg_desc">이메일 주소 입력 시 사용 가능 특수 문자 : - . _</p>
                                    </td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                        <div class="table_header choice">
                           <h3 class="h3_tit">선택정보</h3>
                        </div>
                        <div class="table_col">
                           <input type="hidden" name="rcvr_coopco" value="7000|0000">
                           <table>
                              <caption>회원선택정보 입력 표로 CJ ONE 마케팅 정보 수신 동의, 제휴 브랜드 마케팅 정보수신 동의, 추천인 입력 내용의 입력을 나타냅니다.</caption>
                              <colgroup>
                                 <col class="title">
                                 <col class="body">
                              </colgroup>
                              <tbody>
                                 <tr id="cj_agree">
                                    <th scope="row">CJ ONE 마케팅<br>정보 수신 동의</th>
                                    <td data-handler="checkAll">
                                       <p class="mkt_tx">포인트/이벤트/문화공연/상품 소식을 전해드립니다. (공지목적의 발송되는 메일은 제외)<br>아래 채널을 선택하실 경우 해당 채널을 통한 마케팅 수신에 동의하신 것으로 봅니다.</p>
                                       <div class="chk_group">
                                          <span class="check_box" data-skin="accept" data-checked-text="선택됨" data-unchecked-text="미선택됨">
                                             <a href="#">
                                                <span class="haze">전체 동의<span>미선택됨</span></span>
                                             </a><span class="hide"><span class="haze">전체 동의<span>선택불가</span></span></span>
                                             <input type="checkbox" data-check-all="[data-handler='checkAll']" class="chk" value="Y" id="mkt_rcv_all" name="mkt_rcv_all">
                                             <label class="label_check" for="mkt_rcv_all"><span class="ico"></span>전체 동의</label>
                                          </span>
                                          <span class="check_box" data-skin="accept" data-checked-text="선택됨" data-unchecked-text="미선택됨">
                                             <a href="#">
                                                <span class="haze">이메일<span>미선택됨</span></span>
                                             </a><span class="hide"><span class="haze">이메일<span>선택불가</span></span></span>
                                             <input type="checkbox" class="chk" name="email_rcv_70000000" id="email_rcv_70000000" value="Y">
                                             <label class="label_check" for="email_rcv_70000000"><span class="ico"></span>이메일</label>
                                          </span>
                                          <span class="check_box" data-skin="accept" data-checked-text="선택됨" data-unchecked-text="미선택됨">
                                             <a href="#">
                                                <span class="haze">SMS<span>미선택됨</span></span>
                                             </a><span class="hide"><span class="haze">SMS<span>선택불가</span></span></span>
                                             <input type="checkbox" class="chk" name="sms_rcv_70000000" id="sms_rcv_70000000" value="Y">
                                             <label class="label_check" for="sms_rcv_70000000"><span class="ico"></span>SMS</label>
                                          </span>
                                          <span class="check_box" data-skin="accept" data-checked-text="선택됨" data-unchecked-text="미선택됨">
                                             <a href="#">
                                                <span class="haze">휴대전화<span>미선택됨</span></span>
                                             </a><span class="hide"><span class="haze">휴대전화<span>선택불가</span></span></span>
                                             <input type="checkbox" class="chk" name="tm_rcv_70000000" id="tm_rcv_70000000" value="Y">
                                             <label class="label_check" for="tm_rcv_70000000"><span class="ico"></span>휴대전화</label>
                                          </span>
                                       </div>
                                                   <div class="msg_desc">
                                                       <p>※ 회원은 본 서비스 이용 동의 대한 거부를 할 수 있으며, 미 동의 시 본 서비스에 대한 혜택을 받으실 수 없습니다.</p>
                                                   </div>
                                    </td>
                                 </tr>
   
                                 <!--160217 add-->
                                 
                                 <!--160616 리스트 empty 여부 확인해서 전체 노출여부 판단 추가-->
                                 
                                 <!--//160217 add-->
                                 
                                 <tr class="input hide" id="recommender_tr">
                                    <th scope="row">
                                       <label for="rcm_id">추천인</label>
                                    </th>
                                    <td>
                                       <span class="input_txt w250"><input type="text" class="text" name="rcm_id" id="rcm_id" placeholder="추천인 ID" title="추천인 ID"></span>
                                       <input type="hidden" id="rcm_conf_seq" name="rcm_conf_seq" value="">
                                       <button type="button" class="btn" onclick="javascript:checkRcmId();">ID 확인</button>
                                       <p id="alert_rcm_id" class="msg_info em hide">추천인 ID가 확인되었습니다. 이름, ID (ex. 홍*동, abcd123)</p>
                                    </td>
                                 </tr>
                                 <!-- //160204 수정 --> 
                              </tbody>
                           </table>
                        </div>
                        <!-- cjone 카드 등록 -->
                           <div id="crdHead" class="table_header choice" style="display: none;">
                              <h3 class="h3_tit">CJ ONE 카드등록</h3>
                           </div>
                           <div id="crdBody" class="table_col" style="display: none;">
                              <table>
                                 <caption>CJ ONE 카드등록을 위한 정보 입력 테이블입니다. 카드번호 입력,
                                    카드번호 재입력, 카드 비밀번호, 카드 비밀번호 확인 순으로 나열됩니다.</caption>
                                 <colgroup>
                                    <col class="title">
                                    <col class="body">
                                 </colgroup>
                                 <tbody>
                                    <tr class="input">
                                       <th scope="row"><label for="card_num">
                                             카드번호 입력
                                       </label></th>
                                       <td>
                                          <div class="card_number">
                                             <span class="input_txt w80"> <input type="text" style="width: 38px" name="crdNo01" id="crdNo01" maxlength="4" value="" onkeypress="if(event.keyCode<48 || event.keyCode>57) event.returnValue=false;" class="w80">
                                             </span> <span class="symbol">-</span> <span class="input_txt w80"> <input type="text" style="width: 38px" name="crdNo02" id="crdNo02" maxlength="4" value="" onkeypress="if(event.keyCode<48 || event.keyCode>57) event.returnValue=false;" class="w80">
                                             </span> <span class="symbol">-</span> <span class="input_txt w80"> <input type="password" style="width: 38px" name="crdNo03" id="crdNo03" maxlength="4" value="" onkeypress="if(event.keyCode<48 || event.keyCode>57) event.returnValue=false;" class="w80">
                                             </span> <span class="symbol">-</span> <span class="input_txt w80"> <input type="password" style="width: 38px" name="crdNo04" id="crdNo04" maxlength="4" value="" onkeypress="if(event.keyCode<48 || event.keyCode>57) event.returnValue=false;" class="w80">
                                             </span>

                                          </div>
                                       </td>
                                    </tr>
                                    <tr class="input">
                                       <th scope="row"><label for="card_num_again">
                                             카드번호 재입력
                                       </label></th>
                                       <td>
                                          <div class="card_number">
                                             <span class="input_txt w80"> <input type="text" style="width: 38px" name="re_crdNo05" id="re_crdNo05" maxlength="4" value="" onkeypress="if(event.keyCode<48 || event.keyCode>57) event.returnValue=false;" class="w80" readonly="">
                                             </span> <span class="symbol">-</span> <span class="input_txt w80"> <input type="text" style="width: 38px" name="re_crdNo06" id="re_crdNo06" maxlength="4" value="" onkeypress="if(event.keyCode<48 || event.keyCode>57) event.returnValue=false;" class="w80" readonly="">
                                             </span> <span class="symbol">-</span> <span class="input_txt w80"> <input type="text" style="width: 38px" name="re_crdNo07" id="re_crdNo07" maxlength="4" value="" onkeypress="if(event.keyCode<48 || event.keyCode>57) event.returnValue=false;" class="w80">
                                             </span> <span class="symbol">-</span> <span class="input_txt w80"> <input type="text" style="width: 38px" name="re_crdNo08" id="re_crdNo08" maxlength="4" value="" onkeypress="if(event.keyCode<48 || event.keyCode>57) event.returnValue=false;" class="w80">
                                             </span>

                                          </div>
                                          <p id="labelCardNo" class="noticePp" style="padding: 2px 0 1px 15px; margin-left: 5px;"></p>
                                       </td>
                                    </tr>
                                    <tr class="input">
                                       <th scope="row"><label for="card_pwd"> 카드 비밀번호
                                       </label></th>
                                       <td>
                                          <div class="input_group">
                                             <span class="input_txt"><input type="password" name="crd_pwd" class="w80" onkeypress="if(event.keyCode<48 || event.keyCode>57) event.returnValue=false;" id="crd_pwd" value="" maxlength="4"></span>

                                          </div> <span id="labelPW1" class="msg_desc" style="padding: 2px 0 1px 15px; margin-left: 2px;">4자리의
                                             숫자만 입력해주세요.</span>
                                       </td>
                                    </tr>
                                    <tr class="input">
                                       <th scope="row"><label for="card_pwd_again">
                                             카드 비밀번호 확인
                                       </label></th>
                                       <td>
                                          <div class="input_group">
                                             <span class="input_txt"><input type="password" name="re_crd_pwd" class="w80" onkeypress="if(event.keyCode<48 || event.keyCode>57) event.returnValue=false;" id="re_crd_pwd" value="" maxlength="4"></span>

                                          </div> <span id="labelPW2" class="msg_desc" style="padding: 2px 0 1px 15px; margin-left: 2px;">4자리의
                                             숫자만 입력해주세요.</span>
                                       </td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>

                           <div class="btn_sec">
                           <button type="button" class="btn" onclick="javascript:goCancel();">취소</button>
                           <button type="button" class="btn btn_em" onclick="javascript:goSubmit();">등록</button>
                        </div>
                        <div class="box_gray box_btm">
                           <dl class="box_info">
                              <dt>이용안내</dt>
                              <dd>
                                 <ul class="bul_list">
                                    <li class="dot_arr">CJ ONE 회원가입 후에도 각 제휴 브랜드 웹사이트에서 통합 아이디를 사용하여 로그인 하시려면, 각 브랜드 웹사이트의 이용약관에 대한 동의를 거친 후에 이용 가능합니다.</li>
                                    <li class="dot_arr">개인정보 수집 및 활용 동의 (선택)에 거부한 회원님은 마케팅 정보 수신을 받으실 수 없습니다.</li>
                                 </ul>
                              </dd>
                           </dl>
                        </div>
                     </form>
                  </div>
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
      <span class="img"><img src="/cjmweb/images/common/logo_cjolivenetworks_footer.png" alt="CJ 올리브넥트웍스"></span>
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
</div>

<!--script 영역-->
    <script src="/cjmweb/js/modules/cjoneCore.js"></script>
    <script src="/cjmweb/js/modules/commonUi.js"></script>
    <script src="/cjmweb/js/frontUi.js"></script>
    <script src="/cjmweb/js/modules/jquery.bxslider.js"></script>
<!-- 160203 수정 --> 
<script type="text/javascript" src="/cjmweb/js/crypto-js/crypto-js.js"></script>

<script type="text/javascript" src="/cjmweb/js/password_ck.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
          
      
      if ($('#upd_coopco_id').val() == ''){
          $("#crdHead").hide();
          $("#crdBody").hide();
         
      }else{
          $("#crdHead").show();
          $("#crdBody").show();
      }
      
       setUserInfo();  // 오프라인 회원의 경우 값 셋팅
       
       $("#crdNo01").keyup(goNext);        // 카드번호이동       
        $("#crdNo02").keyup(goNext);        // 카드번호이동       
        $("#crdNo03").keyup(goNext);        // 카드번호이동
        $("#crdNo04").keyup(goNext);        // 카드번호이동       
        $("#re_crdNo07").keyup(goNext);     // 카드번호이동
        $("#crdNo04").blur(reInput);
        
        $("#crd_pwd").blur(checkPwd3);
        $("#re_crd_pwd").blur(checkPwd4);
        
       var coopco_cd = "7030";
       var brnd_cd = "3000";

       if(coopco_cd == "7000" && brnd_cd == "0000"){
          //추천인 이벤트 여부 확인
          setRcmEvt();
       }
       
          $('#rcm_id').change(function(){
             if($('#rcm_id').val().length > 0){
                rcmCheck = false;   
             }else{
                rcmCheck = true;
             }
             
          });
       
        function setRcmEvt(){
           
           $.ajax({
                url : "/cjmweb/join/getRcmSeq.do"
                ,dataType:"json"
                ,async: false
                ,type: "POST"
                , success:function(data)
                {            
                   if(data.rcm_conf_seq != ""){
                      $('#recommender_tr').removeClass("hide");
                      $('#rcm_conf_seq').val(data.rcm_conf_seq);
                   }
                   
                }
                , error:function(data){
                   alert(data.msg);
                }
             });
        }
          
       $('#mbr_id').change(function() { 
          $('#id_validate').val('N');
          //showErrorMsg("mbr_id", "mbr_id_dupcheck");
          alertMsg("alert_mbr_id", "아이디 중복확인을 해주세요.");
       }); // 아이디(ID)중복확인

//       $("#email_addr_opt").val("naver.com").change();
       $('#pwd').keyup(checkPassword);      // 강도  체크(비밀번호)
   
       $('#email_addr_opt').change(setEmail);  // 이메일 직접 입력등 선택
       $('#email_addr_opt').change(chkEmail);  // 이메일 직접입력
       $('#email_addr2').blur(chkEmailDomain); // 직접입력 이메일 도메인 유효성 체크
       
       $('#crdNo01').keypress(onlyNumber);
        $('#crdNo02').keypress(onlyNumber);
        $('#crdNo03').keypress(onlyNumber);
        $('#crdNo04').keypress(onlyNumber);
       /*
       $('#mkt_rcv_all').click(radioAll);              // 마케팅 수신동의
       
      
       
          $('#mkt_rcv_all2').click(radioAll2);              // 푸드빌 마케팅 수신동의
       
         */
       
       $("#birth_yy").change(function(){
          date_change();
       });
       $("#birth_mm").change(function(){
          date_change();
       });
       
       var cj_marketing_agree = "Y";
       if(cj_marketing_agree != "Y"){
          $('#cj_agree input').attr("disabled", true).trigger('change');
       }
       
       var coop_marketing_agree = "";
       if(coop_marketing_agree != "Y"){
          $('#coop_agree input').attr("disabled", true).trigger('change');
       }
       if(coop_marketing_agree != "Y"){
          //3자제공동의를 하지 않았더라도 마케팅수신동의 값이 N으로 저장되어야 하므로 해당 값은
          //가입시 넘겨주어야함
          $('#coop_agree input[name=rcvr_coopco]').attr("disabled", false).trigger('change');
       }
   });
      
    
    // 오프라인 회원정보
    function setUserInfo() {
        // 기본정보 hidden
        if('' != '') {$('#legl_rep_nm').val('')};
        if('' != '') {$('#legl_rep_ssn1').val('')};
        if('' != '') {$('#legl_rep_ssn2').val('')};
        if('' != '') {$('#legl_rep_mob_no1').val('')};
        if('' != '') {$('#legl_rep_mob_no2').val('')};
        if('' != '') {$('#legl_rep_mob_no3').val('')};
        if('' != '') {$('#legl_rep_email_addr1').val('')};
        if('' != '') {$('#legl_rep_email_addr2').val('')};
        if('' != '') {$('#legl_rep_rel_cnts').val('')};
        if('' != '') {$('#legl_rep_agr_dy').val('')};
        if('' != '') {$('#legl_rep_agr_yn').val('')};

        if('' != '') {$('#email_addr1').val('')};
        if('' != '') {$('#email_addr_opt').val('')};
        if('' != '') {$('#email_addr2').val('')};

        // 이메일 직접입력일때
        if($('#email_addr2').val() != '' && ($('#email_addr_opt').val() != $('#email_addr2').val())) {
            $('#email_addr_opt').val('0');
        }

        // 휴대폰
        if('' != '') {$('#mob_no_1').val('')};
        if('' != '') {$('#mob_no_2').val('')};
        if('' != '') {$('#mob_no_3').val('')};

        // 생일
        if('' != '') {
            $('#birth_yy').val('');
            $('#birth_mm').val('');
            $('#birth_dd').val('');
        }

    }
    
    // 이메일 셋팅
    function setEmail(){
        // 직접입력일때
        if($('#email_addr_opt').val() == '0') {
            $('#email_addr2').attr('readonly', false);
        } else if ($('#email_addr_opt').val() != '') {
            $('#email_addr2').attr('readonly', true);
            $('#email_addr2').val($('#email_addr_opt').val());
        } else {
            $('#email_addr2').attr('readonly', true);
        }
    }
    
    // 이메일 직접입력일때 추가필드 초기화
    function chkEmail(){
        // 직접입력일때
        if($('#email_addr_opt').val() == '0') {
            $('#email_addr2').val('');
        }
    }
    
    // cabs lock 체크
    var msgStr  = "";
    function cabsCheck() {
        var id = this.id;
        if(checkCapsLock()) {
            msgStr = "Cabs lock가 켜져 있습니다.";
        } else {
            $("#msg_"+id).hide();
            msgStr  = "";
        }
    }
    
    // 패스워드 강도 체크  2012.1.5
    var pwStrength = false;
    function checkPassword() {
        pwStrength = false;
        var special_chars1 = "~!@#$%&*";

        var pw = new Password(document.getElementById('pwd').value, special_chars1);
        var verdict = pw.getStrength();

        var hint = msgStr;
        if (pw.lcase_count  == 0)   hint += "";
        if (pw.ucase_count  == 0)   hint += "";
        if (pw.num_count    == 0)   hint += "";
        if (pw.schar_count  == 0)   hint += "";
        if (pw.run_score    <= 1)   hint += "";

        alertMsg("alert_pwd_strength", "<em>"+verdict+" "+hint+"</em>");

        if(pw.strength >= 38){ pwStrength=true;}
    }
    
   function checkPasswordRule() {
        if($('#pwd').val() == ""){
            alert("msg_pwd", "비밀번호를 입력해 주세요.");
            alert("비밀번호를 입력해 주세요.");
            return false;
        } else {
           
           var parameter = {};
           parameter.p = BASE64.encode($('#pwd').val());
           if($('#mbr_id').val()!= undefined){
             parameter.m = BASE64.encode($('#mbr_id').val());  
          }
           
         $.ajax({
              url     : '/cjmweb/common/check-pwd-rule.do',
              dataType  : 'json',
              data   : 'mbr_id='+parameter.m+'&pwd=' + parameter.p,
              async   : false,
              type    : 'POST',
              error   : function(err) { alert(err); },
              success   : function(response, statusText) {
                 if (response.resultCode != "0000") {
                    alertMsg("alert_pwd_strength","<em>"+response.result_msg+"</em>");
                    return false;
                 } else {
                    return true;
                 }
              }
         });
          
        }
   }
   
    function checkPwd2(){
           if( $("#pwd").val() != $("#pwd_check").val() ){
              alertMsg('msg_pwd_check',"입력하신 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.")
        } else{
            $("#msg_pwd_check").hide();
        }
    }
    
   function chkEmailDomain() {
        if($('#email_addr_opt').val() == '0' && $('#email_addr2').val()) {
         $.ajax({
              url     : '/cjmweb/common/check-email-available.do',
              dataType  : 'json',
              data   : 'domain=' + $('#email_addr2').val(),
              async   : false,
              type    : 'POST',
              error   : function(err) { alert(err); },
              success   : function(response, statusText) {
                 if (response.result_code != '00000') {
                    alertMsg('alert_email_addr', "메일 도메인주소를 정확하게 입력하셨나요? 다시 한 번 확인해 주세요.");
                 } else $('#alert_email_addr').hide();
              }
         });
        }
   }
   
    function showCupoon() {
        alert("생일쿠폰 보기!!");
    }
    
    function showMemory() {
        alert("기념일서비스보기 보기!!");
    }

    
    // 취소
    function goCancel() {
        if(!confirm('회원가입을 취소하시겠습니까?')) return;
       
        if (''==''){
            location.href='https://www.cjone.com/cjmweb/main.do';
       }else{
           location.href='https://www.cjone.com/cjmweb/join.do?coopco_cd=7030&brnd_cd=3000&mcht_no=3000&upd_coopco_id=';
       }
    }
    
    // 회원가입 완료
    function goSubmit() {
      
        if( beforeSubmit() )
        {
           var actionUrl = $('#form2').attr('action');
           
           if(actionUrl.indexOf('/join.do') > -1){
              location.href = actionUrl;
           }else{
              $('#form2').submit();
           }
        }
    }
    
    function beforeSubmit() {
        // 이메일 셋팅
        if($('#email_addr_opt').val() != "0"){
            $('#email_addr2').val($('#email_addr_opt').val());
        }

        if(!checkInput()) return false;
   
        if(!confirm('소중한 고객님의 정보는 CJ ONE 제휴 브랜드와 함께 변경 적용됩니다.\n이대로 입력하시겠습니까?')) {
            return false;
        } else {   

           ajaxRegister();
            return true;
        }
    }
    
    //매장가입pc
    function submitOk() {
        // 이메일 셋팅
        if($('#email_addr_opt').val() != "0"){
            $('#email_addr2').val($('#email_addr_opt').val());
        }

        ajaxRegister();
        
        var actionUrl = $('#form2').attr('action');
       
       if(actionUrl.indexOf('/join.do') > -1){
          location.href = actionUrl;
       }else{
          $('#form2').submit();
       }   
    }
    
    function ajaxRegister(){
      $("#pwd").val(BASE64.encode($("#pwd").val()));
      $("#pwd_check").val('');
      var params = $("#form1").serialize();
      
      $.ajax({
         url : '/cjmweb/join/member-register.do'
         ,dataType:'json'
         ,async: false
         ,type: 'POST'
         , data : params,
         success:function(data)
         {
            $("#pwd").val('');
            
            if(data.reqBox.str_msg !='' && data.reqBox.str_msg != null &&  data.reqBox.str_msg != 'undefined'){
               var str_msg ="" + data.reqBox.str_msg;
                str_msg = str_msg.replace(/\\n/g, '\n');
                alert(str_msg);
            }
            
            if(data.reqBox.sns_yn != "undefined" && data.reqBox.sns_yn != null && data.reqBox.sns_yn != '' )$("#form2 #sns_yn").val(data.reqBox.sns_yn);
             if(data.reqBox.coopco_cd != "undefined" && data.reqBox.coopco_cd != null && data.reqBox.coopco_cd != '' )$("#form2 #coopco_cd").val(data.reqBox.coopco_cd);                         
             if(data.reqBox.brnd_cd != "undefined" && data.reqBox.brnd_cd != null && data.reqBox.brnd_cd != '' )$("#form2 #brnd_cd").val(data.reqBox.brnd_cd);   
             if(data.reqBox.mcht_no != "undefined" && data.reqBox.mcht_no != null && data.reqBox.mcht_no != '' )$("#form2 #mcht_no").val(data.reqBox.mcht_no);
             if(data.reqBox.upd_coopco_id != "undefined" && data.reqBox.upd_coopco_id != null && data.reqBox.upd_coopco_id != '' )$("#form2 #upd_coopco_id").val(data.reqBox.upd_coopco_id);
             if(data.reqBox.coop_return_url != "undefined" && data.reqBox.coop_return_url != null && data.reqBox.coop_return_url != '' )$("#form2 #coop_return_url").val(data.reqBox.coop_return_url);   
             if(data.reqBox.return_func != "undefined" && data.reqBox.return_func != null && data.reqBox.return_func != '' )$("#form2 #return_func").val(data.reqBox.return_func);   
             if(data.reqBox.mbr_id != "undefined" && data.reqBox.mbr_id != null && data.reqBox.mbr_id != '' )$("#form2 #mbr_id").val(data.reqBox.mbr_id);   
             if(data.reqBox.sub_type != "undefined" && data.reqBox.sub_type != null && data.reqBox.sub_type != '' )$("#form2 #sub_type").val(data.reqBox.sub_type);   
             if(data.reqBox.ipin_use_yn != "undefined" && data.reqBox.ipin_use_yn != null && data.reqBox.ipin_use_yn != '' )$("#form2 #ipin_use_yn").val(data.reqBox.ipin_use_yn);   
             if(data.reqBox.hg_nm != "undefined" && data.reqBox.hg_nm != null && data.reqBox.hg_nm != '' )$("#form2 #hg_nm").val(data.reqBox.hg_nm);   
             if(data.reqBox.vno != "undefined" && data.reqBox.vno != null && data.reqBox.vno != '' )$("#form2 #vno").val(data.reqBox.vno);   
             if(data.reqBox.ssn1 != "undefined" && data.reqBox.ssn1 != null && data.reqBox.ssn1 != '' )$("#form2 #ssn1").val(data.reqBox.ssn1);   
             if(data.reqBox.ssn2 != "undefined" && data.reqBox.ssn2 != null && data.reqBox.ssn2 != '' )$("#form2 #ssn2").val(data.reqBox.ssn2);   
             if(data.reqBox.ipin_ci != "undefined" && data.reqBox.ipin_ci != null && data.reqBox.ipin_ci != '' )$("#form2 #ipin_ci").val(data.reqBox.ipin_ci);   
             if(data.reqBox.ipin_di != "undefined" && data.reqBox.ipin_di != null && data.reqBox.ipin_di != '' )$("#form2 #ipin_di").val(data.reqBox.ipin_di);   
             if(data.reqBox.gender != "undefined" && data.reqBox.gender != null && data.reqBox.gender != '' )$("#form2 #gender").val(data.reqBox.gender);   
             if(data.reqBox.frgnr_yn != "undefined" && data.reqBox.frgnr_yn != null && data.reqBox.frgnr_yn != '' )$("#form2 #frgnr_yn").val(data.reqBox.frgnr_yn);   
             if(data.reqBox.under_14 != "undefined" && data.reqBox.under_14 != null && data.reqBox
</body>
</html>



