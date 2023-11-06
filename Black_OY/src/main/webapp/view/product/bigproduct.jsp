<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<%@ include file="/WEB-INF/inc/session_auth.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="/Black_OY/js/head.js"></script>
<link rel="stylesheet" href="/BlackOY/css/style.css">
<title>블랙올리브영 온라인몰</title>
</head>
<body>





	<meta charset="UTF-8">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<link rel="stylesheet" href="/Black_OY/css/style.css">
	<script src="/Black_OY/js/head.js"></script>
	<title>블랙올리브영 온라인몰</title>
	<style>
#directTop {
	opacity: 0;
	transition: opacity 0.5s ease;
}
</style>


	<!-- 3200210 큐레이션 개선 관련 건-레코벨 데이터 송부 
<input type="hidden" id="skinType" name="skinType" value="" />
<input type="hidden" id="skinTorn" name="skinTorn" value="" />
<input type="hidden" id="skinIssue" name="skinIssue" value="" />
-->
	<div class="infoUpgr" style="display: none;">
		<p>
			<a class="ie"
				href="https://www.microsoft.com/ko-kr/download/internet-explorer.aspx"
				target="_blank">ie 업그레이드</a> <a class="cr"
				href="https://www.google.co.kr/chrome/browser/desktop/"
				target="_blank">크롬 업그레이드</a> <a class="ff"
				href="https://www.mozilla.org/ko/firefox/new/" target="_blank">파폭
				업그레이드</a> <a class="op" href="http://www.opera.com/ko/download"
				target="_blank">오페라 업그레이드</a>
		</p>
	</div>
	<div id="todayDeliveryPopup">
		<!-- 배송지 등록 레이어 팝업 -->
		<div class="layer_pop_wrap w850" id="tddlvr_regDelivery"
			style="z-index: 999;">
			<div class="layer_cont2">
				<h2 class="layer_title">배송지 등록</h2>
				<div class="layer_scroll_box">
					<!-- 배송지/환불계좌 등록 -->
					<table class="board-write-2s">
						<caption>배송지/환불계좌 등록</caption>
						<colgroup>
							<col style="width: 25%;">
							<col style="width: 75%;">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="AddressChoice">배송지명</label></th>
								<td class="star"><input type="text" id="tddlvr_AddressName"
									title="배송지를 입력하세요" placeholder="최대 10자" data-required="true"
									style="width: 200px;" maxlength="10"> <input
									type="checkbox" id="tddlvr_baseAddressCheckBox"> <label
									for="BasiceAddress">기본 배송지 설정</label></td>
							</tr>
							<tr>
								<th scope="row"><label for="Recipient">받는 분</label></th>
								<td class="star"><input type="text" id="tddlvr_Recipient"
									title="받는분을 입력하세요" placeholder="최대 10자" data-required="true"
									style="width: 200px;" maxlength="10"></td>
							</tr>
							<tr>
								<th scope="row"><label for="tddlvr_PhoneNumber1">연락처
										1</label></th>
								<td class="star"><select id="tddlvr_PhoneNumber1"
									title="통신사를 선택하세요" data-required="true" style="width: 90px;">
										<option>010</option>
										<option>011</option>
								</select> <span class="desc">-</span> <input id="tddlvr_PhoneNumber2"
									type="text" maxlength="4" title="휴대전화 번호 가운데 4자리를 입력하세요"
									data-required="true" style="width: 90px;"
									onkeyup="this.value=this.value.replace(/[^0-9]/g,'');">
									<span class="desc">-</span> <input id="tddlvr_PhoneNumber3"
									type="text" maxlength="4" title="휴대전화 번호 마지막 4자리를 입력하세요"
									data-required="true" style="width: 90px;"
									onkeyup="this.value=this.value.replace(/[^0-9]/g,'');">
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="tddlvr_SecondPhoneNumber1">연락처
										2</label></th>
								<td style="padding-left: 36px;"><select
									id="tddlvr_SecondPhoneNumber1" title="통신사를 선택하세요"
									style="width: 90px;">
										<option>010</option>
										<option>011</option>
								</select> <span class="desc">-</span> <input
									id="tddlvr_SecondPhoneNumber2" type="text" maxlength="4"
									title="휴대전화 번호 가운데 4자리를 입력하세요" style="width: 90px;"
									onkeyup="this.value=this.value.replace(/[^0-9]/g,'');">
									<span class="desc">-</span> <input
									id="tddlvr_SecondPhoneNumber3" type="text" maxlength="4"
									title="휴대전화 번호 마지막 4자리를 입력하세요" style="width: 90px;"
									onkeyup="this.value=this.value.replace(/[^0-9]/g,'');">
								</td>
							</tr>
							<tr class="addr">
								<th scope="row"><label for="">주소</label></th>
								<td class="star"><input id="tddlvr_postCode" type="text"
									title="주소를 입력하세요." disabled="disabled" data-required="true"
									style="width: 90px;">
									<button id="tddlvr_postButton" type="button" class="btnPost">우편번호</button>
									<!-- 2016-12-28 삭제 <div class="interval"><input type="text" disabled="disabled" title="주소를 입력하세요" style="width:500px;"></div> -->
									<!-- 신규 삽입 -->
									<p id="tddlvr_roadDetails" class="road">
										도로명 : <br> <span class="data">지&nbsp; &nbsp;번 : </span>
									</p> <!-- //신규 삽입 --> <input id="tddlvr_detailAddress" type="text"
									title="상세주소를 입력하세요." placeholder="상세주소를 입력하세요."
									data-required="true" style="width: 500px;" maxlength="30">
								</td>
							</tr>
						</tbody>
					</table>
					<!-- //배송지/환불계좌 등록 -->
					<!-- 배송 요청사항 -->
					<div id="tddlvr_pickupHide5" style="overflow: hidden">
						<div class="title_wrap">
							<h2 class="sub-title2">배송 요청사항</h2>
						</div>
						<table class="tbl_inp_form important">
							<caption></caption>
							<colgroup>
								<col style="width: 170px">
								<col style="width: *">
							</colgroup>
							<tbody>
								<tr type="exist">
									<th scope="row">공동현관 출입방법</th>
									<td class="imp_data"><span class="chk_area mgzero"><input
											type="radio" id="tddlvr_btn_door_manner_temp1"
											name="tddlvr_o2oVisitTypeSp" disabled="" data-required="true"
											value="1"><label for="tddlvr_btn_door_manner_temp1">비밀번호</label></span>
										<span class="chk_area"><input type="radio"
											id="tddlvr_btn_door_manner_temp2"
											name="tddlvr_o2oVisitTypeSp" disabled="" value="2"><label
											for="tddlvr_btn_door_manner_temp2">경비실 호출</label></span> <span
										class="chk_area"><input type="radio"
											id="tddlvr_btn_door_manner_temp3"
											name="tddlvr_o2oVisitTypeSp" disabled="" value="3"><label
											for="tddlvr_btn_door_manner_temp3">자유출입가능</label></span> <span
										class="chk_area"><input type="radio"
											id="tddlvr_btn_door_manner_temp4"
											name="tddlvr_o2oVisitTypeSp" disabled="" value="4"><label
											for="tddlvr_btn_door_manner_temp4">기타사항</label></span></td>
								</tr>
								<tr id="quickAreaValuesRow" type="exist">
									<th id="tddlvr_radioDescripter" scope="row">공동현관 비밀번호</th>
									<td class="imp_data"><input type="text"
										id="tddlvr_quickAreaDesc" name="tddlvr_o2oVisitTypeDesc"
										value="" class="inpH28" title="공동현관 출입방법 상세내용을 입력하세요."
										disabled="" data-required="true" maxlength="20"
										style="width: 500px"></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!--// 배송 요청사항-->
					<div class="usage-guide">
						<p class="ptit">개인정보수집·이용 안내</p>
						<ul>
							<li>개인정보 수집 목적 : 상품구매 시 배송처리</li>
							<li>개인정보 수집 항목 : 배송지명 , 수령인정보 (받는분 , 연락처 , 주소, 공동현관 출입방법:
								비밀번호)</li>
							<li>보유 및 이용기간 : <b>정보 삭제 또는 회원 탈퇴 시까지</b></li>
							<li>확인 버튼을 누르지 않을 경우 배송지 정보가 저장되지 않습니다.</li>
						</ul>
					</div>
					<p class="txt_ct mgT20">
						<input type="checkbox" id="dlvSaveAgreeCheck">위 개인정보
						수집·이용을 확인하고 배송지를 등록합니다.
					</p>
					<div class="area1sButton mgT20">
						<a id="registDeliveryAddressButton" href="#none" class="btnGreen">등록</a>
						<a id="cancelDeliveryAddressButton" href="#none" class="btnGray">취소</a>
					</div>
				</div>
				<button class="layer_close type2" onclick="">창 닫기</button>
			</div>
		</div>
	</div>
	<div id="Wrapper">
		<div id="skip_navi">
			<a href="#Container">본문바로가기</a>
		</div>
		<!-- 상단 띠 배너 - 어워즈관 S -->
		<div class="banUpperBox" style="display: none">
			<div class="inner">
				<a href="#" id="top_banner_image"></a> <a href="#"
					class="btn_upper_close">오늘 안 보기</a>
			</div>
			<div class="dimBan">
				<div class="in"></div>
			</div>
		</div>
		<div class="dimBanWhite" style="display: none">
			<div class="in"></div>
		</div>
		<div class="dimBanBlack"></div>
		<!-- 상단 띠 배너 - 어워즈관 E -->
		<!-- 상단 띠 배너 - IE대응 S -->
		<div class="banUpperBox2">
			<div class="inner">
				<p>
					고객님의 브라우저에서는 올리브영 온라인몰이 정상 동작하지 않습니다.<br>다른 브라우저로 접속해주세요.
				</p>
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
					<li class="join"><a href="#" data-attr="공통^헤더^회원가입">회원가입</a></li>
					<li class="login"><a href="#" data-attr="공통^헤더^로그인">로그인</a></li>
					<li class="cart"><a href="#" data-attr="공통^헤더^장바구니">장바구니<span
							id="cartToCnt"></span></a></li>
					<li class="order"><a onclick="" href="#"
						data-attr="공통^헤더^주문배송">주문배송</a></li>
					<li class="customer"><a onclick="" href="#"
						data-attr="공통^헤더^고객센터">고객센터</a></li>
					<li class="store"><a onclick="" href="#"
						data-attr="공통^헤더^매장안내">매장안내</a></li>
					<li class="global"><a onclick="" href="" target="_blank"
						title="올리브영 글로벌 새창으로 열기" data-attr="공통^헤더^Global">Global</a></li>
				</ul>
			</div>
			<div class="header_inner">
				<h1>
					<a onclick="" href="#"> <img
						src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/h1_logo.png"
						alt="올리브영">
					</a>
				</h1>
				<div class="search_box" id="w_search_box">
					<input type="hidden" name="chkButton" id="chkButton" value="">
					<div class="placeholder_area">
						<label for="query">'블프'를 검색해보세요</label><input type="text"
							id="query" name="" value="" class="inp_placeholder"
							data-placeholder="'블프'를 검색해보세요" data-ref-linkurl=""
							onkeypress="javascript:pressCheck_WEB_MainSearch((event),this);"
							onkeydown="javascript:downCheck_WEB_MainSearch((event));"
							autocomplete="off">
					</div>
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
							<a href="#" class="search_tab tab01" id="searchRecent"
								style="display: none;">최근 검색어</a>
							<!-- 현재 보여지는 탭에 클래스 on 넣어주세요 -->
							<div class="search_tab_cont" id="recent_cont"
								style="display: none;">
								<ul id="mykeyword">
									<!-- 검색 기록이 없을 경우 -->
									<!-- 							<li class="no_data" id="recent_no_data" style="display:none;">최근 검색한 기록이 없습니다.</li> -->
									<!--// 검색 기록이 없을 경우 -->
									<!-- 검색 저장 기능이 꺼져있을 경우 -->
									<!-- 							<li class="no_data" id="recent_no_save" style="display:none;">최근 검색어 저장 기능이 꺼져있습니다.</li> -->
									<!--// 검색 저장 기능이 꺼져있을 경우 -->
								</ul>
								<div class="search_set_area">
									<a href="#" class="sch_all_del" onclick="">전체 삭제</a>
									<!-- 										<a href="#" class="sch_save"></a>																		 -->
									<a href="#" class="sch_save">검색어 저장 끄기</a>
								</div>
							</div>
							<!--// 최근 검색어 -->
							<!-- 급상승 검색어 -->
							<a href="#" class="search_tab tab02 on" id="searchPop"
								style="display: none;">급상승 검색어</a>
							<div class="search_tab_cont sharp_rise" id="w_pop_cont"
								style="display: none;">
								<ul id="mainPopword">
									<li class="top"><a href="#"
										onclick="javascript:popwordSearchdo('틴트','Pop_PROD');"
										data-attr="공통^통합검색_급상승검색어^틴트"> <span>1</span> <strong>틴트</strong>
											<span class="rate "> <span>&nbsp;</span>
										</span>
									</a></li>
									<li class="top"><a href="#"
										onclick="javascript:popwordSearchdo('쿠션','Pop_PROD');"
										data-attr="공통^통합검색_급상승검색어^쿠션"> <span>2</span> <strong>쿠션</strong>
											<span class="rate "> <span>&nbsp;</span>
										</span>
									</a></li>
									<li class="top"><a href="#"
										onclick="javascript:popwordSearchdo('블프','Pop_PROD');"
										data-attr="공통^통합검색_급상승검색어^블프"> <span>3</span> <strong>블프</strong>
											<span class="rate "> <span>&nbsp;</span>
										</span>
									</a></li>
									<li class=""><a href="#"
										onclick="javascript:popwordSearchdo('셀러버','Pop_PROD');"
										data-attr="공통^통합검색_급상승검색어^셀러버"> <span>4</span> 셀러버 <span
											class="rate "> <span>&nbsp;</span>
										</span>
									</a></li>
									<li class=""><a href="#"
										onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');"
										data-attr="공통^통합검색_급상승검색어^롬앤"> <span>5</span> 롬앤 <span
											class="rate "> <span>&nbsp;</span>
										</span>
									</a></li>
									<li class=""><a href="#"
										onclick="javascript:popwordSearchdo('블러셔','Pop_PROD');"
										data-attr="공통^통합검색_급상승검색어^블러셔"> <span>6</span> 블러셔 <span
											class="rate "> <span>&nbsp;</span>
										</span>
									</a></li>
									<li class=""><a href="#"
										onclick="javascript:popwordSearchdo('립밤','Pop_PROD');"
										data-attr="공통^통합검색_급상승검색어^립밤"> <span>7</span> 립밤 <span
											class="rate "> <span>&nbsp;</span>
										</span>
									</a></li>
									<li class=""><a href="#"
										onclick="javascript:popwordSearchdo('마스크팩','Pop_PROD');"
										data-attr="공통^통합검색_급상승검색어^마스크팩"> <span>8</span> 마스크팩 <span
											class="rate "> <span>&nbsp;</span>
										</span>
									</a></li>
									<li class=""><a href="#"
										onclick="javascript:popwordSearchdo('아이라이너','Pop_PROD');"
										data-attr="공통^통합검색_급상승검색어^아이라이너"> <span>9</span> 아이라이너 <span
											class="rate "> <span>&nbsp;</span>
										</span>
									</a></li>
									<li class=""><a href="#"
										onclick="javascript:popwordSearchdo('마스카라','Pop_PROD');"
										data-attr="공통^통합검색_급상승검색어^마스카라"> <span>10</span> 마스카라 <span
											class="rate "> <span>&nbsp;</span>
										</span>
									</a></li>
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
					<li id="todayDeliveryContainer" class="delivery"><a href="#"
						id="tddlvr_header_today_icon" class="mymenu_layer"
						title="오늘드림 자세히보기 열기/닫기">오늘드림</a> <!-- 배송지 미등록 / 배송주소 출력-->
						<div class="delivery_box_wrap" style="display: none;">
							<div class="delivery_box">
								<p class="dTxt">배송지를 등록하고 오늘드림으로 구매 가능한 상품을 확인하세요!</p>
							</div>
						</div> <!--// 배송지 미등록 / 배송주소 출력--> <!-- 배송지 설정-->
						<div class="delivery_addr" style="display: none">
							<div class="addr_box">
								<div class="inner box-head">
									<h3 class="tit01">
										배송지<span>배송지에 따라 상품 정보가 달라질 수 있습니다.</span>
									</h3>
									<div class="set-box">
										<strong>오늘드림 배송 설정 하기</strong>
										<p>상세 페이지에서 오늘드림 배송으로 선택돼요</p>
										<div class="toggleInput">
											<label id="tddlvr_switch" class="switch"> <input
												id="tddlvr_todayDeliveryFlagCheckbox" type="checkbox">
												<span id="tddlvr_slider" class="slider"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="inner box-cont">
									<div class="addr-list-wrap">
										<div class="mCustomScrollbar _mCS_1 mCS_no_scrollbar">
											<div id="mCSB_1"
												class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
												style="max-height: 300px;" tabindex="0">
												<div id="mCSB_1_container"
													class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
													style="position: relative; top: 0; left: 0;" dir="ltr">
													<ul class="addr-list"></ul>
												</div>
												<div id="mCSB_1_scrollbar_vertical"
													class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical"
													style="display: none;">
													<div class="mCSB_draggerContainer">
														<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
															style="position: absolute; min-height: 30px; top: 0px;">
															<div class="mCSB_dragger_bar" style="line-height: 30px;">
															</div>
														</div>
														<div class="mCSB_draggerRail"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div id="callRegDeliveryAddressButton" class="add-address-box">
									<a class="btnTy btn-plus" data-rel="layer" href="#">새 배송지
										추가</a>
								</div>
							</div>
						</div></li>
					<!-- // 오늘드림 플래그 개인화 노출 2차 POC 추가 -->
					<li class="store"><a onclick="" href="#" class="mymenu_layer"
						title="관심 매장소식 자세히보기 열기/닫기">관심 매장소식</a>
						<div class="alim_box">
							<p class="store_desc">
								<span>로그인</span>하시면 자주가는 매장을 <br>관심 매장으로 설정 할 수 있습니다.
							</p>
							<button class="mymenu_btn"
								onclick="javascript:common.link.moveLoginPage();">로그인</button>
						</div></li>
					<li class="recent"><a onclick="recProductView()" href="#"
						class="mymenu_layer" title="최근 본 상품 자세히보기 열기/닫기">최근 본 상품</a>
						<div class="recent_prd_box" style="min-height: 510px;">
							<p class="recent_tit">
								전체 <span>0</span>개
							</p>
							<div class="no_data" style="display: none;">최근 본 상품이 없습니다.
							</div>
						</div></li>
				</ul>
			</div>
			<div class="header_design_area"></div>
		</div>
		<div id="Gnb" class="main gen1">
			<div id="gnbWrap">
				<a href="#" id="btnGnbOpen" class="">카테고리</a>
				<!-- 전체 카테고리 레이어 -->
				<div class="layer_all_menu" id="gnbAllMenu">
					<ul class="all_menu_wrap">
						<li>
							<h2>뷰티</h2>
							<div class="sub_menu_box">
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000010001"
										data-attr="공통^드로우^스킨케어">스킨케어</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000100010008"
										data-attr="공통^드로우^스킨케어_토너/로션/올인원" data-trk="/">토너/로션/올인원</a></li>
									<li><a href="#" data-ref-dispcatno="100000100010009"
										data-attr="공통^드로우^스킨케어_에센스/크림" data-trk="/">에센스/크림</a></li>
									<li><a href="#" data-ref-dispcatno="100000100010010"
										data-attr="공통^드로우^스킨케어_미스트/오일" data-trk="/">미스트/오일</a></li>
								</ul>
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000010009"
										data-attr="공통^드로우^마스크팩">마스크팩</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000100090001"
										data-attr="공통^드로우^마스크팩_시트팩" data-trk="/">시트팩</a></li>
									<li><a href="#" data-ref-dispcatno="100000100090004"
										data-attr="공통^드로우^마스크팩_패드" data-trk="/">패드</a></li>
									<li><a href="#" data-ref-dispcatno="100000100090002"
										data-attr="공통^드로우^마스크팩_페이셜팩" data-trk="/">페이셜팩</a></li>
									<li><a href="#" data-ref-dispcatno="100000100090003"
										data-attr="공통^드로우^마스크팩_코팩/패치" data-trk="/">코팩/패치</a></li>
								</ul>
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000010010"
										data-attr="공통^드로우^클렌징">클렌징</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000100100001"
										data-attr="공통^드로우^클렌징_클렌징폼/젤" data-trk="/">클렌징폼/젤</a></li>
									<li><a href="#" data-ref-dispcatno="100000100100002"
										data-attr="공통^드로우^클렌징_오일/워터/리무버" data-trk="/">오일/워터/리무버</a></li>
									<li><a href="#" data-ref-dispcatno="100000100100003"
										data-attr="공통^드로우^클렌징_필링/패드" data-trk="/">필링/패드</a></li>
								</ul>
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000010011"
										data-attr="공통^드로우^선케어">선케어</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000100110001"
										data-attr="공통^드로우^선케어_선블록" data-trk="/">선블록</a></li>
									<li><a href="#" data-ref-dispcatno="100000100110002"
										data-attr="공통^드로우^선케어_태닝/애프터선" data-trk="/">태닝/애프터선</a></li>
								</ul>
							</div>
							<div class="sub_menu_box">
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000010008"
										data-attr="공통^드로우^더모 코스메틱">더모 코스메틱</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000100080013"
										data-attr="공통^드로우^더모 코스메틱_스킨케어" data-trk="/">스킨케어</a></li>
									<li><a href="#" data-ref-dispcatno="100000100080006"
										data-attr="공통^드로우^더모 코스메틱_클렌징" data-trk="/">클렌징</a></li>
									<li><a href="#" data-ref-dispcatno="100000100080005"
										data-attr="공통^드로우^더모 코스메틱_선케어" data-trk="/">선케어</a></li>
									<li><a href="#" data-ref-dispcatno="100000100080011"
										data-attr="공통^드로우^더모 코스메틱_마스크팩" data-trk="/">마스크팩</a></li>
									<li><a href="#" data-ref-dispcatno="100000100080004"
										data-attr="공통^드로우^더모 코스메틱_바디케어" data-trk="/">바디케어</a></li>
								</ul>
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000010002"
										data-attr="공통^드로우^메이크업">메이크업</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000100020006"
										data-attr="공통^드로우^메이크업_립메이크업" data-trk="/">립메이크업</a></li>
									<li><a href="#" data-ref-dispcatno="100000100020001"
										data-attr="공통^드로우^메이크업_베이스메이크업" data-trk="/">베이스메이크업</a></li>
									<li><a href="#" data-ref-dispcatno="100000100020007"
										data-attr="공통^드로우^메이크업_아이메이크업" data-trk="/">아이메이크업</a></li>
								</ul>
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000010012"
										data-attr="공통^드로우^네일">네일</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000100120007"
										data-attr="공통^드로우^네일_폴리쉬" data-trk="/">폴리쉬</a></li>
									<li><a href="#" data-ref-dispcatno="100000100120006"
										data-attr="공통^드로우^네일_팁/스티커" data-trk="/">팁/스티커</a></li>
									<li><a href="#" data-ref-dispcatno="100000100120005"
										data-attr="공통^드로우^네일_반경화" data-trk="/">반경화</a></li>
									<li><a href="#" data-ref-dispcatno="100000100120004"
										data-attr="공통^드로우^네일_케어" data-trk="/">케어</a></li>
								</ul>
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000010003"
										data-attr="공통^드로우^바디케어">바디케어</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000100030014"
										data-attr="공통^드로우^바디케어_로션/오일" data-trk="/">로션/오일</a></li>
									<li><a href="#" data-ref-dispcatno="100000100030005"
										data-attr="공통^드로우^바디케어_샤워/입욕" data-trk="/">샤워/입욕</a></li>
									<li><a href="#" data-ref-dispcatno="100000100030008"
										data-attr="공통^드로우^바디케어_립케어" data-trk="/">립케어</a></li>
									<li><a href="#" data-ref-dispcatno="100000100030016"
										data-attr="공통^드로우^바디케어_핸드케어" data-trk="/">핸드케어</a></li>
									<li><a href="#" data-ref-dispcatno="100000100030019"
										data-attr="공통^드로우^바디케어_제모/왁싱" data-trk="/">제모/왁싱</a></li>
									<li><a href="#" data-ref-dispcatno="100000100030015"
										data-attr="공통^드로우^바디케어_바디미스트" data-trk="/">바디미스트</a></li>
									<li><a href="#" data-ref-dispcatno="100000100030012"
										data-attr="공통^드로우^바디케어_데오드란트" data-trk="/">데오드란트</a></li>
									<li><a href="#" data-ref-dispcatno="100000100030020"
										data-attr="공통^드로우^바디케어_맘&amp;베이비" data-trk="/">맘&amp;베이비</a></li>
									<li><a href="#" data-ref-dispcatno="100000100030017"
										data-attr="공통^드로우^바디케어_선물세트" data-trk="/">선물세트</a></li>
									<li><a href="#" data-ref-dispcatno="100000100030018"
										data-attr="공통^드로우^바디케어_풋케어" data-trk="/">풋케어</a></li>
								</ul>
							</div>
							<div class="sub_menu_box">
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000010004"
										data-attr="공통^드로우^헤어케어">헤어케어</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000100040008"
										data-attr="공통^드로우^헤어케어_샴푸/린스" data-trk="/">샴푸/린스</a></li>
									<li><a href="#" data-ref-dispcatno="100000100040007"
										data-attr="공통^드로우^헤어케어_트리트먼트/팩" data-trk="/">트리트먼트/팩</a></li>
									<li><a href="#" data-ref-dispcatno="100000100040013"
										data-attr="공통^드로우^헤어케어_헤어에센스" data-trk="/">헤어에센스</a></li>
									<li><a href="#" data-ref-dispcatno="100000100040010"
										data-attr="공통^드로우^헤어케어_염색약/펌" data-trk="/">염색약/펌</a></li>
									<li><a href="#" data-ref-dispcatno="100000100040004"
										data-attr="공통^드로우^헤어케어_헤어기기" data-trk="/">헤어기기</a></li>
									<li><a href="#" data-ref-dispcatno="100000100040011"
										data-attr="공통^드로우^헤어케어_스타일링" data-trk="/">스타일링</a></li>
									<li><a href="#" data-ref-dispcatno="100000100040009"
										data-attr="공통^드로우^헤어케어_헤어브러쉬" data-trk="/">헤어브러쉬</a></li>
								</ul>
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000010005"
										data-attr="공통^드로우^향수/디퓨저">향수/디퓨저</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000100050003"
										data-attr="공통^드로우^향수/디퓨저_여성향수" data-trk="/">여성향수</a></li>
									<li><a href="#" data-ref-dispcatno="100000100050004"
										data-attr="공통^드로우^향수/디퓨저_남성향수" data-trk="/">남성향수</a></li>
									<li><a href="#" data-ref-dispcatno="100000100050008"
										data-attr="공통^드로우^향수/디퓨저_홈 프래그런스" data-trk="/">홈 프래그런스</a></li>
									<li><a href="#" data-ref-dispcatno="100000100050009"
										data-attr="공통^드로우^향수/디퓨저_선물세트" data-trk="/">선물세트</a></li>
								</ul>
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000010006"
										data-attr="공통^드로우^미용소품">미용소품</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000100060001"
										data-attr="공통^드로우^미용소품_메이크업소품" data-trk="/">메이크업소품</a></li>
									<li><a href="#" data-ref-dispcatno="100000100060006"
										data-attr="공통^드로우^미용소품_스킨케어소품" data-trk="/">스킨케어소품</a></li>
									<li><a href="#" data-ref-dispcatno="100000100060007"
										data-attr="공통^드로우^미용소품_아이소품" data-trk="/">아이소품</a></li>
									<li><a href="#" data-ref-dispcatno="100000100060002"
										data-attr="공통^드로우^미용소품_헤어/바디소품" data-trk="/">헤어/바디소품</a></li>
									<li><a href="#" data-ref-dispcatno="100000100060003"
										data-attr="공통^드로우^미용소품_미용관리" data-trk="/">미용관리</a></li>
									<li><a href="#" data-ref-dispcatno="100000100060004"
										data-attr="공통^드로우^미용소품_미용가전" data-trk="/">미용가전</a></li>
									<li><a href="#" data-ref-dispcatno="100000100060005"
										data-attr="공통^드로우^미용소품_미용잡화" data-trk="/">미용잡화</a></li>
								</ul>
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000010007"
										data-attr="공통^드로우^남성">남성</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000100070007"
										data-attr="공통^드로우^남성_스킨케어" data-trk="/">스킨케어</a></li>
									<li><a href="#" data-ref-dispcatno="100000100070009"
										data-attr="공통^드로우^남성_헤어케어" data-trk="/">헤어케어</a></li>
									<li><a href="#" data-ref-dispcatno="100000100070010"
										data-attr="공통^드로우^남성_쉐이빙" data-trk="/">쉐이빙</a></li>
									<li><a href="#" data-ref-dispcatno="100000100070017"
										data-attr="공통^드로우^남성_향수/매너용품" data-trk="/">향수/매너용품</a></li>
									<li><a href="#" data-ref-dispcatno="100000100070008"
										data-attr="공통^드로우^남성_메이크업" data-trk="/">메이크업</a></li>
									<li><a href="#" data-ref-dispcatno="100000100070011"
										data-attr="공통^드로우^남성_바디케어" data-trk="/">바디케어</a></li>
								</ul>
							</div>
						</li>
						<li>
							<h2>헬스&amp;푸드</h2>
							<div class="sub_menu_box">
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000020003"
										data-attr="공통^드로우^구강/건강용품">구강/건강용품</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000200030001"
										data-attr="공통^드로우^구강/건강용품_구강용품" data-trk="/">구강용품</a></li>
									<li><a href="#" data-ref-dispcatno="100000200030005"
										data-attr="공통^드로우^구강/건강용품_패치/겔" data-trk="/">패치/겔</a></li>
									<li><a href="#" data-ref-dispcatno="100000200030002"
										data-attr="공통^드로우^구강/건강용품_눈 관리 용품" data-trk="/">눈 관리 용품</a></li>
									<li><a href="#" data-ref-dispcatno="100000200030012"
										data-attr="공통^드로우^구강/건강용품_의료/간호용품" data-trk="/">의료/간호용품</a></li>
									<li><a href="#" data-ref-dispcatno="100000200030014"
										data-attr="공통^드로우^구강/건강용품_마사지/헬스용품" data-trk="/">마사지/헬스용품</a></li>
								</ul>
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000020004"
										data-attr="공통^드로우^여성/위생용품">여성/위생용품</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000200040001"
										data-attr="공통^드로우^여성/위생용품_생리용품" data-trk="/">생리용품</a></li>
									<li><a href="#" data-ref-dispcatno="100000200040002"
										data-attr="공통^드로우^여성/위생용품_여성청결제" data-trk="/">여성청결제</a></li>
									<li><a href="#" data-ref-dispcatno="100000200040003"
										data-attr="공통^드로우^여성/위생용품_성인용품" data-trk="/">성인용품</a></li>
									<li><a href="#" data-ref-dispcatno="100000200040004"
										data-attr="공통^드로우^여성/위생용품_기저귀/물티슈" data-trk="/">기저귀/물티슈</a></li>
									<li><a href="#" data-ref-dispcatno="100000200040005"
										data-attr="공통^드로우^여성/위생용품_제지류" data-trk="/">제지류</a></li>
								</ul>
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000020001"
										data-attr="공통^드로우^건강식품">건강식품</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000200010015"
										data-attr="공통^드로우^건강식품_비타민" data-trk="/">비타민</a></li>
									<li><a href="#" data-ref-dispcatno="100000200010024"
										data-attr="공통^드로우^건강식품_장건강" data-trk="/">장건강</a></li>
									<li><a href="#" data-ref-dispcatno="100000200010023"
										data-attr="공통^드로우^건강식품_체중관리" data-trk="/">체중관리</a></li>
									<li><a href="#" data-ref-dispcatno="100000200010022"
										data-attr="공통^드로우^건강식품_이너뷰티" data-trk="/">이너뷰티</a></li>
									<li><a href="#" data-ref-dispcatno="100000200010025"
										data-attr="공통^드로우^건강식품_영양제/기타" data-trk="/">영양제/기타</a></li>
								</ul>
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000020002"
										data-attr="공통^드로우^푸드">푸드</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000200020020"
										data-attr="공통^드로우^푸드_식단관리" data-trk="/">식단관리</a></li>
									<li><a href="#" data-ref-dispcatno="100000200020023"
										data-attr="공통^드로우^푸드_디저트/간식" data-trk="/">디저트/간식</a></li>
									<li><a href="#" data-ref-dispcatno="100000200020022"
										data-attr="공통^드로우^푸드_생수/음료/커피" data-trk="/">생수/음료/커피</a></li>
									<li><a href="#" data-ref-dispcatno="100000200020024"
										data-attr="공통^드로우^푸드_간편식/요리" data-trk="/">간편식/요리</a></li>
									<li><a href="#" data-ref-dispcatno="100000200020021"
										data-attr="공통^드로우^푸드_베이비푸드" data-trk="/">베이비푸드</a></li>
								</ul>
							</div>
						</li>
						<li>
							<h2>라이프</h2>
							<div class="sub_menu_box">
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000030005"
										data-attr="공통^드로우^라이프/홈">라이프/홈</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000300050005"
										data-attr="공통^드로우^라이프/홈_라이프웨어" data-trk="/">라이프웨어</a></li>
									<li><a href="#" data-ref-dispcatno="100000300050001"
										data-attr="공통^드로우^라이프/홈_공간방향/제습" data-trk="/">공간방향/제습</a></li>
									<li><a href="#" data-ref-dispcatno="100000300050006"
										data-attr="공통^드로우^라이프/홈_테크" data-trk="/">테크</a></li>
									<li><a href="#" data-ref-dispcatno="100000300050002"
										data-attr="공통^드로우^라이프/홈_홈 클리닝" data-trk="/">홈 클리닝</a></li>
									<li><a href="#" data-ref-dispcatno="100000300050003"
										data-attr="공통^드로우^라이프/홈_생활" data-trk="/">생활</a></li>
									<li><a href="#" data-ref-dispcatno="100000300050004"
										data-attr="공통^드로우^라이프/홈_주방" data-trk="/">주방</a></li>
									<li><a href="#" data-ref-dispcatno="100000300050007"
										data-attr="공통^드로우^라이프/홈_홈데코" data-trk="/">홈데코</a></li>
									<li><a href="#" data-ref-dispcatno="100000300050008"
										data-attr="공통^드로우^라이프/홈_악세서리" data-trk="/">악세서리</a></li>
									<li><a href="#" data-ref-dispcatno="100000300050009"
										data-attr="공통^드로우^라이프/홈_컬쳐" data-trk="/">컬쳐</a></li>
									<li><a href="#" data-ref-dispcatno="100000300050010"
										data-attr="공통^드로우^라이프/홈_유아용품" data-trk="/">유아용품</a></li>
								</ul>
								<p class="sub_depth">
									<a href="#" data-ref-dispcatno="10000030003"
										data-attr="공통^드로우^반려동물">반려동물</a>
								</p>
								<ul>
									<li><a href="#" data-ref-dispcatno="100000300030001"
										data-attr="공통^드로우^반려동물_강아지 식품" data-trk="/">강아지 식품</a></li>
									<li><a href="#" data-ref-dispcatno="100000300030002"
										data-attr="공통^드로우^반려동물_강아지 용품" data-trk="/">강아지 용품</a></li>
									<li><a href="#" data-ref-dispcatno="100000300030003"
										data-attr="공통^드로우^반려동물_고양이 식품" data-trk="/">고양이 식품</a></li>
									<li><a href="#" data-ref-dispcatno="100000300030004"
										data-attr="공통^드로우^반려동물_고양이 용품" data-trk="/">고양이 용품</a></li>
								</ul>
							</div>
						</li>
					</ul>
					<button id="btnGnbClose">전체 카테고리 창 닫기</button>
				</div>
				<!--// 전체 카테고리 레이어 -->
				<ul class="gnb_menu_list">
					<li style=""><a onclick="" href="#"
						data-ref-linkurl="main/getHotdealList.do" data-attr="공통^GNB^오특"><span>오특</span>
					</a></li>
					<li style=""><a onclick="" href="#"
						data-ref-linkurl="main/getBestList.do" data-attr="공통^GNB^랭킹"><span>랭킹</span>
					</a></li>
					<li style=""><a onclick="" href="#"
						data-attr="공통^GNB^LUXE EDIT"><span>LUXE EDIT</span> </a></li>

					<li style=""><a onclick="" href="#"
						data-ref-linkurl="main/getPlanShopList.do" data-attr="공통^GNB^기획전"><span>기획전</span>
					</a></li>
					<li style=""><a onclick="" href="#"
						data-ref-linkurl="main/getSaleList.do" data-attr="공통^GNB^세일"><span>세일</span>
					</a></li>
					<li style=""><a onclick="" href="#"
						data-ref-linkurl="giftCardGuide/getGiftCardGuide.do"
						data-attr="공통^GNB^기프트카드"><span>기프트카드</span> </a></li>
					<li style=""><a onclick="" href="#"
						data-ref-linkurl="main/getMembership.do" data-attr="공통^GNB^멤버십/쿠폰"><span>멤버십/쿠폰</span>
					</a></li>
					<li style=""><a onclick="" href="#"
						data-ref-linkurl="main/getEventList.do" data-attr="공통^GNB^이벤트"><span>이벤트</span>
					</a></li>
				</ul>

				<div id="directTop" style="display: block; opacity: 1;">
					<button>
						<span></span>TOP
					</button>
				</div>

			</div>
			<!-- RecoBell Script Start -->
			<form name="ssologinfrm"
				action="https://www.oliveyoung.co.kr/store/login/ssoLogin.do"
				method="post">
				<input type="hidden" id="cjssoq" name="cjssoq">
			</form>
			<script>
				var ssoCheck = "null";
				var cjssoq = "null";
				//alert('ssocheck:'+ssoCheck);
				//세션 정보가 없을경우 
				if (!_isLogin || ssoCheck != 'N') {
					//SSO 쿠키가 있고 정상적으로 토큰을 밥급받았을 경우
					if ((typeof _cjssoEncData) != "undefined"
							&& _cjssoEncData != "") {
						//ajax를 사용해서 _cjssoEncData 를 처리하여 사용하셔도 무방합니다.
						//alert("111 SSO쿠키를 조사해보니 있어서 확인하러 갑니다11."+_cjssoEncData);
						if (_cjssoEncData != cjssoq) {
							document.getElementById("cjssoq").value = _cjssoEncData;
							document.ssologinfrm.submit();
						}
					} else {
						//alert("222세션도 없고 쿠키도 없어서 해당 페이지로 갑니다.")
					}
				}
			</script>

			<!-- //[3553186] 온라인몰 전시 카테고리 개편 일괄 작업 요청의 건 -->
			<!-- 메인 카테고리 목록 -->

		</div>
	</div>



	<div>
		<div id="Container">


			<div class="page_location">
				<a href="javascript:common.link.moveMainHome();" class="loc_home">홈</a>
				<ul class="loc_history">
					<li><a href="javascript:common.link.moveBrandPage();">브랜드</a>
					</li>
					<li><a href="javascript:;">더마토리</a></li>
				</ul>
			</div>
			<div class="brand">
				<h2 class="title-detail-brand">더마토리</h2>


				<div class="brand_like">
					<a href="javascript:void(0);" data-ref-onlbrndnm="더마토리"
						data-ref-onlbrndcd="A002986" id="icobrand">
						<p class="brand">
							<span class="icon"><span class="fw400">3,369</span>명이
								더마토리를 좋아합니다.</span>
						</p>
					</a>
				</div>

			</div>

			<div id="brandDataSort">







				<div class="brand">
					<div class="brand_visual">


						<div class="visual">
							<img
								data-original="https://image.oliveyoung.co.kr/uploads/images/display/90000020378/263/5158605989720312598.jpg"
								alt="더마토리"
								data-ref-link-url="https://www.oliveyoung.co.kr/store/"
								class="completed-seq-lazyload"
								src="https://image.oliveyoung.co.kr/uploads/images/display/90000020378/263/5158605989720312598.jpg">
						</div>
						<div class="info">
							<h4 class="vtit">저자극 더마 스킨케어</h4>
							<p class="txt">
								#민감 #모공 #탄력<br>피부 고민별 맞춤 케어의 시작,<br>더마토리와 함께 저자극 더마
								스킨케어하세요.
							</p>
						</div>








					</div>
				</div>






































































			</div>

			<div class="brand">













				<div class="brandBox lineb">
					<div class="tabHead">
						<ul class="tablist" role="tablist">


							<li class="tab active" role="tab" id="tabitem2"
								aria-controls="tab-panel2" tabindex="0" aria-selected="true">베스트</li>


							<li class="tab" role="tab" id="tabitem3"
								aria-controls="tab-panel3" tabindex="0">리뷰</li>

						</ul>
					</div>

					<div class="tabContainer">






						<div class="tabCont active" role="tabpanel" id="tab-panel2"
							aria-lebelledby="tabitem2">
							<div class="itemList">
								<div class="tabSwiperBox">
									<div class="tabSwiper slick-initialized slick-slider"
										id="bestTabSwiper">
										<button type="button" data-role="none"
											class="slick-prev slick-arrow" aria-label="Previous"
											role="button" style="display: block;">Previous</button>




										<div aria-live="polite" class="slick-list draggable">
											<div class="slick-track" role="listbox"
												style="opacity: 1; width: 5100px; transform: translate3d(-1020px, 0px, 0px);">
												<div class="item slick-slide slick-cloned"
													data-slick-index="-1" aria-hidden="true"
													style="width: 1020px;" tabindex="-1">
													<ul class="prod-list">


														<li id="">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183252&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=9"
																	name="BrandA002986_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000183252"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^더마토리_베스트^[단독기획] 더마토리 하이포알러제닉 프레쉬 페미닌 버블폼 150ml+100ml 증정 기획"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183252&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;1&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018325213ko.jpg?l=ko"
																	alt="[단독기획] 더마토리 하이포알러제닉 프레쉬 페미닌 버블폼 150ml+100ml 증정 기획"
																	class="pic-thumb" onerror="common.errorImg(this);"></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183252&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;1&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183252&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=9"
																		name="BrandA002986_Best" class="goodsList"
																		data-ref-goodsno="A000000183252"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^더마토리_베스트^[단독기획] 더마토리 하이포알러제닉 프레쉬 페미닌 버블폼 150ml+100ml 증정 기획"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[단독기획] 더마토리
																			하이포알러제닉 프레쉬 페미닌 버블폼 150ml+100ml 증정 기획</span>
																	<div class="discount">
																			<span class="origin">18,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">12,500<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.8</span><span class="num">(509)</span>
																		</div>
																		<div class="flags">
																			<span class="flag coupon">쿠폰</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000183252" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000183252" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>







														<li id="">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000191410&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=10"
																	name="BrandA002986_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000191410"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^더마토리_베스트^[NEW] 더마토리 레티날 콜라겐/글루타치온 겔 마스크 1매 2종 중 택 1"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000191410&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;2&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019141008ko.jpg?l=ko"
																	alt="[NEW] 더마토리 레티날 콜라겐/글루타치온 겔 마스크 1매 2종 중 택 1"
																	class="pic-thumb" onerror="common.errorImg(this);"></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000191410&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;2&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000191410&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=10"
																		name="BrandA002986_Best" class="goodsList"
																		data-ref-goodsno="A000000191410"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^더마토리_베스트^[NEW] 더마토리 레티날 콜라겐/글루타치온 겔 마스크 1매 2종 중 택 1"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[NEW] 더마토리
																			레티날 콜라겐/글루타치온 겔 마스크 1매 2종 중 택 1</span>
																	<div class="discount">
																			<span class="origin">5,500원</span>
																		</div>
																		<div class="price">
																			<strong class="total">3,800<span class="won">원</span>~
																			</strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.8</span><span class="num">(86)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000191410" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000191410" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>








														<li></li>

														<li></li>

													</ul>
												</div>
												<div class="item slick-slide slick-current slick-active"
													data-slick-index="0" aria-hidden="false"
													style="width: 1020px;" tabindex="-1" role="option"
													aria-describedby="slick-slide00">
													<ul class="prod-list">


														<li id="bestTab1">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188213&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=1"
																	name="BrandA002986_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000188213"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^더마토리_베스트^[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획"
																	data-trk="/" tabindex="0"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188213&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;3&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018821314ko.jpg?l=ko"
																	alt="[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188213&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;3&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188213&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=1"
																		name="BrandA002986_Best" class="goodsList"
																		data-ref-goodsno="A000000188213"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^더마토리_베스트^[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획"
																		data-trk="/" tabindex="0"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[한정기획] 더마토리
																			하이포알러제닉 시카거즈 패드 80매+80매 리필기획</span>
																	<div class="discount">
																			<span class="origin">39,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">24,570<span
																				class="won">원</span>~
																			</strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.7</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span><span
																				class="flag coupon">쿠폰</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000188213" tabindex="0">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000188213" data-item-no="001"
																		tabindex="0">장바구니</button>
																</div>

															</div>
														</li>







														<li id="bestTab2">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188215&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=2"
																	name="BrandA002986_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000188215"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^더마토리_베스트^[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획"
																	data-trk="/" tabindex="0"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188215&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;4&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018821510ko.jpg?l=ko"
																	alt="[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188215&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;4&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188215&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=2"
																		name="BrandA002986_Best" class="goodsList"
																		data-ref-goodsno="A000000188215"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^더마토리_베스트^[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획"
																		data-trk="/" tabindex="0"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[한정기획] 더마토리
																			프로 트러블 모공 패드 70매+70매 리필기획</span>
																	<div class="discount">
																			<span class="origin">39,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">24,570<span
																				class="won">원</span>~
																			</strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.7</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span><span
																				class="flag coupon">쿠폰</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000188215" tabindex="0">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000188215" data-item-no="001"
																		tabindex="0">장바구니</button>
																</div>

															</div>
														</li>







														<li id="bestTab3">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189710&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=3"
																	name="BrandA002986_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000189710"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^더마토리_베스트^[단독기획] 더마토리 프로 비타 에이 레티날덤 밴드 마스크 4매 +1매 증정기획 (모공탄력)"
																	data-trk="/" tabindex="0"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189710&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;5&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018971004ko.jpg?l=ko"
																	alt="[단독기획] 더마토리 프로 비타 에이 레티날덤 밴드 마스크 4매 +1매 증정기획 (모공탄력)"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189710&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;5&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189710&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=3"
																		name="BrandA002986_Best" class="goodsList"
																		data-ref-goodsno="A000000189710"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^더마토리_베스트^[단독기획] 더마토리 프로 비타 에이 레티날덤 밴드 마스크 4매 +1매 증정기획 (모공탄력)"
																		data-trk="/" tabindex="0"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[단독기획] 더마토리
																			프로 비타 에이 레티날덤 밴드 마스크 4매 +1매 증정기획 (모공탄력)</span>
																	<div class="discount">
																			<span class="origin">16,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">9,600<span class="won">원</span></strong>
																			<span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.8</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag coupon">쿠폰</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000189710" tabindex="0">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000189710" data-item-no="001"
																		tabindex="0">장바구니</button>
																</div>

															</div>
														</li>







														<li id="bestTab4">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183254&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=4"
																	name="BrandA002986_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000183254"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^더마토리_베스트^더마토리 프로 비타 에이 레티날 아이패치 60매 (눈가탄력)"
																	data-trk="/" tabindex="0"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183254&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;6&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018325421ko.jpg?l=ko"
																	alt="더마토리 프로 비타 에이 레티날 아이패치 60매 (눈가탄력)"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183254&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;6&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183254&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=4"
																		name="BrandA002986_Best" class="goodsList"
																		data-ref-goodsno="A000000183254"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^더마토리_베스트^더마토리 프로 비타 에이 레티날 아이패치 60매 (눈가탄력)"
																		data-trk="/" tabindex="0"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">더마토리 프로 비타
																			에이 레티날 아이패치 60매 (눈가탄력)</span>
																	<div class="discount">
																			<span class="origin">22,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">14,630<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.5</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span><span
																				class="flag coupon">쿠폰</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000183254" tabindex="0">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000183254" data-item-no="001"
																		tabindex="0">장바구니</button>
																</div>

															</div>
														</li>


													</ul>
												</div>
												<div class="item slick-slide" data-slick-index="1"
													aria-hidden="true" style="width: 1020px;" tabindex="-1"
													role="option" aria-describedby="slick-slide01">
													<ul class="prod-list">


														<li id="bestTab5">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175187&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=5"
																	name="BrandA002986_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000175187"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^더마토리_베스트^[단독기획] 더마토리 하이포알러제닉 모이스처라이징 마일드 페미닌 워시 200ml+100ml 증정 기획"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000175187&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;7&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017518708ko.jpg?l=ko"
																	alt="[단독기획] 더마토리 하이포알러제닉 모이스처라이징 마일드 페미닌 워시 200ml+100ml 증정 기획"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000175187&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;7&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175187&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=5"
																		name="BrandA002986_Best" class="goodsList"
																		data-ref-goodsno="A000000175187"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^더마토리_베스트^[단독기획] 더마토리 하이포알러제닉 모이스처라이징 마일드 페미닌 워시 200ml+100ml 증정 기획"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[단독기획] 더마토리
																			하이포알러제닉 모이스처라이징 마일드 페미닌 워시 200ml+100ml 증정 기획</span>
																	<div class="discount">
																			<span class="origin">18,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">13,680<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.8</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span><span
																				class="flag coupon">쿠폰</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000175187" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000175187" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>







														<li id="bestTab6">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188371&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=6"
																	name="BrandA002986_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000188371"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^더마토리_베스트^[NEW] 더마토리 레티날 탄력 앰플 패드 80매"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188371&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;8&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018837118ko.jpg?l=ko"
																	alt="[NEW] 더마토리 레티날 탄력 앰플 패드 80매" class="pic-thumb"
																	onerror="common.errorImg(this);"></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188371&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;8&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188371&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=6"
																		name="BrandA002986_Best" class="goodsList"
																		data-ref-goodsno="A000000188371"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^더마토리_베스트^[NEW] 더마토리 레티날 탄력 앰플 패드 80매"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[NEW] 더마토리
																			레티날 탄력 앰플 패드 80매</span>
																	<div class="discount">
																			<span class="origin">26,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">16,900<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.6</span><span class="num">(346)</span>
																		</div>
																		<div class="flags">
																			<span class="flag coupon">쿠폰</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000188371" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000188371" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>







														<li id="bestTab7">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000174156&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=7"
																	name="BrandA002986_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000174156"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^더마토리_베스트^더마토리 프로 비타 에이 레티날덤 밴드 마스크 1매 (모공탄력)"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000174156&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;9&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017415618ko.jpg?l=ko"
																	alt="더마토리 프로 비타 에이 레티날덤 밴드 마스크 1매 (모공탄력)"
																	class="pic-thumb" onerror="common.errorImg(this);"></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000174156&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;9&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000174156&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=7"
																		name="BrandA002986_Best" class="goodsList"
																		data-ref-goodsno="A000000174156"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^더마토리_베스트^더마토리 프로 비타 에이 레티날덤 밴드 마스크 1매 (모공탄력)"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">더마토리 프로 비타
																			에이 레티날덤 밴드 마스크 1매 (모공탄력)</span>
																	<div class="discount">
																			<span class="origin">4,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">2,000<span class="won">원</span></strong>
																			<span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.8</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000174156" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000174156" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>







														<li id="bestTab8">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000145166&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=8"
																	name="BrandA002986_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000145166"
																	data-ref-dispcatno="9000002" data-ref-itemno="004"
																	data-attr="브랜드관^더마토리_베스트^더마토리 프로 앰플 마스크 1매 [수분/탄력/미백/진정] 4종 중 택1"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000145166&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;10&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014516603ko.jpg?l=ko"
																	alt="더마토리 프로 앰플 마스크 1매 [수분/탄력/미백/진정] 4종 중 택1"
																	class="pic-thumb" onerror="common.errorImg(this);"></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000145166&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;10&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000145166&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=8"
																		name="BrandA002986_Best" class="goodsList"
																		data-ref-goodsno="A000000145166"
																		data-ref-dispcatno="9000002" data-ref-itemno="004"
																		data-attr="브랜드관^더마토리_베스트^더마토리 프로 앰플 마스크 1매 [수분/탄력/미백/진정] 4종 중 택1"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">더마토리 프로 앰플
																			마스크 1매 [수분/탄력/미백/진정] 4종 중 택1</span>
																	<div class="discount">
																			<span class="origin">2,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">1,000<span class="won">원</span>~
																			</strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.7</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000145166" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000145166" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>


													</ul>
												</div>
												<div class="item slick-slide" data-slick-index="2"
													aria-hidden="true" style="width: 1020px;" tabindex="-1"
													role="option" aria-describedby="slick-slide02">
													<ul class="prod-list">


														<li id="bestTab9">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183252&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=9"
																	name="BrandA002986_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000183252"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^더마토리_베스트^[단독기획] 더마토리 하이포알러제닉 프레쉬 페미닌 버블폼 150ml+100ml 증정 기획"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183252&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;11&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018325213ko.jpg?l=ko"
																	alt="[단독기획] 더마토리 하이포알러제닉 프레쉬 페미닌 버블폼 150ml+100ml 증정 기획"
																	class="pic-thumb" onerror="common.errorImg(this);"></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183252&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;11&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183252&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=9"
																		name="BrandA002986_Best" class="goodsList"
																		data-ref-goodsno="A000000183252"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^더마토리_베스트^[단독기획] 더마토리 하이포알러제닉 프레쉬 페미닌 버블폼 150ml+100ml 증정 기획"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[단독기획] 더마토리
																			하이포알러제닉 프레쉬 페미닌 버블폼 150ml+100ml 증정 기획</span>
																	<div class="discount">
																			<span class="origin">18,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">12,500<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.8</span><span class="num">(509)</span>
																		</div>
																		<div class="flags">
																			<span class="flag coupon">쿠폰</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000183252" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000183252" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>







														<li id="bestTab10">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000191410&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=10"
																	name="BrandA002986_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000191410"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^더마토리_베스트^[NEW] 더마토리 레티날 콜라겐/글루타치온 겔 마스크 1매 2종 중 택 1"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000191410&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;12&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019141008ko.jpg?l=ko"
																	alt="[NEW] 더마토리 레티날 콜라겐/글루타치온 겔 마스크 1매 2종 중 택 1"
																	class="pic-thumb" onerror="common.errorImg(this);"></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000191410&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;12&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000191410&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=10"
																		name="BrandA002986_Best" class="goodsList"
																		data-ref-goodsno="A000000191410"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^더마토리_베스트^[NEW] 더마토리 레티날 콜라겐/글루타치온 겔 마스크 1매 2종 중 택 1"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[NEW] 더마토리
																			레티날 콜라겐/글루타치온 겔 마스크 1매 2종 중 택 1</span>
																	<div class="discount">
																			<span class="origin">5,500원</span>
																		</div>
																		<div class="price">
																			<strong class="total">3,800<span class="won">원</span>~
																			</strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.8</span><span class="num">(86)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000191410" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000191410" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>








														<li></li>

														<li></li>

													</ul>
												</div>
												<div class="item slick-slide slick-cloned"
													data-slick-index="3" aria-hidden="true"
													style="width: 1020px;" tabindex="-1">
													<ul class="prod-list">


														<li id="">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188213&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=1"
																	name="BrandA002986_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000188213"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^더마토리_베스트^[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188213&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;13&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018821314ko.jpg?l=ko"
																	alt="[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188213&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;13&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188213&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=1"
																		name="BrandA002986_Best" class="goodsList"
																		data-ref-goodsno="A000000188213"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^더마토리_베스트^[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[한정기획] 더마토리
																			하이포알러제닉 시카거즈 패드 80매+80매 리필기획</span>
																	<div class="discount">
																			<span class="origin">39,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">24,570<span
																				class="won">원</span>~
																			</strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.7</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span><span
																				class="flag coupon">쿠폰</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000188213" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000188213" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>







														<li id="">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188215&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=2"
																	name="BrandA002986_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000188215"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^더마토리_베스트^[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188215&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;14&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018821510ko.jpg?l=ko"
																	alt="[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188215&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;14&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188215&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=2"
																		name="BrandA002986_Best" class="goodsList"
																		data-ref-goodsno="A000000188215"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^더마토리_베스트^[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[한정기획] 더마토리
																			프로 트러블 모공 패드 70매+70매 리필기획</span>
																	<div class="discount">
																			<span class="origin">39,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">24,570<span
																				class="won">원</span>~
																			</strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.7</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span><span
																				class="flag coupon">쿠폰</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000188215" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000188215" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>







														<li id="">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189710&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=3"
																	name="BrandA002986_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000189710"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^더마토리_베스트^[단독기획] 더마토리 프로 비타 에이 레티날덤 밴드 마스크 4매 +1매 증정기획 (모공탄력)"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189710&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;15&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018971004ko.jpg?l=ko"
																	alt="[단독기획] 더마토리 프로 비타 에이 레티날덤 밴드 마스크 4매 +1매 증정기획 (모공탄력)"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189710&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;15&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189710&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=3"
																		name="BrandA002986_Best" class="goodsList"
																		data-ref-goodsno="A000000189710"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^더마토리_베스트^[단독기획] 더마토리 프로 비타 에이 레티날덤 밴드 마스크 4매 +1매 증정기획 (모공탄력)"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[단독기획] 더마토리
																			프로 비타 에이 레티날덤 밴드 마스크 4매 +1매 증정기획 (모공탄력)</span>
																	<div class="discount">
																			<span class="origin">16,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">9,600<span class="won">원</span></strong>
																			<span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.8</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag coupon">쿠폰</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000189710" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000189710" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>







														<li id="">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183254&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=4"
																	name="BrandA002986_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000183254"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^더마토리_베스트^더마토리 프로 비타 에이 레티날 아이패치 60매 (눈가탄력)"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183254&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;16&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018325421ko.jpg?l=ko"
																	alt="더마토리 프로 비타 에이 레티날 아이패치 60매 (눈가탄력)"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183254&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_베스트&quot;, &quot;16&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183254&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=4"
																		name="BrandA002986_Best" class="goodsList"
																		data-ref-goodsno="A000000183254"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^더마토리_베스트^더마토리 프로 비타 에이 레티날 아이패치 60매 (눈가탄력)"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">더마토리 프로 비타
																			에이 레티날 아이패치 60매 (눈가탄력)</span>
																	<div class="discount">
																			<span class="origin">22,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">14,630<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.5</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span><span
																				class="flag coupon">쿠폰</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000183254" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000183254" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>


													</ul>
												</div>
											</div>
										</div>
										<!-- item -->





										<!-- item -->







										<button type="button" data-role="none"
											class="slick-next slick-arrow" aria-label="Next"
											role="button" style="display: block;">Next</button>
									</div>
								</div>
							</div>
						</div>





						<div class="tabCont reviewPanel" role="tabpanel" id="tab-panel3"
							aria-lebelledby="tabitem3">
							<div class="tabSwiperBox">
								<div class="tabSwiper slick-initialized slick-slider"
									id="reviewTabSwiper">
									<button type="button" data-role="none"
										class="slick-prev slick-arrow" aria-label="Previous"
										role="button" style="display: block;">Previous</button>

















									<div aria-live="polite" class="slick-list draggable">
										<div class="slick-track" role="listbox"
											style="opacity: 1; width: 0px; transform: translate3d(0px, 0px, 0px);">
											<div class="reviewList slick-slide slick-cloned"
												data-slick-index="-1" aria-hidden="true" style="width: 0px;"
												tabindex="-1">
												<ul class="inner">


													<li>
														<p class="thum"
															onclick="javascript:common.link.moveGoodsDetail('A000000188215', '', 'BrandA002986_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'10'}); ">
															<img
																src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018821510ko.jpg?l=ko"
																data-ref-goodsno="A000000188215"
																alt="[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획 "
																onerror="common.errorImg(this);"
																data-attr="브랜드관^더마토리_리뷰^[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획 "
																data-trk="/"
																onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188215&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_리뷰&quot;, &quot;1&quot;);">
														</p>
														<div class="reviewCont"
															onclick="javascript:display.brandShopDetail.amplitudeReview('A000000188215', '[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획 ', '10'); mypage.reviewerLounge.goReviewDetail('22960001', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'10'});">
															<div class="topinfo">
																<div class="review_stat type2">
																	<span class="point pt4">4점</span>
																</div>
																<span class="like"><span class="icon">2</span></span>
															</div>
															<dl class="retxt">
																<dd>제 피부타입은 1. 양쪽 볼, 턱이 붉은 홍조 피부 2. 눈, 입가에 아토피가 있는
																	민감성 피부 3. 복합성 피부에서 건성 피부 4. 유수분 밸런스가 진짜 중요한 피부 조금만
																	따끔거림이 있거나 홍조가 심해질 경우 제품을 사용 중단하는 편입니다 * 유일하게 자극이 살짝
																	느껴지는 제품인데도 한 통 다 사용 후 나머지 한 통을 사용 중인 제품! 🙄 자극있어요 - 피지나
																	블랙헤드 관리하는 패드이다보니 확실히 자극은 있어요 잠깐 피부에 올려놓고 T존, 나비존 부분만 살살
																	닦아냈는데 피부에 올려놓을 때도 약간 화한 느낌이 들면서 조금 따끔거렸고 닦아낸 후에도 따끔거렸어요
																	그래서 망했다 싶었죠...심지어 홍조도 울긋불긋... - 하지만 제가 한 달이 지난 지금도 사용
																	중인 이유는 아침에 일어나면 그 울긋불긋 했던 홍조는 어디갔는지 붉은기가 진정 되어있어서 그 효과
																	때문에 사용 중단을 못 하고 있는 제품... 😏 수분충전은 좋은 편 - 패드 사용 후에 바로
																	세타필 로션으로 보습 충전해서 사용했어요:) 이즈앤트리 토너 사용 후 세타필 로션으로 마무리 했을
																	때와 다르게 다음날 아침에 일어나면 속당김도 없고 오히려 피부가 번들번들, 울긋불긋했던 홍조도
																	가라앉았더라고요 그리고 자극 있었지만 트러블도 안 났고 신기했어요 자극이 있는데 피부에는 안 좋은
																	영향은 없었는게 신기하더라고요 😕 피지&amp;블랙헤드 제거는 약한 편 - 메이크업 잔여물이나
																	나비존 노폐물 제거에는 효과가 있는 것 같지만 코의 블랙헤드 제거는 눈에 띄게 효과가 있는 제품은
																	아니에요 꾸준히 사용해야 효과를 볼 것 같은데 저는 일주일에 1-2번 정도만 사용해서 그런지 크게
																	바로 효과는 보지 못 했지만 화장 전 닦아내면 베이스가 코끼임이 줄어든걸로 봐서는 아주 미세하게는
																	블랙헤드를 제거하는데 도움을 주는 듯 싶어요 😀너무 얇지도 두껍지도 않은 적당한 패드 두께 -
																	제가 잠깐 피부에 얹어놨었는데 떨어지지 않았고 닦아낼때도 패드 자체로는 자극이 없는 듯 싶었어요
																	패드 안에 에센스 성분 때문에 따끔거림이 있었던 것 같아서 패드 자체로는 좋은 것 같았어요:) 🌼
																	민감성 피부 분들은 적극 추천 드리지 않아요 실제로 민감성 피부가 주의해야되는 성분이 포함되어
																	있어요어느 정도 피부장벽이 튼튼하고 피지 관리를 해야하는 지성 피부이신 분들이나 복합성 피부이신
																	분둘 중 T존 관리를 원하시는 분들께 조심스럽게 추천드리지만 한 번 성분 확인해보시고 사용하시는게
																	좋을 것 같아요:) 🙄 자극이 있는 패드다보니 데일리로 쓸만한 제품은 아니라서 재구매는 아침에
																	진정효과가 있다고 해도 재구매의사는 없습니다...</dd>
															</dl>
															<a href="javascript:void(0);" class="btn_detail"
																onclick="javascript:display.brandShopDetail.amplitudeReview('A000000188215', '[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획 ', '10'); mypage.reviewerLounge.goReviewDetail('22960001', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'10'});"
																tabindex="-1">자세히 보기</a>
														</div>
													</li>








													<li></li>

													<li></li>

												</ul>
											</div>
											<div
												class="reviewList slick-slide slick-current slick-active"
												data-slick-index="0" aria-hidden="false" style="width: 0px;"
												tabindex="-1" role="option" aria-describedby="slick-slide10">
												<ul class="inner">


													<li>
														<p class="thum"
															onclick="javascript:common.link.moveGoodsDetail('A000000188213', '', 'BrandA002986_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'1'}); ">
															<img
																src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018821314ko.jpg?l=ko"
																data-ref-goodsno="A000000188213"
																alt="[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획"
																onerror="common.errorImg(this);"
																data-attr="브랜드관^더마토리_리뷰^[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획"
																data-trk="/"
																onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188213&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_리뷰&quot;, &quot;2&quot;);">
														</p>
														<div class="reviewCont"
															onclick="javascript:display.brandShopDetail.amplitudeReview('A000000188213', '[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획', '1'); mypage.reviewerLounge.goReviewDetail('23242217', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'1'});">
															<div class="topinfo">
																<div class="review_stat type2">
																	<span class="point pt4">4점</span>
																</div>
																<span class="like"><span class="icon">17</span></span>
															</div>
															<dl class="retxt">
																<dd>저는 리뉴얼 전이 더 좋은 것 같아요... 젤리면으로 패드팩 하기는 좋은데 닦아내는게
																	힘들어요 ㅠㅜㅠ 한쪽면이 젤리라 손에서 계속 미끄러져서 진정팩 찾으시는 분들 사용하시면 좋을 것
																	같습니다!!</dd>
															</dl>
															<a href="javascript:void(0);" class="btn_detail"
																onclick="javascript:display.brandShopDetail.amplitudeReview('A000000188213', '[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획', '1'); mypage.reviewerLounge.goReviewDetail('23242217', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'1'});"
																tabindex="0">자세히 보기</a>
														</div>
													</li>




















													<li>
														<p class="thum"
															onclick="javascript:common.link.moveGoodsDetail('A000000174156', '', 'BrandA002986_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'2'}); ">
															<img
																src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017415618ko.jpg?l=ko"
																data-ref-goodsno="A000000174156"
																alt="더마토리 프로 비타 에이 레티날덤 밴드 마스크 1매 (모공탄력) "
																onerror="common.errorImg(this);"
																data-attr="브랜드관^더마토리_리뷰^더마토리 프로 비타 에이 레티날덤 밴드 마스크 1매 (모공탄력) "
																data-trk="/"
																onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000174156&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_리뷰&quot;, &quot;3&quot;);">
														</p>
														<div class="reviewCont"
															onclick="javascript:display.brandShopDetail.amplitudeReview('A000000174156', '더마토리 프로 비타 에이 레티날덤 밴드 마스크 1매 (모공탄력) ', '2'); mypage.reviewerLounge.goReviewDetail('22777559', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'2'});">
															<div class="topinfo">
																<div class="review_stat type2">
																	<span class="point pt5">5점</span>
																</div>
																<span class="like"><span class="icon">8</span></span>
															</div>
															<dl class="retxt">
																<dd>피부 건조함이 많이 개선되었어요 요즘 같이 날씨가 쌀쌀하고 건조할때 사용하기
																	딱입니다. 보습이 잘되더라구요 시트 밀착력 짱 좋아요. 👍 👍</dd>
															</dl>
															<a href="javascript:void(0);" class="btn_detail"
																onclick="javascript:display.brandShopDetail.amplitudeReview('A000000174156', '더마토리 프로 비타 에이 레티날덤 밴드 마스크 1매 (모공탄력) ', '2'); mypage.reviewerLounge.goReviewDetail('22777559', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'2'});"
																tabindex="0">자세히 보기</a>
														</div>
													</li>




















													<li>
														<p class="thum"
															onclick="javascript:common.link.moveGoodsDetail('A000000178597', '', 'BrandA002986_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'3'}); ">
															<img
																src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017859712ko.jpg?l=ko"
																data-ref-goodsno="A000000178597"
																alt="더마토리 프로 시카 징크덤 밴드 마스크 1매 (진정)"
																onerror="common.errorImg(this);"
																data-attr="브랜드관^더마토리_리뷰^더마토리 프로 시카 징크덤 밴드 마스크 1매 (진정)"
																data-trk="/"
																onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000178597&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_리뷰&quot;, &quot;4&quot;);">
														</p>
														<div class="reviewCont"
															onclick="javascript:display.brandShopDetail.amplitudeReview('A000000178597', '더마토리 프로 시카 징크덤 밴드 마스크 1매 (진정)', '3'); mypage.reviewerLounge.goReviewDetail('23258234', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'3'});">
															<div class="topinfo">
																<div class="review_stat type2">
																	<span class="point pt5">5점</span>
																</div>
																<span class="like"><span class="icon">6</span></span>
															</div>
															<dl class="retxt">
																<dd>좋다고 해서 구매했는데 그냥 저냥 무난하게 쓸 수 있는 팩인 것 같아요</dd>
															</dl>
															<a href="javascript:void(0);" class="btn_detail"
																onclick="javascript:display.brandShopDetail.amplitudeReview('A000000178597', '더마토리 프로 시카 징크덤 밴드 마스크 1매 (진정)', '3'); mypage.reviewerLounge.goReviewDetail('23258234', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'3'});"
																tabindex="0">자세히 보기</a>
														</div>
													</li>


												</ul>
											</div>
											<div class="reviewList slick-slide" data-slick-index="1"
												aria-hidden="true" style="width: 0px;" tabindex="-1"
												role="option" aria-describedby="slick-slide11">
												<ul class="inner">


													<li>
														<p class="thum"
															onclick="javascript:common.link.moveGoodsDetail('A000000178598', '', 'BrandA002986_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'4'}); ">
															<img
																src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017859813ko.jpg?l=ko"
																data-ref-goodsno="A000000178598"
																alt="더마토리 프로 아쿠아 히알덤 밴드 마스크 1매 (수분)"
																onerror="common.errorImg(this);"
																data-attr="브랜드관^더마토리_리뷰^더마토리 프로 아쿠아 히알덤 밴드 마스크 1매 (수분)"
																data-trk="/"
																onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000178598&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_리뷰&quot;, &quot;5&quot;);">
														</p>
														<div class="reviewCont"
															onclick="javascript:display.brandShopDetail.amplitudeReview('A000000178598', '더마토리 프로 아쿠아 히알덤 밴드 마스크 1매 (수분)', '4'); mypage.reviewerLounge.goReviewDetail('23261933', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'4'});">
															<div class="topinfo">
																<div class="review_stat type2">
																	<span class="point pt5">5점</span>
																</div>
																<span class="like"><span class="icon">4</span></span>
															</div>
															<dl class="retxt">
																<dd>더마토리팩 좋다고 추천받아서 썻는데 평타이상인것같아요ㅎㅎ 자극없이 촉촉해서좋아요</dd>
															</dl>
															<a href="javascript:void(0);" class="btn_detail"
																onclick="javascript:display.brandShopDetail.amplitudeReview('A000000178598', '더마토리 프로 아쿠아 히알덤 밴드 마스크 1매 (수분)', '4'); mypage.reviewerLounge.goReviewDetail('23261933', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'4'});"
																tabindex="-1">자세히 보기</a>
														</div>
													</li>




















													<li>
														<p class="thum"
															onclick="javascript:common.link.moveGoodsDetail('A000000175187', '', 'BrandA002986_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'5'}); ">
															<img
																src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017518708ko.jpg?l=ko"
																data-ref-goodsno="A000000175187"
																alt="[단독기획] 더마토리 하이포알러제닉 모이스처라이징 마일드 페미닌 워시 200ml+100ml 증정 기획"
																onerror="common.errorImg(this);"
																data-attr="브랜드관^더마토리_리뷰^[단독기획] 더마토리 하이포알러제닉 모이스처라이징 마일드 페미닌 워시 200ml+100ml 증정 기획"
																data-trk="/"
																onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000175187&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_리뷰&quot;, &quot;6&quot;);">
														</p>
														<div class="reviewCont"
															onclick="javascript:display.brandShopDetail.amplitudeReview('A000000175187', '[단독기획] 더마토리 하이포알러제닉 모이스처라이징 마일드 페미닌 워시 200ml+100ml 증정 기획', '5'); mypage.reviewerLounge.goReviewDetail('23172333', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'5'});">
															<div class="topinfo">
																<div class="review_stat type2">
																	<span class="point pt5">5점</span>
																</div>
																<span class="like"><span class="icon">4</span></span>
															</div>
															<dl class="retxt">
																<dd>자극없는 페미닌워시 찾고있었는데, 순한제품이라 무척 잘 사용하고 있습니다. 특히
																	증정기획 상품이라 여행할때도 부담없이 가지고 다녀올 수 있어서 좋았습니다. 거품도 잘 나는 편이고,
																	향도 자극적이지 않아서 좋아요.</dd>
															</dl>
															<a href="javascript:void(0);" class="btn_detail"
																onclick="javascript:display.brandShopDetail.amplitudeReview('A000000175187', '[단독기획] 더마토리 하이포알러제닉 모이스처라이징 마일드 페미닌 워시 200ml+100ml 증정 기획', '5'); mypage.reviewerLounge.goReviewDetail('23172333', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'5'});"
																tabindex="-1">자세히 보기</a>
														</div>
													</li>




















													<li>
														<p class="thum"
															onclick="javascript:common.link.moveGoodsDetail('A000000145166', '', 'BrandA002986_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'6'}); ">
															<img
																src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014516603ko.jpg?l=ko"
																data-ref-goodsno="A000000145166"
																alt="더마토리 프로 앰플 마스크 1매 [수분/탄력/미백/진정] 4종 중 택1"
																onerror="common.errorImg(this);"
																data-attr="브랜드관^더마토리_리뷰^더마토리 프로 앰플 마스크 1매 [수분/탄력/미백/진정] 4종 중 택1"
																data-trk="/"
																onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000145166&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_리뷰&quot;, &quot;7&quot;);">
														</p>
														<div class="reviewCont"
															onclick="javascript:display.brandShopDetail.amplitudeReview('A000000145166', '더마토리 프로 앰플 마스크 1매 [수분/탄력/미백/진정] 4종 중 택1', '6'); mypage.reviewerLounge.goReviewDetail('23160357', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'6'});">
															<div class="topinfo">
																<div class="review_stat type2">
																	<span class="point pt5">5점</span>
																</div>
																<span class="like"><span class="icon">4</span></span>
															</div>
															<dl class="retxt">
																<dd>수분마스크팩은 냉장고에 꼭 두는데 더마토리 제품 좋네요!</dd>
															</dl>
															<a href="javascript:void(0);" class="btn_detail"
																onclick="javascript:display.brandShopDetail.amplitudeReview('A000000145166', '더마토리 프로 앰플 마스크 1매 [수분/탄력/미백/진정] 4종 중 택1', '6'); mypage.reviewerLounge.goReviewDetail('23160357', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'6'});"
																tabindex="-1">자세히 보기</a>
														</div>
													</li>


												</ul>
											</div>
											<div class="reviewList slick-slide" data-slick-index="2"
												aria-hidden="true" style="width: 0px;" tabindex="-1"
												role="option" aria-describedby="slick-slide12">
												<ul class="inner">


													<li>
														<p class="thum"
															onclick="javascript:common.link.moveGoodsDetail('A000000191410', '', 'BrandA002986_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'7'}); ">
															<img
																src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0019/A00000019141008ko.jpg?l=ko"
																data-ref-goodsno="A000000191410"
																alt="[NEW] 더마토리 레티날 콜라겐/글루타치온 겔 마스크 1매 2종 중 택 1"
																onerror="common.errorImg(this);"
																data-attr="브랜드관^더마토리_리뷰^[NEW] 더마토리 레티날 콜라겐/글루타치온 겔 마스크 1매 2종 중 택 1"
																data-trk="/"
																onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000191410&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_리뷰&quot;, &quot;8&quot;);">
														</p>
														<div class="reviewCont"
															onclick="javascript:display.brandShopDetail.amplitudeReview('A000000191410', '[NEW] 더마토리 레티날 콜라겐/글루타치온 겔 마스크 1매 2종 중 택 1', '7'); mypage.reviewerLounge.goReviewDetail('23021781', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'7'});">
															<div class="topinfo">
																<div class="review_stat type2">
																	<span class="point pt5">5점</span>
																</div>
																<span class="like"><span class="icon">4</span></span>
															</div>
															<dl class="retxt">
																<dd>더마토리에서는 시카패드, 모공패드, 앰플 마스크팩, 레티날 덤 밴드 마스크팩을
																	사용해봤는데 제품력이 좋았어서 사게 됐어요 터리님 '빼고추천요' 동영상도 보게 됐는데, 소비자
																	의견을 최대한 수용하고 제품의 완성도를 위해 수많은 테스트를 걸쳐 제품력 좋은 제품을 만들어서
																	담당자님의 진심도 느껴지졌어요🥹 전 과다피지형 지성이고 모공도 왕모공이기 때문에 파데로 모공이 안
																	가려지는 부분도 있어서 세로모공 예방 겸 사게 됐어요 🌻 꿀팁 - 밀착력이 이미 좋으나 수분진정
																	앰플이나 콜라겐 앰플을 같이 쓰면 수분진정케어도 잡고 탄력케어는 2배로 이끌어내기 가능해요 눈, 입
																	부분에서 나온 쪼가리는 팔자주름쪽과 이마에 미리 붙여놓고 상단 붙이고 하단 붙이면 떨어지지않고
																	좋아요 시트 느낌 - 얇고 엠보면이 있기때문에 쫜쫜하게 밀착되며 잔잔한 쿨링감이 돌아요 다른 겔
																	마스크팩보다 밀착력이 상당히 좋아요 엠보면 들어간 겔 마스크팩이 T사, M사 거 써봤는데 더마토리가
																	압승이에요 색감, 향 - 레티날 특유의 상아색, 플로럴한 향 레티날 앰플 패드, 레티날 덤 밴드
																	마스크 팩과 차이점 - 패드보다 레티날 함량이 10ppm 높음, 마스크팩 에센스가 패드보다 끈적임이
																	있어서 산뜻한 건 패드가 압승이고 패드보다 겔 마스크팩이 에센스 겉도는 것이 없음, 마스크은 밀착핏
																	탄력 밴드 시트기 때문에 피부에 닿으면 얼굴에 맞게 수축하며 탄력 케어를 도와주는데 이때 수축감이
																	부담스럽고 피부에 안 맞으시는 분께는 패드를 추천함 마스크팩보다는 12ppm이 높기때문에 극민감성은
																	1개 미리 사서 쓰시는 것이 좋을 거 같음 에센스 양 - 콜라겐 에센스와 레티날을 굳혀 만든 것이기
																	때문에 많다고 볼 수 있음💦 탄력케어 - 레티날은 결케어, 안티에이징케어, 모공케어, 블랙헤드 및
																	화이트헤드 케어, 주름 케어 등 만능 성분이에요 콜라겐 까지 만나 모공벽을 튼튼하게 좁혀주는 느낌이
																	들어요 주름케어 - 팔자주름과 이마주름 등 깊은 계곡이 차오르는 느낌이에요! 모공케어 - 레티날 덤
																	밴드 마스크팩, 레티날 패드도 모공케어에 조아요 데일리로는 패드를 중요한 날엔 밴드 마스크와 겔
																	마스크팩 추천해요 나비존, 티존 다 결 관리 및 모공벽이 조여지는 느낌! 자극감 - 전 원래
																	더마토리 레티날 마스크팩과 패드, 타사 레티날 크림(함량 0.1%)을 써서 자극적이지 않았어요

																	마무리감 - 끈적이지 않고 피부가 쫀득해요 결이 정리되어 있기때문에 피부가 보들보들해져요

																	추천해드리는 분 - 결티에이징 관리 하고싶으신 분, 순한 레티날 입문을 원하는 분, 기능성 겔
																	마스크를 찾으시는 분 재구매의사 - 100% 쟁일 거ㅎ 보완할 점 - 이마가 넓은 분들을 위해
																	이마부분 더 늘려주시면 좋지않을까 생각합니다</dd>
															</dl>
															<a href="javascript:void(0);" class="btn_detail"
																onclick="javascript:display.brandShopDetail.amplitudeReview('A000000191410', '[NEW] 더마토리 레티날 콜라겐/글루타치온 겔 마스크 1매 2종 중 택 1', '7'); mypage.reviewerLounge.goReviewDetail('23021781', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'7'});"
																tabindex="-1">자세히 보기</a>
														</div>
													</li>




















													<li>
														<p class="thum"
															onclick="javascript:common.link.moveGoodsDetail('A000000188211', '', 'BrandA002986_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'8'}); ">
															<img
																src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018821113ko.jpg?l=ko"
																data-ref-goodsno="A000000188211"
																alt="더마토리 하이포알러제닉 시카거즈 패드 80매 (리뉴얼)"
																onerror="common.errorImg(this);"
																data-attr="브랜드관^더마토리_리뷰^더마토리 하이포알러제닉 시카거즈 패드 80매 (리뉴얼)"
																data-trk="/"
																onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188211&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_리뷰&quot;, &quot;9&quot;);">
														</p>
														<div class="reviewCont"
															onclick="javascript:display.brandShopDetail.amplitudeReview('A000000188211', '더마토리 하이포알러제닉 시카거즈 패드 80매 (리뉴얼)', '8'); mypage.reviewerLounge.goReviewDetail('23229108', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'8'});">
															<div class="topinfo">
																<div class="review_stat type2">
																	<span class="point pt4">4점</span>
																</div>
																<span class="like"><span class="icon">2</span></span>
															</div>
															<dl class="retxt">
																<dd>약간 미끌거리는 느낌이 있지만 진정에도 좋고 순해서 가끔 구매해용!!ㅎㅎ
																	패드팩하기에도 좋은 패드에용</dd>
															</dl>
															<a href="javascript:void(0);" class="btn_detail"
																onclick="javascript:display.brandShopDetail.amplitudeReview('A000000188211', '더마토리 하이포알러제닉 시카거즈 패드 80매 (리뉴얼)', '8'); mypage.reviewerLounge.goReviewDetail('23229108', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'8'});"
																tabindex="-1">자세히 보기</a>
														</div>
													</li>




















													<li>
														<p class="thum"
															onclick="javascript:common.link.moveGoodsDetail('A000000183254', '', 'BrandA002986_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'9'}); ">
															<img
																src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018325421ko.jpg?l=ko"
																data-ref-goodsno="A000000183254"
																alt="더마토리 프로 비타 에이 레티날 아이패치 60매 (눈가탄력) "
																onerror="common.errorImg(this);"
																data-attr="브랜드관^더마토리_리뷰^더마토리 프로 비타 에이 레티날 아이패치 60매 (눈가탄력) "
																data-trk="/"
																onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183254&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_리뷰&quot;, &quot;10&quot;);">
														</p>
														<div class="reviewCont"
															onclick="javascript:display.brandShopDetail.amplitudeReview('A000000183254', '더마토리 프로 비타 에이 레티날 아이패치 60매 (눈가탄력) ', '9'); mypage.reviewerLounge.goReviewDetail('23016678', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'9'});">
															<div class="topinfo">
																<div class="review_stat type2">
																	<span class="point pt5">5점</span>
																</div>
																<span class="like"><span class="icon">2</span></span>
															</div>
															<dl class="retxt">
																<dd>요새 날씨가 추워지면서 눈가도 좀 건조해지는 것 같아서 구매해봤어요!! 젤리 같은 겔
																	패치라서 금방 마르지 않고 좋아요 레티날성분이 들어 있다고해서 많은 아이패치들중에 이거로
																	골랐어요!! 저는 세수하고 기초케어 다 한뒤에 아이패치를 붙였는데 처음에는 스르륵 내려갔지만 몇번
																	올려주니까 절 밀착되어서 내려가지 않더라구요!! 팔자에도 붙이기좋구 눈가에붙이기도 좋네요 저는 가끔
																	특별하게 케어하고 싶을때는 눈가 팔자에 다 붙여주고있어요!! 60매가 들어 있어서 꽤 오래 사용할수
																	있을듯 싶네요!! 30분 붙여둔 뒤에 떼어내어도 계속 촉촉해서 좋네요!! 다음날 보니까 좀 탄력이
																	생긴것 같아요!! 간편하게 눈가를 케어할수 있어서 좋네요!! 패치를 꺼내는 스푼은 좀 불편하지만..
																	제 피부에 노무 잘맞어서 세일할때 종종 구매할것 같아요!!</dd>
															</dl>
															<a href="javascript:void(0);" class="btn_detail"
																onclick="javascript:display.brandShopDetail.amplitudeReview('A000000183254', '더마토리 프로 비타 에이 레티날 아이패치 60매 (눈가탄력) ', '9'); mypage.reviewerLounge.goReviewDetail('23016678', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'9'});"
																tabindex="-1">자세히 보기</a>
														</div>
													</li>


												</ul>
											</div>
											<div class="reviewList slick-slide" data-slick-index="3"
												aria-hidden="true" style="width: 0px;" tabindex="-1"
												role="option" aria-describedby="slick-slide13">
												<ul class="inner">


													<li>
														<p class="thum"
															onclick="javascript:common.link.moveGoodsDetail('A000000188215', '', 'BrandA002986_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'10'}); ">
															<img
																src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018821510ko.jpg?l=ko"
																data-ref-goodsno="A000000188215"
																alt="[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획 "
																onerror="common.errorImg(this);"
																data-attr="브랜드관^더마토리_리뷰^[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획 "
																data-trk="/"
																onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188215&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_리뷰&quot;, &quot;11&quot;);">
														</p>
														<div class="reviewCont"
															onclick="javascript:display.brandShopDetail.amplitudeReview('A000000188215', '[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획 ', '10'); mypage.reviewerLounge.goReviewDetail('22960001', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'10'});">
															<div class="topinfo">
																<div class="review_stat type2">
																	<span class="point pt4">4점</span>
																</div>
																<span class="like"><span class="icon">2</span></span>
															</div>
															<dl class="retxt">
																<dd>제 피부타입은 1. 양쪽 볼, 턱이 붉은 홍조 피부 2. 눈, 입가에 아토피가 있는
																	민감성 피부 3. 복합성 피부에서 건성 피부 4. 유수분 밸런스가 진짜 중요한 피부 조금만
																	따끔거림이 있거나 홍조가 심해질 경우 제품을 사용 중단하는 편입니다 * 유일하게 자극이 살짝
																	느껴지는 제품인데도 한 통 다 사용 후 나머지 한 통을 사용 중인 제품! 🙄 자극있어요 - 피지나
																	블랙헤드 관리하는 패드이다보니 확실히 자극은 있어요 잠깐 피부에 올려놓고 T존, 나비존 부분만 살살
																	닦아냈는데 피부에 올려놓을 때도 약간 화한 느낌이 들면서 조금 따끔거렸고 닦아낸 후에도 따끔거렸어요
																	그래서 망했다 싶었죠...심지어 홍조도 울긋불긋... - 하지만 제가 한 달이 지난 지금도 사용
																	중인 이유는 아침에 일어나면 그 울긋불긋 했던 홍조는 어디갔는지 붉은기가 진정 되어있어서 그 효과
																	때문에 사용 중단을 못 하고 있는 제품... 😏 수분충전은 좋은 편 - 패드 사용 후에 바로
																	세타필 로션으로 보습 충전해서 사용했어요:) 이즈앤트리 토너 사용 후 세타필 로션으로 마무리 했을
																	때와 다르게 다음날 아침에 일어나면 속당김도 없고 오히려 피부가 번들번들, 울긋불긋했던 홍조도
																	가라앉았더라고요 그리고 자극 있었지만 트러블도 안 났고 신기했어요 자극이 있는데 피부에는 안 좋은
																	영향은 없었는게 신기하더라고요 😕 피지&amp;블랙헤드 제거는 약한 편 - 메이크업 잔여물이나
																	나비존 노폐물 제거에는 효과가 있는 것 같지만 코의 블랙헤드 제거는 눈에 띄게 효과가 있는 제품은
																	아니에요 꾸준히 사용해야 효과를 볼 것 같은데 저는 일주일에 1-2번 정도만 사용해서 그런지 크게
																	바로 효과는 보지 못 했지만 화장 전 닦아내면 베이스가 코끼임이 줄어든걸로 봐서는 아주 미세하게는
																	블랙헤드를 제거하는데 도움을 주는 듯 싶어요 😀너무 얇지도 두껍지도 않은 적당한 패드 두께 -
																	제가 잠깐 피부에 얹어놨었는데 떨어지지 않았고 닦아낼때도 패드 자체로는 자극이 없는 듯 싶었어요
																	패드 안에 에센스 성분 때문에 따끔거림이 있었던 것 같아서 패드 자체로는 좋은 것 같았어요:) 🌼
																	민감성 피부 분들은 적극 추천 드리지 않아요 실제로 민감성 피부가 주의해야되는 성분이 포함되어
																	있어요어느 정도 피부장벽이 튼튼하고 피지 관리를 해야하는 지성 피부이신 분들이나 복합성 피부이신
																	분둘 중 T존 관리를 원하시는 분들께 조심스럽게 추천드리지만 한 번 성분 확인해보시고 사용하시는게
																	좋을 것 같아요:) 🙄 자극이 있는 패드다보니 데일리로 쓸만한 제품은 아니라서 재구매는 아침에
																	진정효과가 있다고 해도 재구매의사는 없습니다...</dd>
															</dl>
															<a href="javascript:void(0);" class="btn_detail"
																onclick="javascript:display.brandShopDetail.amplitudeReview('A000000188215', '[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획 ', '10'); mypage.reviewerLounge.goReviewDetail('22960001', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'10'});"
																tabindex="-1">자세히 보기</a>
														</div>
													</li>








													<li></li>

													<li></li>

												</ul>
											</div>
											<div class="reviewList slick-slide slick-cloned"
												data-slick-index="4" aria-hidden="true" style="width: 0px;"
												tabindex="-1">
												<ul class="inner">


													<li>
														<p class="thum"
															onclick="javascript:common.link.moveGoodsDetail('A000000188213', '', 'BrandA002986_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'1'}); ">
															<img
																src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018821314ko.jpg?l=ko"
																data-ref-goodsno="A000000188213"
																alt="[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획"
																onerror="common.errorImg(this);"
																data-attr="브랜드관^더마토리_리뷰^[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획"
																data-trk="/"
																onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188213&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_리뷰&quot;, &quot;12&quot;);">
														</p>
														<div class="reviewCont"
															onclick="javascript:display.brandShopDetail.amplitudeReview('A000000188213', '[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획', '1'); mypage.reviewerLounge.goReviewDetail('23242217', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'1'});">
															<div class="topinfo">
																<div class="review_stat type2">
																	<span class="point pt4">4점</span>
																</div>
																<span class="like"><span class="icon">17</span></span>
															</div>
															<dl class="retxt">
																<dd>저는 리뉴얼 전이 더 좋은 것 같아요... 젤리면으로 패드팩 하기는 좋은데 닦아내는게
																	힘들어요 ㅠㅜㅠ 한쪽면이 젤리라 손에서 계속 미끄러져서 진정팩 찾으시는 분들 사용하시면 좋을 것
																	같습니다!!</dd>
															</dl>
															<a href="javascript:void(0);" class="btn_detail"
																onclick="javascript:display.brandShopDetail.amplitudeReview('A000000188213', '[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획', '1'); mypage.reviewerLounge.goReviewDetail('23242217', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'1'});"
																tabindex="-1">자세히 보기</a>
														</div>
													</li>




















													<li>
														<p class="thum"
															onclick="javascript:common.link.moveGoodsDetail('A000000174156', '', 'BrandA002986_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'2'}); ">
															<img
																src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017415618ko.jpg?l=ko"
																data-ref-goodsno="A000000174156"
																alt="더마토리 프로 비타 에이 레티날덤 밴드 마스크 1매 (모공탄력) "
																onerror="common.errorImg(this);"
																data-attr="브랜드관^더마토리_리뷰^더마토리 프로 비타 에이 레티날덤 밴드 마스크 1매 (모공탄력) "
																data-trk="/"
																onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000174156&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_리뷰&quot;, &quot;13&quot;);">
														</p>
														<div class="reviewCont"
															onclick="javascript:display.brandShopDetail.amplitudeReview('A000000174156', '더마토리 프로 비타 에이 레티날덤 밴드 마스크 1매 (모공탄력) ', '2'); mypage.reviewerLounge.goReviewDetail('22777559', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'2'});">
															<div class="topinfo">
																<div class="review_stat type2">
																	<span class="point pt5">5점</span>
																</div>
																<span class="like"><span class="icon">8</span></span>
															</div>
															<dl class="retxt">
																<dd>피부 건조함이 많이 개선되었어요 요즘 같이 날씨가 쌀쌀하고 건조할때 사용하기
																	딱입니다. 보습이 잘되더라구요 시트 밀착력 짱 좋아요. 👍 👍</dd>
															</dl>
															<a href="javascript:void(0);" class="btn_detail"
																onclick="javascript:display.brandShopDetail.amplitudeReview('A000000174156', '더마토리 프로 비타 에이 레티날덤 밴드 마스크 1매 (모공탄력) ', '2'); mypage.reviewerLounge.goReviewDetail('22777559', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'2'});"
																tabindex="-1">자세히 보기</a>
														</div>
													</li>




















													<li>
														<p class="thum"
															onclick="javascript:common.link.moveGoodsDetail('A000000178597', '', 'BrandA002986_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'3'}); ">
															<img
																src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017859712ko.jpg?l=ko"
																data-ref-goodsno="A000000178597"
																alt="더마토리 프로 시카 징크덤 밴드 마스크 1매 (진정)"
																onerror="common.errorImg(this);"
																data-attr="브랜드관^더마토리_리뷰^더마토리 프로 시카 징크덤 밴드 마스크 1매 (진정)"
																data-trk="/"
																onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000178597&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_리뷰&quot;, &quot;14&quot;);">
														</p>
														<div class="reviewCont"
															onclick="javascript:display.brandShopDetail.amplitudeReview('A000000178597', '더마토리 프로 시카 징크덤 밴드 마스크 1매 (진정)', '3'); mypage.reviewerLounge.goReviewDetail('23258234', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'3'});">
															<div class="topinfo">
																<div class="review_stat type2">
																	<span class="point pt5">5점</span>
																</div>
																<span class="like"><span class="icon">6</span></span>
															</div>
															<dl class="retxt">
																<dd>좋다고 해서 구매했는데 그냥 저냥 무난하게 쓸 수 있는 팩인 것 같아요</dd>
															</dl>
															<a href="javascript:void(0);" class="btn_detail"
																onclick="javascript:display.brandShopDetail.amplitudeReview('A000000178597', '더마토리 프로 시카 징크덤 밴드 마스크 1매 (진정)', '3'); mypage.reviewerLounge.goReviewDetail('23258234', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'3'});"
																tabindex="-1">자세히 보기</a>
														</div>
													</li>


												</ul>
											</div>
										</div>
									</div>


























































									<button type="button" data-role="none"
										class="slick-next slick-arrow" aria-label="Next" role="button"
										style="display: block;">Next</button>
								</div>
							</div>
						</div>


					</div>
					<!--tabContainer  -->
				</div>
				<!-- brandBox line -->


				<div class="brandBox" id="sub_gbn_cate">
					<div class="head">
						<h3 class="tit" param="더마토리">
							더마토리 전체상품 (<span id="totCnt">16</span>개)
						</h3>
					</div>

					<ul class="cate_list_box">


						<li class="first on"><a href="javascript:;"
							data-ref-dispcatno="">전체</a></li>


						<li><a href="javascript:;" data-ref-dispcatno="10000010009">마스크팩</a></li>



						<li><a href="javascript:;" data-ref-dispcatno="10000020004">여성/위생용품</a></li>



						<li><a href="javascript:;" data-ref-dispcatno="10000010010">클렌징</a></li>












						<li class="disabled">&nbsp;</li>
						<!-- 2017-02-03 빈 태그일때 class=disabled 추가 -->

						<li class="disabled">&nbsp;</li>
						<!-- 2017-02-03 빈 태그일때 class=disabled 추가 -->








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
						<input type="hidden" id="lgcGoodsList" name="lgcGoodsList1"
							value=""> <input type="hidden" id="idx" name="idx"
							value="1"> <input type="hidden" id="totCntFmt"
							name="totCntFmt" value="16"> <input type="hidden"
							id="goodsTrackingCd" name="goodsTrackingCd" value="">

























						<ul class="prod-list goodsProd">


							<li data-goods-idx="1">
								<div class="prod">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188213&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=1"
										name="BrandA002986_PROD" class="thumb goodsList"
										data-ref-goodsno="A000000188213" data-ref-dispcatno="9000002"
										data-ref-itemno="001"
										data-attr="브랜드관^더마토리_전체상품_전체^[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188213&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;1&quot;);"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018821314ko.jpg?l=ko"
										alt="[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획"
										class="pic-thumb" onerror="common.errorImg(this);"><span
										class="flag-badge best">베스트</span></a>
									<div class="prod-info"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188213&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;1&quot;);">
										<div class="prod-brand">
											<strong class="exclusive"></strong>
										</div>
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188213&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=1"
											class="goodsList" data-ref-goodsno="A000000188213"
											data-ref-dispcatno="9000002" data-ref-itemno="001"
											data-attr="브랜드관^더마토리_전체상품_전체^[한정기획] 더마토리 하이포알러제닉 시카거즈 패드 80매+80매 리필기획"><span
											class="prod-name double-line">[한정기획] 더마토리 하이포알러제닉 시카거즈
												패드 80매+80매 리필기획</span></a>
										<div class="price-info">
											<div class="discount">
												<span class="origin">39,000원</span>
											</div>
											<div class="price">
												<strong class="total">24,570<span class="won">원</span>~
												</strong> <span class="oneday">오늘드림</span>
											</div>
											<div class="rating">
												<span class="point">4.7</span><span class="num">(999+)</span>
											</div>
											<div class="rating_type">
												<div class="rating_point star5">
													<span class="oyblind">별점 5점 만점에 4.7점</span>
												</div>
												<span>(999+)</span>
											</div>
										</div>
										<div class="flags">
											<span class="flag sale">세일</span><span class="flag coupon">쿠폰</span>
										</div>
									</div>
									<div class="prod-func">
										<button type="button" class="favorite"
											data-ref-goodsno="A000000188213">
											<span>찜하기</span>
										</button>
										<button type="button" class="cart"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000188213" data-item-no="001">
											<span>장바구니</span>
										</button>
									</div>

								</div>
							</li>





							<li data-goods-idx="2">
								<div class="prod">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188215&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=2"
										name="BrandA002986_PROD" class="thumb goodsList"
										data-ref-goodsno="A000000188215" data-ref-dispcatno="9000002"
										data-ref-itemno="001"
										data-attr="브랜드관^더마토리_전체상품_전체^[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188215&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;2&quot;);"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018821510ko.jpg?l=ko"
										alt="[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획" class="pic-thumb"
										onerror="common.errorImg(this);"><span
										class="flag-badge best">베스트</span></a>
									<div class="prod-info"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188215&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;2&quot;);">
										<div class="prod-brand">
											<strong class="exclusive"></strong>
										</div>
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188215&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=2"
											class="goodsList" data-ref-goodsno="A000000188215"
											data-ref-dispcatno="9000002" data-ref-itemno="001"
											data-attr="브랜드관^더마토리_전체상품_전체^[한정기획] 더마토리 프로 트러블 모공 패드 70매+70매 리필기획"><span
											class="prod-name double-line">[한정기획] 더마토리 프로 트러블 모공 패드
												70매+70매 리필기획</span></a>
										<div class="price-info">
											<div class="discount">
												<span class="origin">39,000원</span>
											</div>
											<div class="price">
												<strong class="total">24,570<span class="won">원</span>~
												</strong> <span class="oneday">오늘드림</span>
											</div>
											<div class="rating">
												<span class="point">4.7</span><span class="num">(999+)</span>
											</div>
											<div class="rating_type">
												<div class="rating_point star5">
													<span class="oyblind">별점 5점 만점에 4.7점</span>
												</div>
												<span>(999+)</span>
											</div>
										</div>
										<div class="flags">
											<span class="flag sale">세일</span><span class="flag coupon">쿠폰</span>
										</div>
									</div>
									<div class="prod-func">
										<button type="button" class="favorite"
											data-ref-goodsno="A000000188215">
											<span>찜하기</span>
										</button>
										<button type="button" class="cart"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000188215" data-item-no="001">
											<span>장바구니</span>
										</button>
									</div>

								</div>
							</li>





							<li data-goods-idx="3">
								<div class="prod">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189710&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=3"
										name="BrandA002986_PROD" class="thumb goodsList"
										data-ref-goodsno="A000000189710" data-ref-dispcatno="9000002"
										data-ref-itemno="001"
										data-attr="브랜드관^더마토리_전체상품_전체^[단독기획] 더마토리 프로 비타 에이 레티날덤 밴드 마스크 4매 +1매 증정기획 (모공탄력)"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189710&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;3&quot;);"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018971004ko.jpg?l=ko"
										alt="[단독기획] 더마토리 프로 비타 에이 레티날덤 밴드 마스크 4매 +1매 증정기획 (모공탄력)"
										class="pic-thumb" onerror="common.errorImg(this);"><span
										class="flag-badge best">베스트</span></a>
									<div class="prod-info"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189710&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;3&quot;);">
										<div class="prod-brand">
											<strong class="exclusive"></strong>
										</div>
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189710&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=3"
											class="goodsList" data-ref-goodsno="A000000189710"
											data-ref-dispcatno="9000002" data-ref-itemno="001"
											data-attr="브랜드관^더마토리_전체상품_전체^[단독기획] 더마토리 프로 비타 에이 레티날덤 밴드 마스크 4매 +1매 증정기획 (모공탄력)"><span
											class="prod-name double-line">[단독기획] 더마토리 프로 비타 에이
												레티날덤 밴드 마스크 4매 +1매 증정기획 (모공탄력)</span></a>
										<div class="price-info">
											<div class="discount">
												<span class="origin">16,000원</span>
											</div>
											<div class="price">
												<strong class="total">9,600<span class="won">원</span></strong>
												<span class="oneday">오늘드림</span>
											</div>
											<div class="rating">
												<span class="point">4.8</span><span class="num">(999+)</span>
											</div>
											<div class="rating_type">
												<div class="rating_point star5">
													<span class="oyblind">별점 5점 만점에 4.8점</span>
												</div>
												<span>(999+)</span>
											</div>
										</div>
										<div class="flags">
											<span class="flag coupon">쿠폰</span>
										</div>
									</div>
									<div class="prod-func">
										<button type="button" class="favorite"
											data-ref-goodsno="A000000189710">
											<span>찜하기</span>
										</button>
										<button type="button" class="cart"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000189710" data-item-no="001">
											<span>장바구니</span>
										</button>
									</div>

								</div>
							</li>

							<li data-goods-idx="4">
								<div class="prod">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183254&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=4"
										name="BrandA002986_PROD" class="thumb goodsList"
										data-ref-goodsno="A000000183254" data-ref-dispcatno="9000002"
										data-ref-itemno="001"
										data-attr="브랜드관^더마토리_전체상품_전체^더마토리 프로 비타 에이 레티날 아이패치 60매 (눈가탄력)"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183254&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;4&quot;);"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018325421ko.jpg?l=ko"
										alt="더마토리 프로 비타 에이 레티날 아이패치 60매 (눈가탄력)" class="pic-thumb"
										onerror="common.errorImg(this);"><span
										class="flag-badge best">베스트</span></a>
									<div class="prod-info"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183254&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;4&quot;);">
										<div class="prod-brand">
											<strong class="exclusive"></strong>
										</div>
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183254&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=4"
											class="goodsList" data-ref-goodsno="A000000183254"
											data-ref-dispcatno="9000002" data-ref-itemno="001"
											data-attr="브랜드관^더마토리_전체상품_전체^더마토리 프로 비타 에이 레티날 아이패치 60매 (눈가탄력)"><span
											class="prod-name double-line">더마토리 프로 비타 에이 레티날 아이패치
												60매 (눈가탄력)</span></a>
										<div class="price-info">
											<div class="discount">
												<span class="origin">22,000원</span>
											</div>
											<div class="price">
												<strong class="total">14,630<span class="won">원</span></strong>
												<span class="oneday">오늘드림</span>
											</div>
											<div class="rating">
												<span class="point">4.5</span><span class="num">(999+)</span>
											</div>
											<div class="rating_type">
												<div class="rating_point star5">
													<span class="oyblind">별점 5점 만점에 4.5점</span>
												</div>
												<span>(999+)</span>
											</div>
										</div>
										<div class="flags">
											<span class="flag sale">세일</span><span class="flag coupon">쿠폰</span>
										</div>
									</div>
									<div class="prod-func">
										<button type="button" class="favorite"
											data-ref-goodsno="A000000183254">
											<span>찜하기</span>
										</button>
										<button type="button" class="cart"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000183254" data-item-no="001">
											<span>장바구니</span>
										</button>
									</div>

								</div>
							</li>


						</ul>
						<ul class="prod-list goodsProd">


							<li data-goods-idx="5">
								<div class="prod">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175187&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=5"
										name="BrandA002986_PROD" class="thumb goodsList"
										data-ref-goodsno="A000000175187" data-ref-dispcatno="9000002"
										data-ref-itemno="001"
										data-attr="브랜드관^더마토리_전체상품_전체^[단독기획] 더마토리 하이포알러제닉 모이스처라이징 마일드 페미닌 워시 200ml+100ml 증정 기획"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000175187&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;5&quot;);"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017518708ko.jpg?l=ko"
										alt="[단독기획] 더마토리 하이포알러제닉 모이스처라이징 마일드 페미닌 워시 200ml+100ml 증정 기획"
										class="pic-thumb" onerror="common.errorImg(this);"><span
										class="flag-badge best">베스트</span></a>
									<div class="prod-info"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000175187&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;5&quot;);">
										<div class="prod-brand">
											<strong class="exclusive"></strong>
										</div>
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175187&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=5"
											class="goodsList" data-ref-goodsno="A000000175187"
											data-ref-dispcatno="9000002" data-ref-itemno="001"
											data-attr="브랜드관^더마토리_전체상품_전체^[단독기획] 더마토리 하이포알러제닉 모이스처라이징 마일드 페미닌 워시 200ml+100ml 증정 기획"><span
											class="prod-name double-line">[단독기획] 더마토리 하이포알러제닉
												모이스처라이징 마일드 페미닌 워시 200ml+100ml 증정 기획</span></a>
										<div class="price-info">
											<div class="discount">
												<span class="origin">18,000원</span>
											</div>
											<div class="price">
												<strong class="total">13,680<span class="won">원</span></strong>
												<span class="oneday">오늘드림</span>
											</div>
											<div class="rating">
												<span class="point">4.8</span><span class="num">(999+)</span>
											</div>
											<div class="rating_type">
												<div class="rating_point star5">
													<span class="oyblind">별점 5점 만점에 4.8점</span>
												</div>
												<span>(999+)</span>
											</div>
										</div>
										<div class="flags">
											<span class="flag sale">세일</span><span class="flag coupon">쿠폰</span>
										</div>
									</div>
									<div class="prod-func">
										<button type="button" class="favorite"
											data-ref-goodsno="A000000175187">
											<span>찜하기</span>
										</button>
										<button type="button" class="cart"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000175187" data-item-no="001">
											<span>장바구니</span>
										</button>
									</div>

								</div>
							</li>
							<li data-goods-idx="6">
								<div class="prod">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188371&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=6"
										name="BrandA002986_PROD" class="thumb goodsList"
										data-ref-goodsno="A000000188371" data-ref-dispcatno="9000002"
										data-ref-itemno="001"
										data-attr="브랜드관^더마토리_전체상품_전체^[NEW] 더마토리 레티날 탄력 앰플 패드 80매"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188371&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;6&quot;);"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018837118ko.jpg?l=ko"
										alt="[NEW] 더마토리 레티날 탄력 앰플 패드 80매" class="pic-thumb"
										onerror="common.errorImg(this);"></a>
									<div class="prod-info"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188371&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;6&quot;);">
										<div class="prod-brand">
											<strong class="exclusive"></strong>
										</div>
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188371&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=6"
											class="goodsList" data-ref-goodsno="A000000188371"
											data-ref-dispcatno="9000002" data-ref-itemno="001"
											data-attr="브랜드관^더마토리_전체상품_전체^[NEW] 더마토리 레티날 탄력 앰플 패드 80매"><span
											class="prod-name double-line">[NEW] 더마토리 레티날 탄력 앰플 패드
												80매</span></a>
										<div class="price-info">
											<div class="discount">
												<span class="origin">26,000원</span>
											</div>
											<div class="price">
												<strong class="total">16,900<span class="won">원</span></strong>
												<span class="oneday">오늘드림</span>
											</div>
											<div class="rating">
												<span class="point">4.6</span><span class="num">(346)</span>
											</div>
											<div class="rating_type">
												<div class="rating_point star5">
													<span class="oyblind">별점 5점 만점에 4.6점</span>
												</div>
												<span>(346)</span>
											</div>
										</div>
										<div class="flags">
											<span class="flag coupon">쿠폰</span>
										</div>
									</div>
									<div class="prod-func">
										<button type="button" class="favorite"
											data-ref-goodsno="A000000188371">
											<span>찜하기</span>
										</button>
										<button type="button" class="cart"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000188371" data-item-no="001">
											<span>장바구니</span>
										</button>
									</div>

								</div>
							</li>

							<li data-goods-idx="7">
								<div class="prod">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000174156&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=7"
										name="BrandA002986_PROD" class="thumb goodsList"
										data-ref-goodsno="A000000174156" data-ref-dispcatno="9000002"
										data-ref-itemno="001"
										data-attr="브랜드관^더마토리_전체상품_전체^더마토리 프로 비타 에이 레티날덤 밴드 마스크 1매 (모공탄력)"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000174156&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;7&quot;);"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017415618ko.jpg?l=ko"
										alt="더마토리 프로 비타 에이 레티날덤 밴드 마스크 1매 (모공탄력)" class="pic-thumb"
										onerror="common.errorImg(this);"></a>
									<div class="prod-info"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000174156&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;7&quot;);">
										<div class="prod-brand">
											<strong class="exclusive"></strong>
										</div>
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000174156&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=7"
											class="goodsList" data-ref-goodsno="A000000174156"
											data-ref-dispcatno="9000002" data-ref-itemno="001"
											data-attr="브랜드관^더마토리_전체상품_전체^더마토리 프로 비타 에이 레티날덤 밴드 마스크 1매 (모공탄력)"><span
											class="prod-name double-line">더마토리 프로 비타 에이 레티날덤 밴드
												마스크 1매 (모공탄력)</span></a>
										<div class="price-info">
											<div class="discount">
												<span class="origin">4,000원</span>
											</div>
											<div class="price">
												<strong class="total">2,000<span class="won">원</span></strong>
												<span class="oneday">오늘드림</span>
											</div>
											<div class="rating">
												<span class="point">4.8</span><span class="num">(999+)</span>
											</div>
											<div class="rating_type">
												<div class="rating_point star5">
													<span class="oyblind">별점 5점 만점에 4.8점</span>
												</div>
												<span>(999+)</span>
											</div>
										</div>
										<div class="flags">
											<span class="flag sale">세일</span>
										</div>
									</div>
									<div class="prod-func">
										<button type="button" class="favorite"
											data-ref-goodsno="A000000174156">
											<span>찜하기</span>
										</button>
										<button type="button" class="cart"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000174156" data-item-no="001">
											<span>장바구니</span>
										</button>
									</div>

								</div>
							</li>
							<li data-goods-idx="8">
								<div class="prod">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000145166&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=8"
										name="BrandA002986_PROD" class="thumb goodsList"
										data-ref-goodsno="A000000145166" data-ref-dispcatno="9000002"
										data-ref-itemno="004"
										data-attr="브랜드관^더마토리_전체상품_전체^더마토리 프로 앰플 마스크 1매 [수분/탄력/미백/진정] 4종 중 택1"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000145166&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;8&quot;);"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014516603ko.jpg?l=ko"
										alt="더마토리 프로 앰플 마스크 1매 [수분/탄력/미백/진정] 4종 중 택1"
										class="pic-thumb" onerror="common.errorImg(this);"></a>
									<div class="prod-info"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000145166&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;8&quot;);">
										<div class="prod-brand">
											<strong class="exclusive"></strong>
										</div>
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000145166&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=8"
											class="goodsList" data-ref-goodsno="A000000145166"
											data-ref-dispcatno="9000002" data-ref-itemno="004"
											data-attr="브랜드관^더마토리_전체상품_전체^더마토리 프로 앰플 마스크 1매 [수분/탄력/미백/진정] 4종 중 택1"><span
											class="prod-name double-line">더마토리 프로 앰플 마스크 1매
												[수분/탄력/미백/진정] 4종 중 택1</span></a>
										<div class="price-info">
											<div class="discount">
												<span class="origin">2,000원</span>
											</div>
											<div class="price">
												<strong class="total">1,000<span class="won">원</span>~
												</strong> <span class="oneday">오늘드림</span>
											</div>
											<div class="rating">
												<span class="point">4.7</span><span class="num">(999+)</span>
											</div>
											<div class="rating_type">
												<div class="rating_point star5">
													<span class="oyblind">별점 5점 만점에 4.7점</span>
												</div>
												<span>(999+)</span>
											</div>
										</div>
										<div class="flags">
											<span class="flag sale">세일</span>
										</div>
									</div>
									<div class="prod-func">
										<button type="button" class="favorite"
											data-ref-goodsno="A000000145166">
											<span>찜하기</span>
										</button>
										<button type="button" class="cart"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000145166" data-item-no="001">
											<span>장바구니</span>
										</button>
									</div>

								</div>
							</li>
						</ul>

						<ul class="prod-list goodsProd">


							<li data-goods-idx="9">
								<div class="prod">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183252&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=9"
										name="BrandA002986_PROD" class="thumb goodsList"
										data-ref-goodsno="A000000183252" data-ref-dispcatno="9000002"
										data-ref-itemno="001"
										data-attr="브랜드관^더마토리_전체상품_전체^[단독기획] 더마토리 하이포알러제닉 프레쉬 페미닌 버블폼 150ml+100ml 증정 기획"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183252&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;9&quot;);"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018325213ko.jpg?l=ko"
										alt="[단독기획] 더마토리 하이포알러제닉 프레쉬 페미닌 버블폼 150ml+100ml 증정 기획"
										class="pic-thumb" onerror="common.errorImg(this);"></a>
									<div class="prod-info"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183252&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;9&quot;);">
										<div class="prod-brand">
											<strong class="exclusive"></strong>
										</div>
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183252&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=9"
											class="goodsList" data-ref-goodsno="A000000183252"
											data-ref-dispcatno="9000002" data-ref-itemno="001"
											data-attr="브랜드관^더마토리_전체상품_전체^[단독기획] 더마토리 하이포알러제닉 프레쉬 페미닌 버블폼 150ml+100ml 증정 기획"><span
											class="prod-name double-line">[단독기획] 더마토리 하이포알러제닉 프레쉬
												페미닌 버블폼 150ml+100ml 증정 기획</span></a>
										<div class="price-info">
											<div class="discount">
												<span class="origin">18,000원</span>
											</div>
											<div class="price">
												<strong class="total">12,500<span class="won">원</span></strong>
												<span class="oneday">오늘드림</span>
											</div>
											<div class="rating">
												<span class="point">4.8</span><span class="num">(509)</span>
											</div>
											<div class="rating_type">
												<div class="rating_point star5">
													<span class="oyblind">별점 5점 만점에 4.8점</span>
												</div>
												<span>(509)</span>
											</div>
										</div>
										<div class="flags">
											<span class="flag coupon">쿠폰</span>
										</div>
									</div>
									<div class="prod-func">
										<button type="button" class="favorite"
											data-ref-goodsno="A000000183252">
											<span>찜하기</span>
										</button>
										<button type="button" class="cart"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000183252" data-item-no="001">
											<span>장바구니</span>
										</button>
									</div>

								</div>
							</li>

							<li data-goods-idx="10">
								<div class="prod">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000191410&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=10"
										name="BrandA002986_PROD" class="thumb goodsList"
										data-ref-goodsno="A000000191410" data-ref-dispcatno="9000002"
										data-ref-itemno="001"
										data-attr="브랜드관^더마토리_전체상품_전체^[NEW] 더마토리 레티날 콜라겐/글루타치온 겔 마스크 1매 2종 중 택 1"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000191410&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;10&quot;);"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019141008ko.jpg?l=ko"
										alt="[NEW] 더마토리 레티날 콜라겐/글루타치온 겔 마스크 1매 2종 중 택 1"
										class="pic-thumb" onerror="common.errorImg(this);"></a>
									<div class="prod-info"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000191410&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;10&quot;);">
										<div class="prod-brand">
											<strong class="exclusive"></strong>
										</div>
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000191410&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=10"
											class="goodsList" data-ref-goodsno="A000000191410"
											data-ref-dispcatno="9000002" data-ref-itemno="001"
											data-attr="브랜드관^더마토리_전체상품_전체^[NEW] 더마토리 레티날 콜라겐/글루타치온 겔 마스크 1매 2종 중 택 1"><span
											class="prod-name double-line">[NEW] 더마토리 레티날 콜라겐/글루타치온
												겔 마스크 1매 2종 중 택 1</span></a>
										<div class="price-info">
											<div class="discount">
												<span class="origin">5,500원</span>
											</div>
											<div class="price">
												<strong class="total">3,800<span class="won">원</span>~
												</strong> <span class="oneday">오늘드림</span>
											</div>
											<div class="rating">
												<span class="point">4.8</span><span class="num">(86)</span>
											</div>
											<div class="rating_type">
												<div class="rating_point star5">
													<span class="oyblind">별점 5점 만점에 4.8점</span>
												</div>
												<span>(86)</span>
											</div>
										</div>
										<div class="flags">
											<span class="flag sale">세일</span>
										</div>
									</div>
									<div class="prod-func">
										<button type="button" class="favorite"
											data-ref-goodsno="A000000191410">
											<span>찜하기</span>
										</button>
										<button type="button" class="cart"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000191410" data-item-no="001">
											<span>장바구니</span>
										</button>
									</div>

								</div>
							</li>
						<li data-goods-idx="11">
								<div class="prod">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188214&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=11"
										name="BrandA002986_PROD" class="thumb goodsList"
										data-ref-goodsno="A000000188214" data-ref-dispcatno="9000002"
										data-ref-itemno="001"
										data-attr="브랜드관^더마토리_전체상품_전체^더마토리 프로 트러블 모공 클리어 패드 70매 (리뉴얼)"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188214&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;11&quot;);"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018821412ko.jpg?l=ko"
										alt="더마토리 프로 트러블 모공 클리어 패드 70매 (리뉴얼)" class="pic-thumb"
										onerror="common.errorImg(this);"></a>
									<div class="prod-info"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188214&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;11&quot;);">
										<div class="prod-brand">
											<strong class="exclusive"></strong>
										</div>
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188214&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=11"
											class="goodsList" data-ref-goodsno="A000000188214"
											data-ref-dispcatno="9000002" data-ref-itemno="001"
											data-attr="브랜드관^더마토리_전체상품_전체^더마토리 프로 트러블 모공 클리어 패드 70매 (리뉴얼)"><span
											class="prod-name double-line">더마토리 프로 트러블 모공 클리어 패드
												70매 (리뉴얼)</span></a>
										<div class="price-info">
											<div class="price">
												<strong class="total">26,000<span class="won">원</span></strong>
												<span class="oneday">오늘드림</span>
											</div>
											<div class="rating">
												<span class="point">4.7</span><span class="num">(999+)</span>
											</div>
											<div class="rating_type">
												<div class="rating_point star5">
													<span class="oyblind">별점 5점 만점에 4.7점</span>
												</div>
												<span>(999+)</span>
											</div>
										</div>
										<div class="flags blank"></div>
									</div>
									<div class="prod-func">
										<button type="button" class="favorite"
											data-ref-goodsno="A000000188214">
											<span>찜하기</span>
										</button>
										<button type="button" class="cart"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000188214" data-item-no="001">
											<span>장바구니</span>
										</button>
									</div>

								</div>
							</li>

							<li data-goods-idx="12">
								<div class="prod">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188211&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=12"
										name="BrandA002986_PROD" class="thumb goodsList"
										data-ref-goodsno="A000000188211" data-ref-dispcatno="9000002"
										data-ref-itemno="001"
										data-attr="브랜드관^더마토리_전체상품_전체^더마토리 하이포알러제닉 시카거즈 패드 80매 (리뉴얼)"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188211&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;12&quot;);"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018821113ko.jpg?l=ko"
										alt="더마토리 하이포알러제닉 시카거즈 패드 80매 (리뉴얼)" class="pic-thumb"
										onerror="common.errorImg(this);"></a>
									<div class="prod-info"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000188211&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;12&quot;);">
										<div class="prod-brand">
											<strong class="exclusive"></strong>
										</div>
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000188211&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=12"
											class="goodsList" data-ref-goodsno="A000000188211"
											data-ref-dispcatno="9000002" data-ref-itemno="001"
											data-attr="브랜드관^더마토리_전체상품_전체^더마토리 하이포알러제닉 시카거즈 패드 80매 (리뉴얼)"><span
											class="prod-name double-line">더마토리 하이포알러제닉 시카거즈 패드 80매
												(리뉴얼)</span></a>
										<div class="price-info">
											<div class="price">
												<strong class="total">26,000<span class="won">원</span></strong>
												<span class="oneday">오늘드림</span>
											</div>
											<div class="rating">
												<span class="point">4.7</span><span class="num">(999+)</span>
											</div>
											<div class="rating_type">
												<div class="rating_point star5">
													<span class="oyblind">별점 5점 만점에 4.7점</span>
												</div>
												<span>(999+)</span>
											</div>
										</div>
										<div class="flags blank"></div>
									</div>
									<div class="prod-func">
										<button type="button" class="favorite"
											data-ref-goodsno="A000000188211">
											<span>찜하기</span>
										</button>
										<button type="button" class="cart"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000188211" data-item-no="001">
											<span>장바구니</span>
										</button>
									</div>

								</div>
							</li>


						</ul>



						<ul class="prod-list goodsProd">


							<li data-goods-idx="13">
								<div class="prod">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000178598&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=13"
										name="BrandA002986_PROD" class="thumb goodsList"
										data-ref-goodsno="A000000178598" data-ref-dispcatno="9000002"
										data-ref-itemno="001"
										data-attr="브랜드관^더마토리_전체상품_전체^더마토리 프로 아쿠아 히알덤 밴드 마스크 1매 (수분)"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000178598&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;13&quot;);"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017859813ko.jpg?l=ko"
										alt="더마토리 프로 아쿠아 히알덤 밴드 마스크 1매 (수분)" class="pic-thumb"
										onerror="common.errorImg(this);"></a>
									<div class="prod-info"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000178598&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;13&quot;);">
										<div class="prod-brand">
											<strong class="exclusive"></strong>
										</div>
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000178598&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=13"
											class="goodsList" data-ref-goodsno="A000000178598"
											data-ref-dispcatno="9000002" data-ref-itemno="001"
											data-attr="브랜드관^더마토리_전체상품_전체^더마토리 프로 아쿠아 히알덤 밴드 마스크 1매 (수분)"><span
											class="prod-name double-line">더마토리 프로 아쿠아 히알덤 밴드 마스크
												1매 (수분)</span></a>
										<div class="price-info">
											<div class="discount">
												<span class="origin">4,000원</span>
											</div>
											<div class="price">
												<strong class="total">2,000<span class="won">원</span></strong>
												<span class="oneday">오늘드림</span>
											</div>
											<div class="rating">
												<span class="point">4.8</span><span class="num">(999+)</span>
											</div>
											<div class="rating_type">
												<div class="rating_point star5">
													<span class="oyblind">별점 5점 만점에 4.8점</span>
												</div>
												<span>(999+)</span>
											</div>
										</div>
										<div class="flags">
											<span class="flag sale">세일</span>
										</div>
									</div>
									<div class="prod-func">
										<button type="button" class="favorite"
											data-ref-goodsno="A000000178598">
											<span>찜하기</span>
										</button>
										<button type="button" class="cart"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000178598" data-item-no="001">
											<span>장바구니</span>
										</button>
									</div>

								</div>
							</li>

							<li data-goods-idx="14">
								<div class="prod">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000178597&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=14"
										name="BrandA002986_PROD" class="thumb goodsList"
										data-ref-goodsno="A000000178597" data-ref-dispcatno="9000002"
										data-ref-itemno="001"
										data-attr="브랜드관^더마토리_전체상품_전체^더마토리 프로 시카 징크덤 밴드 마스크 1매 (진정)"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000178597&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;14&quot;);"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017859712ko.jpg?l=ko"
										alt="더마토리 프로 시카 징크덤 밴드 마스크 1매 (진정)" class="pic-thumb"
										onerror="common.errorImg(this);"></a>
									<div class="prod-info"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000178597&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;14&quot;);">
										<div class="prod-brand">
											<strong class="exclusive"></strong>
										</div>
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000178597&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=14"
											class="goodsList" data-ref-goodsno="A000000178597"
											data-ref-dispcatno="9000002" data-ref-itemno="001"
											data-attr="브랜드관^더마토리_전체상품_전체^더마토리 프로 시카 징크덤 밴드 마스크 1매 (진정)"><span
											class="prod-name double-line">더마토리 프로 시카 징크덤 밴드 마스크 1매
												(진정)</span></a>
										<div class="price-info">
											<div class="price">
												<strong class="total">4,000<span class="won">원</span></strong>
												<span class="oneday">오늘드림</span>
											</div>
											<div class="rating">
												<span class="point">4.8</span><span class="num">(999+)</span>
											</div>
											<div class="rating_type">
												<div class="rating_point star5">
													<span class="oyblind">별점 5점 만점에 4.8점</span>
												</div>
												<span>(999+)</span>
											</div>
										</div>
										<div class="flags blank"></div>
									</div>
									<div class="prod-func">
										<button type="button" class="favorite"
											data-ref-goodsno="A000000178597">
											<span>찜하기</span>
										</button>
										<button type="button" class="cart"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000178597" data-item-no="001">
											<span>장바구니</span>
										</button>
									</div>

								</div>
							</li>


							<li data-goods-idx="15">
								<div class="prod">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000170053&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=15"
										name="BrandA002986_PROD" class="thumb goodsList"
										data-ref-goodsno="A000000170053" data-ref-dispcatno="9000002"
										data-ref-itemno="001"
										data-attr="브랜드관^더마토리_전체상품_전체^더마토리 프로 트러블 모공 클렌징 워터 패드 기획 (70매+30매 증정)"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000170053&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;15&quot;);"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017005313ko.jpg?l=ko"
										alt="더마토리 프로 트러블 모공 클렌징 워터 패드 기획 (70매+30매 증정)"
										class="pic-thumb" onerror="common.errorImg(this);"><span
										class="status_flag soldout">일시품절</span></a>
									<div class="prod-info"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000170053&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;15&quot;);">
										<div class="prod-brand">
											<strong class="exclusive"></strong>
										</div>
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000170053&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=15"
											class="goodsList" data-ref-goodsno="A000000170053"
											data-ref-dispcatno="9000002" data-ref-itemno="001"
											data-attr="브랜드관^더마토리_전체상품_전체^더마토리 프로 트러블 모공 클렌징 워터 패드 기획 (70매+30매 증정)"><span
											class="prod-name double-line">더마토리 프로 트러블 모공 클렌징 워터 패드
												기획 (70매+30매 증정)</span></a>
										<div class="price-info">
											<div class="discount">
												<span class="origin">22,000원</span>
											</div>
											<div class="price">
												<strong class="total">17,600<span class="won">원</span></strong>
												<span class="oneday">오늘드림</span>
											</div>
											<div class="rating">
												<span class="point">4.6</span><span class="num">(148)</span>
											</div>
											<div class="rating_type">
												<div class="rating_point star5">
													<span class="oyblind">별점 5점 만점에 4.6점</span>
												</div>
												<span>(148)</span>
											</div>
										</div>
										<div class="flags">
											<span class="flag sale">세일</span>
										</div>
									</div>
									<div class="prod-func">
										<button type="button" class="favorite"
											data-ref-goodsno="A000000170053">
											<span>찜하기</span>
										</button>
										<button type="button" class="cart"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000170053" data-item-no="001">
											<span>장바구니</span>
										</button>
									</div>

								</div>
							</li>





							<li data-goods-idx="16">
								<div class="prod">
									<a
										href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000179336&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=16"
										name="BrandA002986_PROD" class="thumb goodsList"
										data-ref-goodsno="A000000179336" data-ref-dispcatno="9000002"
										data-ref-itemno="001"
										data-attr="브랜드관^더마토리_전체상품_전체^[단독기획] 더마토리 프로 시카 징크덤 밴드마스크 5매 기획 (진정)"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000179336&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;16&quot;);"><img
										src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017933602ko.jpg?l=ko"
										alt="[단독기획] 더마토리 프로 시카 징크덤 밴드마스크 5매 기획 (진정)" class="pic-thumb"
										onerror="common.errorImg(this);"><span
										class="status_flag soldout">일시품절</span></a>
									<div class="prod-info"
										onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000179336&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_더마토리_전체상품_전체&quot;, &quot;16&quot;);">
										<div class="prod-brand">
											<strong class="exclusive"></strong>
										</div>
										<a
											href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000179336&amp;dispCatNo=9000002&amp;trackingCd=BrandA002986_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=16"
											class="goodsList" data-ref-goodsno="A000000179336"
											data-ref-dispcatno="9000002" data-ref-itemno="001"
											data-attr="브랜드관^더마토리_전체상품_전체^[단독기획] 더마토리 프로 시카 징크덤 밴드마스크 5매 기획 (진정)"><span
											class="prod-name double-line">[단독기획] 더마토리 프로 시카 징크덤
												밴드마스크 5매 기획 (진정)</span></a>
										<div class="price-info">
											<div class="discount">
												<span class="origin">20,000원</span>
											</div>
											<div class="price">
												<strong class="total">9,500<span class="won">원</span></strong>
												<span class="oneday">오늘드림</span>
											</div>
											<div class="rating">
												<span class="point">4.8</span><span class="num">(999+)</span>
											</div>
											<div class="rating_type">
												<div class="rating_point star5">
													<span class="oyblind">별점 5점 만점에 4.8점</span>
												</div>
												<span>(999+)</span>
											</div>
										</div>
										<div class="flags">
											<span class="flag sale">세일</span><span class="flag coupon">쿠폰</span>
										</div>
									</div>
									<div class="prod-func">
										<button type="button" class="favorite"
											data-ref-goodsno="A000000179336">
											<span>찜하기</span>
										</button>
										<button type="button" class="cart"
											onclick="common.gf_regCart(this); return false;"
											data-goods-no="A000000179336" data-item-no="001">
											<span>장바구니</span>
										</button>
									</div>

								</div>
							</li>


						</ul>


						<div class="pageing">


							<strong title="현재 페이지">1</strong>
					</div>



					</div>

				</div>
			</div>
		</div>


	</div>
  <meta charset="UTF-8">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script src="/Black_OY/js/head.js"></script>
	<link rel="stylesheet" href="/BlackOY/css/style.css">
	<link rel="stylesheet" href="jquery.mCustomScrollbar.css">
	<title>블랙올리브영 온라인몰</title>


	<div>
		<div id="Footer" class="m2105">
			<div class="oneConts">
				<div class="conts">
					<ul class="list-menu">
						<li><a class="brandstory"
							href="https://www.oliveyoung.co.kr/store/company/brandStory.do">회사소개</a></li>
						<li><a class="recruit"
							href="https://www.oliveyoung.co.kr/store/company/recruit.do">채용안내</a></li>
						<li><a class="prvsuser"
							href="https://www.oliveyoung.co.kr/store/prvsuser/getPrvsuser.do">가맹점
								개설문의</a></li>
						<li><a class="cjoyp"
							href="https://oypartner.cj.net/CJOYP/prvsuser/index/index.fo"
							target="_blank">상품입점 및 제휴문의</a></li>
						<!-- 					<li><a class="cyberAudit" href="javascript:common.link.openCyberAudit();">사이버 감사실</a></li> -->
						<li><a class="cyberAudit"
							href="javascript:common.cyber.oyLayerOpen('cyberAuditPop',this);">사이버
								감사실</a></li>
						<li><a class="faqList"
							href="javascript:common.faq.getFaqList('99');">고객센터</a></li>
					</ul>
					<div class="sel_family_group">
						<a href="#" class="sel_option" title="상세내용 보기">CJ그룹 계열사 바로가기</a>
						<div class="sel_option_list hide">
							<dl>
								<dt>CJ그룹</dt>
								<dd>
									<a href="http://www.cj.net/" target="_blank"
										title="CJ 주식회사 새창으로 열기">CJ주식회사</a>
								</dd>
							</dl>
							<dl>

								<dt>식품 &amp; 식품서비스</dt>
								<dd>
									<a href="https://www.cj.co.kr/kr/index" target="_blank"
										title="CJ제일제당 (식품) 새창으로 열기">CJ제일제당</a>
								</dd>
								<dd>
									<a href="https://www.cjfoodville.co.kr/main.asp"
										target="_blank" title="CJ푸드빌 새창으로 열기">CJ푸드빌</a>
								</dd>
								<dd>
									<a href="http://www.cjfreshway.com/index.jsp" target="_blank"
										title="CJ프레시웨이 새창으로 열기">CJ프레시웨이</a>
								</dd>

							</dl>
							<dl>
								<dt>생명공학</dt>
								<dd>
									<a href="https://www.cj.co.kr/kr/about/business/bio"
										target="_blank" title="CJ제일제당 (바이오) 새창으로 열기">CJ제일제당
										BIO사업부문</a>
								</dd>
								<dd>
									<a href="https://www.cj.co.kr/kr/about/business/cjfeedncare"
										target="_blank" title="CJ Feed&amp;Care 새창으로 열기">CJ
										Feed&amp;Care</a>
								</dd>


							</dl>
							<dl>
								<dt>물류 &amp; 신유통</dt>
								<dd>
									<a href="https://www.cjlogistics.com/ko/main" target="_blank"
										title="CJ대한통운 새창으로 열기">CJ대한통운</a>
								</dd>
								<dd>
									<a href="http://www.cjenc.co.kr/kr/Default.asp" target="_blank"
										title="CJ대한통운 (건설) 새창으로 열기">CJ대한통운 건설부문</a>
								</dd>
								<dd>
									<a
										href="https://www.oliveyoung.co.kr/store/company/brandStory.do"
										target="_blank" title="CJ올리브영 새창으로 열기">CJ올리브영</a>
								</dd>
								<dd>
									<a href="https://www.cjolivenetworks.co.kr:449/"
										target="_blank" title="CJ올리브네트웍스 (IT사업) 새창으로 열기">CJ올리브네트웍스</a>
								</dd>
								<dd>
									<a href="https://www.cjoshopping.com:9002/index.asp"
										target="_blank" title="CJ ENM (오쇼핑) 새창으로 열기">CJ ENM 커머스부문</a>
								</dd>

							</dl>
							<dl>
								<dt>엔터테인먼트 &amp; 미디어</dt>
								<dd>
									<a href="https://www.cjem.net:433/main/?locale=ko"
										target="_blank" title="CJ ENM (E&amp;M)새창으로 열기">CJ ENM
										엔터테인먼트부문</a>
								</dd>
								<dd>
									<a href="http://corp.cgv.co.kr/" target="_blank"
										title="CJ CGV 새창으로 열기">CJ CGV</a>
								</dd>

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
								<a href="javascript:common.link.moveMainHome();"> <img
									src="https://static.oliveyoung.co.kr/pc-static-root/image/footer/foot_logo.png"
									alt="OLIVEYOUNG">


								</a>
							</p>
							<h2>씨제이올리브영 주식회사</h2>
							<p>대표이사 : 이선정 | 사업자등록번호 : 809-81-01574</p>
							<p>
								주소 : (04323) 서울특별시 용산구 한강대로 372, 24층 <br>(동자동, KDB타워)
							</p>
							<p>호스팅사업자 : CJ 올리브네트웍스</p>
							<p>통신판매업신고번호 : 2019-서울용산-1428</p>
							<p>
								<a href="mailto:oliveweb@cj.net" class="email_addr">이메일 :
									oliveweb@cj.net</a>
							</p>
							<p>
								<a class="link" href="javascript:common.link.openFtcBizInfo();"
									title="새창 열림">사업자 정보확인 &gt;</a>
							</p>
						</li>
						<li>
							<ul class="list-link">
								<li><a href="javascript:common.link.moveTermsPage();">이용약관</a><a
									href="javascript:common.link.moveLegalPage();">법적고지</a></li>
								<li><a href="javascript:common.link.movePrivacyPage();">개인정보처리방침</a></li>
								<li><a
									href="javascript:common.link.moveYouthProtectionPage();">청소년보호방침</a></li>
								<li><a href="javascript:common.link.moveMultimediaPage();">영상정보처리기기
										운영/관리 방침</a></li>
								<li><a href="javascript:common.link.moveDenyEmailPage();">이메일무단수집거부</a></li>
							</ul>
						</li>
						<li>
							<h2>하나은행 구매안전 서비스</h2>
							<p>
								올리브영은 현금 결제한 금액에 대해<br> 하나은행과 채무지급보증 계약을체결<br> 하여 안전한
								거래를 보장하고 있습니다<br> <a class="link"
									href="javascript:common.link.openEscrowPopup('https://static.oliveyoung.co.kr/pc-static-root/html/etc/escrowPopup.html','agree',665,925);"
									title="새창 열림">서비스 가입사실 확인&gt;</a>
							</p>
						</li>
					</ul>
					<div class="noti">올리브영 홈페이지에서 판매되는 상품 중에는 올리브영에 입점한 개별 판매자가
						판매하는 상품이 포함되어 있습니다. 개별 판매자의 판매 상품의 경우, 올리브영은 통신판매중개자로서 통신판매의 당사자가
						아니며 판매자가 등록한 상품정보 및 거래 정보 등에 대하여 책임을 부담하지 않습니다.</div>
				</div>
			</div>
			<div class="fourConts">
				<div class="conts">
					<ol>
						<li class="isms">정보보호 관리체계 ISMS 인증획득 <span class="bar">인증범위
								: 온라인 쇼핑몰 운영(CJ올리브영)</span> <span class="bar">유효기간 : 2020.12.02
								- 2023.12.01</span>
						</li>
						<li class="ncsi">2017~2022 국가고객만족도(NCSI) 헬스앤뷰티전문점 업계 최초 6년 연속
							1위​</li>
					</ol>
				</div>
			</div>
			<div class="threeConts">
				<div class="conts">
					<p class="copyright">Copyright ⓒ CJ OliveYoung. All Rights
						Reserved.</p>
					<div class="sns">
						<h2>OLIVE YOUNG SNS</h2>
						<a class="facebook" href="https://www.facebook.com/OLIVEYOUNG"
							title="페이지 이동" target="_blank"><img
							src="https://static.oliveyoung.co.kr/pc-static-root/image/footer/iconf_facebook.png"
							alt="페이스북"></a> <a class="insta"
							href="https://www.instagram.com/oliveyoung_official/"
							title="페이지 이동" target="_blank"><img
							src="https://static.oliveyoung.co.kr/pc-static-root/image/footer/iconf_instagram.png"
							alt="인스타그램"></a> <a class="youtube"
							href="https://www.youtube.com/user/cjoliveyoung/" title="페이지 이동"
							target="_blank"><img
							src="https://static.oliveyoung.co.kr/pc-static-root/image/footer/iconf_youtube.png"
							alt="유튜브"></a> <a class="kakao"
							href="javascript:common.link.openKakao();" title="페이지 이동"><img
							src="https://static.oliveyoung.co.kr/pc-static-root/image/footer/iconf_kakaotalk.png"
							alt="카카오톡"></a>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>