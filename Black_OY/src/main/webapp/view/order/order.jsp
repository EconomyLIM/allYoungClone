<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/inc/include.jspf" %>
<%@ include file="/WEB-INF/inc/session_auth.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="/Black_OY/js/head.js"></script>
<link rel="stylesheet" href="/BlackOY/css/style.css">
<title>블랙올리브영 온라인몰</title>
</head>
<body>
<jsp:include page="/layout/head.jsp"></jsp:include>
<div>
<div id="Container">
	<!-- #Contents -->
	<div id="Contents">
		
		<!-- title_box -->
		<div class="title_box">
			<h1>주문/결제</h1>
			<ul class="step_list">
				<li><span class="step_num tx_num">1</span> 장바구니</li>
				<li class="on"><span class="hide">현재단계</span><span class="step_num tx_num">2</span> 주문/결제</li><!-- 현재단계 li에 클래스 on과 <span class="hide">현재단계</span> 넣어주세요 -->
				<li class="last"><span class="step_num tx_num">3 </span> 주문완료</li>
			</ul>
		</div>
		<!--// title_box -->
		
		<form name="pickupOrderForm" id="pickupOrderForm">
		</form>
		<form name="orderForm" id="orderForm">
			<input type="hidden" id="o2oGiftBoxAmtRm" name="o2oGiftBoxAmtRm" value="30000">
			<input type="hidden" id="o2oGiftBoxAmtDc" name="o2oGiftBoxAmtDc" value="2000">
			<input type="hidden" id="o2oGiftBoxAmtDf" name="o2oGiftBoxAmtDf" value="2000">
			<input type="hidden" id="o2oGiftBoxAmt" name="o2oGiftBoxAmt" value="0">
			<input type="hidden" id="quickYn" name="quickYn" value="N">
			<input type="hidden" id="pickupDirectYn" name="pickupDirectYn" value="N">
			<input type="hidden" id="quickInfoYn" name="quickInfoYn" value="N">
			<input type="hidden" id="ocbValidChk" name="ocbValidChk" value="N">
			
			<input type="hidden" id="o2oVisitTypeVal" name="o2oVisitTypeVal" value="3">
			<!-- 최근 직접 입력한 배송메시지 카운트 : 직접 입력한 배송메시지가 있으면 3개 까지 화면에 노출한다.-->
			<input type="hidden" id="mhCnt" name="mhCnt" value="0">

			<!-- 2020-08-06 o2oJJ 24H 주문 가능한지 여부, 주문서 진입시 오늘드림인지 여부 -->
			<input type="hidden" id="orgIs24HCheckable" name="orgIs24HCheckable" value="N">
			<input type="hidden" id="is24HCheckable" name="is24HCheckable" value="N">
			<input type="hidden" id="orgQuickYn" name="orgQuickYn" value="N">
			<input type="hidden" id="quick24hdisplay" name="quick24hdisplay" value="">
			<input type="hidden" id="default24HHardSet" name="default24HHardSet" value="">

			<!-- 주문자 정보 -->
			<h2 class="sub-title2 mgT20" style="display: none;">주문자정보</h2><!-- 2017-02-21 수정 : mgT20 클래스 추가 -->
			<table class="tbl_inp_form" style="display: none;">
				<caption></caption>
				<colgroup>
					<col style="width:170px">
					<col style="width:*">
				</colgroup>
				<tbody>
				<tr>
					<th scope="row">주문자명</th>
					<td><input type="text" id="ordManNm" name="ordManNm" value="신기범" class="inpH28" title="주문자명을 입력해주세요." this="주문자명은" style="width:200px"></td><!-- id와 label for를 맞춰주세요 (임시로 넣어둠) -->
				</tr>
				<tr>
					<th scope="row">휴대폰</th>
					<td>
						<select id="ordManCellSctNo" name="ordManCellSctNo" class="selH28" title="주문자 휴대폰 번호 앞자리를 선택해주세요." style="width:90px">
							<option value="">선택</option>
							
								<option value="010" selected="selected">010</option>
							
								<option value="011">011</option>
							
								<option value="016">016</option>
							
								<option value="017">017</option>
							
								<option value="018">018</option>
							
								<option value="019">019</option>
							
								<option value="02">02</option>
							
								<option value="031">031</option>
							
								<option value="032">032</option>
							
								<option value="033">033</option>
							
								<option value="041">041</option>
							
								<option value="042">042</option>
							
								<option value="043">043</option>
							
								<option value="044">044</option>
							
								<option value="051">051</option>
							
								<option value="052">052</option>
							
								<option value="053">053</option>
							
								<option value="054">054</option>
							
								<option value="055">055</option>
							
								<option value="061">061</option>
							
								<option value="062">062</option>
							
								<option value="063">063</option>
							
								<option value="064">064</option>
							
								<option value="070">070</option>
							
								<option value="080">080</option>
							
								<option value="0130">0130</option>
							
								<option value="0303">0303</option>
							
								<option value="0502">0502</option>
							
								<option value="0503">0503</option>
							
								<option value="0504">0504</option>
							
								<option value="0505">0505</option>
							
								<option value="0506">0506</option>
							
								<option value="0507">0507</option>
							
						</select>
						- <input type="text" id="ordManCellTxnoNo" name="ordManCellTxnoNo" value="7477" class="inpH28" title="주문자 휴대폰 번호 가운데 자리를 입력해주세요." this="주문자 휴대폰 번호 가운데 자리는" style="width:90px">
						- <input type="text" id="ordManCellEndNo" name="ordManCellEndNo" value="0938" class="inpH28" title="주문자 휴대폰 번호 마지막 4자리를 입력해주세요." this="주문자 휴대폰 번호 마지막 자리는" style="width:90px">
					</td>
				</tr>
				<tr>
					<th scope="row">이메일</th>
					<td>
						
						
						<input type="hidden" id="ordManEmailAddr" name="ordManEmailAddr" value="pilot0311@naver.com" title="주문자 이메일 주소를 입력해주세요.">
						<input type="text" id="ordManEmailAddrId" value="pilot0311" class="inpH28" title="주문자 이메일 주소를 입력해주세요." this="주문자 이메일 주소는" style="width:120px">
						@ <input type="text" id="ordManEmailAddrDmn" value="naver.com" class="inpH28" title="이메일도메인을 입력해주세요." this="이메일도메인은" style="width:120px" disabled="">
						<select id="ordManEmailAddrDmn_select" class="selH28" title="주문자 이메일 주소 도메인을 선택해주세요." style="width:120px">
							<option value="">직접 입력하기</option>
							
								<option value="hanmir.com">hanmir.com</option>
							
								<option value="naver.com" selected="selected">naver.com</option>
							
								<option value="hanmail.net">hanmail.net</option>
							
								<option value="nate.com">nate.com</option>
							
								<option value="yahoo.co.kr">yahoo.co.kr</option>
							
								<option value="gmail.com">gmail.com</option>
							
								<option value="hotmail.com">hotmail.com</option>
							
								<option value="empal.com">empal.com</option>
							
								<option value="paran.com">paran.com</option>
							
								<option value="lycos.co.kr">lycos.co.kr</option>
							
								<option value="freechal.com">freechal.com</option>
							
								<option value="hanafos.com">hanafos.com</option>
							
								<option value="korea.com">korea.com</option>
							
								<option value="dreamwiz.com">dreamwiz.com</option>
							
						</select>
					</td>
				</tr>
				</tbody>
			</table>
			<!--// 주문자 정보 -->

			<!-- 배송지 정보 -->
			<div class="title_wrap">
				<h2 class="sub-title2">배송지정보</h2>
				<p class="sub_area" id="pickupHide6"><input type="checkbox" id="setBaseDlvpYn" name="baseDlvpYn" value="Y" checked="checked"> <label for="setBaseDlvpYn">기본 배송지 설정</label></p>
			</div>
			<table class="tbl_inp_form important" id="dlvpInfo"><!-- 2017-01-18 클래스 추가 -->
				<caption></caption>
				<colgroup>
					<col style="width:170px">
					<col style="width:*">
				</colgroup>
				<tbody>

				<tr>
					<th scope="row">배송지선택</th>
					<td>
						<span class="chk_area mgzero"><input type="radio" checked="checked" id="btn_dlvp_exist" name="inpAddrSel" value="" targetid="exist" data-attr="배송지정보^1_배송지선택"><label for="btn_dlvp_exist">기존 배송지</label></span>
						<!-- 2020-08-04 o2oJJ 24H 화면 제어로 인한 주석 처리 -->
						
							<span class="chk_area"><input type="radio" id="btn_dlvp_new" name="inpAddrSel" value="" targetid="new" data-attr="배송지정보^1_배송지선택"><label for="btn_dlvp_new">신규 배송지</label></span>
						

						<div class="show" id="dlvpSelect_div"><!-- 기존 배송지 라디오 선택 시 show 클래스 붙여주세요 -->
							<!--[오늘드림 구매에서 일반배송으로 주문서 들어왔을때 선택한 배송지 셋팅을 위해서 사용 :jwkim]-->
							<input type="hidden" name="selectDlvSeq" value="">
							<select id="dlvpSelect" name="mbrDlvpSeq" class="selH28" title="배송지를 선택해주세요." style="width:200px" data-attr="배송지정보^1_배송지선택">
								
							<c:forEach items="${ dlist }" var="deli">
								<option value="${deli.delivery_id }">${deli.deli_name }</option>
							</c:forEach>
								
							</select>
						</div>
					</td>
				</tr>

				
				
				
				<!-- // 2020-08-04 o2oJJ 24H 추가 -->
				
				
				

				

				
				
					<!--// 2019-11-15 추가 (오늘드림배송 시)-->
					<tr type="exist" style="display: table-row;">
						<th scope="row">배송지명</th>
						<td id="dlvpNm_exist_span">스크립트 처리</td>
						<input type="hidden" id="dlvpNm_exist" name="dlvpNm" value="qwe" title="배송지명을 입력해주세요." style="width:200px" this="배송지명은">
					</tr>
				

				<!-- 2019-11-15 추가 (오늘드림배송 시) -->
				<!-- <tr class="o2o_dlv_area" style="display:none;">
							<th scope="row" id="pickupTop1">배송구분</th>
							<td class="imp_data o2o_dlv_area" id="pickupTop2">
								<span class="chk_area o2o_chkArea"><input type="radio" id="btn_dlvp_temp1" name="o2oDlvSp" value="1"  data-attr="배송지정보^1_배송유형"/><label for="btn_dlvp_temp1">빠름 배송</label></span>
								<span class="chk_area o2o_chkArea"><input type="radio" id="btn_dlvp_temp3" name="o2oDlvSp" value="4"  data-attr="배송지정보^1_배송유형"/><label for="btn_dlvp_temp3">3!4! 배송 (PM3~4)</label></span>
								<span class="chk_area o2o_chkArea"><input type="radio" id="btn_dlvp_temp2" name="o2oDlvSp" value="5"  data-attr="배송지정보^1_배송유형"/><label for="btn_dlvp_temp2">미드나잇 배송(PM10~12)</label></span>
								<!-- // 2020-08-04 o2oJJ 24H 추가 -->
				<!--<span class="chk_area o2o_chkArea" style="display: none;"><input type="radio" id="btn_dlvp_temp6" name="o2oDlvSp" value="6"  data-attr="배송지정보^1_배송유형"/><label for="btn_dlvp_temp6">24H</label></span>
								<span class="chk_area o2o_chkArea pickup-chk"><input type="radio" id="btn_dlvp_temp4" name="o2oDlvSp" value="2"  data-attr="배송지정보^1_배송유형"/><label for="btn_dlvp_temp4">픽업</label><button type="button" class="ico_info_view" onclick="fnLayerSet('aboutPickup', 'open');">픽업이란?</button></span>
							
								<p class="txt_gray o2o_dlv_message"></p>

							</td>
						</tr>-->

				<!-- [3659045] 오늘드림 주문서 페이지 UI 변경 건 -->
				<tr id="o2o_dlv_area" style="display:none;">
					<input type="hidden" id="dueDt" value="2023/11/09 11:10:29">
					<input type="hidden" id="o2oDeliveryScheduleDt" name="o2oDeliveryScheduleDt" value="">
					<th scope="row"><label for="inpAddrNm">배송방법</label></th>
					<td class="todayTime">
						<div style="display:none;">
							<input type="radio" id="btn_dlvp_temp1" name="o2oDlvSp" value="1">
							<input type="radio" id="btn_dlvp_temp3" name="o2oDlvSp" value="4">
							<input type="radio" id="btn_dlvp_temp2" name="o2oDlvSp" value="5">
							<input type="radio" id="btn_dlvp_temp4" name="o2oDlvSp" value="2">
							<input type="radio" id="btn_dlvp_temp6" name="o2oDlvSp" value="6">
						</div>
						<div class="toggleMenu">
							<ul>
								<li class="active"><a href="javascript:void(0);" title="오늘드림"><span>오늘드림</span></a></li>
								<li id="pickupToggle" data-attr="배송방법^픽업"><a href="javascript:void(0);" title="픽업"><span>픽업</span></a></li>
							</ul>
						</div>

						<table class="timeTable">
							<colgroup>
								<col width="">
								<col width="140px">
								<col width="140px">
							</colgroup>
							<thead>
							<tr>
								<th>배송 시간대</th>
								<th id="dlv_today"></th>
								<th id="dlv_nextday"></th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td id="dlv_time1">11:00 ~ 13:00</td>
								<td id="dlv_todayDlvSp1"></td>
								<td id="dlv_nextdayDlvSp1"></td>
							</tr>
							<tr>
								<td id="dlv_time2">15:00 ~ 16:00</td>
								<td id="dlv_todayDlvSp2"></td>
								<td id="dlv_nextdayDlvSp2"></td>
							</tr>
							<tr>
								<td id="dlv_time3">22:00 ~ 24:00</td>
								<td id="dlv_todayDlvSp3"></td>
								<td id="dlv_nextdayDlvSp3"></td>
							</tr>
							</tbody>
						</table>
						<p class="charge" id="dlv_dlexPayAmt1" style="display:none;"><span id="dlv_dlexPayAmt2"></span><a href="javascript:void(0);" onclick="fnLayerSet('todayDlvCostNoti', 'open');"></a></p>
						<ul class="notice">
