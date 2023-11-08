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
<link rel="stylesheet" href="/Black_OY/css/style.css">
<link rel="stylesheet" href="/Black_OY/css/brand.css">
<title>블랙올리브영 온라인몰</title>
</head>
<body>
    <div id="Wrapper">
        <div id="skip_navi"><a href="#Container">본문바로가기</a></div>
        
        <!-- 상단 띠 배너 - 어워즈관 S -->
        <div class="banUpperBox" style="display: none">
            <div class="inner">
                <a href="#" id="top_banner_image"></a>
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
        
        
        <div id="Header">
            <div class="top_util">
                <ul class="menu_list" id="menu_list_header">                  
                    <li class="join" style="display: block;"><a href="javascript:common.reqAmplitude('상단헤더 클릭', {entry_source: '구달 브랜드관', click_source: '상단헤더', top_header_type: '회원가입'});common.link.moveJoinMember();" data-attr="공통^헤더^회원가입">회원가입</a></li>
    
                    <li class="login" style="display: block;"><a href="javascript:common.reqAmplitude('상단헤더 클릭', {entry_source: '구달 브랜드관', click_source: '상단헤더', top_header_type: '로그인'});common.link.moveLoginPage();" data-attr="공통^헤더^로그인">로그인</a></li>
                    <li class="cart"><a href="javascript:common.reqAmplitude('상단헤더 클릭', {entry_source: '구달 브랜드관', click_source: '상단헤더', top_header_type: '장바구니'});common.link.moveCartPage('t_page=구달 브랜드관&amp;t_click=상단헤더&amp;t_header_type=장바구니');" data-attr="공통^헤더^장바구니">장바구니<span id="cartToCnt"></span></a></li>
                    <li class="order"><a onclick="common.reqAmplitude('상단헤더 클릭', {entry_source: '구달 브랜드관', click_source: '상단헤더', top_header_type: '주문배송'})" href="https://www.oliveyoung.co.kr/store/mypage/getOrderList.do?&amp;t_page=구달 브랜드관&amp;t_click=상단헤더&amp;t_header_type=주문배송" data-attr="공통^헤더^주문배송">주문배송</a></li>
                    <li class="customer"><a onclick="common.reqAmplitude('상단헤더 클릭', {entry_source: '구달 브랜드관', click_source: '상단헤더', top_header_type: '고객센터'})" href="https://www.oliveyoung.co.kr/store/counsel/getFaqList.do?faqLrclCd=99&amp;t_page=구달 브랜드관&amp;t_click=상단헤더&amp;t_header_type=고객센터" data-attr="공통^헤더^고객센터">고객센터</a></li>
                    <li class="store"><a onclick="common.reqAmplitude('상단헤더 클릭', {entry_source: '구달 브랜드관', click_source: '상단헤더', top_header_type: '매장안내'});sessionStorage.removeItem('storePageIdx');" href="https://www.oliveyoung.co.kr/store/store/getStoreMain.do?t_page=구달 브랜드관&amp;t_click=상단헤더&amp;t_header_type=매장안내" data-attr="공통^헤더^매장안내">매장안내</a></li>
                    <li class="global"><a onclick="common.reqAmplitude('상단헤더 클릭', {entry_source: '구달 브랜드관', click_source: '상단헤더', top_header_type: 'Global'});" href="http://global.oliveyoung.com" target="_blank" title="올리브영 글로벌 새창으로 열기" data-attr="공통^헤더^Global">Global</a></li>
                </ul>
            </div>
            
            
            <div class="header_inner">
                <h1>
                    <a onclick="javascript:common.reqAmplitude('헤더 클릭', {entry_source: '구달 브랜드관', click_source: '헤더', header_type: '로고'});" href="https://www.oliveyoung.co.kr/store/main/main.do?t_page=구달 브랜드관&amp;t_click=헤더&amp;t_header_type=로고">
                       
                                <img src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/h1_logo.png" alt="올리브영">
                            
                        
                    </a>
                </h1>
                
                <div class="search_box" id="w_search_box">
        <input type="hidden" name="chkButton" id="chkButton" value="">
                    <div class="placeholder_area"><label for="query">'블프'를 검색해보세요</label><input type="text" id="query" name="" value="" class="inp_placeholder" data-placeholder="'블프'를 검색해보세요" data-ref-linkurl="" onkeypress="javascript:pressCheck_WEB_MainSearch((event),this);" onkeydown="javascript:downCheck_WEB_MainSearch((event));" autocomplete="off"></div>
                    <button id="searchSubmit">검색</button>
    
                    <!-- 검색 레이어 영역 (디자인 수정 예정) -->
                    <div class="search_layer">
                        <div class="layer_inner">
                            <!-- 2017-02-07 수정 : 자동완성기능 영역 -->
                            <div class="auto_search_cont">
                                <div class="brand_area" id="ark_brand"></div>							
                                <div class="auto_list" id="ark_w"></div>
                            </div>
                            <!--// 2017-02-07 수정 : 자동완성기능 영역 -->
                        
                            <!-- 최근 검색어 -->						
                            <a href="#" class="search_tab tab01 on" id="searchRecent" style="display: none;">최근 검색어</a><!-- 현재 보여지는 탭에 클래스 on 넣어주세요 -->
                            <div class="search_tab_cont" id="recent_cont" style="display: none;">
                                <ul id="mykeyword">							
                                    <!-- 검색 기록이 없을 경우 -->								 
    <!-- 							<li class="no_data" id="recent_no_data" style="display:none;">최근 검색한 기록이 없습니다.</li> -->
                                    <!--// 검색 기록이 없을 경우 -->
                                    <!-- 검색 저장 기능이 꺼져있을 경우 -->
    <!-- 							<li class="no_data" id="recent_no_save" style="display:none;">최근 검색어 저장 기능이 꺼져있습니다.</li> -->
                                    <!--// 검색 저장 기능이 꺼져있을 경우 -->								
                                </ul>
                                <div class="search_set_area">
                                    <a href="#" class="sch_all_del" onclick="javascript:deleteCookies();">전체 삭제</a>																						
    <!-- 										<a href="#" class="sch_save"></a>																		 -->
                                            <a href="#" class="sch_save">검색어 저장 끄기</a>																		
                                </div>
                            </div>
                            <!--// 최근 검색어 -->
                            <!-- 급상승 검색어 -->
                            <a href="#" class="search_tab tab02" id="searchPop" style="display: none;">급상승 검색어</a>
                            <div class="search_tab_cont sharp_rise" id="w_pop_cont" style="display: none;">
                                <ul id="mainPopword">
                                </ul>
                                <div class="search_set_area"> 
                                    <a href="#" class="sch_pop_close">닫기</a>
                                </div>
                            </div>
                            <!--// 인기 검색어 -->
                        </div>
                    </div>
                    <!--// 검색 레이어 영역 -->
                </div>
                <!--// 검색영역 -->
                
                <ul class="mymenu_area">
                    <!-- 오늘드림 플래그 개인화 노출 2차 POC 추가 -->
                    <li id="todayDeliveryContainer" class="delivery"><a href="javascript:;" id="tddlvr_header_today_icon" class="mymenu_layer" title="오늘드림 자세히보기 열기/닫기">오늘드림</a>     <!-- 배송지 미등록 / 배송주소 출력-->     <div class="delivery_box_wrap" style="display: none;"><div class="delivery_box"><p class="dTxt">배송지를 등록하고 오늘드림으로 구매 가능한 상품을 확인하세요!</p></div></div>     <!--// 배송지 미등록 / 배송주소 출력-->     <!-- 배송지 설정-->     <div class="delivery_addr" style="display:none">      <div class="addr_box">       <div class="inner box-head">        <h3 class="tit01">배송지<span>배송지에 따라 상품 정보가 달라질 수 있습니다.</span></h3>        <div class="set-box">         <strong>오늘드림 배송 설정 하기</strong>         <p>상세 페이지에서 오늘드림 배송으로 선택돼요</p>         <div class="toggleInput">          <label id="tddlvr_switch" class="switch">           <input id="tddlvr_todayDeliveryFlagCheckbox" type="checkbox">           <span id="tddlvr_slider" class="slider"></span>          </label>         </div>        </div>       </div>       <div class="inner box-cont">        <div class="addr-list-wrap">         <div class="mCustomScrollbar _mCS_1 mCS_no_scrollbar"><div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 300px;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">          <ul class="addr-list"></ul>         </div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>        </div>       </div>       <div id="callRegDeliveryAddressButton" class="add-address-box">        <a class="btnTy btn-plus" data-rel="layer" href="#">새 배송지 추가</a>       </div>      </div>     </div></li>
                    <!-- // 오늘드림 플래그 개인화 노출 2차 POC 추가 -->
                    <li class="store ">
                        <a onclick="common.reqAmplitude('헤더 클릭', {entry_source: '구달 브랜드관', click_source: '헤더', header_type: '관심매장소식'});" href="#" class="mymenu_layer" title="관심 매장소식 자세히보기 열기/닫기">관심 매장소식</a>
                        <div class="alim_box">
                  
                            <p class="store_desc"><span>로그인</span>하시면 자주가는 매장을 <br>관심 매장으로 설정 할 수 있습니다.</p>
                            <button class="mymenu_btn" onclick="javascript:common.link.moveLoginPage();">로그인</button>

                        </div>
                    </li>
                    <li class="recent">
                        <a onclick="common.reqAmplitude('헤더 클릭', {entry_source: '구달 브랜드관', click_source: '헤더', header_type: '최근본상품'});" href="javascript:;" class="mymenu_layer" title="최근 본 상품 자세히보기 열기/닫기">최근 본 상품</a>
                        <div class="recent_prd_box" style="min-height:510px;">
                            <p class="recent_tit">전체 <span>0</span>개
                            
                            </p><div class="no_data" style="display:none;">
                                최근 본 상품이 없습니다.
                            </div>
                        </div>
                    </li>
                </ul>
                
            </div>
            
            <div class="header_design_area"></div>
            
        </div>            
        <div id="Gnb" class="main gen1">
            <div id="gnbWrap">
                <a href="#" id="btnGnbOpen">카테고리</a>
                <!-- 전체 카테고리 레이어 -->
                <div class="layer_all_menu" id="gnbAllMenu">
                    <ul class="all_menu_wrap">
                        <li>
                            <h2>뷰티</h2>
                            <div class="sub_menu_box">
            
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000010001', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_스킨케어' })" data-ref-dispcatno="10000010001" data-attr="공통^드로우^스킨케어">스킨케어</a></p>
                                <ul>

                                    <li><a href="javascript:common.link.moveCategory('100000100010008', 'Cat100000100010008_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_토너/로션/올인원' })" data-ref-dispcatno="100000100010008" data-attr="공통^드로우^스킨케어_토너/로션/올인원" data-trk="/">토너/로션/올인원</a></li>
 
                                    <li><a href="javascript:common.link.moveCategory('100000100010009', 'Cat100000100010009_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_에센스/크림' })" data-ref-dispcatno="100000100010009" data-attr="공통^드로우^스킨케어_에센스/크림" data-trk="/">에센스/크림</a></li>
    
                                    <li><a href="javascript:common.link.moveCategory('100000100010010', 'Cat100000100010010_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_미스트/오일' })" data-ref-dispcatno="100000100010010" data-attr="공통^드로우^스킨케어_미스트/오일" data-trk="/">미스트/오일</a></li>
       
                                </ul>
                            
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000010009', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_마스크팩' })" data-ref-dispcatno="10000010009" data-attr="공통^드로우^마스크팩">마스크팩</a></p>
                                <ul>
                              <li><a href="javascript:common.link.moveCategory('100000100090001', 'Cat100000100090001_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_시트팩' })" data-ref-dispcatno="100000100090001" data-attr="공통^드로우^마스크팩_시트팩" data-trk="/">시트팩</a></li>
                            <li><a href="javascript:common.link.moveCategory('100000100090004', 'Cat100000100090004_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_패드' })" data-ref-dispcatno="100000100090004" data-attr="공통^드로우^마스크팩_패드" data-trk="/">패드</a></li>
                             <li><a href="javascript:common.link.moveCategory('100000100090002', 'Cat100000100090002_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_페이셜팩' })" data-ref-dispcatno="100000100090002" data-attr="공통^드로우^마스크팩_페이셜팩" data-trk="/">페이셜팩</a></li>
                               <li><a href="javascript:common.link.moveCategory('100000100090003', 'Cat100000100090003_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_코팩/패치' })" data-ref-dispcatno="100000100090003" data-attr="공통^드로우^마스크팩_코팩/패치" data-trk="/">코팩/패치</a></li>
 
                                </ul>
                         
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000010010', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_클렌징' })" data-ref-dispcatno="10000010010" data-attr="공통^드로우^클렌징">클렌징</a></p>
                                <ul>
 
                                    <li><a href="javascript:common.link.moveCategory('100000100100001', 'Cat100000100100001_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_클렌징폼/젤' })" data-ref-dispcatno="100000100100001" data-attr="공통^드로우^클렌징_클렌징폼/젤" data-trk="/">클렌징폼/젤</a></li>
        
                                    <li><a href="javascript:common.link.moveCategory('100000100100002', 'Cat100000100100002_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_오일/워터/리무버' })" data-ref-dispcatno="100000100100002" data-attr="공통^드로우^클렌징_오일/워터/리무버" data-trk="/">오일/워터/리무버</a></li>
   
                                    <li><a href="javascript:common.link.moveCategory('100000100100003', 'Cat100000100100003_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_필링/패드' })" data-ref-dispcatno="100000100100003" data-attr="공통^드로우^클렌징_필링/패드" data-trk="/">필링/패드</a></li>
 
                                </ul>
              
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000010011', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_선케어' })" data-ref-dispcatno="10000010011" data-attr="공통^드로우^선케어">선케어</a></p>
                                <ul>
 
                                    <li><a href="javascript:common.link.moveCategory('100000100110001', 'Cat100000100110001_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_선블록' })" data-ref-dispcatno="100000100110001" data-attr="공통^드로우^선케어_선블록" data-trk="/">선블록</a></li>
 
                                    <li><a href="javascript:common.link.moveCategory('100000100110002', 'Cat100000100110002_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_태닝/애프터선' })" data-ref-dispcatno="100000100110002" data-attr="공통^드로우^선케어_태닝/애프터선" data-trk="/">태닝/애프터선</a></li>
    
                                </ul>
                
                            </div>
                    
                            <div class="sub_menu_box">
                     
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000010008', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_더모 코스메틱' })" data-ref-dispcatno="10000010008" data-attr="공통^드로우^더모 코스메틱">더모 코스메틱</a></p>
                                <ul>
 
                                    <li><a href="javascript:common.link.moveCategory('100000100080013', 'Cat100000100080013_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_스킨케어' })" data-ref-dispcatno="100000100080013" data-attr="공통^드로우^더모 코스메틱_스킨케어" data-trk="/">스킨케어</a></li>

                                    <li><a href="javascript:common.link.moveCategory('100000100080006', 'Cat100000100080006_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_클렌징' })" data-ref-dispcatno="100000100080006" data-attr="공통^드로우^더모 코스메틱_클렌징" data-trk="/">클렌징</a></li>
 
                                    <li><a href="javascript:common.link.moveCategory('100000100080005', 'Cat100000100080005_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_선케어' })" data-ref-dispcatno="100000100080005" data-attr="공통^드로우^더모 코스메틱_선케어" data-trk="/">선케어</a></li>
 
                                    <li><a href="javascript:common.link.moveCategory('100000100080011', 'Cat100000100080011_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_마스크팩' })" data-ref-dispcatno="100000100080011" data-attr="공통^드로우^더모 코스메틱_마스크팩" data-trk="/">마스크팩</a></li>
 
                                    <li><a href="javascript:common.link.moveCategory('100000100080004', 'Cat100000100080004_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_바디케어' })" data-ref-dispcatno="100000100080004" data-attr="공통^드로우^더모 코스메틱_바디케어" data-trk="/">바디케어</a></li>
            
 
                                </ul>
                
            
                                
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000010002', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_메이크업' })" data-ref-dispcatno="10000010002" data-attr="공통^드로우^메이크업">메이크업</a></p>
                                <ul>
 
                                    <li><a href="javascript:common.link.moveCategory('100000100020006', 'Cat100000100020006_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_립메이크업' })" data-ref-dispcatno="100000100020006" data-attr="공통^드로우^메이크업_립메이크업" data-trk="/">립메이크업</a></li>
  
                                    <li><a href="javascript:common.link.moveCategory('100000100020001', 'Cat100000100020001_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_베이스메이크업' })" data-ref-dispcatno="100000100020001" data-attr="공통^드로우^메이크업_베이스메이크업" data-trk="/">베이스메이크업</a></li>
 
                                    <li><a href="javascript:common.link.moveCategory('100000100020007', 'Cat100000100020007_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_아이메이크업' })" data-ref-dispcatno="100000100020007" data-attr="공통^드로우^메이크업_아이메이크업" data-trk="/">아이메이크업</a></li>
 
                                </ul>
                
            
                                
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000010012', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_네일' })" data-ref-dispcatno="10000010012" data-attr="공통^드로우^네일">네일</a></p>
                                <ul>

                                    <li><a href="javascript:common.link.moveCategory('100000100120007', 'Cat100000100120007_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_폴리쉬' })" data-ref-dispcatno="100000100120007" data-attr="공통^드로우^네일_폴리쉬" data-trk="/">폴리쉬</a></li>
 
                                    <li><a href="javascript:common.link.moveCategory('100000100120006', 'Cat100000100120006_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_팁/스티커' })" data-ref-dispcatno="100000100120006" data-attr="공통^드로우^네일_팁/스티커" data-trk="/">팁/스티커</a></li>
 
                                    <li><a href="javascript:common.link.moveCategory('100000100120005', 'Cat100000100120005_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_반경화' })" data-ref-dispcatno="100000100120005" data-attr="공통^드로우^네일_반경화" data-trk="/">반경화</a></li>

                                    <li><a href="javascript:common.link.moveCategory('100000100120004', 'Cat100000100120004_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_케어' })" data-ref-dispcatno="100000100120004" data-attr="공통^드로우^네일_케어" data-trk="/">케어</a></li>
            
        
    
        
            
                                </ul>
                
            
                                
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000010003', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_바디케어' })" data-ref-dispcatno="10000010003" data-attr="공통^드로우^바디케어">바디케어</a></p>
                                <ul>
            
            
                    
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100030014', 'Cat100000100030014_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_로션/오일' })" data-ref-dispcatno="100000100030014" data-attr="공통^드로우^바디케어_로션/오일" data-trk="/">로션/오일</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100030005', 'Cat100000100030005_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_샤워/입욕' })" data-ref-dispcatno="100000100030005" data-attr="공통^드로우^바디케어_샤워/입욕" data-trk="/">샤워/입욕</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100030008', 'Cat100000100030008_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_립케어' })" data-ref-dispcatno="100000100030008" data-attr="공통^드로우^바디케어_립케어" data-trk="/">립케어</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100030016', 'Cat100000100030016_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_핸드케어' })" data-ref-dispcatno="100000100030016" data-attr="공통^드로우^바디케어_핸드케어" data-trk="/">핸드케어</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100030019', 'Cat100000100030019_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_제모/왁싱' })" data-ref-dispcatno="100000100030019" data-attr="공통^드로우^바디케어_제모/왁싱" data-trk="/">제모/왁싱</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100030015', 'Cat100000100030015_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_바디미스트' })" data-ref-dispcatno="100000100030015" data-attr="공통^드로우^바디케어_바디미스트" data-trk="/">바디미스트</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100030012', 'Cat100000100030012_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_데오드란트' })" data-ref-dispcatno="100000100030012" data-attr="공통^드로우^바디케어_데오드란트" data-trk="/">데오드란트</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100030020', 'Cat100000100030020_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_맘&amp;베이비' })" data-ref-dispcatno="100000100030020" data-attr="공통^드로우^바디케어_맘&amp;베이비" data-trk="/">맘&amp;베이비</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100030017', 'Cat100000100030017_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_선물세트' })" data-ref-dispcatno="100000100030017" data-attr="공통^드로우^바디케어_선물세트" data-trk="/">선물세트</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100030018', 'Cat100000100030018_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_풋케어' })" data-ref-dispcatno="100000100030018" data-attr="공통^드로우^바디케어_풋케어" data-trk="/">풋케어</a></li>
            
        
    
        
            
                                </ul>
                
                            </div>
                    
                            <div class="sub_menu_box">
                    
                
            
                                
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000010004', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_헤어케어' })" data-ref-dispcatno="10000010004" data-attr="공통^드로우^헤어케어">헤어케어</a></p>
                                <ul>
            
            
                    
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100040008', 'Cat100000100040008_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_샴푸/린스' })" data-ref-dispcatno="100000100040008" data-attr="공통^드로우^헤어케어_샴푸/린스" data-trk="/">샴푸/린스</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100040007', 'Cat100000100040007_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_트리트먼트/팩' })" data-ref-dispcatno="100000100040007" data-attr="공통^드로우^헤어케어_트리트먼트/팩" data-trk="/">트리트먼트/팩</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100040013', 'Cat100000100040013_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_헤어에센스' })" data-ref-dispcatno="100000100040013" data-attr="공통^드로우^헤어케어_헤어에센스" data-trk="/">헤어에센스</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100040010', 'Cat100000100040010_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_염색약/펌' })" data-ref-dispcatno="100000100040010" data-attr="공통^드로우^헤어케어_염색약/펌" data-trk="/">염색약/펌</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100040004', 'Cat100000100040004_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_헤어기기' })" data-ref-dispcatno="100000100040004" data-attr="공통^드로우^헤어케어_헤어기기" data-trk="/">헤어기기</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100040011', 'Cat100000100040011_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_스타일링' })" data-ref-dispcatno="100000100040011" data-attr="공통^드로우^헤어케어_스타일링" data-trk="/">스타일링</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100040009', 'Cat100000100040009_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_헤어브러쉬' })" data-ref-dispcatno="100000100040009" data-attr="공통^드로우^헤어케어_헤어브러쉬" data-trk="/">헤어브러쉬</a></li>
            
        
    
        
            
                                </ul>
                
            
                                
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000010005', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_향수/디퓨저' })" data-ref-dispcatno="10000010005" data-attr="공통^드로우^향수/디퓨저">향수/디퓨저</a></p>
                                <ul>
            
            
                    
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100050003', 'Cat100000100050003_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_여성향수' })" data-ref-dispcatno="100000100050003" data-attr="공통^드로우^향수/디퓨저_여성향수" data-trk="/">여성향수</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100050004', 'Cat100000100050004_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_남성향수' })" data-ref-dispcatno="100000100050004" data-attr="공통^드로우^향수/디퓨저_남성향수" data-trk="/">남성향수</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100050008', 'Cat100000100050008_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_홈 프래그런스' })" data-ref-dispcatno="100000100050008" data-attr="공통^드로우^향수/디퓨저_홈 프래그런스" data-trk="/">홈 프래그런스</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100050009', 'Cat100000100050009_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_선물세트' })" data-ref-dispcatno="100000100050009" data-attr="공통^드로우^향수/디퓨저_선물세트" data-trk="/">선물세트</a></li>
            
        
    
        
            
                                </ul>
                
            
                                
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000010006', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_미용소품' })" data-ref-dispcatno="10000010006" data-attr="공통^드로우^미용소품">미용소품</a></p>
                                <ul>
            
            
                    
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100060001', 'Cat100000100060001_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_메이크업소품' })" data-ref-dispcatno="100000100060001" data-attr="공통^드로우^미용소품_메이크업소품" data-trk="/">메이크업소품</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100060006', 'Cat100000100060006_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_스킨케어소품' })" data-ref-dispcatno="100000100060006" data-attr="공통^드로우^미용소품_스킨케어소품" data-trk="/">스킨케어소품</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100060007', 'Cat100000100060007_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_아이소품' })" data-ref-dispcatno="100000100060007" data-attr="공통^드로우^미용소품_아이소품" data-trk="/">아이소품</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100060002', 'Cat100000100060002_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_헤어/바디소품' })" data-ref-dispcatno="100000100060002" data-attr="공통^드로우^미용소품_헤어/바디소품" data-trk="/">헤어/바디소품</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100060003', 'Cat100000100060003_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_미용관리' })" data-ref-dispcatno="100000100060003" data-attr="공통^드로우^미용소품_미용관리" data-trk="/">미용관리</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100060004', 'Cat100000100060004_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_미용가전' })" data-ref-dispcatno="100000100060004" data-attr="공통^드로우^미용소품_미용가전" data-trk="/">미용가전</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100060005', 'Cat100000100060005_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_미용잡화' })" data-ref-dispcatno="100000100060005" data-attr="공통^드로우^미용소품_미용잡화" data-trk="/">미용잡화</a></li>
            
        
    
        
            
                                </ul>
                
            
                                
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000010007', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_남성' })" data-ref-dispcatno="10000010007" data-attr="공통^드로우^남성">남성</a></p>
                                <ul>
            
            
                    
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100070007', 'Cat100000100070007_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_스킨케어' })" data-ref-dispcatno="100000100070007" data-attr="공통^드로우^남성_스킨케어" data-trk="/">스킨케어</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100070009', 'Cat100000100070009_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_헤어케어' })" data-ref-dispcatno="100000100070009" data-attr="공통^드로우^남성_헤어케어" data-trk="/">헤어케어</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100070010', 'Cat100000100070010_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_쉐이빙' })" data-ref-dispcatno="100000100070010" data-attr="공통^드로우^남성_쉐이빙" data-trk="/">쉐이빙</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100070017', 'Cat100000100070017_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_향수/매너용품' })" data-ref-dispcatno="100000100070017" data-attr="공통^드로우^남성_향수/매너용품" data-trk="/">향수/매너용품</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100070008', 'Cat100000100070008_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_메이크업' })" data-ref-dispcatno="100000100070008" data-attr="공통^드로우^남성_메이크업" data-trk="/">메이크업</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000100070011', 'Cat100000100070011_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_바디케어' })" data-ref-dispcatno="100000100070011" data-attr="공통^드로우^남성_바디케어" data-trk="/">바디케어</a></li>
            
        
    
    
                                </ul>
    
                            </div>
                        </li>
                        <li>
                            <h2>헬스&amp;푸드</h2>
                            <div class="sub_menu_box">
    
    
    
    
        
            
                                
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000020003', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_구강/건강용품' })" data-ref-dispcatno="10000020003" data-attr="공통^드로우^구강/건강용품">구강/건강용품</a></p>
                                <ul>
            
            
                    
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200030001', 'Cat100000200030001_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_구강용품' })" data-ref-dispcatno="100000200030001" data-attr="공통^드로우^구강/건강용품_구강용품" data-trk="/">구강용품</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200030005', 'Cat100000200030005_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_패치/겔' })" data-ref-dispcatno="100000200030005" data-attr="공통^드로우^구강/건강용품_패치/겔" data-trk="/">패치/겔</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200030002', 'Cat100000200030002_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_눈 관리 용품' })" data-ref-dispcatno="100000200030002" data-attr="공통^드로우^구강/건강용품_눈 관리 용품" data-trk="/">눈 관리 용품</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200030012', 'Cat100000200030012_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_의료/간호용품' })" data-ref-dispcatno="100000200030012" data-attr="공통^드로우^구강/건강용품_의료/간호용품" data-trk="/">의료/간호용품</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200030014', 'Cat100000200030014_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_마사지/헬스용품' })" data-ref-dispcatno="100000200030014" data-attr="공통^드로우^구강/건강용품_마사지/헬스용품" data-trk="/">마사지/헬스용품</a></li>
            
        
    
        
            
                                </ul>
                
            
                                
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000020004', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_여성/위생용품' })" data-ref-dispcatno="10000020004" data-attr="공통^드로우^여성/위생용품">여성/위생용품</a></p>
                                <ul>
            
            
                    
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200040001', 'Cat100000200040001_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_생리용품' })" data-ref-dispcatno="100000200040001" data-attr="공통^드로우^여성/위생용품_생리용품" data-trk="/">생리용품</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200040002', 'Cat100000200040002_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_여성청결제' })" data-ref-dispcatno="100000200040002" data-attr="공통^드로우^여성/위생용품_여성청결제" data-trk="/">여성청결제</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200040003', 'Cat100000200040003_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_성인용품' })" data-ref-dispcatno="100000200040003" data-attr="공통^드로우^여성/위생용품_성인용품" data-trk="/">성인용품</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200040004', 'Cat100000200040004_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_기저귀/물티슈' })" data-ref-dispcatno="100000200040004" data-attr="공통^드로우^여성/위생용품_기저귀/물티슈" data-trk="/">기저귀/물티슈</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200040005', 'Cat100000200040005_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_제지류' })" data-ref-dispcatno="100000200040005" data-attr="공통^드로우^여성/위생용품_제지류" data-trk="/">제지류</a></li>
            
        
    
        
            
                                </ul>
                
            
                                
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000020001', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_건강식품' })" data-ref-dispcatno="10000020001" data-attr="공통^드로우^건강식품">건강식품</a></p>
                                <ul>
            
            
                    
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200010015', 'Cat100000200010015_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_비타민' })" data-ref-dispcatno="100000200010015" data-attr="공통^드로우^건강식품_비타민" data-trk="/">비타민</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200010024', 'Cat100000200010024_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_장건강' })" data-ref-dispcatno="100000200010024" data-attr="공통^드로우^건강식품_장건강" data-trk="/">장건강</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200010023', 'Cat100000200010023_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_체중관리' })" data-ref-dispcatno="100000200010023" data-attr="공통^드로우^건강식품_체중관리" data-trk="/">체중관리</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200010022', 'Cat100000200010022_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_이너뷰티' })" data-ref-dispcatno="100000200010022" data-attr="공통^드로우^건강식품_이너뷰티" data-trk="/">이너뷰티</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200010025', 'Cat100000200010025_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_영양제/기타' })" data-ref-dispcatno="100000200010025" data-attr="공통^드로우^건강식품_영양제/기타" data-trk="/">영양제/기타</a></li>
            
        
    
        
            
                                </ul>
                
            
                                
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000020002', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_푸드' })" data-ref-dispcatno="10000020002" data-attr="공통^드로우^푸드">푸드</a></p>
                                <ul>
            
            
                    
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200020020', 'Cat100000200020020_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_식단관리' })" data-ref-dispcatno="100000200020020" data-attr="공통^드로우^푸드_식단관리" data-trk="/">식단관리</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200020023', 'Cat100000200020023_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_디저트/간식' })" data-ref-dispcatno="100000200020023" data-attr="공통^드로우^푸드_디저트/간식" data-trk="/">디저트/간식</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200020022', 'Cat100000200020022_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_생수/음료/커피' })" data-ref-dispcatno="100000200020022" data-attr="공통^드로우^푸드_생수/음료/커피" data-trk="/">생수/음료/커피</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200020024', 'Cat100000200020024_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_간편식/요리' })" data-ref-dispcatno="100000200020024" data-attr="공통^드로우^푸드_간편식/요리" data-trk="/">간편식/요리</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000200020021', 'Cat100000200020021_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_베이비푸드' })" data-ref-dispcatno="100000200020021" data-attr="공통^드로우^푸드_베이비푸드" data-trk="/">베이비푸드</a></li>
            
        
    
    
                                </ul>
    
                            </div>
                        </li>
                        <li>
                            <h2>라이프</h2>
                            <div class="sub_menu_box">
    
    
    
    
        
            
                                
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000030005', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_라이프/홈' })" data-ref-dispcatno="10000030005" data-attr="공통^드로우^라이프/홈">라이프/홈</a></p>
                                <ul>
            
            
                    
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000300050005', 'Cat100000300050005_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_라이프웨어' })" data-ref-dispcatno="100000300050005" data-attr="공통^드로우^라이프/홈_라이프웨어" data-trk="/">라이프웨어</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000300050001', 'Cat100000300050001_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_공간방향/제습' })" data-ref-dispcatno="100000300050001" data-attr="공통^드로우^라이프/홈_공간방향/제습" data-trk="/">공간방향/제습</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000300050006', 'Cat100000300050006_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_테크' })" data-ref-dispcatno="100000300050006" data-attr="공통^드로우^라이프/홈_테크" data-trk="/">테크</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000300050002', 'Cat100000300050002_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_홈 클리닝' })" data-ref-dispcatno="100000300050002" data-attr="공통^드로우^라이프/홈_홈 클리닝" data-trk="/">홈 클리닝</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000300050003', 'Cat100000300050003_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_생활' })" data-ref-dispcatno="100000300050003" data-attr="공통^드로우^라이프/홈_생활" data-trk="/">생활</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000300050004', 'Cat100000300050004_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_주방' })" data-ref-dispcatno="100000300050004" data-attr="공통^드로우^라이프/홈_주방" data-trk="/">주방</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000300050007', 'Cat100000300050007_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_홈데코' })" data-ref-dispcatno="100000300050007" data-attr="공통^드로우^라이프/홈_홈데코" data-trk="/">홈데코</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000300050008', 'Cat100000300050008_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_악세서리' })" data-ref-dispcatno="100000300050008" data-attr="공통^드로우^라이프/홈_악세서리" data-trk="/">악세서리</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000300050009', 'Cat100000300050009_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_컬쳐' })" data-ref-dispcatno="100000300050009" data-attr="공통^드로우^라이프/홈_컬쳐" data-trk="/">컬쳐</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000300050010', 'Cat100000300050010_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_유아용품' })" data-ref-dispcatno="100000300050010" data-attr="공통^드로우^라이프/홈_유아용품" data-trk="/">유아용품</a></li>
            
        
    
        
            
                                </ul>
                
            
                                
                                <p class="sub_depth"><a href="javascript:common.link.moveCategoryShop('10000030003', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_반려동물' })" data-ref-dispcatno="10000030003" data-attr="공통^드로우^반려동물">반려동물</a></p>
                                <ul>
            
            
                    
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000300030001', 'Cat100000300030001_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_강아지 식품' })" data-ref-dispcatno="100000300030001" data-attr="공통^드로우^반려동물_강아지 식품" data-trk="/">강아지 식품</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000300030002', 'Cat100000300030002_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_강아지 용품' })" data-ref-dispcatno="100000300030002" data-attr="공통^드로우^반려동물_강아지 용품" data-trk="/">강아지 용품</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000300030003', 'Cat100000300030003_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_고양이 식품' })" data-ref-dispcatno="100000300030003" data-attr="공통^드로우^반려동물_고양이 식품" data-trk="/">고양이 식품</a></li>
            
        
    
                    
        
                                    <li><a href="javascript:common.link.moveCategory('100000300030004', 'Cat100000300030004_MID', 'Drawer',{ t_page: '드로우_카테고리', t_click: '카테고리탭_중카테고리', t_2nd_category_type: '중_고양이 용품' })" data-ref-dispcatno="100000300030004" data-attr="공통^드로우^반려동물_고양이 용품" data-trk="/">고양이 용품</a></li>
            
        
    
    
                                </ul>
    
                            </div>
                        </li>
                    </ul>
                    <button id="btnGnbClose">전체 카테고리 창 닫기</button>
                </div>	
                <!--// 전체 카테고리 레이어 -->
    
                
                <ul class="gnb_menu_list">
    
    
    
        
        
            
        
            
        
            
        
            
        
            
        
            
        
            
        
            
        
    
    
        
        
    
            
            
    
            
                
                
    
                    
                        
                        
                    
    
                    <li style="">
                        <a onclick="common.reqAmplitude('GNB 클릭', {entry_source: '구달 브랜드관', click_source: '헤더', GNB_type: '오특', swiping_type: 'N'});" href="https://www.oliveyoung.co.kr/store/main/getHotdealList.do?t_page=구달 브랜드관&amp;t_click=GNB&amp;t_gnb_type=오특&amp;t_swiping_type=N" data-ref-linkurl="main/getHotdealList.do" data-attr="공통^GNB^오특"><span>오특</span>
                        </a>
                    </li>
                
            
        
    
            
            
    
            
                
                
    
                    
                        
                        
                    
    
                    <li style="">
                        <a onclick="common.reqAmplitude('GNB 클릭', {entry_source: '구달 브랜드관', click_source: '헤더', GNB_type: '랭킹', swiping_type: 'N'});" href="https://www.oliveyoung.co.kr/store/main/getBestList.do?t_page=구달 브랜드관&amp;t_click=GNB&amp;t_gnb_type=랭킹&amp;t_swiping_type=N" data-ref-linkurl="main/getBestList.do" data-attr="공통^GNB^랭킹"><span>랭킹</span>
                        </a>
                    </li>
                
            
        
    
            
            
    
            
                
                
    
                    
                        
                        
                    
    
                    <li style="">
                        <a onclick="common.reqAmplitude('GNB 클릭', {entry_source: '구달 브랜드관', click_source: '헤더', GNB_type: 'LUXE EDIT', swiping_type: 'N'});" href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102780092&amp;t_page=구달 브랜드관&amp;t_click=GNB&amp;t_gnb_type=LUXE EDIT&amp;t_swiping_type=N" data-ref-linkurl="planshop/getPlanShopDetail.do?dispCatNo=500000102780092" data-attr="공통^GNB^LUXE EDIT"><span>LUXE EDIT</span>
                        </a>
                    </li>
                
            
        
    
            
            
    
            
                
                
    
                    
                        
                        
                    
    
                    <li style="">
                        <a onclick="common.reqAmplitude('GNB 클릭', {entry_source: '구달 브랜드관', click_source: '헤더', GNB_type: '기획전', swiping_type: 'N'});" href="https://www.oliveyoung.co.kr/store/main/getPlanShopList.do?t_page=구달 브랜드관&amp;t_click=GNB&amp;t_gnb_type=기획전&amp;t_swiping_type=N" data-ref-linkurl="main/getPlanShopList.do" data-attr="공통^GNB^기획전"><span>기획전</span>
                        </a>
                    </li>
                
            
        
    
            
            
    
            
                
                
    
                    
                        
                        
                    
    
                    <li style="">
                        <a onclick="common.reqAmplitude('GNB 클릭', {entry_source: '구달 브랜드관', click_source: '헤더', GNB_type: '세일', swiping_type: 'N'});" href="https://www.oliveyoung.co.kr/store/main/getSaleList.do?t_page=구달 브랜드관&amp;t_click=GNB&amp;t_gnb_type=세일&amp;t_swiping_type=N" data-ref-linkurl="main/getSaleList.do" data-attr="공통^GNB^세일"><span>세일</span>
                        </a>
                    </li>
                
            
        
    
            
            
    
            
                
                
    
                    
                        
                        
                    
    
                    <li style="">
                        <a onclick="common.reqAmplitude('GNB 클릭', {entry_source: '구달 브랜드관', click_source: '헤더', GNB_type: '기프트카드', swiping_type: 'N'});" href="https://www.oliveyoung.co.kr/store/giftCardGuide/getGiftCardGuide.do?t_page=구달 브랜드관&amp;t_click=GNB&amp;t_gnb_type=기프트카드&amp;t_swiping_type=N" data-ref-linkurl="giftCardGuide/getGiftCardGuide.do" data-attr="공통^GNB^기프트카드"><span>기프트카드</span>
                        </a>
                    </li>
                
            
        
    
            
            
    
            
                
                
    
                    
                        
                        
                    
    
                    <li style="">
                        <a onclick="common.reqAmplitude('GNB 클릭', {entry_source: '구달 브랜드관', click_source: '헤더', GNB_type: '멤버십/쿠폰', swiping_type: 'N'});" href="https://www.oliveyoung.co.kr/store/main/getMembership.do?t_page=구달 브랜드관&amp;t_click=GNB&amp;t_gnb_type=멤버십/쿠폰&amp;t_swiping_type=N" data-ref-linkurl="main/getMembership.do" data-attr="공통^GNB^멤버십/쿠폰"><span>멤버십/쿠폰</span>
                        </a>
                    </li>
                
            
        
    
            
            
    
            
                
                
    
                    
                        
                        
                    
    
                    <li style="">
                        <a onclick="common.reqAmplitude('GNB 클릭', {entry_source: '구달 브랜드관', click_source: '헤더', GNB_type: '이벤트', swiping_type: 'N'});" href="https://www.oliveyoung.co.kr/store/main/getEventList.do?t_page=구달 브랜드관&amp;t_click=GNB&amp;t_gnb_type=이벤트&amp;t_swiping_type=N" data-ref-linkurl="main/getEventList.do" data-attr="공통^GNB^이벤트"><span>이벤트</span>
                        </a>
                    </li>
                
            
        
    
    
                </ul>
    
            </div>
    
        </div>
    <form name="ssologinfrm" action="https://www.oliveyoung.co.kr/store/login/ssoLogin.do" method="post">
    <input type="hidden" id="cjssoq" name="cjssoq">
    </form>
    <div id="Container">
        
        
        <div class="page_location">
            <a href="javascript:common.link.moveMainHome();" class="loc_home">홈</a>
            <ul class="loc_history">
                <li>
                    <a href="javascript:common.link.moveBrandPage();">브랜드</a>
                </li>
                <li>
                    
                        <a href="javascript:;">구달</a>
                        
                    
                    
                </li>
            </ul>
        </div>
        
        
        <div class="brand">
            <h2 class="title-detail-brand">구달</h2>
            
            
                <div class="brand_like">
                    <a href="javascript:void(0);" data-ref-onlbrndnm="구달" data-ref-onlbrndcd="A001436" id="icobrand">
                        <p class="brand">
                            <span class="icon"><span class="fw400">10,514</span>명이 구달을 좋아합니다.</span>
                        </p>
                    </a>
                </div>
            
        </div>
        
        <div id="brandDataSort">
            
    
                    
                    
                    
                    
                        
                            <div class="brand">
                                <div class="brand_visual">
                                    
                                        
                                            <div class="visual">
                                                <img data-original="https://image.oliveyoung.co.kr/uploads/images/display/90000020137/263/8950018296969934705.jpg" alt="구달 이미지 배너입니다." data-ref-link-url="https://www.oliveyoung.co.kr/store/" class="completed-seq-lazyload" src="https://image.oliveyoung.co.kr/uploads/images/display/90000020137/263/8950018296969934705.jpg">
                                            </div>
                                            <div class="info">
                                                <h4 class="vtit">고기능 클린 자연주의</h4>
                                                <p class="txt">한국의 제철 원물을 신선하게 fresh catch!<br>구달은 순하지만 피부의 변화가 느껴지는 고기능 클린 스킨케어 솔루션을 지향합니다.</p>
                                            </div>
                                        
                                        
                                            
                                        
                                    
                                        
                                        
                                    
                                </div>
                            </div>
                        
                    
                    
    
    
            
            
                
            
            
    
            
            
            
    
            
                
                
                
                
    
                
                    
                    
                    
                
    
                
            
            
    
    
            
            
            
            
            
    
            
            
            
            
                
                    
                        
                    
                
            
            
    
            
            
    
            
                
                
    
                
                    
                        
                            
                                
                                    
                                
                                
                                    
                                
                            
                                
                                
                            
                        
                    
                
    
                
                    
                        
                    
                
            
            
    
            
            
    
            
                
                
    
                
                    
                        
                            
                                
                                    
                                
                                
                                    
                                
                            
                        
                    
                
    
                
                    
                        
                    
                
            
            
    
            
            
            
    
            
            
                
    
                
                    
                
            
            
        <div class="brand" data-sort="5" id="dataSortBox" corner-no="267">
                            <div class="brandBox lineb">
                                <div class="head md">
                                    <h3 class="tit">
                                        
                                            
                                                슬로-에이징 구달 스킨케어
                                            
                                            
                                        
                                    </h3>
                                </div>
    
                                <div class="mdSwiperBox">
                                    <div class="mdSwiper slick-initialized slick-slider" id="mdSwiper">
                                        
                                        
    
                                        
                                            
                                                
                                                    <div aria-live="polite" class="slick-list draggable"><div class="slick-track" role="listbox" style="opacity: 1; width: 1020px; transform: translate3d(0px, 0px, 0px);"><div class="item slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 1020px;" tabindex="-1" role="option" aria-describedby="slick-slide00">
                                                        <ul class="prod-list">
                                                
    
                                                        <li>
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=90000020137&amp;trackingCd=BrandA001436_Mdpick1&amp;t_page=브랜드관&amp;t_click=테마별상품전시1_상품상세&amp;t_number=1" name="BrandA001436_Mdpick1" class="thumb goodsList" data-ref-goodsno="A000000162323" data-ref-dispcatno="90000020137" data-ref-itemno="001" data-attr="브랜드관^구달_테마별상품전시_1^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" data-trk="/" tabindex="0" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_테마별상품전시_1&quot;, &quot;1&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016232329ko.jpg?l=ko" alt="[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" class="pic-thumb" onerror="common.errorImg(this);"><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_테마별상품전시_1&quot;, &quot;1&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=90000020137&amp;trackingCd=BrandA001436_Mdpick1&amp;t_page=브랜드관&amp;t_click=테마별상품전시1_상품상세&amp;t_number=1" name="BrandA001436_Mdpick1" class="goodsList" data-ref-goodsno="A000000162323" data-ref-dispcatno="90000020137" data-ref-itemno="001" data-attr="브랜드관^구달_테마별상품전시_1^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" data-trk="/" tabindex="0"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획</span><div class="discount"><strong class="rate-of">28%</strong> <span class="origin">43,000원</span></div><div class="price"><strong class="total">30,960<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="flags"><span class="flag sale">세일</span><span class="flag coupon">쿠폰</span></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000162323" tabindex="0"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000162323" data-item-no="001" tabindex="0">장바구니</button></div>
    
                                                            </div>
                                                        </li>
    
                                                
    
                                                
                                                
                                            
                                        
                                            
                                                
    
                                                        <li>
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162021&amp;dispCatNo=90000020137&amp;trackingCd=BrandA001436_Mdpick1&amp;t_page=브랜드관&amp;t_click=테마별상품전시1_상품상세&amp;t_number=2" name="BrandA001436_Mdpick1" class="thumb goodsList" data-ref-goodsno="A000000162021" data-ref-dispcatno="90000020137" data-ref-itemno="001" data-attr="브랜드관^구달_테마별상품전시_1^[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)" data-trk="/" tabindex="0" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162021&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_테마별상품전시_1&quot;, &quot;2&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016202129ko.jpg?l=ko" alt="[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162021&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_테마별상품전시_1&quot;, &quot;2&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162021&amp;dispCatNo=90000020137&amp;trackingCd=BrandA001436_Mdpick1&amp;t_page=브랜드관&amp;t_click=테마별상품전시1_상품상세&amp;t_number=2" name="BrandA001436_Mdpick1" class="goodsList" data-ref-goodsno="A000000162021" data-ref-dispcatno="90000020137" data-ref-itemno="001" data-attr="브랜드관^구달_테마별상품전시_1^[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)" data-trk="/" tabindex="0"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)</span><div class="price"><strong class="total">28,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="flags blank"></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000162021" tabindex="0"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000162021" data-item-no="001" tabindex="0">장바구니</button></div>
    
                                                            </div>
                                                        </li>
    
                                                
    
                                                
                                                
                                            
                                        
                                        
                                                
                                                    <li></li>
                                                
                                                    <li></li>
                                                
                                            </ul></div></div></div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div><div class="brand" data-sort="6" id="dataSortBox" corner-no="359">
                            <div class="brandBox lineb">
                                <div class="head md">
                                    <h3 class="tit">
                                        
                                            
                                                가을 햇살에는 구달 어성초 선케어
                                            
                                            
                                        
                                    </h3>
                                </div>
    
                                <div class="mdSwiperBox">
                                    <div class="mdSwiper slick-initialized slick-slider" id="mdSwiper">
                                        
                                        
    
                                        
                                            
                                                
                                                    <div aria-live="polite" class="slick-list draggable"><div class="slick-track" role="listbox" style="opacity: 1; width: 1020px; transform: translate3d(0px, 0px, 0px);"><div class="item slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 1020px;" tabindex="-1" role="option" aria-describedby="slick-slide10">
                                                    <ul class="prod-list">
                                                
    
                                                <li>
                                                    <div class="prod">
                                                        <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182780&amp;dispCatNo=90000020137&amp;trackingCd=BrandA001436_Mdpick2&amp;t_page=브랜드관&amp;t_click=테마별상품전시2_상품상세&amp;t_number=1" name="BrandA001436_Mdpick2" class="thumb goodsList" data-ref-goodsno="A000000182780" data-ref-dispcatno="90000020137" data-ref-itemno="001" data-attr="브랜드관^구달_테마별상품전시_2^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++" data-trk="/" tabindex="0" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_테마별상품전시_2&quot;, &quot;3&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018278013ko.jpg?l=ko" alt="[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++" class="pic-thumb" onerror="common.errorImg(this);"><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_테마별상품전시_2&quot;, &quot;3&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182780&amp;dispCatNo=90000020137&amp;trackingCd=BrandA001436_Mdpick2&amp;t_page=브랜드관&amp;t_click=테마별상품전시2_상품상세&amp;t_number=1" name="BrandA001436_Mdpick2" class="goodsList" data-ref-goodsno="A000000182780" data-ref-dispcatno="90000020137" data-ref-itemno="001" data-attr="브랜드관^구달_테마별상품전시_2^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++" data-trk="/" tabindex="0"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++</span><div class="discount"><strong class="rate-of">17%</strong> <span class="origin">20,000원</span></div><div class="price"><strong class="total">16,560<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.8</span><span class="num">(999+)</span></div><div class="flags"><span class="flag sale">세일</span><span class="flag coupon">쿠폰</span></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000182780" tabindex="0"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000182780" data-item-no="001" tabindex="0">장바구니</button></div>
    
                                                    </div>
                                                </li>
    
                                                
    
                                                
                                                
                                            
                                        
                                            
                                                
    
                                                <li>
                                                    <div class="prod">
                                                        <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182782&amp;dispCatNo=90000020137&amp;trackingCd=BrandA001436_Mdpick2&amp;t_page=브랜드관&amp;t_click=테마별상품전시2_상품상세&amp;t_number=2" name="BrandA001436_Mdpick2" class="thumb goodsList" data-ref-goodsno="A000000182782" data-ref-dispcatno="90000020137" data-ref-itemno="001" data-attr="브랜드관^구달_테마별상품전시_2^[한정기획] 구달 맑은 어성초 진정 쿨링 선스틱 1+1 기획 SPF50+ PA++++" data-trk="/" tabindex="0" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182782&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_테마별상품전시_2&quot;, &quot;4&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018278210ko.jpg?l=ko" alt="[한정기획] 구달 맑은 어성초 진정 쿨링 선스틱 1+1 기획 SPF50+ PA++++" class="pic-thumb" onerror="common.errorImg(this);"><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182782&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_테마별상품전시_2&quot;, &quot;4&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182782&amp;dispCatNo=90000020137&amp;trackingCd=BrandA001436_Mdpick2&amp;t_page=브랜드관&amp;t_click=테마별상품전시2_상품상세&amp;t_number=2" name="BrandA001436_Mdpick2" class="goodsList" data-ref-goodsno="A000000182782" data-ref-dispcatno="90000020137" data-ref-itemno="001" data-attr="브랜드관^구달_테마별상품전시_2^[한정기획] 구달 맑은 어성초 진정 쿨링 선스틱 1+1 기획 SPF50+ PA++++" data-trk="/" tabindex="0"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[한정기획] 구달 맑은 어성초 진정 쿨링 선스틱 1+1 기획 SPF50+ PA++++</span><div class="discount"><strong class="rate-of">10%</strong> <span class="origin">22,000원</span></div><div class="price"><strong class="total">19,800<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(656)</span></div><div class="flags"><span class="flag sale">세일</span></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000182782" tabindex="0"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000182782" data-item-no="001" tabindex="0">장바구니</button></div>
    
                                                    </div>
                                                </li>
    
                                                
    
                                                
                                                
                                            
                                        
                                        
                                        
                                            <li></li>
                                        
                                            <li></li>
                                        
                                    </ul></div></div></div>
                                    
                                </div>
                            </div>
                        </div>
                        </div><div class="brandBox" data-sort="7" id="dataSortBox" corner-no="266">
                            <div class="brand-promotion video_box">
                                <div class="brand-promotion-container">
                                    <h3 class="tit">
                                        
                                            
                                                제주 성산에서 자라난 흑당근으로 모공그늘이별
                                            
                                            
                                        
                                    </h3>
                                    
                                        
                                        
                                            
                                        
                                        
                                            <div class="video_masking_box">
                                                <div id="promotion-video-player" data-plyr-provider="Youtube" data-plyr-embed-id="9HU0a9cM6tM">
                                                    <iframe id="playPlayer" frameborder="0" allowfullscreen="1" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" title="[goodal] Black Carrot Vita-A Retinol Ampoule 흑당근 비타A 레티놀 앰플🥕" width="640" height="360" src="https://www.youtube.com/embed/9HU0a9cM6tM?version=1&amp;autoplay=1&amp;controls=1&amp;modestbranding=1&amp;fs=1&amp;rel=0&amp;playsinline=1&amp;enablejsapi=1&amp;origin=https%3A%2F%2Fwww.oliveyoung.co.kr&amp;widgetid=1" data-gtm-yt-inspected-28="true" data-gtm-yt-inspected-33="true"></iframe>
                                                </div>
                                            </div>
                                            
                                        
    
                                        
                                            
                                                <ul class="video_thumbs_box">
                                            
                                            
                                                <li class="video_item on">
                                                    <a href="#promotion-video-player" class="video_thumbs" data-thumb-youtubeid="9HU0a9cM6tM" data-attr="브랜드관^구달_동영상^#흑당근비타A 모공탄력 레티놀앰플^1" data-trk="/" data-tracking-param="t_page=브랜드관&amp;t_click=브랜드스토리_영상&amp;t_video_name=#흑당근비타A 모공탄력 레티놀앰플&amp;t_number=1">
                                                        <span class="thumb_img"><img src="https://img.youtube.com/vi/9HU0a9cM6tM/mqdefault.jpg" alt=""></span>
                                                        <span class="thumb_txt">#흑당근비타A 모공탄력 레티놀앰플</span>
                                                    </a>
                                                </li>
                                            
                                            
                                        
                                    
                                        
                                        
                                            
                                        
                                        
    
                                        
                                            
                                            
                                                <li class="video_item ">
                                                    <a href="#promotion-video-player" class="video_thumbs" data-thumb-youtubeid="wTokmmAVn6Q" data-attr="브랜드관^구달_동영상^#흑당근비타A 쫀쫀탄력 레티놀크림^2" data-trk="/" data-tracking-param="t_page=브랜드관&amp;t_click=브랜드스토리_영상&amp;t_video_name=#흑당근비타A 쫀쫀탄력 레티놀크림&amp;t_number=2">
                                                        <span class="thumb_img"><img src="https://img.youtube.com/vi/wTokmmAVn6Q/mqdefault.jpg" alt=""></span>
                                                        <span class="thumb_txt">#흑당근비타A 쫀쫀탄력 레티놀크림</span>
                                                    </a>
                                                </li>
                                            
                                            
                                                </ul>
                                            
                                        
                                    
                                </div>
                            </div>
                        </div></div>
        
        <div class="brand">
            
            
            
            
            
            
                
            
            
                
            
    
                
                <div class="brandBox lineb">
                    <div class="tabHead">
                        <ul class="tablist" role="tablist">
                            
                            
                                <li class="tab active" role="tab" id="tabitem2" aria-controls="tab-panel2" tabindex="0" aria-selected="true">베스트</li>
                            
                            
                                <li class="tab" role="tab" id="tabitem3" aria-controls="tab-panel3" tabindex="0">리뷰</li>
                            
                        </ul>
                    </div>
                    
                    <div class="tabContainer">
                        
                        
                        
                        
                        
                        
                            <div class="tabCont active" role="tabpanel" id="tab-panel2" aria-lebelledby="tabitem2">
                                <div class="itemList">
                                    <div class="tabSwiperBox">
                                        <div class="tabSwiper slick-initialized slick-slider" id="bestTabSwiper"><button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous" role="button" style="display: block;">Previous</button>
                                            
                                            
                                            
                                                
                                                    <div aria-live="polite" class="slick-list draggable"><div class="slick-track" role="listbox" style="opacity: 1; width: 5100px; transform: translate3d(-1020px, 0px, 0px);"><div class="item slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" style="width: 1020px;" tabindex="-1">
                                                        <ul class="prod-list">
                                                
                                                
                                                        <li id="">
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165071&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=9" name="BrandA001436_Best" class="thumb goodsList" data-ref-goodsno="A000000165071" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[한정기획] 구달 맑은 어성초 진정 수분크림 75ml 기획(+세럼 20ml+화장솜 20매 증정)" data-trk="/" tabindex="-1" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000165071&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;1&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016507112ko.jpg?l=ko" alt="[한정기획] 구달 맑은 어성초 진정 수분크림 75ml 기획(+세럼 20ml+화장솜 20매 증정)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000165071&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;1&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165071&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=9" name="BrandA001436_Best" class="goodsList" data-ref-goodsno="A000000165071" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[한정기획] 구달 맑은 어성초 진정 수분크림 75ml 기획(+세럼 20ml+화장솜 20매 증정)" data-trk="/" tabindex="-1"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[한정기획] 구달 맑은 어성초 진정 수분크림 75ml 기획(+세럼 20ml+화장솜 20매 증정)</span><div class="price"><strong class="total">26,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="flags blank"></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000165071" tabindex="-1"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000165071" data-item-no="001" tabindex="-1">장바구니</button></div>
    
                                                            </div>
                                                        </li>
                                                        
                                                
                                                
                                                
                                            
                                                
                                                
                                                        <li id="">
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183368&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=10" name="BrandA001436_Best" class="thumb goodsList" data-ref-goodsno="A000000183368" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 토너 패드 70매 리필 기획(+70매 리필)" data-trk="/" tabindex="-1" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183368&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;2&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018336805ko.jpg?l=ko" alt="[1+1기획] 구달 맑은 어성초 진정 토너 패드 70매 리필 기획(+70매 리필)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183368&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;2&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183368&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=10" name="BrandA001436_Best" class="goodsList" data-ref-goodsno="A000000183368" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 토너 패드 70매 리필 기획(+70매 리필)" data-trk="/" tabindex="-1"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[1+1기획] 구달 맑은 어성초 진정 토너 패드 70매 리필 기획(+70매 리필)</span><div class="discount"> <span class="origin">36,000원</span></div><div class="price"><strong class="total">25,200<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="flags"><span class="flag sale">세일</span></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000183368" tabindex="-1"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000183368" data-item-no="001" tabindex="-1">장바구니</button></div>
    
                                                            </div>
                                                        </li>
                                                        
                                                
                                                
                                                
                                            
                                            
                                            
                                                    
                                                        <li></li>
                                                    
                                                        <li></li>
                                                    
                                                </ul></div><div class="item slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 1020px;" tabindex="-1" role="option" aria-describedby="slick-slide20">
                                                        <ul class="prod-list">
                                                
                                                
                                                        <li id="bestTab1">
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=1" name="BrandA001436_Best" class="thumb goodsList" data-ref-goodsno="A000000162323" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" data-trk="/" tabindex="0" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;3&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016232329ko.jpg?l=ko" alt="[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" class="pic-thumb" onerror="common.errorImg(this);"><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;3&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=1" name="BrandA001436_Best" class="goodsList" data-ref-goodsno="A000000162323" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" data-trk="/" tabindex="0"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획</span><div class="discount"> <span class="origin">43,000원</span></div><div class="price"><strong class="total">30,960<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="flags"><span class="flag sale">세일</span><span class="flag coupon">쿠폰</span></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000162323" tabindex="0"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000162323" data-item-no="001" tabindex="0">장바구니</button></div>
    
                                                            </div>
                                                        </li>
                                                        
                                                
                                                
                                                
                                            
                                                
                                                
                                                        <li id="bestTab2">
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168705&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=2" name="BrandA001436_Best" class="thumb goodsList" data-ref-goodsno="A000000168705" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++" data-trk="/" tabindex="0" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168705&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;4&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016870522ko.jpg?l=ko" alt="[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++" class="pic-thumb" onerror="common.errorImg(this);"><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168705&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;4&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168705&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=2" name="BrandA001436_Best" class="goodsList" data-ref-goodsno="A000000168705" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++" data-trk="/" tabindex="0"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++</span><div class="price"><strong class="total">18,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.8</span><span class="num">(999+)</span></div><div class="flags blank"></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000168705" tabindex="0"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000168705" data-item-no="001" tabindex="0">장바구니</button></div>
    
                                                            </div>
                                                        </li>
                                                        
                                                
                                                
                                                
                                            
                                                
                                                
                                                        <li id="bestTab3">
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182780&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=3" name="BrandA001436_Best" class="thumb goodsList" data-ref-goodsno="A000000182780" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++" data-trk="/" tabindex="0" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;5&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018278013ko.jpg?l=ko" alt="[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++" class="pic-thumb" onerror="common.errorImg(this);"><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;5&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182780&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=3" name="BrandA001436_Best" class="goodsList" data-ref-goodsno="A000000182780" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++" data-trk="/" tabindex="0"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++</span><div class="discount"> <span class="origin">20,000원</span></div><div class="price"><strong class="total">16,560<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.8</span><span class="num">(999+)</span></div><div class="flags"><span class="flag sale">세일</span><span class="flag coupon">쿠폰</span></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000182780" tabindex="0"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000182780" data-item-no="001" tabindex="0">장바구니</button></div>
    
                                                            </div>
                                                        </li>
                                                        
                                                
                                                
                                                
                                            
                                                
                                                
                                                        <li id="bestTab4">
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189175&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=4" name="BrandA001436_Best" class="thumb goodsList" data-ref-goodsno="A000000189175" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획" data-trk="/" tabindex="0" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189175&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;6&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018917508ko.jpg?l=ko" alt="[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획" class="pic-thumb" onerror="common.errorImg(this);"><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189175&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;6&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189175&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=4" name="BrandA001436_Best" class="goodsList" data-ref-goodsno="A000000189175" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획" data-trk="/" tabindex="0"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획</span><div class="discount"> <span class="origin">38,000원</span></div><div class="price"><strong class="total">26,600<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="flags"><span class="flag coupon">쿠폰</span></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000189175" tabindex="0"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000189175" data-item-no="001" tabindex="0">장바구니</button></div>
    
                                                            </div>
                                                        </li>
                                                        
                                                
                                                        </ul>
                                                    </div><div class="item slick-slide" data-slick-index="1" aria-hidden="true" style="width: 1020px;" tabindex="-1" role="option" aria-describedby="slick-slide21">
                                                        <ul class="prod-list">
                                                
                                                
                                                        <li id="bestTab5">
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162325&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=5" name="BrandA001436_Best" class="thumb goodsList" data-ref-goodsno="A000000162325" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[단독기획] 구달 청귤 비타C 잡티케어 세럼 30ml 기획 (+세럼 10ml +마스크팩 1매 증정)" data-trk="/" tabindex="-1" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162325&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;7&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016232526ko.jpg?l=ko" alt="[단독기획] 구달 청귤 비타C 잡티케어 세럼 30ml 기획 (+세럼 10ml +마스크팩 1매 증정)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162325&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;7&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162325&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=5" name="BrandA001436_Best" class="goodsList" data-ref-goodsno="A000000162325" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[단독기획] 구달 청귤 비타C 잡티케어 세럼 30ml 기획 (+세럼 10ml +마스크팩 1매 증정)" data-trk="/" tabindex="-1"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[단독기획] 구달 청귤 비타C 잡티케어 세럼 30ml 기획 (+세럼 10ml +마스크팩 1매 증정)</span><div class="discount"> <span class="origin">28,000원</span></div><div class="price"><strong class="total">22,400<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="flags"><span class="flag sale">세일</span></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000162325" tabindex="-1"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000162325" data-item-no="001" tabindex="-1">장바구니</button></div>
    
                                                            </div>
                                                        </li>
                                                        
                                                
                                                
                                                
                                            
                                                
                                                
                                                        <li id="bestTab6">
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162021&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=6" name="BrandA001436_Best" class="thumb goodsList" data-ref-goodsno="A000000162021" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)" data-trk="/" tabindex="-1" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162021&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;8&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016202129ko.jpg?l=ko" alt="[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162021&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;8&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162021&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=6" name="BrandA001436_Best" class="goodsList" data-ref-goodsno="A000000162021" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)" data-trk="/" tabindex="-1"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)</span><div class="price"><strong class="total">28,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="flags blank"></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000162021" tabindex="-1"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000162021" data-item-no="001" tabindex="-1">장바구니</button></div>
    
                                                            </div>
                                                        </li>
                                                        
                                                
                                                
                                                
                                            
                                                
                                                
                                                        <li id="bestTab7">
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190108&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=7" name="BrandA001436_Best" class="thumb goodsList" data-ref-goodsno="A000000190108" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[재유PICK/단독기획]구달 흑당근 비타A 레티놀 탄력 앰플 30ml 기획 (+앰플 9ml*2ea)" data-trk="/" tabindex="-1" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190108&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;9&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019010811ko.jpg?l=ko" alt="[재유PICK/단독기획]구달 흑당근 비타A 레티놀 탄력 앰플 30ml 기획 (+앰플 9ml*2ea)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190108&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;9&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190108&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=7" name="BrandA001436_Best" class="goodsList" data-ref-goodsno="A000000190108" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[재유PICK/단독기획]구달 흑당근 비타A 레티놀 탄력 앰플 30ml 기획 (+앰플 9ml*2ea)" data-trk="/" tabindex="-1"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[재유PICK/단독기획]구달 흑당근 비타A 레티놀 탄력 앰플 30ml 기획 (+앰플 9ml*2ea)</span><div class="discount"> <span class="origin">34,000원</span></div><div class="price"><strong class="total">21,800<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(142)</span></div><div class="flags"><span class="flag coupon">쿠폰</span></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000190108" tabindex="-1"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000190108" data-item-no="001" tabindex="-1">장바구니</button></div>
    
                                                            </div>
                                                        </li>
                                                        
                                                
                                                
                                                
                                            
                                                
                                                
                                                        <li id="bestTab8">
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183371&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=8" name="BrandA001436_Best" class="thumb goodsList" data-ref-goodsno="A000000183371" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)" data-trk="/" tabindex="-1" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183371&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;10&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018337104ko.jpg?l=ko" alt="[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183371&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;10&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183371&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=8" name="BrandA001436_Best" class="goodsList" data-ref-goodsno="A000000183371" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)" data-trk="/" tabindex="-1"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)</span><div class="discount"> <span class="origin">30,000원</span></div><div class="price"><strong class="total">24,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.8</span><span class="num">(999+)</span></div><div class="flags"><span class="flag sale">세일</span></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000183371" tabindex="-1"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000183371" data-item-no="001" tabindex="-1">장바구니</button></div>
    
                                                            </div>
                                                        </li>
                                                        
                                                
                                                        </ul>
                                                    </div><div class="item slick-slide" data-slick-index="2" aria-hidden="true" style="width: 1020px;" tabindex="-1" role="option" aria-describedby="slick-slide22">
                                                        <ul class="prod-list">
                                                
                                                
                                                        <li id="bestTab9">
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165071&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=9" name="BrandA001436_Best" class="thumb goodsList" data-ref-goodsno="A000000165071" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[한정기획] 구달 맑은 어성초 진정 수분크림 75ml 기획(+세럼 20ml+화장솜 20매 증정)" data-trk="/" tabindex="-1" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000165071&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;11&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016507112ko.jpg?l=ko" alt="[한정기획] 구달 맑은 어성초 진정 수분크림 75ml 기획(+세럼 20ml+화장솜 20매 증정)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000165071&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;11&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165071&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=9" name="BrandA001436_Best" class="goodsList" data-ref-goodsno="A000000165071" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[한정기획] 구달 맑은 어성초 진정 수분크림 75ml 기획(+세럼 20ml+화장솜 20매 증정)" data-trk="/" tabindex="-1"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[한정기획] 구달 맑은 어성초 진정 수분크림 75ml 기획(+세럼 20ml+화장솜 20매 증정)</span><div class="price"><strong class="total">26,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="flags blank"></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000165071" tabindex="-1"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000165071" data-item-no="001" tabindex="-1">장바구니</button></div>
    
                                                            </div>
                                                        </li>
                                                        
                                                
                                                
                                                
                                            
                                                
                                                
                                                        <li id="bestTab10">
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183368&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=10" name="BrandA001436_Best" class="thumb goodsList" data-ref-goodsno="A000000183368" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 토너 패드 70매 리필 기획(+70매 리필)" data-trk="/" tabindex="-1" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183368&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;12&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018336805ko.jpg?l=ko" alt="[1+1기획] 구달 맑은 어성초 진정 토너 패드 70매 리필 기획(+70매 리필)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183368&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;12&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183368&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=10" name="BrandA001436_Best" class="goodsList" data-ref-goodsno="A000000183368" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 토너 패드 70매 리필 기획(+70매 리필)" data-trk="/" tabindex="-1"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[1+1기획] 구달 맑은 어성초 진정 토너 패드 70매 리필 기획(+70매 리필)</span><div class="discount"> <span class="origin">36,000원</span></div><div class="price"><strong class="total">25,200<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="flags"><span class="flag sale">세일</span></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000183368" tabindex="-1"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000183368" data-item-no="001" tabindex="-1">장바구니</button></div>
    
                                                            </div>
                                                        </li>
                                                        
                                                
                                                
                                                
                                            
                                            
                                            
                                                    
                                                        <li></li>
                                                    
                                                        <li></li>
                                                    
                                                </ul></div><div class="item slick-slide slick-cloned" data-slick-index="3" aria-hidden="true" style="width: 1020px;" tabindex="-1">
                                                        <ul class="prod-list">
                                                
                                                
                                                        <li id="">
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=1" name="BrandA001436_Best" class="thumb goodsList" data-ref-goodsno="A000000162323" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" data-trk="/" tabindex="-1" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;13&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016232329ko.jpg?l=ko" alt="[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" class="pic-thumb" onerror="common.errorImg(this);"><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;13&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=1" name="BrandA001436_Best" class="goodsList" data-ref-goodsno="A000000162323" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" data-trk="/" tabindex="-1"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획</span><div class="discount"> <span class="origin">43,000원</span></div><div class="price"><strong class="total">30,960<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="flags"><span class="flag sale">세일</span><span class="flag coupon">쿠폰</span></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000162323" tabindex="-1"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000162323" data-item-no="001" tabindex="-1">장바구니</button></div>
    
                                                            </div>
                                                        </li>
                                                        
                                                
                                                
                                                
                                            
                                                
                                                
                                                        <li id="">
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168705&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=2" name="BrandA001436_Best" class="thumb goodsList" data-ref-goodsno="A000000168705" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++" data-trk="/" tabindex="-1" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168705&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;14&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016870522ko.jpg?l=ko" alt="[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++" class="pic-thumb" onerror="common.errorImg(this);"><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168705&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;14&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168705&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=2" name="BrandA001436_Best" class="goodsList" data-ref-goodsno="A000000168705" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++" data-trk="/" tabindex="-1"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++</span><div class="price"><strong class="total">18,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.8</span><span class="num">(999+)</span></div><div class="flags blank"></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000168705" tabindex="-1"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000168705" data-item-no="001" tabindex="-1">장바구니</button></div>
    
                                                            </div>
                                                        </li>
                                                        
                                                
                                                
                                                
                                            
                                                
                                                
                                                        <li id="">
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182780&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=3" name="BrandA001436_Best" class="thumb goodsList" data-ref-goodsno="A000000182780" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++" data-trk="/" tabindex="-1" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;15&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018278013ko.jpg?l=ko" alt="[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++" class="pic-thumb" onerror="common.errorImg(this);"><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;15&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182780&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=3" name="BrandA001436_Best" class="goodsList" data-ref-goodsno="A000000182780" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++" data-trk="/" tabindex="-1"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++</span><div class="discount"> <span class="origin">20,000원</span></div><div class="price"><strong class="total">16,560<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.8</span><span class="num">(999+)</span></div><div class="flags"><span class="flag sale">세일</span><span class="flag coupon">쿠폰</span></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000182780" tabindex="-1"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000182780" data-item-no="001" tabindex="-1">장바구니</button></div>
    
                                                            </div>
                                                        </li>
                                                        
                                                
                                                
                                                
                                            
                                                
                                                
                                                        <li id="">
                                                            <div class="prod">
                                                                <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189175&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=4" name="BrandA001436_Best" class="thumb goodsList" data-ref-goodsno="A000000189175" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획" data-trk="/" tabindex="-1" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189175&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;16&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018917508ko.jpg?l=ko" alt="[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획" class="pic-thumb" onerror="common.errorImg(this);"><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189175&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;16&quot;);"><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189175&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=4" name="BrandA001436_Best" class="goodsList" data-ref-goodsno="A000000189175" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_베스트^[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획" data-trk="/" tabindex="-1"><div class="prod-brand"><strong class="exclusive"></strong></div><span class="prod-name double-line">[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획</span><div class="discount"> <span class="origin">38,000원</span></div><div class="price"><strong class="total">26,600<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="flags"><span class="flag coupon">쿠폰</span></div></a></div><div class="prod-func"><button type="button" class="favorite btn_zzim jeem" data-ref-goodsno="A000000189175" tabindex="-1"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000189175" data-item-no="001" tabindex="-1">장바구니</button></div>
    
                                                            </div>
                                                        </li>
                                                        
                                                
                                                        </ul>
                                                    </div></div></div> <!-- item -->
                                                
                                                
                                                
                                            
                                                
                                                     <!-- item -->
                                                
                                                
                                                
                                            
                                                
                                                    
                                            
                                        <button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="display: block;">Next</button></div>
                                    </div>
                                </div>
                            </div>
                        
                        
                        
                        
                        
                            <div class="tabCont reviewPanel" role="tabpanel" id="tab-panel3" aria-lebelledby="tabitem3">
                                <div class="tabSwiperBox">
                                    <div class="tabSwiper slick-initialized slick-slider" id="reviewTabSwiper"><button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous" role="button" style="display: block;">Previous</button>
                                        
                                        
                                        
                                            
                                            
                                            
                                            
                                                
                                                
                                                
                                                
                                                
                                                    
                                                
                                            
                                            
                                            
                                                <div aria-live="polite" class="slick-list draggable"><div class="slick-track" role="listbox" style="opacity: 1; width: 0px; transform: translate3d(0px, 0px, 0px);"><div class="reviewList slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" style="width: 0px;" tabindex="-1">
                                                    <ul class="inner">
                                            
                                                
                                                <li>
                                                    <p class="thum" onclick="javascript:common.link.moveGoodsDetail('A000000162318', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'10'}); ">
                                                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016231805ko.jpg?l=ko" data-ref-goodsno="A000000162318" alt="구달 청귤 비타C 잡티케어 세럼 마스크 1매 " onerror="common.errorImg(this);" data-attr="브랜드관^구달_리뷰^구달 청귤 비타C 잡티케어 세럼 마스크 1매 " data-trk="/" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162318&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;1&quot;);">
                                                    </p>
                                                    <div class="reviewCont" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000162318', '구달 청귤 비타C 잡티케어 세럼 마스크 1매 ', '10'); mypage.reviewerLounge.goReviewDetail('23251131', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'10'});">
                                                        <div class="topinfo">
                                                            <div class="review_stat type2">
                                                                <span class="point pt5">5점</span>
                                                            </div>
                                                            <span class="like"><span class="icon">4</span></span>
                                                        </div>
                                                        <dl class="retxt">
                                                            <dd>비타민c팩이라 하고나면 피부가 밝아보입니다. 시트팩 밀착력도 좋습니다</dd>
                                                        </dl>
                                                        <a href="javascript:void(0);" class="btn_detail" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000162318', '구달 청귤 비타C 잡티케어 세럼 마스크 1매 ', '10'); mypage.reviewerLounge.goReviewDetail('23251131', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'10'});" tabindex="-1">자세히 보기</a>
                                                    </div>
                                                </li>
                                                
                                            
                                            
                                            
                                        
                                        
                                        
                                                
                                                    <li></li>
                                                
                                                    <li></li>
                                                
                                            </ul></div><div class="reviewList slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 0px;" tabindex="-1" role="option" aria-describedby="slick-slide30">
                                                    <ul class="inner">
                                            
                                                
                                                <li>
                                                    <p class="thum" onclick="javascript:common.link.moveGoodsDetail('A000000168705', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'1'}); ">
                                                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016870522ko.jpg?l=ko" data-ref-goodsno="A000000168705" alt="[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++" onerror="common.errorImg(this);" data-attr="브랜드관^구달_리뷰^[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++" data-trk="/" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168705&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;2&quot;);">
                                                    </p>
                                                    <div class="reviewCont" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000168705', '[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++', '1'); mypage.reviewerLounge.goReviewDetail('23033813', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'1'});">
                                                        <div class="topinfo">
                                                            <div class="review_stat type2">
                                                                <span class="point pt5">5점</span>
                                                            </div>
                                                            <span class="like"><span class="icon">33</span></span>
                                                        </div>
                                                        <dl class="retxt">
                                                            <dd>💬자칭/타칭 선크림 처돌이인 나 - !
    이 제품 후기가 꽤 좋다는 것을 알고 있었는데, 이미 너무 많아서 사볼 엄두가 안났음,,,,
    내 최애 선크림인 엠디스픽 선크림을 다 쓴 김에 한번 구매해봄 !
    
    
    일단 [당분간 정착할 예정]이라는 결론부터 말하고 시작 ~
    
    
    
    ➕요즘 핫한 라운드랩 자작나무 선크림, 아떼 만큼 발림성 좋은 유기자차
    ➕진정 성분 들어있어 자극적이지도 않고 나는 눈시림도 괜찮음
    
    💛아떼는 자극이 있었는데 이 제품 자극 못느꼈고,
    💙라운드랩은 흡수 후 약간의 유분이 남았는데 이 제품은 좀 더 깔끔하게 흡수됨
    
    
    
    💚이번에 해외여행가면서 동생은 식물나라 산소수 선젤로션, 나는 구달 선크림 사용했는데,
    내가 훨씬 덜 탐,,, 
    둘다 50+에 PA++++로 동일한데도 불구하고,,,,
    
    
    
    위에서 비교한 선크림 3종과 구달 선크림까지 전부 [한국콜마]라는 같은 곳에서 제조된 거라 전반적인 사용감은 비슷하나,
    개인적으로 단점이 안보였던 구달로 정착 예정 !
    
    
    엠디스픽 선크림과 거의 똑같은데 올영 입점으로 접근성 좋고 할인도 되는 구달로 정착해야지 ! ✨
    늘 가방에 넣어놓고 다니면서 자주 발랐더니 한달도 안되어서 한 통 끝 !
    
    
    
    
    
    
    도움이 되셨다면, 도움이 돼요(👍🏻) 한번만 눌러주세요 🤍</dd>
                                                        </dl>
                                                        <a href="javascript:void(0);" class="btn_detail" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000168705', '[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++', '1'); mypage.reviewerLounge.goReviewDetail('23033813', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'1'});" tabindex="0">자세히 보기</a>
                                                    </div>
                                                </li>
                                                
                                            
                                            
                                            
                                        
                                            
                                            
                                            
                                            
                                                
                                                
                                                
                                                
                                                
                                                    
                                                
                                            
                                            
                                            
                                                
                                                <li>
                                                    <p class="thum" onclick="javascript:common.link.moveGoodsDetail('A000000162323', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'2'}); ">
                                                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016232329ko.jpg?l=ko" data-ref-goodsno="A000000162323" alt="[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" onerror="common.errorImg(this);" data-attr="브랜드관^구달_리뷰^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" data-trk="/" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;3&quot;);">
                                                    </p>
                                                    <div class="reviewCont" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000162323', '[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획', '2'); mypage.reviewerLounge.goReviewDetail('23102015', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'2'});">
                                                        <div class="topinfo">
                                                            <div class="review_stat type2">
                                                                <span class="point pt5">5점</span>
                                                            </div>
                                                            <span class="like"><span class="icon">24</span></span>
                                                        </div>
                                                        <dl class="retxt">
                                                            <dd>5⭐️/5 
    이 세럼은 필수품입니다! 
    
    🍋 지난 1년간 매일 아침 종교적으로 바르고 있습니다. 이 세럼 덕분에, 제 피부는 항상 빛나고, 피곤하고 스트레스를 받을 때도 결코 칙칙해 보이지 않습니다!
    🍋 이 세럼은 흉터와 흑점 제거에도 많은 도움을 주며, 사용을 시작한 후 피부 톤이 훨씬 균일해졌다는 것을 알게 되었습니다! 
    🍋 질감은 제가 항상 세럼에서 찾는 텍스처입니다: 두껍고 약간 끈적거려서 이 세럼을 바르면 하루 종일 제 피부를 보호해주는 장벽이 생기는 것처럼 느껴집니다. 
    🍋 제 피부가 매우 건조하고, 이 세럼은 피부에 기름기를 남기지 않고 완벽하게 흡수됩니다! 
    🍋 이 세럼의 귤냄새가 너무 좋아요! 상쾌한 아침향으로 제격입니다 :) 
    
    이건 절대 포기하지 않을 제품이에요, 찐짜 제 피부를 바뀌었어요 🥰</dd>
                                                        </dl>
                                                        <a href="javascript:void(0);" class="btn_detail" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000162323', '[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획', '2'); mypage.reviewerLounge.goReviewDetail('23102015', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'2'});" tabindex="0">자세히 보기</a>
                                                    </div>
                                                </li>
                                                
                                            
                                            
                                            
                                        
                                            
                                            
                                            
                                            
                                                
                                                
                                                
                                                
                                                
                                                    
                                                
                                            
                                            
                                            
                                                
                                                <li>
                                                    <p class="thum" onclick="javascript:common.link.moveGoodsDetail('A000000183371', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'3'}); ">
                                                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018337104ko.jpg?l=ko" data-ref-goodsno="A000000183371" alt="[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)" onerror="common.errorImg(this);" data-attr="브랜드관^구달_리뷰^[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)" data-trk="/" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183371&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;4&quot;);">
                                                    </p>
                                                    <div class="reviewCont" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000183371', '[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)', '3'); mypage.reviewerLounge.goReviewDetail('22999186', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'3'});">
                                                        <div class="topinfo">
                                                            <div class="review_stat type2">
                                                                <span class="point pt5">5점</span>
                                                            </div>
                                                            <span class="like"><span class="icon">16</span></span>
                                                        </div>
                                                        <dl class="retxt">
                                                            <dd>자극 없이 순하고, 막 쓰고 3스킨하기 진짜 좋습니당 🤗 뭐 나는 것도 하나 없어요!</dd>
                                                        </dl>
                                                        <a href="javascript:void(0);" class="btn_detail" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000183371', '[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)', '3'); mypage.reviewerLounge.goReviewDetail('22999186', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'3'});" tabindex="0">자세히 보기</a>
                                                    </div>
                                                </li>
                                                
                                            
                                                    </ul>
                                                </div><div class="reviewList slick-slide" data-slick-index="1" aria-hidden="true" style="width: 0px;" tabindex="-1" role="option" aria-describedby="slick-slide31">
                                                    <ul class="inner">
                                            
                                                
                                                <li>
                                                    <p class="thum" onclick="javascript:common.link.moveGoodsDetail('A000000182780', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'4'}); ">
                                                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018278013ko.jpg?l=ko" data-ref-goodsno="A000000182780" alt="[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++" onerror="common.errorImg(this);" data-attr="브랜드관^구달_리뷰^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++" data-trk="/" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;5&quot;);">
                                                    </p>
                                                    <div class="reviewCont" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000182780', '[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++', '4'); mypage.reviewerLounge.goReviewDetail('23039309', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'4'});">
                                                        <div class="topinfo">
                                                            <div class="review_stat type2">
                                                                <span class="point pt4">4점</span>
                                                            </div>
                                                            <span class="like"><span class="icon">10</span></span>
                                                        </div>
                                                        <dl class="retxt">
                                                            <dd>조금 건조한 느낌 있어요 백탁 있구요 근데 이건 어느정도 잘 발라주면 덜하긴 하지만 확실히 하얘지는건 있어요 글구 시간 지나고 낮잠 자고 그러면 엄청 건조해진다네여 ㅠㅠ 
    건조한거 싫은분들은 비추천입니다</dd>
                                                        </dl>
                                                        <a href="javascript:void(0);" class="btn_detail" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000182780', '[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++', '4'); mypage.reviewerLounge.goReviewDetail('23039309', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'4'});" tabindex="-1">자세히 보기</a>
                                                    </div>
                                                </li>
                                                
                                            
                                            
                                            
                                        
                                            
                                            
                                            
                                            
                                                
                                                
                                                
                                                    
                                                
                                                
                                                
                                            
                                            
                                            
                                                
                                                <li>
                                                    <p class="thum" onclick="javascript:common.link.moveGoodsDetail('A000000171077', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'5'}); ">
                                                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017107701ko.jpg?l=ko" data-ref-goodsno="A000000171077" alt="구달 살구 콜라겐 탄력 마스크 1매" onerror="common.errorImg(this);" data-attr="브랜드관^구달_리뷰^구달 살구 콜라겐 탄력 마스크 1매" data-trk="/" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000171077&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;6&quot;);">
                                                    </p>
                                                    <div class="reviewCont" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000171077', '구달 살구 콜라겐 탄력 마스크 1매', '5'); mypage.reviewerLounge.goReviewDetail('22881713', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'5'});">
                                                        <div class="topinfo">
                                                            <div class="review_stat type2">
                                                                <span class="point pt3">3점</span>
                                                            </div>
                                                            <span class="like"><span class="icon">10</span></span>
                                                        </div>
                                                        <dl class="retxt">
                                                            <dd>개인적으로 저랑은 안 맞았던 팩이에요
    뭐가 올라오거나 한 것은 아니지만 올리면 얼굴이 따가워서 금방 뗐습니다
    개인 피부마다 차이가 있으니 다른 분들은 잘 맞을 수 있지만 저는 안 맞아서 아쉬웠어요</dd>
                                                        </dl>
                                                        <a href="javascript:void(0);" class="btn_detail" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000171077', '구달 살구 콜라겐 탄력 마스크 1매', '5'); mypage.reviewerLounge.goReviewDetail('22881713', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'5'});" tabindex="-1">자세히 보기</a>
                                                    </div>
                                                </li>
                                                
                                            
                                            
                                            
                                        
                                            
                                            
                                            
                                            
                                                
                                                
                                                
                                                
                                                
                                                    
                                                
                                            
                                            
                                            
                                                
                                                <li>
                                                    <p class="thum" onclick="javascript:common.link.moveGoodsDetail('A000000187780', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'6'}); ">
                                                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018778005ko.jpg?l=ko" data-ref-goodsno="A000000187780" alt="[단독기획] 구달 청귤 비타C 수분 아이패치 60매 (+60매 더블증정 단독기획)" onerror="common.errorImg(this);" data-attr="브랜드관^구달_리뷰^[단독기획] 구달 청귤 비타C 수분 아이패치 60매 (+60매 더블증정 단독기획)" data-trk="/" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000187780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;7&quot;);">
                                                    </p>
                                                    <div class="reviewCont" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000187780', '[단독기획] 구달 청귤 비타C 수분 아이패치 60매 (+60매 더블증정 단독기획)', '6'); mypage.reviewerLounge.goReviewDetail('22915372', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'6'});">
                                                        <div class="topinfo">
                                                            <div class="review_stat type2">
                                                                <span class="point pt5">5점</span>
                                                            </div>
                                                            <span class="like"><span class="icon">8</span></span>
                                                        </div>
                                                        <dl class="retxt">
                                                            <dd>써보고 좋아서 엄마랑 하나씩 가지려고 구매했어요 할인해서 좋아용</dd>
                                                        </dl>
                                                        <a href="javascript:void(0);" class="btn_detail" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000187780', '[단독기획] 구달 청귤 비타C 수분 아이패치 60매 (+60매 더블증정 단독기획)', '6'); mypage.reviewerLounge.goReviewDetail('22915372', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'6'});" tabindex="-1">자세히 보기</a>
                                                    </div>
                                                </li>
                                                
                                            
                                                    </ul>
                                                </div><div class="reviewList slick-slide" data-slick-index="2" aria-hidden="true" style="width: 0px;" tabindex="-1" role="option" aria-describedby="slick-slide32">
                                                    <ul class="inner">
                                            
                                                
                                                <li>
                                                    <p class="thum" onclick="javascript:common.link.moveGoodsDetail('A000000190110', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'7'}); ">
                                                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0019/A00000019011007ko.jpg?l=ko" data-ref-goodsno="A000000190110" alt="[단독기획]구달 흑당근 비타A 레티놀 탄력 크림 50ml 기획 (+크림 15ml*2ea)" onerror="common.errorImg(this);" data-attr="브랜드관^구달_리뷰^[단독기획]구달 흑당근 비타A 레티놀 탄력 크림 50ml 기획 (+크림 15ml*2ea)" data-trk="/" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190110&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;8&quot;);">
                                                    </p>
                                                    <div class="reviewCont" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000190110', '[단독기획]구달 흑당근 비타A 레티놀 탄력 크림 50ml 기획 (+크림 15ml*2ea)', '7'); mypage.reviewerLounge.goReviewDetail('23024154', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'7'});">
                                                        <div class="topinfo">
                                                            <div class="review_stat type2">
                                                                <span class="point pt5">5점</span>
                                                            </div>
                                                            <span class="like"><span class="icon">6</span></span>
                                                        </div>
                                                        <dl class="retxt">
                                                            <dd>흑당근 앰플이랑 크림 저녁에 함께 사용중인데 쫀쫀하고 좋네요</dd>
                                                        </dl>
                                                        <a href="javascript:void(0);" class="btn_detail" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000190110', '[단독기획]구달 흑당근 비타A 레티놀 탄력 크림 50ml 기획 (+크림 15ml*2ea)', '7'); mypage.reviewerLounge.goReviewDetail('23024154', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'7'});" tabindex="-1">자세히 보기</a>
                                                    </div>
                                                </li>
                                                
                                            
                                            
                                            
                                        
                                            
                                            
                                            
                                            
                                                
                                                
                                                
                                                
                                                    
                                                
                                                
                                            
                                            
                                            
                                                
                                                <li>
                                                    <p class="thum" onclick="javascript:common.link.moveGoodsDetail('A000000189175', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'8'}); ">
                                                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018917508ko.jpg?l=ko" data-ref-goodsno="A000000189175" alt="[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획" onerror="common.errorImg(this);" data-attr="브랜드관^구달_리뷰^[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획" data-trk="/" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189175&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;9&quot;);">
                                                    </p>
                                                    <div class="reviewCont" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000189175', '[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획', '8'); mypage.reviewerLounge.goReviewDetail('22890557', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'8'});">
                                                        <div class="topinfo">
                                                            <div class="review_stat type2">
                                                                <span class="point pt4">4점</span>
                                                            </div>
                                                            <span class="like"><span class="icon">6</span></span>
                                                        </div>
                                                        <dl class="retxt">
                                                            <dd>제 기억으로 토너패드를 입문하게 해준 게 구달 청귤패드인데요, 닦토로 쓰기에 정말 좋았지만 나중에 성분을 볼줄 알게 되니 청귤추출물 말고는 미백 유효성분 없는 걸 알게되고 실망했던 제품이에요. 근데! 원단도 닦토 팩토 다 가능할 것처럼 바뀌고, 나이아신아마이드도 추가돼서 구매해봤어요. 매장에서 손등 테스트 했는데 원단이 신세계였어요! 반투명해서 붙이기도 괜찮은 것 같은데 힘있어서 닦기도 굿…
    
    근데 실상은 좀 다르네요. 분명히 원단에 에센스 흥건하게 적셔있는데… 닦토 한 번 하면 붙일 정도로 촉촉하진 않아서 닦토 후 붙이긴 애매해요ㅋㅋㅠ 토너팩을 먼저 하고 닦토해야 할 것 같아요. 근데 그러면 팩 안붙인 곳은 건조하자나요ㅠ
    
    하지만 동시에 못한다는 거지, 둘 다 어느정도 좋아요~~ 물론 흐물흐물하게 붙는 팩토 전용은 아니라서 닦토로써 더 좋긴 합니다. 
    
    근데ㅠ 실링 제발 바꿔주세요… 두꺼운 실링 필름이 붙어있고, 그 위에 반은 떠있는 비닐 필름을 두어서 비닐을 당기면 실링이 뜯기는 방식인데요, 비닐을 어떻게 잡아도 비닐만 뜯겨서 실링 뚫고 뜯다가 손 베어버렸어요… 사실 매장에서도 테스터 개봉 안 돼있길래 뜯으려다 포기했는데…!!!</dd>
                                                        </dl>
                                                        <a href="javascript:void(0);" class="btn_detail" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000189175', '[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획', '8'); mypage.reviewerLounge.goReviewDetail('22890557', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'8'});" tabindex="-1">자세히 보기</a>
                                                    </div>
                                                </li>
                                                
                                            
                                            
                                            
                                        
                                            
                                            
                                            
                                            
                                                
                                                
                                                
                                                
                                                
                                                    
                                                
                                            
                                            
                                            
                                                
                                                <li>
                                                    <p class="thum" onclick="javascript:common.link.moveGoodsDetail('A000000190108', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'9'}); ">
                                                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0019/A00000019010811ko.jpg?l=ko" data-ref-goodsno="A000000190108" alt="[재유PICK/단독기획]구달 흑당근 비타A 레티놀 탄력 앰플 30ml 기획 (+앰플 9ml*2ea)" onerror="common.errorImg(this);" data-attr="브랜드관^구달_리뷰^[재유PICK/단독기획]구달 흑당근 비타A 레티놀 탄력 앰플 30ml 기획 (+앰플 9ml*2ea)" data-trk="/" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190108&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;10&quot;);">
                                                    </p>
                                                    <div class="reviewCont" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000190108', '[재유PICK/단독기획]구달 흑당근 비타A 레티놀 탄력 앰플 30ml 기획 (+앰플 9ml*2ea)', '9'); mypage.reviewerLounge.goReviewDetail('22776824', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'9'});">
                                                        <div class="topinfo">
                                                            <div class="review_stat type2">
                                                                <span class="point pt5">5점</span>
                                                            </div>
                                                            <span class="like"><span class="icon">6</span></span>
                                                        </div>
                                                        <dl class="retxt">
                                                            <dd>다른 레티놀에 비해 순하긴 한 것 같아요. 타사 유명한 레티놀 제품을 사용했을 때 좋다. 잘 맞는다. 괜찮다. 이런 느낌은 안 들었어서 이번에도 사용하기가 좀 무서웠어요. 근데 3일동안 밤에만 사용했는데 생각보다 자극이 된다고 느껴지진 않았어요. 이거 쓰고 피부 결이 좋아진 것 같은데 지금은 피부가 좀 예민해져서 잠시 중단했습니다.</dd>
                                                        </dl>
                                                        <a href="javascript:void(0);" class="btn_detail" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000190108', '[재유PICK/단독기획]구달 흑당근 비타A 레티놀 탄력 앰플 30ml 기획 (+앰플 9ml*2ea)', '9'); mypage.reviewerLounge.goReviewDetail('22776824', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'9'});" tabindex="-1">자세히 보기</a>
                                                    </div>
                                                </li>
                                                
                                            
                                                    </ul>
                                                </div><div class="reviewList slick-slide" data-slick-index="3" aria-hidden="true" style="width: 0px;" tabindex="-1" role="option" aria-describedby="slick-slide33">
                                                    <ul class="inner">
                                            
                                                
                                                <li>
                                                    <p class="thum" onclick="javascript:common.link.moveGoodsDetail('A000000162318', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'10'}); ">
                                                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016231805ko.jpg?l=ko" data-ref-goodsno="A000000162318" alt="구달 청귤 비타C 잡티케어 세럼 마스크 1매 " onerror="common.errorImg(this);" data-attr="브랜드관^구달_리뷰^구달 청귤 비타C 잡티케어 세럼 마스크 1매 " data-trk="/" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162318&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;11&quot;);">
                                                    </p>
                                                    <div class="reviewCont" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000162318', '구달 청귤 비타C 잡티케어 세럼 마스크 1매 ', '10'); mypage.reviewerLounge.goReviewDetail('23251131', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'10'});">
                                                        <div class="topinfo">
                                                            <div class="review_stat type2">
                                                                <span class="point pt5">5점</span>
                                                            </div>
                                                            <span class="like"><span class="icon">4</span></span>
                                                        </div>
                                                        <dl class="retxt">
                                                            <dd>비타민c팩이라 하고나면 피부가 밝아보입니다. 시트팩 밀착력도 좋습니다</dd>
                                                        </dl>
                                                        <a href="javascript:void(0);" class="btn_detail" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000162318', '구달 청귤 비타C 잡티케어 세럼 마스크 1매 ', '10'); mypage.reviewerLounge.goReviewDetail('23251131', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'10'});" tabindex="-1">자세히 보기</a>
                                                    </div>
                                                </li>
                                                
                                            
                                            
                                            
                                        
                                        
                                        
                                                
                                                    <li></li>
                                                
                                                    <li></li>
                                                
                                            </ul></div><div class="reviewList slick-slide slick-cloned" data-slick-index="4" aria-hidden="true" style="width: 0px;" tabindex="-1">
                                                    <ul class="inner">
                                            
                                                
                                                <li>
                                                    <p class="thum" onclick="javascript:common.link.moveGoodsDetail('A000000168705', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'1'}); ">
                                                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016870522ko.jpg?l=ko" data-ref-goodsno="A000000168705" alt="[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++" onerror="common.errorImg(this);" data-attr="브랜드관^구달_리뷰^[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++" data-trk="/" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168705&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;12&quot;);">
                                                    </p>
                                                    <div class="reviewCont" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000168705', '[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++', '1'); mypage.reviewerLounge.goReviewDetail('23033813', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'1'});">
                                                        <div class="topinfo">
                                                            <div class="review_stat type2">
                                                                <span class="point pt5">5점</span>
                                                            </div>
                                                            <span class="like"><span class="icon">33</span></span>
                                                        </div>
                                                        <dl class="retxt">
                                                            <dd>💬자칭/타칭 선크림 처돌이인 나 - !
    이 제품 후기가 꽤 좋다는 것을 알고 있었는데, 이미 너무 많아서 사볼 엄두가 안났음,,,,
    내 최애 선크림인 엠디스픽 선크림을 다 쓴 김에 한번 구매해봄 !
    
    
    일단 [당분간 정착할 예정]이라는 결론부터 말하고 시작 ~
    
    
    
    ➕요즘 핫한 라운드랩 자작나무 선크림, 아떼 만큼 발림성 좋은 유기자차
    ➕진정 성분 들어있어 자극적이지도 않고 나는 눈시림도 괜찮음
    
    💛아떼는 자극이 있었는데 이 제품 자극 못느꼈고,
    💙라운드랩은 흡수 후 약간의 유분이 남았는데 이 제품은 좀 더 깔끔하게 흡수됨
    
    
    
    💚이번에 해외여행가면서 동생은 식물나라 산소수 선젤로션, 나는 구달 선크림 사용했는데,
    내가 훨씬 덜 탐,,, 
    둘다 50+에 PA++++로 동일한데도 불구하고,,,,
    
    
    
    위에서 비교한 선크림 3종과 구달 선크림까지 전부 [한국콜마]라는 같은 곳에서 제조된 거라 전반적인 사용감은 비슷하나,
    개인적으로 단점이 안보였던 구달로 정착 예정 !
    
    
    엠디스픽 선크림과 거의 똑같은데 올영 입점으로 접근성 좋고 할인도 되는 구달로 정착해야지 ! ✨
    늘 가방에 넣어놓고 다니면서 자주 발랐더니 한달도 안되어서 한 통 끝 !
    
    
    
    
    
    
    도움이 되셨다면, 도움이 돼요(👍🏻) 한번만 눌러주세요 🤍</dd>
                                                        </dl>
                                                        <a href="javascript:void(0);" class="btn_detail" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000168705', '[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++', '1'); mypage.reviewerLounge.goReviewDetail('23033813', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'1'});" tabindex="-1">자세히 보기</a>
                                                    </div>
                                                </li>
                                                
                                            
                                            
                                            
                                        
                                            
                                            
                                            
                                            
                                                
                                                
                                                
                                                
                                                
                                                    
                                                
                                            
                                            
                                            
                                                
                                                <li>
                                                    <p class="thum" onclick="javascript:common.link.moveGoodsDetail('A000000162323', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'2'}); ">
                                                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016232329ko.jpg?l=ko" data-ref-goodsno="A000000162323" alt="[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" onerror="common.errorImg(this);" data-attr="브랜드관^구달_리뷰^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" data-trk="/" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;13&quot;);">
                                                    </p>
                                                    <div class="reviewCont" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000162323', '[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획', '2'); mypage.reviewerLounge.goReviewDetail('23102015', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'2'});">
                                                        <div class="topinfo">
                                                            <div class="review_stat type2">
                                                                <span class="point pt5">5점</span>
                                                            </div>
                                                            <span class="like"><span class="icon">24</span></span>
                                                        </div>
                                                        <dl class="retxt">
                                                            <dd>5⭐️/5 
    이 세럼은 필수품입니다! 
    
    🍋 지난 1년간 매일 아침 종교적으로 바르고 있습니다. 이 세럼 덕분에, 제 피부는 항상 빛나고, 피곤하고 스트레스를 받을 때도 결코 칙칙해 보이지 않습니다!
    🍋 이 세럼은 흉터와 흑점 제거에도 많은 도움을 주며, 사용을 시작한 후 피부 톤이 훨씬 균일해졌다는 것을 알게 되었습니다! 
    🍋 질감은 제가 항상 세럼에서 찾는 텍스처입니다: 두껍고 약간 끈적거려서 이 세럼을 바르면 하루 종일 제 피부를 보호해주는 장벽이 생기는 것처럼 느껴집니다. 
    🍋 제 피부가 매우 건조하고, 이 세럼은 피부에 기름기를 남기지 않고 완벽하게 흡수됩니다! 
    🍋 이 세럼의 귤냄새가 너무 좋아요! 상쾌한 아침향으로 제격입니다 :) 
    
    이건 절대 포기하지 않을 제품이에요, 찐짜 제 피부를 바뀌었어요 🥰</dd>
                                                        </dl>
                                                        <a href="javascript:void(0);" class="btn_detail" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000162323', '[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획', '2'); mypage.reviewerLounge.goReviewDetail('23102015', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'2'});" tabindex="-1">자세히 보기</a>
                                                    </div>
                                                </li>
                                                
                                            
                                            
                                            
                                        
                                            
                                            
                                            
                                            
                                                
                                                
                                                
                                                
                                                
                                                    
                                                
                                            
                                            
                                            
                                                
                                                <li>
                                                    <p class="thum" onclick="javascript:common.link.moveGoodsDetail('A000000183371', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'3'}); ">
                                                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018337104ko.jpg?l=ko" data-ref-goodsno="A000000183371" alt="[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)" onerror="common.errorImg(this);" data-attr="브랜드관^구달_리뷰^[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)" data-trk="/" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183371&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;14&quot;);">
                                                    </p>
                                                    <div class="reviewCont" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000183371', '[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)', '3'); mypage.reviewerLounge.goReviewDetail('22999186', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'3'});">
                                                        <div class="topinfo">
                                                            <div class="review_stat type2">
                                                                <span class="point pt5">5점</span>
                                                            </div>
                                                            <span class="like"><span class="icon">16</span></span>
                                                        </div>
                                                        <dl class="retxt">
                                                            <dd>자극 없이 순하고, 막 쓰고 3스킨하기 진짜 좋습니당 🤗 뭐 나는 것도 하나 없어요!</dd>
                                                        </dl>
                                                        <a href="javascript:void(0);" class="btn_detail" onclick="javascript:display.brandShopDetail.amplitudeReview('A000000183371', '[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)', '3'); mypage.reviewerLounge.goReviewDetail('22999186', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'3'});" tabindex="-1">자세히 보기</a>
                                                    </div>
                                                </li>
                                                
                                            
                                                    </ul>
                                                </div></div></div>
                                            
                                            
                                            
                                        
                                            
                                            
                                            
                                            
                                                
                                                
                                                
                                                
                                                    
                                                
                                                
                                            
                                            
                                            
                                                
                                            
                                            
                                            
                                        
                                            
                                            
                                            
                                            
                                                
                                                
                                                
                                                
                                                
                                                    
                                                
                                            
                                            
                                            
                                                
                                            
                                            
                                            
                                        
                                            
                                            
                                            
                                            
                                                
                                                
                                                
                                                
                                                
                                                    
                                                
                                            
                                            
                                            
                                                
                                        
                                    <button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="display: block;">Next</button></div>
                                </div>
                            </div>
                        
                        
                    </div><!--tabContainer  -->
                </div><!-- brandBox line -->
            
        
            <div class="brandBox" id="sub_gbn_cate">
                <div class="head">
                    <h3 class="tit" param="구달">구달 전체상품 (<span id="totCnt">29</span>개)</h3>
                </div>
                
                <ul class="cate_list_box">
                    
                        
                            <li class="first on"><a href="javascript:;" data-ref-dispcatno="">전체</a></li>
                            
                            
                                <li><a href="javascript:;" data-ref-dispcatno="10000010001">스킨케어</a></li>
                                
                                
                            
                                <li><a href="javascript:;" data-ref-dispcatno="10000010009">마스크팩</a></li>
                                
                                
                            
                                <li><a href="javascript:;" data-ref-dispcatno="10000010011">선케어</a></li>
                                
                                
                                     
                                     
                                     
                                    
                                    
                                    
                                     
                                    
                                    
                                        
                                            <li class="disabled">&nbsp;</li><!-- 2017-02-03 빈 태그일때 class=disabled 추가 -->
                                        
                                            <li class="disabled">&nbsp;</li><!-- 2017-02-03 빈 태그일때 class=disabled 추가 -->
                                        
                                    
                                
                            
                        
                    
                    
                    
                </ul>
                
                <div class="cate_align_box mgT20">
                    <div class="align_sort" id="alignPrdSort">
                        <ul>
                            <li class="on"><a href="javascript:;" data-prdsoting="01">인기순</a></li>
                            <li><a href="javascript:;" data-prdsoting="02">신상품순</a></li>
                            <li><a href="javascript:;" data-prdsoting="03">판매순</a></li>
                            <li><a href="javascript:;" data-prdsoting="05">낮은 가격순</a></li>
                            <li><a href="javascript:;" data-prdsoting="09">할인율순</a></li>
                        </ul>
                    </div>
                    
                    <div class="count_sort tx_num">
                        <span class="tx_view">VIEW</span>
                        <ul>
                            <li class=""><a href="javascript:;" title="24개씩 보기">24</a></li>
                            <li><a href="javascript:;" title="36개씩 보기">36</a></li>
                            <li><a href="javascript:;" title="48개씩 보기">48</a></li>
                        </ul>
                    </div>
                    
                    <div class="type_sort" id="div_type_sort">
                        <button class="btn_thumb active">컬럼형식으로 보기</button>
                        <button class="btn_list">리스트형식으로 보기</button>
                    </div>
                </div>
                
                <div id="allGoodsList">
    
       
    
    
    
    
    
    
    
    
    
    
    
    
    
    <input type="hidden" id="strList" name="strList" value="">
    <input type="hidden" id="lgcGoodsList" name="lgcGoodsList1" value="">
    <input type="hidden" id="idx" name="idx" value="1">
    <input type="hidden" id="totCntFmt" name="totCntFmt" value="29">
    <input type="hidden" id="goodsTrackingCd" name="goodsTrackingCd" value="">
    
    
    
    
    
    
    
    
    
    
        
    
    
    
    
    
    
    
    
    
    
    
    
    
        
            <ul class="prod-list goodsProd">
        
        
            <li data-goods-idx="1">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=1" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000162323" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;1&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016232329ko.jpg?l=ko" alt="[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" class="pic-thumb" onerror="common.errorImg(this);"><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;1&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=1" class="goodsList" data-ref-goodsno="A000000162323" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"><span class="prod-name double-line">[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획</span></a><div class="price-info"><div class="discount"> <span class="origin">43,000원</span></div><div class="price"><strong class="total">30,960<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(999+)</span></div></div><div class="flags"><span class="flag sale">세일</span><span class="flag coupon">쿠폰</span></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000162323"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000162323" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="2">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168705&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=2" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000168705" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168705&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;2&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016870522ko.jpg?l=ko" alt="[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++" class="pic-thumb" onerror="common.errorImg(this);"><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168705&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;2&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168705&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=2" class="goodsList" data-ref-goodsno="A000000168705" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++"><span class="prod-name double-line">[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++</span></a><div class="price-info"><div class="price"><strong class="total">18,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.8</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.8점</span></div><span>(999+)</span></div></div><div class="flags blank"></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000168705"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000168705" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="3">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182780&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=3" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000182780" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;3&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018278013ko.jpg?l=ko" alt="[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++" class="pic-thumb" onerror="common.errorImg(this);"><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;3&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182780&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=3" class="goodsList" data-ref-goodsno="A000000182780" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++"><span class="prod-name double-line">[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++</span></a><div class="price-info"><div class="discount"> <span class="origin">20,000원</span></div><div class="price"><strong class="total">16,560<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.8</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.8점</span></div><span>(999+)</span></div></div><div class="flags"><span class="flag sale">세일</span><span class="flag coupon">쿠폰</span></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000182780"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000182780" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="4">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189175&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=4" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000189175" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189175&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;4&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018917508ko.jpg?l=ko" alt="[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획" class="pic-thumb" onerror="common.errorImg(this);"><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189175&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;4&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189175&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=4" class="goodsList" data-ref-goodsno="A000000189175" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획"><span class="prod-name double-line">[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획</span></a><div class="price-info"><div class="discount"> <span class="origin">38,000원</span></div><div class="price"><strong class="total">26,600<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(999+)</span></div></div><div class="flags"><span class="flag coupon">쿠폰</span></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000189175"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000189175" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
            </ul>
        
    
        
            <ul class="prod-list goodsProd">
        
        
            <li data-goods-idx="5">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162325&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=5" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000162325" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[단독기획] 구달 청귤 비타C 잡티케어 세럼 30ml 기획 (+세럼 10ml +마스크팩 1매 증정)" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162325&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;5&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016232526ko.jpg?l=ko" alt="[단독기획] 구달 청귤 비타C 잡티케어 세럼 30ml 기획 (+세럼 10ml +마스크팩 1매 증정)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162325&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;5&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162325&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=5" class="goodsList" data-ref-goodsno="A000000162325" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[단독기획] 구달 청귤 비타C 잡티케어 세럼 30ml 기획 (+세럼 10ml +마스크팩 1매 증정)"><span class="prod-name double-line">[단독기획] 구달 청귤 비타C 잡티케어 세럼 30ml 기획 (+세럼 10ml +마스크팩 1매 증정)</span></a><div class="price-info"><div class="discount"> <span class="origin">28,000원</span></div><div class="price"><strong class="total">22,400<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(999+)</span></div></div><div class="flags"><span class="flag sale">세일</span></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000162325"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000162325" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="6">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162021&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=6" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000162021" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162021&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;6&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016202129ko.jpg?l=ko" alt="[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162021&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;6&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162021&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=6" class="goodsList" data-ref-goodsno="A000000162021" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)"><span class="prod-name double-line">[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)</span></a><div class="price-info"><div class="price"><strong class="total">28,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(999+)</span></div></div><div class="flags blank"></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000162021"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000162021" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="7">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190108&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=7" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000190108" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[재유PICK/단독기획]구달 흑당근 비타A 레티놀 탄력 앰플 30ml 기획 (+앰플 9ml*2ea)" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190108&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;7&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019010811ko.jpg?l=ko" alt="[재유PICK/단독기획]구달 흑당근 비타A 레티놀 탄력 앰플 30ml 기획 (+앰플 9ml*2ea)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190108&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;7&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190108&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=7" class="goodsList" data-ref-goodsno="A000000190108" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[재유PICK/단독기획]구달 흑당근 비타A 레티놀 탄력 앰플 30ml 기획 (+앰플 9ml*2ea)"><span class="prod-name double-line">[재유PICK/단독기획]구달 흑당근 비타A 레티놀 탄력 앰플 30ml 기획 (+앰플 9ml*2ea)</span></a><div class="price-info"><div class="discount"> <span class="origin">34,000원</span></div><div class="price"><strong class="total">21,800<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(142)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(142)</span></div></div><div class="flags"><span class="flag coupon">쿠폰</span></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000190108"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000190108" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="8">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183371&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=8" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000183371" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183371&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;8&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018337104ko.jpg?l=ko" alt="[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183371&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;8&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183371&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=8" class="goodsList" data-ref-goodsno="A000000183371" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)"><span class="prod-name double-line">[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)</span></a><div class="price-info"><div class="discount"> <span class="origin">30,000원</span></div><div class="price"><strong class="total">24,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.8</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.8점</span></div><span>(999+)</span></div></div><div class="flags"><span class="flag sale">세일</span></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000183371"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000183371" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
            </ul>
        
    
        
            <ul class="prod-list goodsProd">
        
        
            <li data-goods-idx="9">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165071&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=9" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000165071" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 맑은 어성초 진정 수분크림 75ml 기획(+세럼 20ml+화장솜 20매 증정)" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000165071&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;9&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016507112ko.jpg?l=ko" alt="[한정기획] 구달 맑은 어성초 진정 수분크림 75ml 기획(+세럼 20ml+화장솜 20매 증정)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000165071&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;9&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165071&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=9" class="goodsList" data-ref-goodsno="A000000165071" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 맑은 어성초 진정 수분크림 75ml 기획(+세럼 20ml+화장솜 20매 증정)"><span class="prod-name double-line">[한정기획] 구달 맑은 어성초 진정 수분크림 75ml 기획(+세럼 20ml+화장솜 20매 증정)</span></a><div class="price-info"><div class="price"><strong class="total">26,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(999+)</span></div></div><div class="flags blank"></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000165071"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000165071" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="10">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183368&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=10" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000183368" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[1+1기획] 구달 맑은 어성초 진정 토너 패드 70매 리필 기획(+70매 리필)" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183368&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;10&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018336805ko.jpg?l=ko" alt="[1+1기획] 구달 맑은 어성초 진정 토너 패드 70매 리필 기획(+70매 리필)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183368&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;10&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183368&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=10" class="goodsList" data-ref-goodsno="A000000183368" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[1+1기획] 구달 맑은 어성초 진정 토너 패드 70매 리필 기획(+70매 리필)"><span class="prod-name double-line">[1+1기획] 구달 맑은 어성초 진정 토너 패드 70매 리필 기획(+70매 리필)</span></a><div class="price-info"><div class="discount"> <span class="origin">36,000원</span></div><div class="price"><strong class="total">25,200<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(999+)</span></div></div><div class="flags"><span class="flag sale">세일</span></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000183368"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000183368" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="11">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171548&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=11" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000171548" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 청귤 비타C 다크서클 아이크림 30ml 기획 (+15ml*2ea증정)" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000171548&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;11&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017154812ko.jpg?l=ko" alt="[한정기획] 구달 청귤 비타C 다크서클 아이크림 30ml 기획 (+15ml*2ea증정)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000171548&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;11&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171548&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=11" class="goodsList" data-ref-goodsno="A000000171548" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 청귤 비타C 다크서클 아이크림 30ml 기획 (+15ml*2ea증정)"><span class="prod-name double-line">[한정기획] 구달 청귤 비타C 다크서클 아이크림 30ml 기획 (+15ml*2ea증정)</span></a><div class="price-info"><div class="price"><strong class="total">24,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.6</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.6점</span></div><span>(999+)</span></div></div><div class="flags blank"></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000171548"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000171548" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="12">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182782&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=12" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000182782" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 맑은 어성초 진정 쿨링 선스틱 1+1 기획 SPF50+ PA++++" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182782&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;12&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018278210ko.jpg?l=ko" alt="[한정기획] 구달 맑은 어성초 진정 쿨링 선스틱 1+1 기획 SPF50+ PA++++" class="pic-thumb" onerror="common.errorImg(this);"><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182782&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;12&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182782&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=12" class="goodsList" data-ref-goodsno="A000000182782" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 맑은 어성초 진정 쿨링 선스틱 1+1 기획 SPF50+ PA++++"><span class="prod-name double-line">[한정기획] 구달 맑은 어성초 진정 쿨링 선스틱 1+1 기획 SPF50+ PA++++</span></a><div class="price-info"><div class="discount"> <span class="origin">22,000원</span></div><div class="price"><strong class="total">19,800<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(656)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(656)</span></div></div><div class="flags"><span class="flag sale">세일</span></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000182782"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000182782" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
            </ul>
        
    
        
            <ul class="prod-list goodsProd">
        
        
            <li data-goods-idx="13">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190110&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=13" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000190110" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[단독기획]구달 흑당근 비타A 레티놀 탄력 크림 50ml 기획 (+크림 15ml*2ea)" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190110&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;13&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019011007ko.jpg?l=ko" alt="[단독기획]구달 흑당근 비타A 레티놀 탄력 크림 50ml 기획 (+크림 15ml*2ea)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190110&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;13&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000190110&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=13" class="goodsList" data-ref-goodsno="A000000190110" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[단독기획]구달 흑당근 비타A 레티놀 탄력 크림 50ml 기획 (+크림 15ml*2ea)"><span class="prod-name double-line">[단독기획]구달 흑당근 비타A 레티놀 탄력 크림 50ml 기획 (+크림 15ml*2ea)</span></a><div class="price-info"><div class="discount"> <span class="origin">34,000원</span></div><div class="price"><strong class="total">21,800<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(91)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(91)</span></div></div><div class="flags"><span class="flag coupon">쿠폰</span></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000190110"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000190110" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="14">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171546&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=14" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000171546" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[단독기획] 구달 청귤 비타C 잡티 톤업크림 50ml 기획 (+톤업크림5ml+세럼5ml)" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000171546&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;14&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017154601ko.jpg?l=ko" alt="[단독기획] 구달 청귤 비타C 잡티 톤업크림 50ml 기획 (+톤업크림5ml+세럼5ml)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000171546&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;14&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171546&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=14" class="goodsList" data-ref-goodsno="A000000171546" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[단독기획] 구달 청귤 비타C 잡티 톤업크림 50ml 기획 (+톤업크림5ml+세럼5ml)"><span class="prod-name double-line">[단독기획] 구달 청귤 비타C 잡티 톤업크림 50ml 기획 (+톤업크림5ml+세럼5ml)</span></a><div class="price-info"><div class="discount"> <span class="origin">22,000원</span></div><div class="price"><strong class="total">17,600<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.5</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.5점</span></div><span>(999+)</span></div></div><div class="flags"><span class="flag sale">세일</span></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000171546"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000171546" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="15">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165118&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=15" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000165118" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 맑은 어성초 진정 에센스 150ml 기획 (+수분세럼 20ml+수분크림 10ml+화장솜 10매 증정)" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000165118&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;15&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016511813ko.jpg?l=ko" alt="[한정기획] 구달 맑은 어성초 진정 에센스 150ml 기획 (+수분세럼 20ml+수분크림 10ml+화장솜 10매 증정)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000165118&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;15&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165118&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=15" class="goodsList" data-ref-goodsno="A000000165118" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 맑은 어성초 진정 에센스 150ml 기획 (+수분세럼 20ml+수분크림 10ml+화장솜 10매 증정)"><span class="prod-name double-line">[한정기획] 구달 맑은 어성초 진정 에센스 150ml 기획 (+수분세럼 20ml+수분크림 10ml+화장솜 10매 증정)</span></a><div class="price-info"><div class="price"><strong class="total">30,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(999+)</span></div></div><div class="flags blank"></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000165118"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000165118" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="16">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000178741&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=16" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000178741" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 살구콜라겐 탄력 워시오프 마스크 110g 기획 (+살구크림 31ml+스파츌라)" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000178741&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;16&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017874111ko.jpg?l=ko" alt="[한정기획] 구달 살구콜라겐 탄력 워시오프 마스크 110g 기획 (+살구크림 31ml+스파츌라)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000178741&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;16&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000178741&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=16" class="goodsList" data-ref-goodsno="A000000178741" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 살구콜라겐 탄력 워시오프 마스크 110g 기획 (+살구크림 31ml+스파츌라)"><span class="prod-name double-line">[한정기획] 구달 살구콜라겐 탄력 워시오프 마스크 110g 기획 (+살구크림 31ml+스파츌라)</span></a><div class="price-info"><div class="discount"> <span class="origin">30,000원</span></div><div class="price"><strong class="total">21,600<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(191)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(191)</span></div></div><div class="flags"><span class="flag sale">세일</span><span class="flag coupon">쿠폰</span></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000178741"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000178741" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
            </ul>
        
    
        
            <ul class="prod-list goodsProd">
        
        
            <li data-goods-idx="17">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189124&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=17" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000189124" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[NEW] 구달 흑당근 비타A 레티놀 탄력 앰플 30ml" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189124&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;17&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018912409ko.jpg?l=ko" alt="[NEW] 구달 흑당근 비타A 레티놀 탄력 앰플 30ml" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189124&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;17&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189124&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=17" class="goodsList" data-ref-goodsno="A000000189124" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[NEW] 구달 흑당근 비타A 레티놀 탄력 앰플 30ml"><span class="prod-name double-line">[NEW] 구달 흑당근 비타A 레티놀 탄력 앰플 30ml</span></a><div class="price-info"><div class="discount"> <span class="origin">34,000원</span></div><div class="price"><strong class="total">21,800<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(38)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(38)</span></div></div><div class="flags"><span class="flag coupon">쿠폰</span></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000189124"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000189124" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="18">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000187780&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=18" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000187780" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[단독기획] 구달 청귤 비타C 수분 아이패치 60매 (+60매 더블증정 단독기획)" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000187780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;18&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018778005ko.jpg?l=ko" alt="[단독기획] 구달 청귤 비타C 수분 아이패치 60매 (+60매 더블증정 단독기획)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000187780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;18&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000187780&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=18" class="goodsList" data-ref-goodsno="A000000187780" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[단독기획] 구달 청귤 비타C 수분 아이패치 60매 (+60매 더블증정 단독기획)"><span class="prod-name double-line">[단독기획] 구달 청귤 비타C 수분 아이패치 60매 (+60매 더블증정 단독기획)</span></a><div class="price-info"><div class="price"><strong class="total">38,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(999+)</span></div></div><div class="flags blank"></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000187780"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000187780" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="19">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000169788&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=19" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000169788" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 맑은 어성초 진정 토너패드 70매 기획 (+10매 추가 증정)" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000169788&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;19&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016978813ko.jpg?l=ko" alt="[한정기획] 구달 맑은 어성초 진정 토너패드 70매 기획 (+10매 추가 증정)" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000169788&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;19&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000169788&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=19" class="goodsList" data-ref-goodsno="A000000169788" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 맑은 어성초 진정 토너패드 70매 기획 (+10매 추가 증정)"><span class="prod-name double-line">[한정기획] 구달 맑은 어성초 진정 토너패드 70매 기획 (+10매 추가 증정)</span></a><div class="price-info"><div class="price"><strong class="total">24,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(999+)</span></div></div><div class="flags blank"></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000169788"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000169788" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="20">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165070&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=20" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000165070" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^구달 맑은 어성초 진정 마스크 1매" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000165070&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;20&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016507008ko.jpg?l=ko" alt="구달 맑은 어성초 진정 마스크 1매" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000165070&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;20&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165070&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=20" class="goodsList" data-ref-goodsno="A000000165070" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^구달 맑은 어성초 진정 마스크 1매"><span class="prod-name double-line">구달 맑은 어성초 진정 마스크 1매</span></a><div class="price-info"><div class="discount"> <span class="origin">3,000원</span></div><div class="price"><strong class="total">2,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(999+)</span></div></div><div class="flags"><span class="flag sale">세일</span></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000165070"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000165070" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
            </ul>
        
    
        
            <ul class="prod-list goodsProd">
        
        
            <li data-goods-idx="21">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162318&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=21" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000162318" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^구달 청귤 비타C 잡티케어 세럼 마스크 1매" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162318&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;21&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016231805ko.jpg?l=ko" alt="구달 청귤 비타C 잡티케어 세럼 마스크 1매" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162318&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;21&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162318&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=21" class="goodsList" data-ref-goodsno="A000000162318" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^구달 청귤 비타C 잡티케어 세럼 마스크 1매"><span class="prod-name double-line">구달 청귤 비타C 잡티케어 세럼 마스크 1매</span></a><div class="price-info"><div class="price"><strong class="total">3,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.8</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.8점</span></div><span>(999+)</span></div></div><div class="flags blank"></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000162318"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000162318" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="22">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171077&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=22" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000171077" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^구달 살구 콜라겐 탄력 마스크 1매" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000171077&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;22&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017107701ko.jpg?l=ko" alt="구달 살구 콜라겐 탄력 마스크 1매" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000171077&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;22&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171077&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=22" class="goodsList" data-ref-goodsno="A000000171077" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^구달 살구 콜라겐 탄력 마스크 1매"><span class="prod-name double-line">구달 살구 콜라겐 탄력 마스크 1매</span></a><div class="price-info"><div class="price"><strong class="total">3,000<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.8</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.8점</span></div><span>(999+)</span></div></div><div class="flags blank"></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000171077"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000171077" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
    
        
        
            <li data-goods-idx="23">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189125&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=23" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000189125" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[NEW] 구달 흑당근 비타A 레티놀 탄력 크림 50ml" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189125&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;23&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018912509ko.jpg?l=ko" alt="[NEW] 구달 흑당근 비타A 레티놀 탄력 크림 50ml" class="pic-thumb" onerror="common.errorImg(this);"></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189125&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;23&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189125&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=23" class="goodsList" data-ref-goodsno="A000000189125" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[NEW] 구달 흑당근 비타A 레티놀 탄력 크림 50ml"><span class="prod-name double-line">[NEW] 구달 흑당근 비타A 레티놀 탄력 크림 50ml</span></a><div class="price-info"><div class="discount"> <span class="origin">34,000원</span></div><div class="price"><strong class="total">21,800<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(35)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(35)</span></div></div><div class="flags"><span class="flag coupon">쿠폰</span></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000189125"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000189125" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>

            <li data-goods-idx="24">
                <div class="prod">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000187781&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=24" name="BrandA001436_PROD" class="thumb goodsList" data-ref-goodsno="A000000187781" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+50ml 리필기획" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000187781&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;24&quot;);"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018778106ko.jpg?l=ko" alt="[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+50ml 리필기획" class="pic-thumb" onerror="common.errorImg(this);"><span class="status_flag soldout">일시품절</span><span class="flag-badge best">베스트</span></a><div class="prod-info" onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000187781&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;24&quot;);"><div class="prod-brand"><strong class="exclusive"></strong></div><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000187781&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=24" class="goodsList" data-ref-goodsno="A000000187781" data-ref-dispcatno="9000002" data-ref-itemno="001" data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+50ml 리필기획"><span class="prod-name double-line">[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+50ml 리필기획</span></a><div class="price-info"><div class="discount"> <span class="origin">43,000원</span></div><div class="price"><strong class="total">30,960<span class="won">원</span></strong> <span class="oneday">오늘드림</span></div><div class="rating"><span class="point">4.7</span><span class="num">(999+)</span></div><div class="rating_type"><div class="rating_point star5"><span class="oyblind">별점 5점 만점에 4.7점</span></div><span>(999+)</span></div></div><div class="flags"><span class="flag sale">세일</span><span class="flag coupon">쿠폰</span></div></div><div class="prod-func"><button type="button" class="favorite" data-ref-goodsno="A000000187781"><span>찜하기</span></button><button type="button" class="cart" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000187781" data-item-no="001"><span>장바구니</span></button></div>
    
                </div>
            </li>
            
        
            </ul>

                
    
        <div class="pageing">              
            <strong title="현재 페이지">1</strong>
            <a href="javascript:void(0);" data-page-no="2">2</a>       
        </div>   
    </div>
                
            </div>
        </div>
    </div>
    
    
    <form id="initForm" name="initForm" method="get">
        <input type="hidden" id="dispCatNo" name="dispCatNo" value="90000020137">
        <input type="hidden" id="fltDispCatNo" name="fltDispCatNo" value="">
        <input type="hidden" id="prdSort" name="prdSort" value="01">
        <input type="hidden" id="pageIdx" name="pageIdx" value="1">
        <input type="hidden" id="rowsPerPage" name="rowsPerPage" value="24">
        <input type="hidden" id="onlBrndCd" name="onlBrndCd" value="A001436">
        <input type="hidden" id="onlBrndNm" name="onlBrndNm" value="구달">
        <input type="hidden" id="trackingCd" name="trackingCd" value="">
    </form>

        <div class="laytoast" id="brandOff" style="display: none;">
            <div class="inner">
                <p class="txt_recom txt_01">브랜드<br><em>좋아요</em></p>
            </div>
        </div>
        <div class="laytoast on" id="brandOn" style="display: none;">
            <div class="inner">
                <p class="txt_recom txt_01">브랜드<br><em>좋아요</em></p>
            </div>
        </div>
        <!-- 브랜드 찜 확인 레이어 -->
        <div class="layerAlim brand zzimOn" style="display:none;"><!-- zzimOn / zzimOff -->
         <span class="icon"></span>
         <p>브랜드<strong>좋아요</strong></p>
        </div>
    
        <div class="layerAlim brand zzimOff" style="display:none;"><!-- zzimOn / zzimOff -->
         <span class="icon"></span>
         <p>브랜드<strong>좋아요</strong></p>
        </div>
        <!-- 브랜드 찜 확인 레이어 -->
        
        <!-- 찜 확인 레이어 -->
        <div class="layerAlim zzimOn wishPrd" style="display:none;">
            <span class="icon"></span>
            <p class="one"><strong>좋아요</strong></p>
        </div>
        <!--// 찜 확인 레이어 -->
        
        <!-- 찜 취소 레이어 -->
        <div class="layerAlim zzimOff wishPrd" style="display:none;">
            <span class="icon"></span>
            <p class="one"><strong>좋아요</strong></p>
        </div>
        <!--// 찜 취소 레이어 -->
    
        <!-- 2017-02-23 수정 : TOP 바로가기 버튼 추가 -->
        <div id="directTop">
            <button><span></span>TOP</button>
        </div>
        <!--/ㅁ 2017-02-23 수정 : TOP 바로가기 버튼 추가 -->
        
        <!-- #Footer -->
        <div id="Footer" class="m2105">
            <div class="oneConts">
                <div class="conts">
                    <ul class="list-menu">
                        <li><a class="brandstory" href="https://www.oliveyoung.co.kr/store/company/brandStory.do">회사소개</a></li>
                        <li><a class="recruit" href="https://www.oliveyoung.co.kr/store/company/recruit.do">채용안내</a></li>
                        <li><a class="prvsuser" href="https://www.oliveyoung.co.kr/store/prvsuser/getPrvsuser.do">가맹점 개설문의</a></li>
                        <li><a class="cjoyp" href="https://oypartner.cj.net/CJOYP/prvsuser/index/index.fo" target="_blank">상품입점 및 제휴문의</a></li>
    <!-- 					<li><a class="cyberAudit" href="javascript:common.link.openCyberAudit();">사이버 감사실</a></li> -->
                        <li><a class="cyberAudit" href="javascript:common.cyber.oyLayerOpen('cyberAuditPop',this);">사이버 감사실</a></li>
                        <li><a class="faqList" href="javascript:common.faq.getFaqList('99');">고객센터</a></li>
                    </ul>
                    <div class="sel_family_group">
                        <a href="#" class="sel_option" title="상세내용 보기">CJ그룹 계열사 바로가기</a>
                        <div class="sel_option_list hide">
                            <dl>
                                <dt>CJ그룹</dt>
                                <dd><a href="http://www.cj.net/" target="_blank" title="CJ 주식회사 새창으로 열기">CJ주식회사</a></dd>
                            </dl>
                            <dl>
                                
                                <dt>식품 &amp; 식품서비스</dt>
                                <dd><a href="https://www.cj.co.kr/kr/index" target="_blank" title="CJ제일제당 (식품) 새창으로 열기">CJ제일제당</a></dd>
                                <dd><a href="https://www.cjfoodville.co.kr/main.asp" target="_blank" title="CJ푸드빌 새창으로 열기">CJ푸드빌</a></dd>
                                <dd><a href="http://www.cjfreshway.com/index.jsp" target="_blank" title="CJ프레시웨이 새창으로 열기">CJ프레시웨이</a></dd>
                                
                            </dl>
                            <dl>
                                <dt>생명공학</dt>
                                <dd><a href="https://www.cj.co.kr/kr/about/business/bio" target="_blank" title="CJ제일제당 (바이오) 새창으로 열기">CJ제일제당 BIO사업부문</a></dd>
                                <dd><a href="https://www.cj.co.kr/kr/about/business/cjfeedncare" target="_blank" title="CJ Feed&amp;Care 새창으로 열기">CJ Feed&amp;Care</a></dd>
                                
                                
                            </dl>
                            <dl>
                                <dt>물류 &amp; 신유통</dt>
                                <dd><a href="https://www.cjlogistics.com/ko/main" target="_blank" title="CJ대한통운 새창으로 열기">CJ대한통운</a></dd>
                                <dd><a href="http://www.cjenc.co.kr/kr/Default.asp" target="_blank" title="CJ대한통운 (건설) 새창으로 열기">CJ대한통운 건설부문</a></dd>
                                <dd><a href="https://www.oliveyoung.co.kr/store/company/brandStory.do" target="_blank" title="CJ올리브영 새창으로 열기">CJ올리브영</a></dd>
                                <dd><a href="https://www.cjolivenetworks.co.kr:449/" target="_blank" title="CJ올리브네트웍스 (IT사업) 새창으로 열기">CJ올리브네트웍스</a></dd>
                                <dd><a href="https://www.cjoshopping.com:9002/index.asp" target="_blank" title="CJ ENM (오쇼핑) 새창으로 열기">CJ ENM 커머스부문</a></dd>
                                
                            </dl>
                            <dl>
                                <dt>엔터테인먼트 &amp; 미디어</dt>
                                <dd><a href="https://www.cjem.net:433/main/?locale=ko" target="_blank" title="CJ ENM (E&amp;M)새창으로 열기">CJ ENM 엔터테인먼트부문</a></dd>
                                <dd><a href="http://corp.cgv.co.kr/" target="_blank" title="CJ CGV 새창으로 열기">CJ CGV</a></dd>
    
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
            <div class="twoConts">
                <div class="conts">
                    <ul class="list-area">
                        <li>
                           <p class="logo">
                                <a href="javascript:common.link.moveMainHome();">
                                         <img src="https://static.oliveyoung.co.kr/pc-static-root/image/footer/foot_logo.png" alt="OLIVEYOUNG">                                                                    
                                </a>
                            </p>
                            <h2>씨제이올리브영 주식회사</h2>
                            <p>대표이사 : 이선정 | 사업자등록번호 : 809-81-01574</p>
                            <p>주소 : (04323) 서울특별시 용산구 한강대로 372, 24층 <br>(동자동, KDB타워)</p>
                            <p>호스팅사업자 : CJ 올리브네트웍스</p>
                            <p>통신판매업신고번호 : 2019-서울용산-1428</p>
                            <p><a href="mailto:oliveweb@cj.net" class="email_addr">이메일 : oliveweb@cj.net</a></p>
                            <p><a class="link" href="javascript:common.link.openFtcBizInfo();" title="새창 열림">사업자 정보확인 &gt;</a></p>
                        </li>
                        <li>
                            <ul class="list-link">
                                <li><a href="javascript:common.link.moveTermsPage();">이용약관</a><a href="javascript:common.link.moveLegalPage();">법적고지</a></li>
                                <li><a href="javascript:common.link.movePrivacyPage();">개인정보처리방침</a></li>
                                <li><a href="javascript:common.link.moveYouthProtectionPage();">청소년보호방침</a></li>
                                <li><a href="javascript:common.link.moveMultimediaPage();">영상정보처리기기 운영/관리 방침</a></li>
                                <li><a href="javascript:common.link.moveDenyEmailPage();">이메일무단수집거부</a></li>
                            </ul>
                        </li>
                        <li>
                            <h2>하나은행 구매안전 서비스</h2>
                            <p>
                                올리브영은 현금 결제한 금액에 대해<br>
                                하나은행과 채무지급보증 계약을체결<br>
                                하여 안전한 거래를 보장하고 있습니다<br>
                                <a class="link" href="javascript:common.link.openEscrowPopup('https://static.oliveyoung.co.kr/pc-static-root/html/etc/escrowPopup.html','agree',665,925);" title="새창 열림">서비스 가입사실 확인&gt;</a>
                            </p>
                        </li>
                    </ul>
                    <div class="noti">올리브영 홈페이지에서 판매되는 상품 중에는 올리브영에 입점한 개별 판매자가 판매하는 상품이 포함되어 있습니다. 개별 판매자의 판매 상품의 경우, 올리브영은 통신판매중개자로서 통신판매의 당사자가 아니며 판매자가 등록한 상품정보 및 거래 정보 등에 대하여 책임을 부담하지 않습니다.</div>
                </div>
            </div>
            <div class="fourConts">
                <div class="conts">
                    <ol>
                        <li class="isms">정보보호 관리체계 ISMS 인증획득
                            <span class="bar">인증범위 : 온라인 쇼핑몰 운영(CJ올리브영)</span>
                            <span class="bar">유효기간 : 2020.12.02 - 2023.12.01</span>
                        </li>
                        <li class="ncsi">2017~2022 국가고객만족도(NCSI) 헬스앤뷰티전문점 업계 최초 6년 연속 1위​</li>
                    </ol>
                </div>
            </div>
            <div class="threeConts">
                <div class="conts"> 
                    <p class="copyright">Copyright ⓒ CJ OliveYoung. All Rights Reserved.</p>
                    <div class="sns">
                        <h2>OLIVE YOUNG SNS</h2>
                        <a class="facebook" href="https://www.facebook.com/OLIVEYOUNG" title="페이지 이동" target="_blank"><img src="https://static.oliveyoung.co.kr/pc-static-root/image/footer/iconf_facebook.png" alt="페이스북"></a>
                        <a class="insta" href="https://www.instagram.com/oliveyoung_official/" title="페이지 이동" target="_blank"><img src="https://static.oliveyoung.co.kr/pc-static-root/image/footer/iconf_instagram.png" alt="인스타그램"></a>
                        <a class="youtube" href="https://www.youtube.com/user/cjoliveyoung/" title="페이지 이동" target="_blank"><img src="https://static.oliveyoung.co.kr/pc-static-root/image/footer/iconf_youtube.png" alt="유튜브"></a>
                        <a class="kakao" href="javascript:common.link.openKakao();" title="페이지 이동"><img src="https://static.oliveyoung.co.kr/pc-static-root/image/footer/iconf_kakaotalk.png" alt="카카오톡"></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- //#Footer -->
    </div>
</body>
</html>