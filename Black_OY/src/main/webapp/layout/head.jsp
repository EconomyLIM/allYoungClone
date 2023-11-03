<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="/Black_OY/css/style.css">
<script src="/Black_OY/js/head.js"></script>
<title>블랙올리브영 온라인몰</title>
<style>
 #directTop {
            
            transition: opacity 0.5s ease;
        }
</style>
</head>
<body>
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
					<li class="store "><a onclick="" href="#" class="mymenu_layer"
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
				
				<div id="directTop" style="display: block;">
		<button><span></span>TOP</button>
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
</body>

</html>