정							<li>모든 배송은 비대면으로 진행됩니다.</li>
						</ul>
					</td>
				</tr>

				<!-- 픽업매장 -->
				<input type="hidden" id="pickupYn" value="N">
				<input type="hidden" id="pickupApiYn" value="N">
				<input type="hidden" id="pickupInitYn" value="N">

				
				<input type="hidden" id="pickupStrNo" name="pickupStrNo" value="">
				<tr id="pickupStore" style="display:none;">
					<th scope="row" style="border-top: 2px solid #d6d6d6;">픽업 매장</th>
					<td class="pickup-area" style="border-top: 2px solid #d6d6d6;">
						<div class="pickup-store">
							<div class="store-tit">
								<strong class="store-name" id="selectedStrNm1">동대문역사문화공원역점</strong>
								<span class="store-distance" id="selectedStrDist">0.1km</span>
								<a href="javascript:forder.orderForm.dlvpInfo.changePickupStore();" class="store-change">매장변경</a>
							</div>
							<div class="store-info" id="selectedStrInfo">
								<p class="store-info__addr" id="selectedStrAddr">세종특별자치시 세종특별자치시 대평로 71 펠리체타워1 1층 110,111호</p>
								<p class="store-info__time"><strong>영업시간</strong>
									평일 <span id="selectedStrMon">08:00~22:30</span> <span>|</span>
									토요일 <span id="selectedStrSat">10:00~20:00</span> <span>|</span>
									공휴일 <span id="selectedStrLhld">10:00~22:00</span></p>
								<p class="noti-covid19">코로나 19로 인해 매장별 영업시간이 다를 수 있습니다.</p>
							</div>
						</div>
						<div class="pickup-store-about">
							<ul class="pickup-store-about__list">
								<li>바코드는 영업일 기준 <span>최대 24시간 이내</span> 발송됩니다.</li>
								<li>바코드를 수신 받으신 이후 <span id="selectedStrNm2">‘동대문역사문화공원역점’</span>으로 방문해주세요.</li>
								<li>바코드 수신 후 3일 이내 매장에 방문하지 않으실 경우 주문은 자동 취소됩니다.</li>
							</ul>
						</div>
					</td>
				</tr>
				
				
				<!-- // 픽업매장 -->

				<tr id="pickupStoreList" style="display:none;">
					<th scope="row" style="border-top: 2px solid #d6d6d6;">배송방법</th>
					<td class="pickup-area" style="border-top: 2px solid #d6d6d6;">
						<div class="contTopArea">
							<div class="toggleMenu">
								<ul>
									<li id="todayToggle" data-attr="배송방법^오늘드림"><a href="javascript:void(0);" title="오늘드림"><span>오늘드림</span></a></li>
									<li class="active"><a href="javascript:void(0);" title="픽업"><span>픽업</span></a></li>
								</ul>
							</div>
							<div class="pickupTxt">픽업 서비스 안내<a href="javascript:void(0);" title="픽업 서비스 안내" onclick="fnLayerSet('aboutPickup', 'open');"></a></div>
						</div>
						<!-- 지도 컨텐츠 -->
						<div class="pickup-box">
							<!-- 왼쪽 -->
							<div class="pickup-area__left">
								<ul class="pickup-tab" id="pickupTabArea">
									<li class="pickup-tab__list active" data-attr="픽업_매장선택^최근 이용 매장"> <!-- 활성화 클래스 active -->
										<a href="javascript:;">최근 이용매장</a>
									</li>
									<li class="pickup-tab__list" data-attr="픽업_매장선택^관심 매장">
										<a href="javascript:;">관심매장</a>
									</li>
									<li class="pickup-tab__list" data-attr="픽업_매장선택^그 외 매장">
										<a href="javascript:;">그 외 매장</a>
									</li>
								</ul>
								<p class="pickup-noti" style="display:none;">최근 이용 매장이 없습니다. 아래 매장을 이용해보세요!</p>
								<div class="pickup-cnt">
									<div class="indif-store" style="display:none;">
										<p class="indif-store__top"><span id="pickupMbrNm"></span>님이<br>등록하신 관심매장이 없습니다.</p>
										<p class="indif-store__bottom">자주 가는 매장을 관심매장으로 등록하면 매장소식을<br>빠르게 받아 보실 수 있습니다.</p>
									</div>
									<!-- 매장 검색 박스 -->
									<div class="search-store__top" style="display:none;">
										<div class="search-box"> <!-- 검색 단어 입력시 포함한 단어가 있을 경우 on 클래스 추가 -->
											<input type="text" class="search-box__inp" name="searchWord" onkeyup="javascript:order.pickup.searchPickupStoreList(event);" value="" title="매장명/주소 입력 (ex. 명동 또는 퇴계로)" placeholder="매장명/주소 입력 (ex. 명동 또는 퇴계로)">
											<div class="search-box__auto">
											</div>
										</div>
										<p class="search-store__top--noti">가까운 매장에서 픽업을 이용해보세요!</p>
										<!-- 검색후 문구 -->
										<p class="search-store__top--result" style="display:none;"></p>
										<!-- // 검색후 문구 -->
									</div>
									<!-- // 매장 검색 박스 -->
									<div id="storeListArea">
									</div>
								</div>
							</div>
							<!-- // 왼쪽 -->
							<!-- 오른쪽 -->
							<div class="pickup-area__right api_mapArea" id="map">

							</div>
							<!-- // 오른쪽 -->
						</div>
					</td>
				</tr>
				<!-- //[3659045] 오늘드림 주문서 페이지 UI 변경 건 -->


				<tr id="pickupHide1" type="exist" style="display: table-row;">
					<th scope="row">받는분</th>
					<td class="imp_data"><!-- 2017-01-18 추가 : 필수입력사항 아이콘 추가 -->
						<input type="text" id="rmitNm_exist" name="rmitNm" value="${sessionScope.logOn.u_name}" orgvalue="" class="inpH28" title="받는분 이름을 입력해주세요." style="width:200px" this="받는분 이름은" data-attr="배송지정보^1_받는분">
						<span class="chk_area"><input type="checkbox" id="copyToDlvp_exist" targetid="exist"> <label for="copyToDlvp_exist">주문자정보와 동일</label></span><!-- 2017-01-18 수정 : 위치변경 -->
					</td>
				</tr>
				<tr class="sumtr1" id="pickupHide2" type="exist" style="display: table-row;">
					<th scope="row">연락처1</th>
					<td class="imp_data"><!-- 2017-01-18 추가 : 필수입력사항 아이콘 추가 -->
						<select id="rmitCellSctNo_exist" name="rmitCellSctNo" class="selH28" title="연락처1 앞자리를 선택해주세요." style="width:90px" orgvalue="" data-attr="배송지정보^1_연락처1">
							<option value="">선택</option>
							
								<option value="010" selected="selected">010</option>
							
								<option value="011">011</option>
							
								<option value="016">016</option>
							
								<option value="017">017</option>
							
								<option value="018">018</option>
							
								<option value="019">019</option>
							
								<option value="02">02</option>
							
								<option value="031">031</option>
							
								<option value="032">032</option>
							
								<option value="033">033</option>
							
								<option value="041">041</option>
							
								<option value="042">042</option>
							
								<option value="043">043</option>
							
								<option value="044">044</option>
							
								<option value="051">051</option>
							
								<option value="052">052</option>
							
								<option value="053">053</option>
							
								<option value="054">054</option>
							
								<option value="055">055</option>
							
								<option value="061">061</option>
							
								<option value="062">062</option>
							
								<option value="063">063</option>
							
								<option value="064">064</option>
							
								<option value="070">070</option>
							
								<option value="080">080</option>
							
								<option value="0130">0130</option>
							
								<option value="0303">0303</option>
							
								<option value="0502">0502</option>
							
								<option value="0503">0503</option>
							
								<option value="0504">0504</option>
							
								<option value="0505">0505</option>
							
								<option value="0506">0506</option>
							
								<option value="0507">0507</option>
							
						</select>
						<c:set var="dlist0" value="${dlist[0]}" />
						<c:set var="tel" value="${dlist0.deli_tel}" />
						<c:set var="telparts" value="${fn:split(tel, '-')}" />
						- <input type="text" id="rmitCellTxnoNo_exist" name="rmitCellTxnoNo" value="${telparts[1] }" orgvalue="" class="inpH28" title="연락처1 가운데 자리를 입력해주세요." this="연락처1 가운데 자리는" style="width:90px" data-attr="배송지정보^1_연락처1">
						- <input type="text" id="rmitCellEndNo_exist" name="rmitCellEndNo" value="${telparts[2] }" orgvalue="" class="inpH28" title="연락처1 마지막 4자리를 입력해주세요." this="연락처1 마지막 자리는" style="width:90px" data-attr="배송지정보^1_연락처1">
						<!-- <span class="chk_area"><input type="checkbox" id="chkSafe_exist" name="chkSafe" value="123" /> <label for="chkSafe">안심번호 사용</label></span> -->
						<span class="info_security"><button type="button" data-rel="layer" data-target="securityInfo" class="chk_area">안심번호 서비스 안내</button></span>
					</td>
				</tr>
				<tr class="sumtr2" id="pickupHide3" type="exist" style="display: table-row;">
					<th scope="row">연락처2</th>
					<td>
						<select id="rmitTelRgnNo_exist" name="rmitTelRgnNo" class="selH28" title="연락처2 앞자리를 선택해주세요." style="width:90px">
							<option value="">선택</option>
							
								<option value="010">010</option>
							
								<option value="011">011</option>
							
								<option value="016">016</option>
							
								<option value="017">017</option>
							
								<option value="018">018</option>
							
								<option value="019">019</option>
							
								<option value="02">02</option>
							
								<option value="031">031</option>
							
								<option value="032">032</option>
							
								<option value="033">033</option>
							
								<option value="041">041</option>
							
								<option value="042">042</option>
							
								<option value="043">043</option>
							
								<option value="044">044</option>
							
								<option value="051">051</option>
							
								<option value="052">052</option>
							
								<option value="053">053</option>
							
								<option value="054">054</option>
							
								<option value="055">055</option>
							
								<option value="061">061</option>
							
								<option value="062">062</option>
							
								<option value="063">063</option>
							
								<option value="064">064</option>
							
								<option value="070">070</option>
							
								<option value="080">080</option>
							
								<option value="0130">0130</option>
							
								<option value="0303">0303</option>
							
								<option value="0502">0502</option>
							
								<option value="0503">0503</option>
							
								<option value="0504">0504</option>
							
								<option value="0505">0505</option>
							
								<option value="0506">0506</option>
							
								<option value="0507">0507</option>
							
						</select>
						
						- <input type="text" id="rmitTelTxnoNo_exist" name="rmitTelTxnoNo" value="" class="inpH28" title="연락처2 가운데 자리를 입력해주세요." this="연락처2 가운데 자리는" style="width:90px">
						- <input type="text" id="rmitTelEndNo_exist" name="rmitTelEndNo" value="" class="inpH28" title="연락처2 마지막 4자리를 입력해주세요." this="연락처2 마지막 자리는" style="width:90px">
					</td>
				</tr>
				<c:forEach items="${ dlist }" var="deli">
				<tr id="pickupHide4" class = "${deli.delivery_id }" type="exist" style="display: none;">
					<th scope="row">주소</th>
					<td class="imp_data"><!-- 2017-01-25 수정 : 클래스 추가 -->
						<input type="text" id="stnmRmitPostNo_exist" name="rmitPostNo" value="${deli.deli_zip }" class="inpH28" title="우편번호를 검색해주세요." style="width:90px" readonly="readonly">
						<input type="hidden" id="rmitPostNo_exist" name="stnmRmitPostNo" value="${deli.deli_zip }" title="우편번호를 검색해주세요.">
						
							<!-- // 2020-08-05 o2oJJ 24H에서의 우편번호 찾기 버튼 제어를 위해서 기존 버튼 hide 처리후 제어 버튼 추가 -->
							<button type="button" class="btnSmall wGreen w100" id="search-zipcode-pop_exist" style="display:none;" data-attr="배송지정보^1_주소"><span>우편번호 찾기 (기존)</span></button>
							<button type="button" class="btnSmall wGreen w100" id="search-zipcode-pop_exist_r" data-attr="배송지정보^1_주소"><span>우편번호 찾기</span></button>
						
						<div class="addr_box">
							<input type="hidden" id="stnmRmitPostAddr_exist" name="stnmRmitPostAddr" value="${deli.deli_road_addr }" class="inpH28" title="우편번호를 검색해주세요." readonly="readonly">
							<input type="hidden" id="rmitBaseAddr_exist" name="rmitPostAddr" value="${deli.deli_addr }" class="inpH28" title="우편번호를 검색해주세요." readonly="readonly">
							<!-- 주소 입력 시 보여지는 부분 -->
							<p class="addr_new">
								<span class="tx_tit">도로명</span> :
								<span class="tx_addr" id="stnmPostAddr_exist">${deli.deli_road_addr }</span><!--  도로명주소를 넣어주세요 -->
							</p>
							<p class="addr_old">
								<span class="tx_tit">지번</span> :
								<span class="tx_addr" id="baseAddr_exist">${deli.deli_addr }</span><!--  지번주소를 넣어주세요 -->
							</p>
							<!--// 주소 입력 시 보여지는 부분 -->
						</div>
						<input type="text" id="tempRmitDtlAddr_exist" value="${deli.deli_baddr}" class="inpH28" title="상세주소를 입력해주세요." style="width:500px;" this="상세 주소는" maxlength="30">
						<input type="hidden" id="stnmRmitDtlAddr_exist" name="stnmRmitDtlAddr" value="${deli.deli_baddr}" orgvalue="${deli.deli_baddr}" class="inpH28" title="상세주소를 입력해주세요." style="width:500px" this="상세 주소는">
						<input type="hidden" id="rmitDtlAddr_exist" name="rmitDtlAddr" value="${deli.deli_baddr}" orgvalue="${deli.deli_baddr} class="inpH28" title="상세주소를 입력해주세요." style="width:500px">
						<input type="hidden" id="emdNm_exist" name="emdNm" value="신월동">
						<input type="hidden" id="admrNm_exist" name="admrNm" value="신월6동">
					</td>
				</tr>
				</c:forEach>
				<!-- 2017-01-18 추가 (신규 배송지 선택 시) -->
				<tr type="new" class="new_order_area" style="display: none;">
					<th scope="row">배송지명</th>
					<td class="imp_data">
						<input type="text" id="dlvpNm_new" name="dlvpNm" value="" class="inpH28" title="배송지명을 입력해주세요." style="width:200px;" this="배송지명은" disabled="disabled">
					</td>
				</tr>
				<!--// 2017-01-18 추가 -->
				<tr type="new" class="new_order_area" style="display: none;">
					<th scope="row">받는분</th>
					<td class="imp_data"><!-- 2017-01-18 추가 : 필수입력사항 아이콘 추가 -->
						<input type="text" id="rmitNm_new" name="rmitNm" value="" orgvalue="" class="inpH28" title="받는분 이름을 입력해주세요." style="width:200px" this="받는분 이름은" disabled="disabled" data-attr="배송지정보^1_받는분">
						<span class="chk_area"><input type="checkbox" id="copyToDlvp_new" targetid="new" disabled="disabled"> <label for="copyToDlvp_new">주문자정보와 동일</label></span><!-- 2017-01-18 수정 : 위치변경 -->
					</td>
				</tr>
				<tr type="new" class="new_order_area" style="display: none;">
					<th scope="row">연락처1</th>
					<td class="imp_data"><!-- 2017-01-18 추가 : 필수입력사항 아이콘 추가 -->
						<select id="rmitCellSctNo_new" name="rmitCellSctNo" class="selH28" title="연락처1 앞자리를 선택해주세요." orgvalue="" style="width:90px" disabled="disabled" data-attr="배송지정보^1_연락처1">
							<option value="">선택</option>
							
								<option value="010">010</option>
							
								<option value="011">011</option>
							
								<option value="016">016</option>
							
								<option value="017">017</option>
							
								<option value="018">018</option>
							
								<option value="019">019</option>
							
								<option value="02">02</option>
							
								<option value="031">031</option>
							
								<option value="032">032</option>
							
								<option value="033">033</option>
							
								<option value="041">041</option>
							
								<option value="042">042</option>
							
								<option value="043">043</option>
							
								<option value="044">044</option>
							
								<option value="051">051</option>
							
								<option value="052">052</option>
							
								<option value="053">053</option>
							
								<option value="054">054</option>
							
								<option value="055">055</option>
							
								<option value="061">061</option>
							
								<option value="062">062</option>
							
								<option value="063">063</option>
							
								<option value="064">064</option>
							
								<option value="070">070</option>
							
								<option value="080">080</option>
							
								<option value="0130">0130</option>
							
								<option value="0303">0303</option>
							
								<option value="0502">0502</option>
							
								<option value="0503">0503</option>
							
								<option value="0504">0504</option>
							
								<option value="0505">0505</option>
							
								<option value="0506">0506</option>
							
								<option value="0507">0507</option>
							
						</select>
						- <input type="text" id="rmitCellTxnoNo_new" name="rmitCellTxnoNo" value="" orgvalue="" class="inpH28" title="연락처1 가운데 자리를 입력해주세요." this="연락처1 가운데 자리는" style="width:90px" disabled="disabled" data-attr="배송지정보^1_연락처1">
						- <input type="text" id="rmitCellEndNo_new" name="rmitCellEndNo" value="" orgvalue="" class="inpH28" title="연락처1 마지막 4자리를 입력해주세요." this="연락처1 마지막 자리는" style="width:90px" disabled="disabled" data-attr="배송지정보^1_연락처1">
						<!-- <span class="chk_area"><input type="checkbox" id="chkSafe_new" name="chkSafe" value="456" /> <label for="chkSafe">안심번호 사용</label></span> -->
						<span class="info_security"><button type="button" data-rel="layer" data-target="securityInfo" class="chk_area">안심번호 서비스 안내</button></span>
					</td>
				</tr>
				<tr type="new" class="new_order_area" style="display: none;">
					<th scope="row">연락처2</th>
					<td>
						<select id="rmitTelRgnNo_new" name="rmitTelRgnNo" class="selH28" title="연락처2 앞자리를 선택해주세요." style="width:90px" disabled="disabled">
							<option value="">선택</option>
							
								<option value="010">010</option>
							
								<option value="011">011</option>
							
								<option value="016">016</option>
							
								<option value="017">017</option>
							
								<option value="018">018</option>
							
								<option value="019">019</option>
							
								<option value="02">02</option>
							
								<option value="031">031</option>
							
								<option value="032">032</option>
							
								<option value="033">033</option>
							
								<option value="041">041</option>
							
								<option value="042">042</option>
							
								<option value="043">043</option>
							
								<option value="044">044</option>
							
								<option value="051">051</option>
							
								<option value="052">052</option>
							
								<option value="053">053</option>
							
								<option value="054">054</option>
							
								<option value="055">055</option>
							
								<option value="061">061</option>
							
								<option value="062">062</option>
							
								<option value="063">063</option>
							
								<option value="064">064</option>
							
								<option value="070">070</option>
							
								<option value="080">080</option>
							
								<option value="0130">0130</option>
							
								<option value="0303">0303</option>
							
								<option value="0502">0502</option>
							
								<option value="0503">0503</option>
							
								<option value="0504">0504</option>
							
								<option value="0505">0505</option>
							
								<option value="0506">0506</option>
							
								<option value="0507">0507</option>
							
						</select>
						- <input type="text" id="rmitTelTxnoNo_new" name="rmitTelTxnoNo" value="" class="inpH28" title="연락처2 가운데 자리를 입력해주세요." this="연락처2 가운데 자리는" style="width:90px" disabled="disabled">
						- <input type="text" id="rmitTelEndNo_new" name="rmitTelEndNo" value="" class="inpH28" title="연락처2 마지막 4자리를 입력해주세요." this="연락처2 마지막 자리는" style="width:90px" disabled="disabled">
					</td>
				</tr>
				<tr type="new" class="new_order_area" style="display: none;">
					<th scope="row">주소</th>
					<td class="imp_data"><!-- 2017-01-25 수정 : 클래스 추가 -->
						<input type="text" id="stnmRmitPostNo_new" name="rmitPostNo" value="" class="inpH28" title="우편번호를 검색해주세요." style="width:90px" readonly="readonly" disabled="disabled">
						<input type="hidden" id="rmitPostNo_new" name="stnmRmitPostNo" value="" title="우편번호를 검색해주세요." disabled="disabled">
						<button type="button" class="btnSmall wGreen w100" id="search-zipcode-pop_new" data-attr="배송지정보^1_주소"><span>우편번호 찾기</span></button>
						<div class="addr_box">
							<input type="hidden" id="stnmRmitPostAddr_new" name="stnmRmitPostAddr" value="" class="inpH28" title="우편번호를 검색해주세요." readonly="readonly" disabled="disabled">
							<input type="hidden" id="rmitBaseAddr_new" name="rmitPostAddr" value="" class="inpH28" title="우편번호를 검색해주세요." readonly="readonly" disabled="disabled">
							<!-- 주소 입력 시 보여지는 부분 -->
							<p class="addr_new">
								<span class="tx_tit">도로명</span> :
								<span class="tx_addr" id="stnmPostAddr_new"></span><!--  도로명주소를 넣어주세요 -->
							</p>
							<p class="addr_old">
								<span class="tx_tit">지번</span> :
								<span class="tx_addr" id="baseAddr_new"></span><!--  지번주소를 넣어주세요 -->
							</p>
							<!--// 주소 입력 시 보여지는 부분 -->
						</div>
						<input type="text" id="tempRmitDtlAddr_new" value="" class="inpH28" title="상세주소를 입력해주세요." style="width:500px;" this="상세 주소는" disabled="disabled">
						<p class="txtDot mgT5">신규배송지 정보는 마이페이지 내 배송지에 저장됩니다.</p>
						<input type="hidden" id="stnmRmitDtlAddr_new" name="stnmRmitDtlAddr" value="" class="inpH28" title="상세주소를 입력해주세요." style="width:500px" this="상세 주소는" disabled="disabled">
						<input type="hidden" id="rmitDtlAddr_new" name="rmitDtlAddr" value="" class="inpH28" title="상세주소를 입력해주세요." style="width:500px" disabled="disabled">
						<input type="hidden" id="emdNm_new" name="emdNm" disabled="disabled">
						<input type="hidden" id="admrNm_new" name="admrNm" disabled="disabled">
					</td>
				</tr>
				</tbody>
			</table>
			<!--// 배송지 정보 -->

			<!-- 배송 요청사항 -->
			<div id="pickupHide5">
				<div class="title_wrap">
					<h2 class="sub-title2">배송 요청사항</h2>
				</div>
				<table class="tbl_inp_form important">
					<caption></caption>
					<colgroup><col style="width:170px"><col style="width:*"></colgroup>
					<tbody>
					<tr>
						<th scope="row">배송 메시지</th>
						<td>
							<select id="mbrMemoCont" class="selH28" title="택배배송 메시지를 선택해주세요." style="width:350px" data-attr="배송요청사항^배송메세지">
								<option value="MH">배송메시지를 선택해주세요.</option>
								
									<option value="10">부재시 경비실에 맡겨주세요.</option>
								
									<option value="20">부재시 문앞에 놓아주세요.</option>
								
									<option value="30">파손의 위험이 있는 상품이오니,  배송 시 주의해주세요.</option>
								
									<option value="40">배송전에 연락주세요.</option>
								
									<option value="50">택배함에 넣어주세요.</option>
								
								
								
									<option value="O2O">직접 입력하기</option>
								
							</select>
							<input type="text" name="mbrMemoCont" value="" class="inpH28 mgT6" title="배송메시지를 입력해주세요." style="width:700px; display: none;">
						</td>
					</tr>
					<!-- 2020-09-03 24H배송일 경우만  노출 -->
					
					</tbody>
				</table>
				<!-- 2020-08-14 o2oJJ 24H 체크박스 추가 -->
				<h2 class="sub-title2 mgT15 o2o_24h_chk_area" style="display:none;">
				<span class="onedayChk">
					<input type="checkbox" id="o2o24HChk" name="o2o24HChk" targetid="exist">
					<label for="o2o24HChk">
						<span class="topTxt">오늘드림으로 바로 받아보시겠어요?</span>
						<span class="sbTxt"><span id="delidayInfo">오늘</span> 까지 배송해드려요!<span style="color : blue"><strong>&nbsp;&nbsp;( 배송비 무료)</strong></span></span>
					</label>
					<input type="hidden" id="strNo24H" name="strNo24H">
				</span>
				</h2>
				
				<table id="tabDoorInfo" class="tbl_inp_form important front-door-input divider">
					<colgroup>
						<col style="width:170px">
						<col style="width:*">
					</colgroup>
					<tbody>
					
					<!-- 2019-11-15 추가 (오늘드림배송 시) -->
					<!-- 2020-08-04 o2oJJ 24H 화면 제어로 인한 주석 처리 -->
					
					<tr type="exist" class="quick_area">
						<th scope="row">공동현관 출입방법</th>
						
						<td class="imp_data">
							<span class="chk_area mgzero"><input type="radio" id="btn_door_manner_temp1" name="o2oVisitTypeSp" value="1" <c:if test="${dlist[0].req_select eq '1'}">checked</c:if> data-attr="배송지정보^2_공동현관 출입방법"><label for="btn_door_manner_temp1">비밀번호</label></span>
							<span class="chk_area"><input type="radio" id="btn_door_manner_temp2" name="o2oVisitTypeSp" value="2" <c:if test="${dlist[0].req_select eq '2'}">checked</c:if> data-attr="배송지정보^2_공동현관 출입방법"><label for="btn_door_manner_temp2">경비실 호출</label></span>
							<span class="chk_area"><input type="radio" id="btn_door_manner_temp3" name="o2oVisitTypeSp" value="3" <c:if test="${dlist[0].req_select eq '3'}">checked</c:if> data-attr="배송지정보^2_공동현관 출입방법"><label for="btn_door_manner_temp3">자유출입가능</label></span>
							<span class="chk_area"><input type="radio" id="btn_door_manner_temp4" name="o2oVisitTypeSp" value="4" <c:if test="${dlist[0].req_select eq '4'}">checked</c:if> data-attr="배송지정보^2_공동현관 출입방법"><label for="btn_door_manner_temp4">기타사항</label></span>
						</td>
					</tr>
					<tr type="exist" class="quick_area" id="visitTypeDescExist" style="display: table-row;">
						<th scope="row">
							
								
								
								
								공동현관 비밀번호
							
						</th>
						<td class="imp_data">
							<input type="text" id="door_type_exist" name="o2oVisitTypeDesc" value="${dlist[0].req_content}" class="inpH28" title="공동현관 출입방법 상세내용." style="width: 500px" data-attr="배송지정보^2_공동현관 비밀번호" disabled="disabled">
						</td>
					</tr>

					<tr type="exist" class="quick_area">
						<th scope="row">출입정보 저장</th>
						<td class="access-rules">
							<span class="chk_area mgzero"><input type="checkbox" id="o2oVisitSaveInfo" name="o2oVisitSaveInfo" value="Y" checked="" data-attr="배송지정보^2_출입정보 저장 동의"> <label for="o2oVisitSaveInfo">개인정보 수집 및 이용 동의 (선택)</label></span>
							<ul>
								<li>수집 목적 : 상품 구매 시 배송 처리</li>
								<li>수집 항목 : 공동현관 출입방법, 비밀번호</li>
								<li>보유 및 이용기간 : 정보 삭제 또는 회원 탈퇴 시까지</li>
								<li>동의하지 않으실 경우, 다음 주문부터는 공동현관 정보가 저장되지 않습니다. </li>
							</ul>
						</td>
					</tr>
					
					<!--// 2019-11-15 추가 (오늘드림배송 시) -->
					</tbody>
				</table>
			</div>

			<input type="hidden" id="btn_dlvp_complete_msg_temp1" name="o2oMsgSendType" value="Y" checked="">
			<!--// 배송 요청사항 -->
			
				<div class="orderConBanner" id="orderConBanner" style="display:none">
					
						
						
							<img src="https://image.oliveyoung.co.kr/uploads/images/editor/QuickUpload/SYS/image/20220216232240/qksa_20220216232240.jpg">
						
					
				</div>
			

			<!-- 주문상품정보 -->
			<!-- <h2 class="sub-title2 underline">주문상품정보</h2> --><!-- 2017-01-24 수정 : 해당 타이틀 삭제 -->
			 
			
			
				
			

			 
			
			
			
			 
			
			<!-- fix/3275248 bmiy20 cjone point 적립불가건에 대해 사용 불가 처리 추가 -->
			  
			  

			
				
				
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					

					
					
					
					
					<!-- 2020-08-04 o2oJJ 24H 화면 제어로 인한 주석 처리 -->
					
					
					

					
					
						
							
								
									
									
										
									
								
								
							
							
						
						<h2 class="sub-title2">
								올리브영 배송상품
							
							
								<em class="gift" id="giftNoti2" style="display: none;">* 증정품은 결제 시 확인하실 수 있습니다.</em>
							
						</h2><!-- 2017-01-24 수정 : 타이틀 마크업 수정 및 클래스명 변경 -->
						<table class="tbl_prd_list">
						<caption>올리브영 배송상품 주문상품 목록</caption>
						<colgroup>
							<col style="width:*">
							<!-- 2019-11-15 추가 (오늘드림배송 선물포장) Start -->
							
							<!-- 2019-11-15 추가 (오늘드림배송 선물포장) End -->
							<col style="width:110px">
							<col style="width:100px">
							<!--
                            2017-01-24 수정 : 삭제
                            <col style="width:120px" />
                            -->
							<col style="width:110px">
						</colgroup>
						<thead>
						<tr>
							<th scope="col">상품정보</th>
							<!-- 2019-11-15 추가 (오늘드림배송 선물포장) Start -->
							
							<!-- 2019-11-15 추가 (오늘드림배송 선물포장) End -->
							<th scope="col">판매가</th>
							<th scope="col">수량</th>
							<!--
                            2017-01-24 수정 : 배송정보 삭제
                            <th scope="col">배송정보</th>
                            -->
							<th scope="col">구매가</th><!-- 2017-01-24 수정 : 문구수정 -->
						</tr>
						</thead>
						<tbody>
					
					
						
						<c:set var="salePrice" value="${0}" scope="page" />
						<c:set var="totalPrice" value="${0}" scope="page" />
						<c:forEach items="${ blist }" var="bpl">
							<c:set var="totalPrice" value="${totalPrice + (bpl.proPrice * bpl.product_cnt)}" scope="page" />
							<c:set var="salePrice" value="${salePrice + (bpl.afterPrice * bpl.product_cnt)}" scope="page" />
							<tr>
						
					
					<input type="hidden" name="cartNo" value="679179789">
					<!-- 2020-08-05 o2oJJ 상품 수량 추가 -->
					<td colspan="5" dispcatno="" stdcatno="010101" goodsno="${bpl.productID }" itemno="001" entrno="C18617" brndcd="3854" tradeshpcd="1" staffdscntyn="Y" pntrsrvyn="Y" ordqty="1" thnlpathnm="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0016/A00000016043610ko.jpg?l=ko" goodsnm="그레이멜린 알래스카85 내추럴 토너500ml" cartno="679179789" purchasetype="N"><!-- 2017-01-13 수정 -->
						<div class="tbl_cont_area">
							
							
								
								<div class="tbl_cell w700"><!-- 2017-01-24 수정 : 클래스명 변경 -->
									
									
									<div class="prd_info">
										<div class="prd_img">
											<img src="${bpl.displImgSrc }" alt="장바구니 상품 임시 이미지" onerror="common.errorImg(this);">
										</div>
										<div class="prd_name">
											
											<span>${bpl.brandName }</span><!-- 2017-01-26 수정 : 브랜드명 분리 -->
											<p>${bpl.displProName }</p>
										</div>
										<p class="prd_opt">
											
										</p>
										<p class="prd_flag">
											
											<c:if test="${bpl.pdc eq 1}">
															<span class="icon_flag sale">세일</span>
														</c:if>
														<c:if test="${bpl.prc eq 1}">
															<span class="icon_flag coupon">쿠폰</span>
														</c:if>
														<c:if test="${bpl.pmp eq 1 }">
															<span class="icon_flag gift">증정</span>
														</c:if>
														<c:if test="${bpl.stock > 0}">
															<span class="icon_flag delivery">오늘드림</span>
														</c:if>
											
										</p>
										<!--//fix/3275248 bmiy20 cjone point 적립불가건에 대해 사용 불가 처리 추가-->
										
									</div>
								</div>
								<!-- 2019-11-15 추가 (오늘드림배송 선물포장) Start -->
								
								<!-- 2019-11-15 추가 (오늘드림배송 선물포장) End -->
								<div class="tbl_cell w110">
									<!-- <span class="org_price" style="display: none;"><span class="tx_num" id="normPrc_"></span>원</span> --><!-- 2017-01-24 수정 : 삭제 -->
									<span class="cur_price"><span class="tx_num">${bpl.proPrice }</span>원</span>
								</div>
								<div class="tbl_cell w100">${bpl.product_cnt}</div>
								<!-- 2017-01-24 수정 : 삭제
                                <div class="tbl_cell w120">
                                    <p class="prd_delivery">
                                        <strong>
                                            무료배송
                                        </strong>
                                        도서·산간 제외
                                    </p>
                                </div>
                                -->
								<div class="tbl_cell w110">
									
									
									
									
									
									<span class="org_price"><span class="tx_num" id="normPrc_A000000160436/001">${bpl.proPrice }</span>원</span><!-- 2017-01-24 수정 : 추가 -->
									<span class="pur_price"><span class="tx_num" id="salePrc_A000000160436/001">${bpl.afterPrice }</span>원</span>
									<input type="hidden" id="orgNormPrc_A000000160436/001" value="${bpl.proPrice }">
									<input type="hidden" id="orgSalePrc_A000000160436/001" value="${bpl.afterPrice }">
									<input type="hidden" id="imdtDscntAmt_A000000160436/001" value="0">
								
									
										
								</div>
							</div>
							
					</td>
					</tr>
					<!--// 1+1 행사 상품인 경우 -->
					</c:forEach>
				
					

					
						</tbody>
						</table>
					
				
				
				

				
					<script type="text/javascript">
						$("#giftBoxYn_temp").attr("disabled", true);
						$("#giftBoxYn_temp").attr("checked", false);
						$("#giftBoxYn_temp").attr("style", "cursor: not-allowed;");
						$("#giftBoxYn").val("N");
					</script>
				
			
			<!--// 주문상품정보 -->
			
			<!-- 증정품 -->
			
			
			<input type="hidden" id="giftCount" value="0" orgvalue="0">
			<div id="giftCartNo"></div>
			<!--// 증정품 -->
			
			<!-- 쿠폰 및 포인트, 결제수단, 결제정보 -->
			<div class="order_payment_box relArea">
				<div class="left_area">
					<!-- 쿠폰할인정보 -->
					<h2 class="sub-title2 width-inline">쿠폰할인정보</h2>
					<a href="javascript:;" data-rel="layer" data-target="userCpPop" class="couponView" data-attr="쿠폰할인정보^보유쿠폰">
						보유쿠폰
						
							&nbsp;(1)
						
					</a>
					<table class="tbl_inp_form type2">
						<caption>쿠폰할인정보 입력 폼</caption>
						<colgroup>
							<col style="width:170px">
							<col style="width:*">
						</colgroup>
						<tbody>
						<tr>
							<td colspan="2">
								<div class="bg_area"><!-- 2017-01-18 수정 : 클래스 추가 -->
									<input type="radio" id="autoDiscount" name="Discount_Benefits" value="auto" checked="checked" data-attr="쿠폰할인정보^혜택받기"><label for="autoDiscount">최대 할인 추천받기</label>
									<input type="radio" id="manualDiscount" name="Discount_Benefits" value="manual" class="mgL20" data-attr="쿠폰할인정보^혜택받기"><label for="manualDiscount">혜택 직접 선택하기</label>
									<p class="tx_right tx_discount"><span class="tx_num" id="totCpnAplyAmt">- 4,000</span>원</p>
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row">상품별 할인</th>
							<td id="dwnldCouponList">
								
									
									
										<div>
											<select class="selH28 mgT5" style="width:300px" disabled="disabled" data-attr="쿠폰할인정보^상품별할인">
												<option>적용할 수 있는 쿠폰이 없습니다.</option>
											</select>
											<p class="tx_point_info">즉시할인쿠폰은 상품금액에 자동적용 되어있습니다.</p>
										</div>
									
								
								<!--// 상품별 할인목록 영역 -->
							</td>
						</tr>
						<tr>
							<th scope="row">주문별 할인</th>
							<td id="paymentCouponList">
								<!-- 주문별 할인목록 영역 -->
								
									
										
										<div>
											<select name="couponList[0].promChk" class="selH28" style="width:300px" index="0" data-attr="쿠폰할인정보^주문별할인">
												<option value="N" promno="" promaplyseq="">적용안함</option>
												
													
													
													
													<option value="Y" rtamtval="4000" promno="C000000079414" promaplyseq="586780403" promkndcd="C105" promnm="[신규가입] 3만원 이상 4,000원 할인" minpuramt="30000" certcpnyn="N" certcpnno="" cjonecpnno="" o2ocpnsp="N_N_N" aplyavailyn="Y">[신규가입] 3만원 이상 4,000원 할인</option>
												
											</select>
											<input type="hidden" name="couponList[0].goodsNo" value="">
											<input type="hidden" name="couponList[0].itemNo" value="">
											<input type="hidden" name="couponList[0].promNo" value="C000000079414">
											<input type="hidden" name="couponList[0].promAplySeq" value="586780403">
											<input type="hidden" name="couponList[0].promKndCd" value="C105">
											<input type="hidden" name="couponList[0].entrNo" value="">
											<p class="tx_right tx_discount2"><span class="tx_num" id="cpnDscntAmt_0_span">- 4,000</span>원</p>
											<input type="hidden" id="cpnDscntAmt_0" name="cpnDscntAmt" value="4000" disabled="disabled">
										</div>
									
									
								
								<!--// 주문별 할인목록 영역 -->
							</td>
						</tr>
						<!-- 2017-01-18 수정 : 배송비 할인 영역 변경 -->
						
							<tr>
								<th scope="row">배송비 쿠폰</th>
								<td id="dlexCouponList_hd">
									<div>
										
											
											
												<select id="selDelCoupon" class="selH28 mgT5" style="width:300px" disabled="disabled" data-attr="쿠폰할인정보^배송비쿠폰">
													<option>적용할 수 있는 쿠폰이 없습니다.</option>
												</select>
											
										
									</div>
								</td>
							</tr>
						
						
						<!--// 2017-01-18 수정 : 배송비 할인 영역 변경 -->
						</tbody>
					</table>
					<input type="hidden" id="couponCnt" value="1">
					<!--// 쿠폰할인정보 -->

					<!-- 포인트사용 --><!-- 2017-01-18 수정 : 전액사용 버튼이 input 뒤로 위치 변경됨 -->
					<h2 class="sub-title2">포인트/기프트카드사용</h2>
					<table class="tbl_inp_form type2">
						<caption>포인트사용 입력 폼</caption>
						<colgroup>
							<col style="width:170px">
							<col style="width:*">
						</colgroup>
						<input type="hidden" id="lastAplyPntInputName" value="">
						<tbody>
						
						<tr>
							<th scope="row"><button type="button" class="btnGift btnGiftClick" data-rel="layer" data-target="OliveGiftInfo">올리브영 기프트카드</button></th>
							<td>
								<div>
									<span class="inp_point_wrap">
										<input type="text" id="oyGiftCardAplyAmt" name="" class="inpH28 giftCard" title="사용하실 올리브영 기프트카드를 입력해주세요." style="width:100px" this="올리브영 기프트카드는 " minownamt="10" unit="원" unitamt="1" minaplyamt="10" disabled="disabled"> 원 / <span id="oyGiftCardOwn_span" class="tx_num colorOrange"><span id="oyGiftCardAmt">0</span>원</span>
										<input type="hidden" name="oyGiftCardAplyAmt" value="0">
									</span>
									<button type="button" class="btnSmall wGray2" name="giftCard_btn" id="oyGiftCard_btn" data-attr="포인트/기프트카드사용^올리브영기프트카드"><span data-attr="포인트/기프트카드사용^올리브영기프트카드">조회</span></button>
									<p class="tx_point_info">올리브영 기프트카드는 최소 10원 이상 보유 시 1원 단위로 사용 가능합니다.</p> <!-- //2021-09-16 문구수정// -->
								</div>
							</td>
						</tr>
						<tr>
							<th scope="row"><button type="button" class="btnGift btnGiftClick" data-rel="layer" data-target="CJGiftInfo"><span class="tx_num">CJ</span> 기프트카드</button></th>
							<td>
								<div>
									<span class="inp_point_wrap">
										<input type="text" id="cjGiftCardAplyAmt" class="inpH28 giftCard" title="사용하실 CJ 기프트카드를 입력해주세요." style="width:100px" this="CJ 기프트카드는 " minownamt="10" unit="원" unitamt="1" minaplyamt="10" disabled="disabled"> 원 / <span id="cjGiftCardAmt_span" class="tx_num colorOrange"><span id="cjGiftCardAmt">0</span>원</span>
										<input type="hidden" name="cjGiftCardAplyAmt" value="0">
									</span>
									<button type="button" class="btnSmall wGray2" name="giftCard_btn" id="cjGiftCard_btn" data-attr="포인트/기프트카드사용^CJ기프트카드"><span data-attr="포인트/기프트카드사용^CJ기프트카드">조회</span></button>
									<p class="tx_point_info">CJ기프트카드는 최소 10원 이상 보유 시 1원 단위로 사용 가능합니다.</p> <!-- //2021-09-16 문구수정// -->
								</div>
							</td>
						</tr>
						<!--// 2018-01-05 기프트카드 추가 -->
						<tr>
							<th scope="row"><span class="tx_num">CJ ONE</span> 포인트</th>
							<td>
								<div>
									<span class="inp_point_wrap">
										<!-- fix/3275248 bmiy20 cjone point 적립불가건에 대해 사용 불가 처리 추가 -->
										<input type="text" id="cjonePntAplyAmt" class="inpH28 cjonePoint" title="사용하실 CJ ONE 포인트를 입력해주세요." style="width:100px" this="CJ ONE 포인트는 " minownamt="1000" unit="P" unitamt="10" minaplyamt="0" disabled="" data-attr="포인트/기프트카드사용^CJONE포인트"> 원 / <span id="cjonePnt_span" class="tx_num colorOrange"><span id="cjonePnt">0</span>P</span>
										<input type="hidden" name="cjonePntAplyAmt" value="0">
										<input type="hidden" name="cjonePntNonPosCnt" value="0">   <!--//cjone point 사용가능 금액 bmiy20, 2021-09-16 문구수정// -->
									</span>
									<button type="button" class="btnSmall wGray3" id="cjonePnt_btn" data-attr="포인트/기프트카드사용^CJONE포인트"><span data-attr="포인트/기프트카드사용^CJONE포인트">전액사용</span></button>
									<p class="tx_point_info">CJONE 포인트는 최소 1,000원 이상 보유 시 10원 단위로 사용 가능합니다. </p><!-- //2021-09-16 문구수정// -->
									
									
								</div>
							</td>
						</tr>
						<input type="hidden" id="vMbrStaffYn" value="N">
						
						<tr>
							<th scope="row">예치금</th>
							<td>
								<div>
									<span class="inp_point_wrap">
										<input type="text" id="csmnAplyAmt" class="inpH28" title="사용하실 예치금을 입력해주세요." style="width:100px" this="예치금은 " minownamt="1000" unit="원" unitamt="10" minaplyamt="0" disabled="" data-attr="포인트/기프트카드사용^예치금"> 원 / <span class="tx_num colorOrange"><span id="csmnOwnAmt">0</span>원</span>
										<input type="hidden" name="csmnAplyAmt" value="0">
										<input type="hidden" name="csmnUseYn" value="N">
									</span>
									<button type="button" class="btnSmall wGray3" id="csmnAplyAmt_btn" data-attr="포인트/기프트카드사용^예치금"><span data-attr="포인트/기프트카드사용^예치금">전액사용</span></button>
									<p class="tx_point_info">예치금은 최소 1,000원 이상 보유 시 10원 단위로 사용 가능합니다.</p><!-- //2021-09-16 문구수정// -->
								</div>
							</td>
						</tr>
						
						<!-- OK 캐쉬백 -->
						
						
						<!-- //OK 캐쉬백 -->
						</tbody>
					</table>
					<!--// 포인트사용 -->

					<!-- 결제수단 선택 -->
					
					
					
					
					
					
					
					
					
					
					
					

					
						
					

					
						
					

					<div class="title_wrap" id="payMethod_div" style="display: block;">
						<h2 class="sub-title2">결제수단 선택</h2>
						<p class="sub_area" style="display: none;">
							
						</p>
					</div>
					<ul class="payment_info_form" id="payMethodList" style="display: block;">
						<li class="bg_area"><!-- 2017-01-18 수정 : 클래스 추가 -->
							<input type="hidden" id="payCouponIndex" value="" paycd="">
							<input type="hidden" id="easyPayCd" value="">
							<span><input type="radio" id="payMethod_11" name="payMethod" value="11" cashreceipt="N" checked="checked" data-attr="결제수단선택^결제수단선택"><label id="payMethodLabel_11" for="payMethod_11">신용카드</label></span>

							
								<span class="pay_24h_sh" style="display: none;"><input type="radio" id="payMethod_61" name="payMethod" value="61" cashreceipt="Y" data-attr="결제수단선택^결제수단선택"><label id="payMethodLabel_61" for="payMethod_61">무통장입금</label></span>
							

							<!-- 2017-04-18 추가 -->
							<span><input type="radio" id="payMethod_25" name="payMethod" value="25" cashreceipt="N" data-attr="결제수단선택^결제수단선택"><label id="payMethodLabel_25" for="payMethod_25">PAYCO<span class="flag bn">혜택</span></label></span>
							<!-- //2017-04-18 추가 -->
							<span><input type="radio" id="payMethod_26" name="payMethod" value="26" cashreceipt="N" data-attr="결제수단선택^결제수단선택"><label id="payMethodLabel_26" for="payMethod_26">카카오페이</label></span>
							<!-- 20201021 배포에선 네이버페이 노출 제외 -->
							<span><input type="radio" id="payMethod_29" name="payMethod" value="29" cashreceipt="N" data-attr="결제수단선택^결제수단선택"><label id="payMethodLabel_29" for="payMethod_29">네이버페이<span class="flag bn">혜택</span></label></span>

							<span><input type="radio" id="payMethod_22" name="payMethod" value="22" cashreceipt="N" data-attr="결제수단선택^결제수단선택"><label id="payMethodLabel_22" for="payMethod_22">휴대폰결제</label></span>

							<span><input type="radio" id="payMethod_21" name="payMethod" value="21" cashreceipt="Y" data-attr="결제수단선택^결제수단선택"><label id="payMethodLabel_21" for="payMethod_21">계좌이체</label></span>

							<!-- 2017-01-18 수정 : 문화상품권/도서상품권 선택 삭제 -->
							<!-- 2017-02-14 수정 : 문화상품권/도서상품권 선택 재추가 -->
							<span><input type="radio" id="payMethod_24" name="payMethod" value="24" cashreceipt="Y" data-attr="결제수단선택^결제수단선택"><label id="payMethodLabel_24" for="payMethod_24">도서상품권</label></span>
							<span><input type="radio" id="payMethod_23" name="payMethod" value="23" cashreceipt="N" data-attr="결제수단선택^결제수단선택"><label id="payMethodLabel_23" for="payMethod_23">문화상품권</label></span>
						</li>
						<!-- 신용카드 선택 시 -->
						<li paymethod="11" style="display: list-item;">
							<table class="tbl_inp_form no_line">
								<caption>카드 결제정보 입력 폼</caption>
								<colgroup>
									<col style="width:170px">
									<col style="width:*">
								</colgroup>
								<tbody>
								<tr>
									<th scope="row">카드종류</th>
									<td>
										<div id="cardDscnt_div">
											<input type="hidden" id="cardCouponIndex" value="" acqrcd="" orgacqrcd="">
											<select id="acqrCd" name="acqrCd" class="selH28" title="결제하실 카드를 선택해주세요." style="width:200px" data-attr="결제수단선택^카드정보선택">
												<option value="">카드를 선택해주세요.</option>
												
													<option value="BCC">BC카드</option>
												
													<option value="HNB">하나(외환)카드</option>
												
													<option value="PHB">우리카드</option>
												
													<option value="SYH">신협카드</option>
												
													<option value="NFF">수협카드</option>
												
													<option value="CBB">전북카드</option>
												
													<option value="CIT">씨티카드</option>
												
													<option value="WIN">삼성카드</option>
												
													<option value="LGC">신한카드</option>
												
													<option value="KKB">카카오뱅크</option>
												
													<option value="KJB">광주비자</option>
												
													<option value="CJB">제주카드</option>
												
													<option value="DIN">현대카드</option>
												
													<option value="AMX">롯데카드</option>
												
													<option value="CNB">KB카드</option>
												
													<option value="NLC">NH카드</option>
												
											</select>
											
										</div>
										<div id="cardcoPnt_div">
											
												
													<p class="tx_info" acqrcd="DIN" pntusestdamt="5000" pntnm="현대카드 M 포인트" salepointflg="S" staffyn="N" style="display: none;">
														<span class="mhy_card">현대카드 M포인트 10% 사용 가능(1만원 이상 결제시 최대 5천 포인트)</span>
													</p>
													<div id="DIN_pntInfoMsg" style="display: none;">
															사용조건
<ol>
	<li>1만원 이상 결제시 사용 가능</li>
	<li>결제금액의 10% 사용 가능</li>
	<li><strong>법인/체크/선불/기프트/CJ임직원/CJ제휴카드 제외</strong></li>
	<li>결제 건당 5,000 M포인트 한도</li>
	<li>10%에 대한 M포인트 부족 시 보유 포인트만큼 차감</li>
	<li>페이코/카카오페이/네이버페이 등 간편결제수단 적용시 사용 불가</li>
</ol>

													</div>
												
													<p class="tx_info" acqrcd="WIN" pntusestdamt="0" pntnm="" salepointflg="S" staffyn="N" style="display: none;">
														<span class="mhy_card">삼성카드 보너스포인트 100% 사용 가능</span>
													</p>
													<div id="WIN_pntInfoMsg" style="display: none;">
															<p>사용조건</p>

<ol>
	<li>1원 이상 결제시 사용 가능</li>
	<li>결제금액의 전액 사용 가능</li>
	<li><strong>법인, 체크, 올앳, 선불, 기프트, CJ임직원, CJ제휴카드 제외</strong></li>
	<li>포인트 부족시 보유 포인트만큼 차감</li>
	<li>포인트 부족분 신용카드 결제</li>
	<li>포인트 분할 결제 및 결제 포인트 입력 불가</li>
	<li>페이코/카카오페이/네이버페이 등 간편결제수단&nbsp;적용 불가</li>
</ol>

<p>포인트 결제 후 부분취소 및 사용 포인트 조회 문의</p>

<ol>
	<li>포인트 환불정책 및 사용 포인트 조회는 삼성카드 고객센터로 문의 부탁 드립니다.</li>
	<li>삼성카드 고객센터 : 1588-8700</li>
</ol>

													</div>
												
											
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">할부종류</th>
									<td>
										<div>
											<select id="instMmCnt" name="instMmCnt" class="selH28" style="width:200px" data-attr="결제수단선택^할부종류">
												<option value="00">일시불</option>
												<option value="02" targetid="nint2MmYn">2개월</option>
												<option value="03" targetid="nint3MmYn">3개월</option>
												<option value="04" targetid="nint4MmYn">4개월</option>
												<option value="05" targetid="nint5MmYn">5개월</option>
												<option value="06" targetid="nint6MmYn">6개월</option>
												<option value="07" targetid="nint7MmYn">7개월</option>
												<option value="08" targetid="nint8MmYn">8개월</option>
												<option value="09" targetid="nint9MmYn">9개월</option>
												<option value="10" targetid="nint10MmYn">10개월</option>
												<option value="11" targetid="nint11MmYn">11개월</option>
												<option value="12" targetid="nint12MmYn">12개월</option>
											</select>
											
										</div>
									</td>
									<input type="hidden" name="aplyNintInstYn" value="N">
								</tr>
								<tr id="pntUseYn_tr" style="display:none;">
									<th scope="row">카드포인트</th>
									<td>
										<div>
											<input type="checkbox" id="pntUseYn" name="pntUseYn" value="Y"> <label for="pntUseYn" id="cardcoPntNm"></label>
											<button type="button" class="mh_btn" data-rel="layer" data-target="mHPointInfo">사용안내</button>
										</div>
									</td>
								</tr>
								<!-- 2017-01-18 추가 : 카드 결제 안내 추가 -->
								<tr>
									<td colspan="2">
										<div class="info_dot_list_area">
											
											<ul>
												<li id="cardDscnt_N_li" style="display: none;"><strong>청구할인 대상이 아닌 상품이 포함되어 있거나 결제금액이 청구할인 대상 금액보다 적어 청구할인 적용이 불가합니다.</strong></li>
												<li id="cardDscnt_Y1_li" style="display: none;">법인/체크/기프트 카드는 청구할인 대상에서 제외될 수 있습니다.</li>
												<li id="cardDscnt_Y2_li" style="display: none;">일 최대 청구할인 한도에 따라 청구할인 예상금액은 달라질 수 있습니다.</li>
												<li>신용/체크카드 결제금액이 30만원 이상인 경우 공인인증서가 필요합니다.</li>
											</ul>
										</div>
									</td>
								</tr>
								<!--// 2017-01-18 추가 : 카드 결제 안내 추가 -->
								<!--
								2017-01-18 수정 : 할부혜택 삭제
								<tr>
									<th scope="row">할부혜택</th>
									<td>
										<div>
											<dl class="info_dot_list type2">
												<dt>무이자할부 안내</dt>
												<dd><span>신한카드</span> <span>5만원이상</span> 2,3,4,5,6,12개월</dd>
												<dd><span>KB국민카드</span> <span>5만원이상</span> 2,3,4,5,6,12개월</dd>
												<dd><span>삼성카드</span> <span>5만원이상</span> 2,3,4,5,6,12개월</dd>
												<dd><span>현대카드</span> <span>5만원이상</span> 2,3,4,5,6,12개월</dd>
												<dd><span>KB국민카드</span> <span>5만원이상</span> 2,3,4,5,6,12개월</dd>
												<dd><span>신한카드</span> <span>5만원이상</span> 2,3,4,5,6,12개월</dd>
												<dd><span>신한카드</span> <span>5만원이상</span> 2,3,4,5,6,12개월</dd>
												<dd><span>KB국민카드</span> <span>5만원이상</span> 2,3,4,5,6,12개월</dd>
												<dd><span>신한카드</span> <span>5만원이상</span> 2,3,4,5,6,12개월</dd>
											</dl>
											<p class="tx_info mgT15">* 법인카드/체크카드는 할부 적용제외</p>
										</div>
									</td>
								</tr>
								-->
								</tbody>
							</table>
						</li>
						<!--// 신용카드 선택 시 -->
						<!-- 무통장입금 선택 시 -->
						<li paymethod="61" style="display: none;">
							<table class="tbl_inp_form no_line">
								<caption>무통장입금 입력 안내</caption>
								<colgroup>
									<col style="width:170px">
									<col style="width:*">
								</colgroup>
								<tbody>
								<tr>
									<th scope="row">은행명</th>
									<td>
										<div>
											<select id="VirDepositBank" name="cjBnkCd" class="selH28" title="은행를 선택해주세요." style="width:300px" data-attr="결제수단선택^은행명" disabled="disabled">
												
													<option value="003" targetid="03">기업</option>
												
													<option value="004" targetid="06">국민</option>
												
													<option value="007" targetid="07">수협</option>
												
													<option value="011" targetid="11">농협</option>
												
													<option value="020" targetid="20">우리</option>
												
													<option value="031" targetid="31">대구</option>
												
													<option value="032" targetid="32">부산</option>
												
													<option value="039" targetid="39">경남</option>
												
													<option value="071" targetid="71">우체국</option>
												
													<option value="081" targetid="81">하나</option>
												
													<option value="088" targetid="88">신한</option>
												
											</select>
											<select name="bnkCd" style="display: none;" disabled="disabled">
												
													<option value="02">산업</option>
												
													<option value="03">기업</option>
												
													<option value="05">외환</option>
												
													<option value="06">국민</option>
												
													<option value="07">수협</option>
												
													<option value="11">농협</option>
												
													<option value="20">우리</option>
												
													<option value="23">SC제일</option>
												
													<option value="27">씨티</option>
												
													<option value="31">대구</option>
												
													<option value="32">부산</option>
												
													<option value="34">광주</option>
												
													<option value="35">제주</option>
												
													<option value="37">전북</option>
												
													<option value="39">경남</option>
												
													<option value="45">새마을금고</option>
												
													<option value="48">신협</option>
												
													<option value="71">우체국</option>
												
													<option value="81">하나</option>
												
													<option value="88">신한</option>
												
													<option value="89">케이뱅크</option>
												
													<option value="90">카카오뱅크</option>
												
											</select>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">입금기한</th>
									<td>
										<div>
											2023.11.10
										</div>
									</td>
								</tr>
								<!--
								2017-01-18 수정 : 무통장 입금 시 휴대폰정보 입력 영역 삭제
								<tr>
									<th scope="row">휴대폰</th>
									<td>
										<div>
											<select name=""  class="selH28" title="휴대폰 이동통신번호를 선택해주세요." style="width:90px">
												<option value="">010</option>
												<option value="">011</option>
												<option value="">016</option>
												<option value="">019</option>
											</select>
											 - <input type="text" name="" value="1234" class="inpH28" title="휴대폰 두번째자리를 입력해주세요." style="width:90px" />
											 - <input type="text" name="" value="5678" class="inpH28" title="휴대폰 마지막자리를 입력해주세요." style="width:90px" />
										</div>
									</td>
								</tr>
								 -->
								<tr>
									<th scope="row">입금자명</th>
									<td>
										<div>
											<input type="text" id="NameDepositor" name="morcManNm" value="신기범" class="inpH28" title="입금자명을 입력해주세요." style="width:200px" data-attr="결제수단선택^입금자명" disabled="disabled">
										</div>
									</td>
								</tr>
								<!-- 2017-01-18 추가 : 무통장입금 결제안내 문구 추가 -->
								<tr>
									<td colspan="2">
										<div class="info_dot_list_area">
											
												
													
														
															
																
																	<ul>
	<li><span style="color:#757d86">은행별로 입금가능시간이 다를 수 있습니다.</span></li>
</ul>

																	
																
															
														
													
												
											
											<ul>
												<li>주문일 기준 다음날(24시간 이내)까지 입금이 되지 않으면 주문 취소 처리됩니다.</li>
											</ul>
										</div>
									</td>
								</tr>
								<!--// 2017-01-18 추가 : 무통장입금 결제안내 문구 추가 -->
								</tbody>
							</table>
						</li>
						<!--// 무통장입금 선택 시 -->
						<!-- 계좌이체 선택 시 -->
						<li paymethod="21" style="display: none;">
							<table class="tbl_inp_form no_line">
								<caption>계좌이체 안내</caption>
								<colgroup>
									<col style="width:170px">
									<col style="width:*">
								</colgroup>
								<tbody>
								<tr>
									<th scope="row">결제안내</th>
									<td>
										<div>
											<!-- 2017-01-18 수정 : 버튼 삭제 및 하단 문구 수정 -->
											<div class="info_dot_list_area">
												
												<ul>
													<li>계좌이체로 결제 완료시 본인 계좌에서 즉시 이체 처리됩니다.</li>
													<li>실시간 계좌이체는 은행별 이용시간이 다를 수 있습니다.</li>
												</ul>
											</div>
											<!--
											<p class="mgT10"><button class="btnSmall wGray w100"><span>은행별 이용시간</span></button></p>
											 -->
										</div>
									</td>
								</tr>
								</tbody>
							</table>
						</li>
						<!--// 계좌이체 선택 시 -->
						<!-- 휴대폰결제 선택 시 -->
						<li paymethod="22" style="display: none;">
							<table class="tbl_inp_form no_line">
								<caption>휴대폰결제 안내</caption>
								<colgroup>
									<col style="width:170px">
									<col style="width:*">
								</colgroup>
								<tbody>
								<tr>
									<th scope="row">결제안내</th>
									<td>
										<div class="info_dot_list_area">
											
											<ul>
												<li>휴대폰 결제는 100만원까지 결제가 가능합니다.</li>
												<li>한도문의는 모빌리언스(1600-0523), 다날(1566-3355), 페이레터(1599-7591)로 문의주시기 바랍니다.</li><!-- 2017-01-18 수정 : 문구수정 -->
											</ul>
										</div>
									</td>
								</tr>
								</tbody>
							</table>
						</li>
						<!--// 휴대폰결제 선택 시 -->
						<!-- 문화상품권(컬쳐캐쉬) 선택 시 -->
						<li paymethod="23" style="display: none;">
							<div class="other_cash_box">
								<!-- 조회 전 -->
								<div class="cash_inquiry_area" id="cultureLandBeforeLogin">
									<p>보유하신 컬쳐캐쉬(문화상품권) 내역 조회 후 사용이 가능합니다.</p>
									<button class="btnSmall wGray2" type="button" data-rel="layer" data-target="cultureLandLoginPop" id="cultureLandLoginPop_btn">조회</button>
								</div>
								<!--// 조회 전 -->
								<!-- 조회 후 -->
								<div class="cash_inquiry_area" id="cultureLandAfterLogin" style="display: none;">
									<input type="hidden" id="cultureLandOwnCash" value="" disabled="disabled">
									<p>고객님의 보유하신 컬쳐캐쉬는 <span class="cash_price"><span class="tx_num" id="cultureLandOwnCash_span"></span>원</span>입니다.</p>
									<p class="tx_info">최종 결제금액을 확인하신 후, [결제하기] 버튼을 클릭하시면 결제가 완료됩니다.</p>
									<button class="btnSmall wGray2" type="button" id="cultureLandInquire_btn">다시 조회</button>
								</div>
								<!--// 조회 후 -->
								<div class="info_dot_list_area">
									
									<ul>
										<li>문화상품권을 컬쳐캐쉬로 충전 후 사용하실 수 있습니다.</li>
										<li>컬쳐캐쉬 충전 및 사용내역, 현금영수증은 컬쳐랜드 홈페이지에서 확인하실 수 있습니다.</li>
										<li>컬쳐캐쉬는 결제금액 전액으로만 사용이 가능합니다.</li>
									</ul>
								</div>
							</div>
						</li>
						<!--// 문화상품권(컬쳐캐쉬) 선택 시 -->
						<!-- 도서상품권(북앤라이프 캐쉬) 선택 시 -->
						<li paymethod="24" style="display: none;">
							<div class="other_cash_box">
								<!-- 조회 전 -->
								<div class="cash_inquiry_area" id="bookAndLifeBeforeLogin">
									<p>보유하신 북앤라이프 캐쉬(도서상품권) 내역 조회 후 사용이 가능합니다.</p>
									<button class="btnSmall wGray2" type="button" data-rel="layer" data-target="bookAndLifeLoginPop" id="bookAndLifeLoginPop_btn">조회</button>
								</div>
								<!--// 조회 전 -->
								<!-- 조회 후 -->
								<div class="cash_inquiry_area" id="bookAndLifeAfterLogin" style="display: none;">
									<input type="hidden" id="bookAndLifeOwnCash" value="" disabled="disabled">
									<p>
										고객님의 보유하신 북앤라이프 캐쉬는 <span class="cash_price"><span class="tx_num" id="bookAndLifeOwnCash_span"></span>원</span>입니다.
									</p>
									<p class="tx_info">최종 결제금액을 확인하신 후, [결제하기] 버튼을 클릭하시면 결제가 완료됩니다.</p>
									<button class="btnSmall wGray2" type="button" id="bookAndLifeInquire_btn">다시 조회</button>
								</div>
								<!--// 조회 후 -->
								<div class="info_dot_list_area">
									
									<ul>
										<li>도서상품권을 북앤라이프 캐쉬로 충전 후 사용하실 수 있습니다.</li>
										<li>북앤라이프 캐쉬 충전 및 사용내역은 북앤라이프 홈페이지에서 확인하실 수 있습니다.</li>
										<li>북앤라이프 캐쉬는 결제금액 전액으로만 사용이 가능합니다.</li>
									</ul>
								</div>
							</div>
						</li>
						<!--// 도서상품권(북앤라이프 캐쉬) 선택 시 -->

						<!-- PAYCO 선택 시 2017-04-18 -->
						<li paymethod="25" style="display: none;">
							<div class="other_cash_box">
								<div class="info_dot_list_area">
									
										
											
												
													
														
															<ul>
	<li><strong>&lt;11월 PAYCO 결제혜택&gt;</strong></li>
	<li>23.11.01(수) ~ 11.30(목)</li>
	<li>①&nbsp;PAYCO포인트로 1만원 이상 결제 시&nbsp;<strong>1천원 즉시할인</strong>&nbsp;(올리브영 첫결제/60일 휴면 고객)</li>
	<li>② PAYCO포인트로 결제 시 결제금액의<strong>&nbsp;1% 무제한 적립&nbsp;</strong>(익월 25일 지급)</li>
	<li>③&nbsp;PAYCO 1.5만원 결제 시 <strong>1천원 쿠폰 지급</strong> (결제 전 PAYCO앱에서 발급 必)</li>
	<li>④&nbsp;PAYCO 생애 첫 가입/결제 <strong>4천 포인트&nbsp;지급</strong>&nbsp;(30일 내&nbsp;신청&nbsp;必)</li>
</ul>

															
																<script type="text/javascript">
																	// 결제수단 혜택 플래그
																	$(document).ready(function(){
																		try{
																			forder.orderForm.payMethod.addPayBenefitFlag("25");
																		}catch(e){console.log(e);}
																	});
																</script>
															
														
													
												
											
										
									
									<ul>
										<li>PAYCO는 NHN엔터테인먼트에서 제공하는 안전한 간편결제 서비스로 올리브영몰에서는 신용카드 결제가 가능합니다.</li>
										<li>신용카드 등록 시 휴대폰과 카드명의자가 동일해야합니다. (모든 신용/체크카드 가능)</li>
										<li>PAYCO로 결제 시, 제휴카드 할인(CJ카드, 임직원할인 포함)이 적용되지 않습니다.</li>
										<li>무이자할부는 PAYCO 결제창에서 확인하실 수 있습니다.</li>
									</ul>
								</div>
							</div>
						</li>
						<!-- //PAYCO 선택 시 2017-04-18 -->
						<!-- KAKAOPAY 선택 시 2017-12-13 -->
						<li paymethod="26" style="display: none;">
							<div class="other_kakao_box">
								<div class="info_dot_list_area">
									
										
											
												
													
														
															<ul>
	<li><span style="color:#757d86"><span style="font-family:맑은 고딕"><strong>&lt;카카오페이 유의사항&gt;</strong></span></span></li>
	<li><span style="color:#757d86"><span style="font-family:맑은 고딕">무이자할부는 카카오페이 모바일 결제창에서 선택하실 수 있습니다.</span></span></li>
	<li><span style="color:#757d86"><span style="font-family:맑은 고딕">휴대폰과 카드명의자가 동일해야 결제 가능합니다.</span></span></li>
	<li><span style="color:#757d86"><span style="font-family:맑은 고딕">카카오페이 결제 시, 제휴카드 할인/적립(CJ카드, CJ iD카드, 임직원할인 포함)이 적용되지 않습니다.</span></span></li>
	<li><span style="color:#757d86"><span style="font-family:맑은 고딕">카드 영수증 및 현금영수증 확인은&nbsp;카카오페이 홈페이지에서 확인 가능합니다.(카카오페이 홈 &gt; 설정 &gt; 결제내역)</span></span></li>
	<li><span style="color:#757d86"><span style="font-family:맑은 고딕">카카오페이 고객센터 : 1644-7405</span></span></li>
</ul>

															
														
													
												
											
										
									
								</div>
							</div>
						</li>
						<!-- //KAKAOPAY 선택 시 2017-12-13 -->

						<!-- NAVERPAY 선택 시 20201021 배포에선 네이버페이 노출 제외 -->
						<li paymethod="29" style="display: none;">
							<div class="other_kakao_box">
								<div class="info_dot_list_area">
									
										
											
												
													
														
															<ul>
	<li><strong>&lt;네이버페이 상시혜택&gt;</strong></li>
	<li><strong>네이버 검색 통해 올리브영에서 구매 시, 기본 혜택 1%가 적립됩니다</strong></li>
	<li>네이버페이 머니로&nbsp;충전,결제하면 2.5% 적립됩니다</li>
	<li>네이버페이 머니 하나통장이나 미래에셋증권CMA-RP 네이버통장으로 충전 후 결제 시 0.5% 추가(총 3%) 적립됩니다 (구매확정 / 거래완료 후 적립)</li>
	<li><strong>&lt;네이버페이 유의사항&gt;</strong></li>
	<li>주문 변경 시 카드사 혜택 및 할부 적용 여부는 해당 카드사 정책에 따라 변경될 수 있습니다</li>
	<li>네이버페이로 결제 시, 제휴카드 할인/적립(CJ카드, CJ iD카드, 임직원할인 포함)이 적용되지 않습니다</li>
	<li>현금영수증 확인은 네이버페이 홈페이지에서 확인 가능합니다&nbsp;(네이버페이 홈 &gt; 결제내역)</li>
	<li>네이버페이 고객센터 : 1588-3819</li>
</ul>

															
																<script type="text/javascript">
																	// 결제수단 혜택 플래그
																	$(document).ready(function(){
																		try{
																			forder.orderForm.payMethod.addPayBenefitFlag("29");
																		}catch(e){console.log(e);}
																	});
																</script>
															
														
													
														
															<ul>
	<li><span style="color:#757d86;"><strong>&lt;은행 별 시스템 점검 안내&gt;</strong></span></li>
	<li><span style="color:#757d86;">점검 시간 내 네이버페이 계좌 결제, 취소 및 신규 등록이 원활하지 않을 수 있습니다. 다른 결제수단을 이용해주세요.<br>
	<span style="color:#757d86;"><span style="color:#757d86;"><span style="color:#757d86;">우리은행: 11/12(일)&nbsp;오전 2시~오전 6시</span></span></span><br>
	<span style="color:#757d86;"><span style="color:#757d86;"><span style="color:#757d86;"><span style="color:#757d86;"><span style="color:#757d86;">경남은행: 11/12(일) 오전 2시~오전 6시</span></span></span></span></span><br>
	<span style="color:#757d86;"><span style="color:#757d86;"><span style="color:#757d86;">광주은행: 11/12(일)&nbsp;오전 2시~오전 6시</span></span></span><br>
	<span style="color:#757d86;"><span style="color:#757d86;"><span style="color:#757d86;">KDB산업은행: 11/12(일)&nbsp;오전 0시~오전 4시<br>
	기업은행: 11/12(일) 오전 0시~오전 6시<br>
	케이뱅크: 11/12(일) 오전 0시~오전 8시<br>
	하나은행: 11/18(토) 오전 0시~오전 12시</span></span></span><br>
	<span style="color:#757d86;"><span style="color:#757d86;"><span style="color:#757d86;"><span style="color:#757d86;"><span style="color:#757d86;">국민은행: 11/19(일)&nbsp;오전 0시~오전 6시</span></span></span></span></span><br>
	<span style="color:#757d86;"><span style="color:#757d86;"><span style="color:#757d86;"><span style="color:#757d86;"><span style="color:#757d86;"><span style="color:#757d86;"><span style="color:#757d86;"><span style="color:#757d86;">농협은행: 11/20(월)&nbsp;오전 0시~오전 4시</span></span></span></span></span></span></span></span></span><br>
	<span style="color:#757d86;">유안타증권: 11/25(토) 오전 8시~오후 11시</span></li>
</ul>

															
														
													
												
											
										
									
								</div>
							</div>
						</li>
						<!-- //NAVERPAY 선택 시 -->

						<!-- 결제혜택 정보 -->
						<li class="ad_info_area">
							<div class="ad_info">
								

									

								

								<!-- <div class="txt">
									<span class="icon">국민카드 4만원 이상 결제 시 3천원 청구 할인</span>
									<button type="button" class="btn_info" onclick="layTooltip('lay_tooltip_01');">카드 혜택 레이어 팝업</button>
									<div class="lay_tooltip" id="lay_tooltip_01">
										<p class="stxt"><em>국민 BC 카드 혜택</em><br>카드에 BC마크가 없는 경우 적용 불가. 1일 1회 한정</p>
										<button type="button" class="btnClose" onclick="layTooltipClose('lay_tooltip_01');">닫기</button>
									</div>
								</div> -->

							</div>
						</li>

						<li class="ad_info_area">
							<div class="ad_info">

								
									
								

							</div>
						</li>
						<!-- //결제혜택 정보 -->

					</ul>

					<!-- 현금영수증 신청 -->
					<div class="" id="cashReceipt" style="display: none;">
						<h2 class="sub-title2">현금영수증 신청</h2>
						<table class="tbl_inp_form type2" id="receipt_table">
							<caption>현금영수증 신청 입력 폼</caption>
							<colgroup>
								<col style="width:170px">
								<col style="width:*">
							</colgroup>
							<tbody>
							<tr>
								<th scope="row">현금영수증</th>
								<td>
									<div>
										<select id="crIssuCd" name="crIssuCd" class="selH28" title="현금영수증 신청여부를 선택해주세요." style="width:200px" data-attr="현금영수증신청^현금영수증" disabled="">
											<option value="">신청안함</option>
											<option value="10">개인소득공제용</option>
											<option value="20">사업자지출증빙용</option>
										</select>
									</div>
								</td>
							</tr>

							<!-- 개인소득공제용신청 시 -->
							<tr crissucd="10" style="display: none;">
								<th scope="row">발급방법</th>
								<td>
									<div>
										<input type="radio" id="crIssuMeanSctCd_3" name="crIssuMeanSctCd" value="3" checked="checked" data-attr="현금영수증신청^발급방법" disabled=""> <label for="crIssuMeanSctCd_3">휴대폰</label>
										<input type="radio" id="crIssuMeanSctCd_5" name="crIssuMeanSctCd" value="5" data-attr="현금영수증신청^발급방법" disabled=""> <label for="crIssuMeanSctCd_5">현금영수증카드</label>
									</div>
								</td>
							</tr>
							<!-- 개인소득공제용 [휴대폰] 선택 시 -->
							<tr crissucd="10" crissumeansctcd="3" style="display: none;">
								<th scope="row">휴대폰</th>
								<td>
									<div>
										<select id="dispCashReceiptInfo11" class="selH28" title="현금영수증 휴대폰 앞자리를 선택해주세요." style="width:90px" data-attr="현금영수증신청^휴대폰" disabled="">
											
												<option value="010" selected="selected">010</option>
											
												<option value="011">011</option>
											
												<option value="016">016</option>
											
												<option value="017">017</option>
											
												<option value="018">018</option>
											
												<option value="019">019</option>
											
												<option value="02">02</option>
											
												<option value="031">031</option>
											
												<option value="032">032</option>
											
												<option value="033">033</option>
											
												<option value="041">041</option>
											
												<option value="042">042</option>
											
												<option value="043">043</option>
											
												<option value="044">044</option>
											
												<option value="051">051</option>
											
												<option value="052">052</option>
											
												<option value="053">053</option>
											
												<option value="054">054</option>
											
												<option value="055">055</option>
											
												<option value="061">061</option>
											
												<option value="062">062</option>
											
												<option value="063">063</option>
											
												<option value="064">064</option>
											
												<option value="070">070</option>
											
												<option value="080">080</option>
											
												<option value="0130">0130</option>
											
												<option value="0303">0303</option>
											
												<option value="0502">0502</option>
											
												<option value="0503">0503</option>
											
												<option value="0504">0504</option>
											
												<option value="0505">0505</option>
											
												<option value="0506">0506</option>
											
												<option value="0507">0507</option>
											
										</select>
										- <input type="text" id="dispCashReceiptInfo12" value="7477" class="inpH28" title="현금영수증 휴대폰 가운데 자리를 입력해주세요." this="현금영수증 휴대폰 가운데 자리는" style="width:90px" data-attr="현금영수증신청^휴대폰" disabled="">
										- <input type="text" id="dispCashReceiptInfo13" value="0938" class="inpH28" title="현금영수증 휴대폰 마지막 4자리수를 입력해주세요." this="현금영수증 휴대폰 마지막 자리는" style="width:90px" data-attr="현금영수증신청^휴대폰" disabled="">
										<input type="hidden" id="crPhoneNumber" name="crIssuMeanNo" value="01074770938" disabled="">
									</div>
								</td>
							</tr>
							<!--//개인소득공제용 [휴대폰] 선택 시 -->
							<!-- 개인소득공제용 [현금영수증카드] 선택 시 -->
							<tr crissucd="10" crissumeansctcd="5" style="display: none;">
								<th scope="row">현금영수증 카드번호</th>
								<td>
									<div>
										<input type="text" id="CashReceipts" name="crIssuMeanNo" class="inpH28" title="현금영수증 카드번호를 입력해주세요." this="현금영수증 카드번호는" style="width:300px" disabled="">
									</div>
								</td>
							</tr>
							<!--// 개인소득공제용 [현금영수증카드] 선택 시 -->
							<!--// 개인소득공제용신청 시 -->

							<!-- 사업자지출증빙용 시 -->
							<tr crissucd="20" style="display: none;">
								<th scope="row">사업자등록번호</th>
								<td>
									<div>
										<input type="hidden" name="crIssuMeanSctCd" value="2" disabled="">
										<input type="text" id="BusinessNumber" name="crIssuMeanNo" class="inpH28" title="현금영수증 사업자 등록번호를 입력해주세요." this="현금영수증 사업자 등록번호는" style="width:300px" disabled="">
									</div>
								</td>
							</tr>
							<!--// 사업자지출증빙용 시 -->
							</tbody>
						</table>
						<!--// 현금영수증 신청 -->
					</div>
				</div>

				<div class="right_area">
					<!-- 최종 결제정보 -->
					<h2 class="sub-title2">최종 결제정보</h2>
					<!--// 최종 결제정보 -->
					<ul class="total_payment_box">
						<li>
							<span class="tx_tit">총 상품금액</span>
							<span class="tx_cont"><span class="tx_num">${totalPrice }</span>원</span>
							<input type="hidden" name="goodsAmt" value="${totalPrice }">
						</li>
						<li>
							<span class="tx_tit">쿠폰할인금액</span><!-- 2017-01-18 수정 : 문구수정 -->
							<span class="tx_cont colorOrange"><span class="tx_num" id="totDscntAmt_span">- ${totalPrice - salePrice }</span>원</span>
							<input type="hidden" name="descentAmt" value="4000">
							<input type="hidden" id="imdtDscntAmt" value="0">
						</li>
						
						<li class="line_top2">
							<span class="tx_tit">총 배송비 <button type="button" class="btnSmall wGray" onclick="fnLayerSet('deliveryInfo', 'open');"><span>상세보기</span></button></span>
							<span class="tx_cont"><span class="tx_num" id="dlexPayAmt_span">0</span>원</span>
							<input type="hidden" name="dlexPayAmt" value="0">
						</li>
						
						<li id="oyGiftCardAplyAmt_li" style="display: none;">
							<span class="tx_tit">올리브영 기프트카드</span>
							<span class="tx_cont colorOrange"><span class="tx_num" id="oyGiftCardAplyAmt_span">0</span>원</span>
						</li>
						<li id="cjGiftCardAplyAmt_li" style="display: none;">
							<span class="tx_tit">CJ 기프트카드</span>
							<span class="tx_cont colorOrange"><span class="tx_num" id="cjGiftCardAplyAmt_span">0</span>원</span>
						</li>
						<li>
							<span class="tx_tit"><span class="tx_num">CJ ONE</span> 포인트</span>
							<span class="tx_cont colorOrange"><span class="tx_num" id="cjonePntAplyAmt_span">0</span>원</span>
						</li>
						<!-- 임직원일 경우 -->
						<li id="cafeteriaPntAplyAmt_li" style="display: none;">
							<span class="tx_tit">카페테리아 포인트</span>
							<span class="tx_cont colorOrange"><span class="tx_num c" id="cafeteriaPntAplyAmt_span">0</span>원</span>
						</li>
						<!--// 임직원일 경우 -->
						<li id="csmnAplyAmt_li" style="display: none;">
							<span class="tx_tit">예치금</span>
							<span class="tx_cont colorOrange"><span class="tx_num" id="csmnAplyAmt_span">0</span>원</span>
						</li>
						<li id="culturelandGiftAplyAmt_li" style="display: none;">
							<span class="tx_tit">컬쳐캐쉬</span>
							<span class="tx_cont colorOrange"><span class="tx_num" id="culturelandGiftAplyAmt_span">0</span>원</span>
						</li>
						<li id="bookGiftAplyAmt_li" style="display: none;">
							<span class="tx_tit">북앤라이프캐쉬</span>
							<span class="tx_cont colorOrange"><span class="tx_num" id="bookGiftAplyAmt_span">0</span>원</span>
						</li>
						<li class="total">
							<span class="tx_tit">최종 결제금액</span>
							<span class="tx_cont"><span class="tx_num" id="totPayAmt_sum_span">${salePrice }</span>원</span>
							<input type="hidden" name="remainAmt" value="311400">
							<input type="hidden" name="ordPayAmt" value="311400">
							<input type="hidden" name="goodsNm" value="그레이멜린 알래스카85 내추럴 토너500ml 외 3건">
						</li>
						
						<li> <!-- 3440969_PM작업시 오늘드림 레이어 팝업 노출 요청 건 -->
							<button class="btnPayment" id="btnPay" name="btnPay" type="button" data-attr="최종결제정보^결제하기">결제하기<em id="giftNoti3" style="display: none;">(증정품은 결제 시 확인 가능합니다)</em> <em id="giftNotiQuick" style="display: none;">(오늘드림으로 주문 시 온라인 단독 <br>증정품이 제공되지 않습니다.)</em> <em id="giftNoti4" style="display: none;">(오늘드림 주문은 온라인 전용 증정품이<br>제공되지 않습니다.)</em></button>
							<input type="hidden" id="tempOrdNo" value="">
						</li>
					</ul>

					<div class="add_chk_area">
						<p class="inchk clrfix">
							<input type="checkbox" id="savePayMethodYn" name="savePayMethodYn" value="Y" checked="checked" paymeancd="" acqrcd="" instmmcnt="" pntuseyn="" bnkcd="" morcmannm="" data-attr="최종결제정보^빠른모드">
							<!-- <input type="checkbox" id="fastpaySave" name="" value=""> -->
							<label for="savePayMethodYn">지금 설정을 다음 주문에도 사용하겠습니다.<br>(빠른 모드)</label>
						</p>
					</div>

					<div class="agree_payment_box" id="agreeList">
						<div class="all_agree_cont">
							<p>주문 상품정보 및 결제대행 서비스 이용약관에 모두 동의하십니까?</p><!-- 2017-01-18 수정 : 문구수정 -->
							<input type="checkbox" id="agree_all" name="TrrmsCheck1ed" value="" data-attr="최종결제정보^결제대행동의"> <label for="agree_all">모두 동의</label>
							<button type="button" class="btnDetailAgree" id="btnDetailAgree">주문상품 및 결제대행 서비스 이용약관 자세히 보기 열기/닫기</button>
						</div>
						<ul class="other_agree_cont">
							<li>
								<p class="tx_tit">주문 상품정보에 대한 동의</p>
								<p class="tx_cont2"><input type="checkbox" id="agree_1" name="agreeChk" value="" title="주문 상품정보 및 결제대행 서비스 이용약관에 동의해주세요." data-attr="최종결제정보^결제대행동의"> <label for="agree_1">주문하실 상품, 가격, 배송정보, 할인내역등을 최종 확인하였으며, 구매에 동의합니다. <br>(전상거래법 제8조 제2항)</label></p>
							</li>
							
							<li>
								<p class="tx_tit">결제대행 서비스 이용약관 동의</p>
								<p class="tx_cont">
									<input type="checkbox" id="agree_2_1" name="agreeChk" value="" title="전자금융거래 기본약관에 동의해주세요." data-attr="최종결제정보^6_결제대행동의"> <label for="agree_2_1">전자금융거래 기본약관</label>
									<button type="button" class="btnSmall wGray" onclick="javascript:forder.orderForm.openPopup('https://static.oliveyoung.co.kr/pc-static-root/html/etc/foot_agreement.html','agree',400,900);"><span>약관보기</span></button>
								</p>
								<p class="tx_cont">
									<input type="checkbox" id="agree_2_2" name="agreeChk" value="" title="개인정보 수집 및 이용약관에 동의해주세요." data-attr="최종결제정보^6_결제대행동의"> <label for="agree_2_2">개인정보 수집 및 이용 동의</label>
									<button type="button" class="btnSmall wGray" onclick="javascript:forder.orderForm.openPopup('https://static.oliveyoung.co.kr/pc-static-root/html/etc/foot_agreement_02.html','agree',400,900);"><span>약관보기</span></button>
								</p>
								<p class="tx_cont">
									<input type="checkbox" id="agree_2_3" name="agreeChk" value="" title="개인정보 제공 및 위탁약관에 동의해주세요." data-attr="최종결제정보^6_결제대행동의"> <label for="agree_2_3">개인정보 제공 및 위탁 동의</label>
									<button type="button" class="btnSmall wGray" onclick="javascript:forder.orderForm.openPopup('https://static.oliveyoung.co.kr/pc-static-root/html/etc/foot_agreement_03.html','agree',400,900);"><span>약관보기</span></button>
								</p>
							</li>
							<!--
                                CJOYPG-1745 :: 제3자제공 동의 항목 추가
                                ## html 추가
                            -->
							
						</ul>
					</div>
				</div>

			</div>
			<!--// 쿠폰 및 포인트, 결제수단, 결제정보 -->
		</form>
		
	</div>
	<!-- //#Contents -->
</div>
</div>
<jsp:include page="/layout/footer.jsp"></jsp:include>
<script>
	$(function(){
		
		let delid = $("#dlvpSelect").val();
		
		$("tr#pickupHide4."+delid).css("display","table-row");
		
		$("#dlvpSelect").on("change",function(){
			delid = $("#dlvpSelect").val();
			$("tr#pickupHide4").css("display","none");
			$("tr#pickupHide4."+delid).css("display","table-row");
		})
	})
</script>
</body>
</html>