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
<script src="/Black_OY/js/store.js"></script>
<script src="/Black_OY/js/head.js"></script>
<link rel="stylesheet" href="/BlackOY/css/style.css">
<title>블랙올리브영 온라인몰</title>
</head>
<body>
<jsp:include page="/layout/head.jsp"></jsp:include>

<div id="todayDeliveryPopup"><!-- 배송지 등록 레이어 팝업 --><div class="layer_pop_wrap w850" id="tddlvr_regDelivery" style="z-index:999;"> <div class="layer_cont2">  <h2 class="layer_title">배송지 등록</h2>  <div class="layer_scroll_box">   <!-- 배송지/환불계좌 등록 -->   <table class="board-write-2s">    <caption>배송지/환불계좌 등록</caption>    <colgroup>     <col style="width:25%;">     <col style="width:75%;">    </colgroup>    <tbody>     <tr>      <th scope="row"><label for="AddressChoice">배송지명</label></th>      <td class="star">       <input type="text" id="tddlvr_AddressName" title="배송지를 입력하세요" placeholder="최대 10자" data-required="true" style="width:200px;" maxlength="10">       <input type="checkbox" id="tddlvr_baseAddressCheckBox">       <label for="BasiceAddress">기본 배송지 설정</label>      </td>     </tr>     <tr>      <th scope="row"><label for="Recipient">받는 분</label></th>      <td class="star"><input type="text" id="tddlvr_Recipient" title="받는분을 입력하세요" placeholder="최대 10자" data-required="true" style="width:200px;" maxlength="10"></td>     </tr>     <tr>      <th scope="row"><label for="tddlvr_PhoneNumber1">연락처 1</label></th>      <td class="star">       <select id="tddlvr_PhoneNumber1" title="통신사를 선택하세요" data-required="true" style="width:90px;">        <option>010</option>        <option>011</option>       </select>       <span class="desc">-</span>       <input id="tddlvr_PhoneNumber2" type="text" maxlength="4" title="휴대전화 번호 가운데 4자리를 입력하세요" data-required="true" style="width:90px;" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');">       <span class="desc">-</span>       <input id="tddlvr_PhoneNumber3" type="text" maxlength="4" title="휴대전화 번호 마지막 4자리를 입력하세요" data-required="true" style="width:90px;" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');">      </td>     </tr>     <tr>      <th scope="row"><label for="tddlvr_SecondPhoneNumber1">연락처 2</label></th>      <td style="padding-left:36px;">       <select id="tddlvr_SecondPhoneNumber1" title="통신사를 선택하세요" style="width:90px;">        <option>010</option>        <option>011</option>       </select>       <span class="desc">-</span>       <input id="tddlvr_SecondPhoneNumber2" type="text" maxlength="4" title="휴대전화 번호 가운데 4자리를 입력하세요" style="width:90px;" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');">       <span class="desc">-</span>       <input id="tddlvr_SecondPhoneNumber3" type="text" maxlength="4" title="휴대전화 번호 마지막 4자리를 입력하세요" style="width:90px;" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');">      </td>     </tr>     <tr class="addr">      <th scope="row"><label for="">주소</label></th>      <td class="star">       <input id="tddlvr_postCode" type="text" title="주소를 입력하세요." disabled="disabled" data-required="true" style="width:90px;">       <button id="tddlvr_postButton" type="button" class="btnPost">우편번호</button>       <!-- 2016-12-28 삭제 <div class="interval"><input type="text" disabled="disabled" title="주소를 입력하세요" style="width:500px;"></div> -->       <!-- 신규 삽입 -->       <p id="tddlvr_roadDetails" class="road">        도로명 : <br>        <span class="data">지&nbsp; &nbsp;번 : </span>       </p>       <!-- //신규 삽입 -->       <input id="tddlvr_detailAddress" type="text" title="상세주소를 입력하세요." placeholder="상세주소를 입력하세요." data-required="true" style="width:500px;" maxlength="30">      </td>     </tr>    </tbody>   </table>   <!-- //배송지/환불계좌 등록 -->   <!-- 배송 요청사항 -->   <div id="tddlvr_pickupHide5" style="overflow:hidden">    <div class="title_wrap">     <h2 class="sub-title2">배송 요청사항</h2>    </div>    <table class="tbl_inp_form important">     <caption></caption>     <colgroup><col style="width:170px"><col style="width:*"></colgroup>     <tbody>     <tr type="exist">      <th scope="row">공동현관 출입방법</th>      <td class="imp_data">       <span class="chk_area mgzero"><input type="radio" id="tddlvr_btn_door_manner_temp1" name="tddlvr_o2oVisitTypeSp" disabled="" data-required="true" value="1"><label for="tddlvr_btn_door_manner_temp1">비밀번호</label></span>       <span class="chk_area"><input type="radio" id="tddlvr_btn_door_manner_temp2" name="tddlvr_o2oVisitTypeSp" disabled="" value="2"><label for="tddlvr_btn_door_manner_temp2">경비실 호출</label></span>       <span class="chk_area"><input type="radio" id="tddlvr_btn_door_manner_temp3" name="tddlvr_o2oVisitTypeSp" disabled="" value="3"><label for="tddlvr_btn_door_manner_temp3">자유출입가능</label></span>       <span class="chk_area"><input type="radio" id="tddlvr_btn_door_manner_temp4" name="tddlvr_o2oVisitTypeSp" disabled="" value="4"><label for="tddlvr_btn_door_manner_temp4">기타사항</label></span>      </td>     </tr>     <tr id="quickAreaValuesRow" type="exist">      <th id="tddlvr_radioDescripter" scope="row">공동현관 비밀번호</th>      <td class="imp_data">       <input type="text" id="tddlvr_quickAreaDesc" name="tddlvr_o2oVisitTypeDesc" value="" class="inpH28" title="공동현관 출입방법 상세내용을 입력하세요." disabled="" data-required="true" maxlength="20" style="width: 500px">      </td>     </tr>     </tbody>    </table>    </div>   <!--// 배송 요청사항-->   <div class="usage-guide">    <p class="ptit">개인정보수집·이용 안내</p>    <ul>     <li>개인정보 수집 목적 : 상품구매 시 배송처리</li>     <li>개인정보 수집 항목 : 배송지명 , 수령인정보 (받는분 , 연락처 , 주소, 공동현관 출입방법: 비밀번호)</li>     <li>보유 및 이용기간 : <b>정보 삭제 또는 회원 탈퇴 시까지</b></li>     <li>확인 버튼을 누르지 않을 경우 배송지 정보가 저장되지 않습니다.</li>    </ul>   </div>   <p class="txt_ct mgT20"><input type="checkbox" id="dlvSaveAgreeCheck">위 개인정보 수집·이용을 확인하고 배송지를 등록합니다.</p>   <div class="area1sButton mgT20">    <a id="registDeliveryAddressButton" href="#none" class="btnGreen">등록</a>    <a id="cancelDeliveryAddressButton" href="#none" class="btnGray">취소</a>   </div>  </div>  <button class="layer_close type2" onclick="todayDeliveryService.popup.regDelivery.close()">창 닫기</button> </div></div></div>


<div id="Wrapper">
	<div id="skip_navi"><a href="#Container">본문바로가기</a></div>
	
	<!-- 상단 띠 배너 - 어워즈관 S -->
	<div class="banUpperBox" style="display: none">
		<div class="inner">
			<a href="javascript:common.link.commonMoveUrl('amusement/intro.do')" id="top_banner_image"></a>
			<a href="" class="btn_upper_close">오늘 안 보기</a>
		</div>
		<div class="dimBan"><div class="in"></div></div>
	</div>
	<div class="dimBanWhite" style="display:none"><div class="in"></div></div>
	<div class="dimBanBlack"></div>
	<!-- 상단 띠 배너 - 어워즈관 E -->

<form name="ssologinfrm" action="https://www.oliveyoung.co.kr/store/login/ssoLogin.do" method="post">
<input type="hidden" id="cjssoq" name="cjssoq">
</form>
	<div id="Container" class="store_footer">
		<div id="Contents" class="fix_full">
			<div class="sub_title_area store">
				<h1>매장안내 <span>가까운 매장을 등록해 보세요.</span></h1>
			</div>
			<div class="store_area">
					<div class="api_mapArea" id="map" style="overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/bg_tile.png&quot;);">
					<div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute; left: 1201px; top: 1305px;"><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/60/26.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1305px; top: -607px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/60/27.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1049px; top: -607px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/60/28.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -793px; top: -607px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/60/29.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -537px; top: -607px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/60/30.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -281px; top: -607px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/60/31.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -25px; top: -607px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/61/26.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1305px; top: -863px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/61/27.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1049px; top: -863px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/61/28.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -793px; top: -863px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/61/29.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -537px; top: -863px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/61/30.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -281px; top: -863px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/61/31.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -25px; top: -863px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/62/26.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1305px; top: -1119px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/62/27.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1049px; top: -1119px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/62/28.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -793px; top: -1119px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/62/29.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -537px; top: -1119px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/62/30.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -281px; top: -1119px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/62/31.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -25px; top: -1119px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/63/26.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1305px; top: -1375px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/63/27.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1049px; top: -1375px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/63/28.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -793px; top: -1375px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/63/29.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -537px; top: -1375px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/63/30.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -281px; top: -1375px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/8/63/31.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -25px; top: -1375px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 0; left: 0px; top: 0px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/123/53.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1177px; top: -862.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/123/54.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1049px; top: -862.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/123/55.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -921px; top: -862.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/123/56.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -793px; top: -862.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/123/57.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -665px; top: -862.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/123/58.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -537px; top: -862.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/124/53.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1177px; top: -990.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/124/54.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1049px; top: -990.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/124/55.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -921px; top: -990.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/124/56.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -793px; top: -990.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/124/57.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -665px; top: -990.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/124/58.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -537px; top: -990.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/125/53.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1177px; top: -1118.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/125/54.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1049px; top: -1118.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/125/55.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -921px; top: -1118.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/125/56.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -793px; top: -1118.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/125/57.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -665px; top: -1118.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/125/58.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -537px; top: -1118.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/126/53.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1177px; top: -1246.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/126/54.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1049px; top: -1246.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/126/55.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -921px; top: -1246.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/126/56.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -793px; top: -1246.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/126/57.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -665px; top: -1246.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/7/126/58.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -537px; top: -1246.5px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"></div><div style="position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1; width: 630px; height: 715px;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -2461px; top: -2735px; width: 3150px; height: 3575px;" viewBox="0 0 3150 3575"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);"><div style="position: absolute; margin: -41px 0px 0px -13px; z-index: 0; left: -1071px; top: -1100px; display: block;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way.png" alt="" role="presentation" title="고양향동점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 28px, 42px, 0px); top: 0px; left: 0px; width: 28px; height: 42px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1064px; top: -1266px; display: block;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="스타필드고양점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1126px; top: -1224px; display: block;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="고양원흥점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1152px; top: -1206px; display: block;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="롯데아울렛고양점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1063px; top: -1286px; display: block;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="삼송역점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1231px; top: -1152px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="행신역점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1122px; top: -1275px; display: block;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="원흥역점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1228px; top: -1187px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="고양행신점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1078px; top: -1324px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="고양삼송점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1236px; top: -1216px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="화정로데오점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1226px; top: -1301px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="고양원당점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1043px; top: -1462px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="고양동점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1346px; top: -1250px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="일산벨라시타점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1363px; top: -1259px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="백석역점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; margin: -33px 0px 0px -11px; z-index: 0; left: -1356px; top: -1302px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way_gray.png" alt="" role="presentation" title="일산백마점" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 23px, 34px, 0px); top: 0px; left: 0px; width: 23px; height: 34px;"></div><div style="position: absolute; z-index: 9999; white-space: nowrap; margin: 0px; left: -1071px; top: -1100px;"><div class="store_wayP mapMessage">    <div class="way_view">        <h4 class="tit">고양향동점        </h4>        <p class="addr" style="white-space : normal">경기도 고양시 덕양구 꽃마을로 4 퍼스트타워 101, 102, 103호</p>        <div class="area">            <div class="call">02-3159-0243</div>            <div class="time on">영업중</div>            <div class="fv_reShop_in DC8F_cnt"><span>3106</span>명이 관심매장으로 등록했습니다.</div>        </div>        <a href="javascript:;" onclick="javascript:store.main.openPopupStrDetail2('DC8F','Y')" class="store_btn" id="store_view">상세정보보기</a>        <button class="star active DC8F" onclick="javascript:store.main.setPopStarEvent($(this));" data_strno="DC8F">관심매장 등록</button>        <button class="wayClose" onclick="javascript:store.detail.closeMessage()"></button>    </div></div></div><div style="position: absolute; z-index: 9999; white-space: nowrap; margin: 0px; left: -735px; top: -723px;"></div><div style="position: absolute; z-index: 9999; white-space: nowrap; margin: 0px; left: -733px; top: -705px;"></div><div style="position: absolute; z-index: 9999; white-space: nowrap; margin: 0px; left: -735px; top: -723px;"></div></div></div></div><div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);"><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;"><div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;"></div><div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">2km</div></div><div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="https://t1.daumcdn.net/mapjsapi/images/2x/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a><div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div></div>
					<!-- 매장 검색 영역 -->
					<div class="store_side">
						<div class="store_tab">
							<ul class="clearfix" id="TabsOpenArea">
								<li id="searchWordTab" class=""><a href="javascript:;">직접검색</a></li>
								<li id="searchAreaTab" class="on"><a href="javascript:;">지역검색</a></li>
								<li id="searchFavorTab" class=""><a href="javascript:;">관심매장</a></li>
								<li id="searchItemTab"><a href="javascript:;">판매매장 찾기</a></li>
							</ul>
						</div>
						
						<!--직접검색 영역 S  -->
						<div class="tab_area" id="searchWordDiv" style="display: none;">
							<h4 class="hide">매장 직접검색</h4>
							<div class="store_rebox">
								<div class="store_sch">
									<div class="store_schInner">
										<input type="text" name="" id="searchWord" value="" onkeyup="javascript:store.main.searchStoreList(event);" title="매장명 또는 주소를 입력해주세요." placeholder="매장명/주소 입력 (ex.명동 또는 퇴계로)">
										<a href="javascript:;" class="btn_sch_del"><span class="blind">검색어 삭제</span></a>
										<a href="javascript:;" class="btn_sch"><span class="blind">검색</span></a>
									</div>
								</div>
								<div class="no_store" id="noSearchWordInfo" style="display: none">
									<dl class="no_list">
										<dt>매장 검색 옵션에 해당하는<br>매장이 없습니다.</dt>
									</dl>
								</div>
								<div class="sroll_store scrbar mCustomScrollbar _mCS_2 mCS_no_scrollbar" style="overflow: auto;"><div id="mCSB_2" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 0px;" tabindex="0"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position: relative; top: 0px; left: 0px;" dir="ltr">
									<ul class="mlist-reStore" id="wordStoreList">	
	<li class="D017div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">교대점</a>
			</h4>
			<p class="addr">서울특별시 서초구 서초중앙로 95 1층</p> 
			<div class="area">
				<div class="call">02-3471-5240</div>
				<div class="time on">영업중</div>		
			</div>
			<div class="fv_reShop_in"><span>2,699</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>
		</div>
		<input type="hidden" class="strNo" name="strNo" value="D017">
		<input type="hidden" class="strNm" name="strNm" value="교대점">
		<input type="hidden" class="lat" name="lat" value="37.4903574">
		<input type="hidden" class="lng" name="lng" value="127.0139433">
		<input type="hidden" class="dist" name="dist" value="0.5">
		<input type="hidden" class="intCnt" name="intCnt" value="2,699">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="DA21div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">서초대로점</a>	
			</h4>
			<p class="addr">서울특별시 서초구 서초대로 314 정보통신공제조합회관</p> 
			<div class="area">
				<div class="call">02-521-9094</div>
				<div class="time on">영업중</div>		
			</div>
			<div class="fv_reShop_in"><span>4,725</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>
		</div>
		<input type="hidden" class="strNo" name="strNo" value="DA21">
		<input type="hidden" class="strNm" name="strNm" value="서초대로점">
		<input type="hidden" class="lat" name="lat" value="37.4940948">
		<input type="hidden" class="lng" name="lng" value="127.0158619">
		<input type="hidden" class="dist" name="dist" value="0.5">
		<input type="hidden" class="intCnt" name="intCnt" value="4,725">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="D046div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">남부터미널점</a>
			</h4>
			<p class="addr">서울특별시 서초구 효령로 283 서경빌딩 1층</p> 
			<div class="area">
				<div class="call">02-597-5290</div>
				<div class="time on">영업중</div>
			</div>
			<div class="fv_reShop_in"><span>2,873</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>
		</div>
		<input type="hidden" class="strNo" name="strNo" value="D046">
		<input type="hidden" class="strNm" name="strNm" value="남부터미널점">
		<input type="hidden" class="lat" name="lat" value="37.4851129">
		<input type="hidden" class="lng" name="lng" value="127.0149846">
		<input type="hidden" class="dist" name="dist" value="0.7">
		<input type="hidden" class="intCnt" name="intCnt" value="2,873">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="BAA6div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">서초타운점</a>
			</h4>
			<p class="addr">서울특별시 서초구 서초대로78길 32 1층</p> 
			<div class="area">
				<div class="call">02-588-8399</div>
				<div class="time on">영업중</div>
			</div>
			<div class="fv_reShop_in"><span>14</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>	
		</div>
		<input type="hidden" class="strNo" name="strNo" value="BAA6">
		<input type="hidden" class="strNm" name="strNm" value="서초타운점">
		<input type="hidden" class="lat" name="lat" value="37.4949996682957">
		<input type="hidden" class="lng" name="lng" value="127.028000253814">
		<input type="hidden" class="dist" name="dist" value="0.9">
		<input type="hidden" class="intCnt" name="intCnt" value="14">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="D483div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">서초역점</a>	
			</h4>
			<p class="addr">서울특별시 서초구 반포대로 110</p> 
			<div class="area">
				<div class="call">02-586-5290</div>
				<div class="time on">영업중</div>
			</div>
			<div class="fv_reShop_in"><span>1,738</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>	
		</div>
		<input type="hidden" class="strNo" name="strNo" value="D483">
		<input type="hidden" class="strNm" name="strNm" value="서초역점">
		<input type="hidden" class="lat" name="lat" value="37.4899836">
		<input type="hidden" class="lng" name="lng" value="127.0091084">
		<input type="hidden" class="dist" name="dist" value="0.9">
		<input type="hidden" class="intCnt" name="intCnt" value="1,738">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="DC7Ddiv">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">강남우성점</a>	
			</h4>
			<p class="addr">서울특별시 강남구 강남대로 320 황화빌딩 1층 일부</p> 
			<div class="area">
				<div class="call">02-501-4426</div>
				<div class="time on">영업중</div>	
			</div>
			<div class="fv_reShop_in"><span>4,010</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>
		</div>
		<input type="hidden" class="strNo" name="strNo" value="DC7D">
		<input type="hidden" class="strNm" name="strNm" value="강남우성점">
		<input type="hidden" class="lat" name="lat" value="37.4918533105983">
		<input type="hidden" class="lng" name="lng" value="127.03104820955">
		<input type="hidden" class="dist" name="dist" value="1">
		<input type="hidden" class="intCnt" name="intCnt" value="4,010">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="DDBEdiv">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">강남중앙점</a>
			</h4>
			<p class="addr">서울특별시 강남구 강남대로 374</p> 
			<div class="area">
				<div class="call">02-6181-0190</div>
				<div class="time on">영업중</div>
			</div>
			<div class="fv_reShop_in"><span>1,204</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>	
		</div>
		<input type="hidden" class="strNo" name="strNo" value="DDBE">
		<input type="hidden" class="strNm" name="strNm" value="강남중앙점">
		<input type="hidden" class="lat" name="lat" value="37.4962895621722">
		<input type="hidden" class="lng" name="lng" value="127.029067230812">
		<input type="hidden" class="dist" name="dist" value="1.1">
		<input type="hidden" class="intCnt" name="intCnt" value="1,204">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="DD61div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">역삼점</a>		
			</h4>
			<p class="addr">서울특별시 강남구 테헤란로 111 대건빌딩 1층</p> 
			<div class="area">
				<div class="call">02-561-1842</div>
				<div class="time on">영업중</div>
			</div>
			<div class="fv_reShop_in"><span>973</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>
		</div>
		<input type="hidden" class="strNo" name="strNo" value="DD61">
		<input type="hidden" class="strNm" name="strNm" value="역삼점">
		<input type="hidden" class="lat" name="lat" value="37.4988815245932">
		<input type="hidden" class="lng" name="lng" value="127.029281745491">
		<input type="hidden" class="dist" name="dist" value="1.3">
		<input type="hidden" class="intCnt" name="intCnt" value="973">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="DAEAdiv">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">올리브영 강남 타운</a>	
			</h4>
			<p class="addr">서울특별시 서초구 강남대로 429 동일빌딩 1~3층</p> 
			<div class="area">
				<div class="call">02-532-7444</div>
				<div class="time on">영업중</div>	
			</div>
			<div class="fv_reShop_in"><span>19,307</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>	
		</div>
		<input type="hidden" class="strNo" name="strNo" value="DAEA">
		<input type="hidden" class="strNm" name="strNm" value="올리브영 강남 타운">
		<input type="hidden" class="lat" name="lat" value="37.50079">
		<input type="hidden" class="lng" name="lng" value="127.025762">
		<input type="hidden" class="dist" name="dist" value="1.3">
		<input type="hidden" class="intCnt" name="intCnt" value="19,307">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="DCDFdiv">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">신강남점</a>		
			</h4>
			<p class="addr">서울특별시 강남구 봉은사로2길 31</p> 
			<div class="area">
				<div class="call">02-2051-7378</div>
				<div class="time on">영업중</div>		
			</div>
			<div class="fv_reShop_in"><span>2,057</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>
		</div>
		<input type="hidden" class="strNo" name="strNo" value="DCDF">
		<input type="hidden" class="strNm" name="strNm" value="신강남점">
		<input type="hidden" class="lat" name="lat" value="37.5026096332208">
		<input type="hidden" class="lng" name="lng" value="127.026544075503">
		<input type="hidden" class="dist" name="dist" value="1.5">
		<input type="hidden" class="intCnt" name="intCnt" value="2,057">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="DD15div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">양재역점</a>	
			</h4>
			<p class="addr">서울특별시 서초구 남부순환로 지하 2585 신분당선 양재역</p> 
			<div class="area">
				<div class="call">02-578-7642</div>
				<div class="time on">영업중</div>			
			</div>
			<div class="fv_reShop_in"><span>1,704</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>	
		</div>
		<input type="hidden" class="strNo" name="strNo" value="DD15">
		<input type="hidden" class="strNm" name="strNm" value="양재역점">
		<input type="hidden" class="lat" name="lat" value="37.4839347328908">
		<input type="hidden" class="lng" name="lng" value="127.034544193436">
		<input type="hidden" class="dist" name="dist" value="1.5">
		<input type="hidden" class="intCnt" name="intCnt" value="1,704">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="D192div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">양재스타클래스점</a>			
			</h4>
			<p class="addr">서울특별시 강남구 남부순환로 2615</p> 
			<div class="area">
				<div class="call">02-574-5290</div>
				<div class="time on">영업중</div>		
			</div>
			<div class="fv_reShop_in"><span>1,835</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>
		</div>
		<input type="hidden" class="strNo" name="strNo" value="D192">
		<input type="hidden" class="strNm" name="strNm" value="양재스타클래스점">
		<input type="hidden" class="lat" name="lat" value="37.4851386">
		<input type="hidden" class="lng" name="lng" value="127.0358583">
		<input type="hidden" class="dist" name="dist" value="1.6">
		<input type="hidden" class="intCnt" name="intCnt" value="1,835">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="D122div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">역삼역점</a>			
			</h4>
			<p class="addr">서울특별시 강남구 테헤란로 138 솔로몬역삼타워 1층</p> 
			<div class="area">
				<div class="call">02-2642-5290</div>
				<div class="time on">영업중</div>	
			</div>
			<div class="fv_reShop_in"><span>2,905</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>	
		</div>
		<input type="hidden" class="strNo" name="strNo" value="D122">
		<input type="hidden" class="strNm" name="strNm" value="역삼역점">
		<input type="hidden" class="lat" name="lat" value="37.4996798">
		<input type="hidden" class="lng" name="lng" value="127.0342685">
		<input type="hidden" class="dist" name="dist" value="1.7">
		<input type="hidden" class="intCnt" name="intCnt" value="2,905">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="DD53div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">신논현역점</a>			
			</h4>
			<p class="addr">서울특별시 강남구 봉은사로 지하 102 B2</p> 
			<div class="area">
				<div class="call">02-569-7390</div>
				<div class="time on">영업중</div>			
			</div>
			<div class="fv_reShop_in"><span>822</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>
			
		</div>
		<input type="hidden" class="strNo" name="strNo" value="DD53">
		<input type="hidden" class="strNm" name="strNm" value="신논현역점">
		<input type="hidden" class="lat" name="lat" value="37.5046341625192">
		<input type="hidden" class="lng" name="lng" value="127.025031333453">
		<input type="hidden" class="dist" name="dist" value="1.7">
		<input type="hidden" class="intCnt" name="intCnt" value="822">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="D039div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">강남파이낸스점</a>
				
			</h4>
			<p class="addr">서울특별시 강남구 테헤란로 152 강남파이낸스센터 지하2층</p> 
			<div class="area">
				<div class="call">02-508-5390</div>
				<div class="time">영업준비중</div>						
			</div>
			<div class="fv_reShop_in"><span>1,784</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>

		</div>
		<input type="hidden" class="strNo" name="strNo" value="D039">
		<input type="hidden" class="strNm" name="strNm" value="강남파이낸스점">
		<input type="hidden" class="lat" name="lat" value="37.4996771">
		<input type="hidden" class="lng" name="lng" value="127.0361459">
		<input type="hidden" class="dist" name="dist" value="1.8">
		<input type="hidden" class="intCnt" name="intCnt" value="1,784">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="N">
	</li>
</ul>
								</div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; height: 98px; top: 0px; display: block; max-height: 450px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
							</div>
						</div>
						<!--직접검색 영역 E  -->
						
						<!-- 지역검색 영역 S  -->
						<div class="tab_area" id="searchAreaDiv" style="">
							<h4 class="hide">매장 지역검색</h4>
							<div class="store_rebox">
								<div class="store_sch">
									<div class="store_schInner">
										<div class="store_Select">
											<ul class="clearfix">
												<li>
													<select title="지역을 선택하세요." id="mainAreaList" class="act">
														<option value="none" selected="selected">지역</option>

														<option value="강원도">강원도</option>

														<option value="경기도">경기도</option>

														<option value="경상남도">경상남도</option>

														<option value="경상북도">경상북도</option>

														<option value="광주광역시">광주광역시</option>

														<option value="대구광역시">대구광역시</option>

														<option value="대전광역시">대전광역시</option>

														<option value="부산광역시">부산광역시</option>

														<option value="서울특별시">서울특별시</option>

														<option value="세종특별자치시">세종특별자치시</option>

														<option value="울산광역시">울산광역시</option>

														<option value="인천광역시">인천광역시</option>

														<option value="전라남도">전라남도</option>

														<option value="전라북도">전라북도</option>

														<option value="제주특별자치도">제주특별자치도</option>

														<option value="충청남도">충청남도</option>

														<option value="충청북도">충청북도</option>

													</select>
												</li>
												<li>
													<select title="시/군/구를 선택하세요." id="subAreaList" class="act">
														<option value="none" selected="selected">시/군/구</option>
													<option value="가평군">가평군</option><option value="고양시">고양시</option><option value="과천시">과천시</option><option value="광명시">광명시</option><option value="광주시">광주시</option><option value="구리시">구리시</option><option value="군포시">군포시</option><option value="김포시">김포시</option><option value="남양주시">남양주시</option><option value="동두천시">동두천시</option><option value="부천시">부천시</option><option value="성남시">성남시</option><option value="수원시">수원시</option><option value="시흥시">시흥시</option><option value="안산시">안산시</option><option value="안성시">안성시</option><option value="안양시">안양시</option><option value="양주시">양주시</option><option value="양평군">양평군</option><option value="여주시">여주시</option><option value="연천군">연천군</option><option value="오산시">오산시</option><option value="용인시">용인시</option><option value="의왕시">의왕시</option><option value="의정부시">의정부시</option><option value="이천시">이천시</option><option value="파주시">파주시</option><option value="평택시">평택시</option><option value="포천시">포천시</option><option value="하남시">하남시</option><option value="화성시">화성시</option></select>
												</li>
											</ul>
											<button type="button" id="searchAreaButton">검색</button>
										</div>
									</div>
								<dl class="reShop_result"><dt><span>32</span>개의 매장이 검색되었습니다.</dt><dd><span class="oyblind">관심매장</span>클릭하여 관심매장을 등록하세요.</dd></dl><div class="urNotice"><p>매장 상황에 따라 매장별 실 영업시간이 다를 수 있습니다.</p></div></div>
								<div class="no_store" id="noSearchAreaInfo" style="display: none">
									<dl class="no_list">
										<dt>매장 검색 옵션에 해당하는<br>매장이 없습니다.</dt>
									</dl>
								</div>
								<div class="sroll_store scrbar mCustomScrollbar _mCS_3" style="overflow: auto;"><div id="mCSB_3" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 460px;" tabindex="0"><div id="mCSB_3_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr">
									<ul class="mlist-reStore" id="areaStoreList">
	<li class="DC8Fdiv">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">고양향동점</a>			
			</h4>
			<p class="addr">경기도 고양시 덕양구 꽃마을로 4 퍼스트타워 101, 102, 103호</p> 
			<div class="area">
				<div class="call">02-3159-0243</div>
				<div class="time on">영업중</div>			
			</div>
			<div class="fv_reShop_in"><span>3,106</span>명이 관심매장으로 등록했습니다.</div>

			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>	
		</div>
		<input type="hidden" class="strNo" name="strNo" value="DC8F">
		<input type="hidden" class="strNm" name="strNm" value="고양향동점">
		<input type="hidden" class="lat" name="lat" value="37.5990635356885">
		<input type="hidden" class="lng" name="lng" value="126.892281159056">
		<input type="hidden" class="dist" name="dist" value="16.5">
		<input type="hidden" class="intCnt" name="intCnt" value="3,106">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="DC95div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">스타필드고양점</a>	
			</h4>
			<p class="addr">경기도 고양시 덕양구 고양대로 1955 스타필드고양 B1층, B145호</p> 
			<div class="area">
				<div class="call">031-5173-0474</div>
				<div class="time on">영업중</div>		
			</div>
			<div class="fv_reShop_in"><span>8,419</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>	
		</div>
		<input type="hidden" class="strNo" name="strNo" value="DC95">
		<input type="hidden" class="strNm" name="strNm" value="스타필드고양점">
		<input type="hidden" class="lat" name="lat" value="37.6469771187284">
		<input type="hidden" class="lng" name="lng" value="126.89477806511">
		<input type="hidden" class="dist" name="dist" value="20.6">
		<input type="hidden" class="intCnt" name="intCnt" value="8,419">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="DB9Ddiv">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">고양원흥점</a>				
			</h4>
			<p class="addr">경기도 고양시 덕양구 도래울로 110</p> 
			<div class="area">
				<div class="call">031-965-3610</div>	
				<div class="time on">영업중</div>		
			</div>
			<div class="fv_reShop_in"><span>1,742</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>	
		</div>
		<input type="hidden" class="strNo" name="strNo" value="DB9D">
		<input type="hidden" class="strNm" name="strNm" value="고양원흥점">
		<input type="hidden" class="lat" name="lat" value="37.6349148">
		<input type="hidden" class="lng" name="lng" value="126.8724821">
		<input type="hidden" class="dist" name="dist" value="20.7">
		<input type="hidden" class="intCnt" name="intCnt" value="1,742">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="DDFCdiv">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">롯데아울렛고양점</a>
				
			</h4>
			<p class="addr">경기도 고양시 덕양구 권율대로 420 롯데아울렛고양점 P1층</p> 
			<div class="area">
				<div class="call">031-8035-2794</div>
				<div class="time on">영업중</div>		
			</div>	
			<div class="fv_reShop_in"><span>102</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>		
		</div>
		<input type="hidden" class="strNo" name="strNo" value="DDFC">
		<input type="hidden" class="strNm" name="strNm" value="롯데아울렛고양점">
		<input type="hidden" class="lat" name="lat" value="37.6295889786577">
		<input type="hidden" class="lng" name="lng" value="126.863123845458">
		<input type="hidden" class="dist" name="dist" value="20.7">
		<input type="hidden" class="intCnt" name="intCnt" value="102">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="DBE2div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">삼송역점</a>		
			</h4>
			<p class="addr">경기도 고양시 덕양구 동송로 69</p> 
			<div class="area">
				<div class="call">02-371-0350</div>
				<div class="time on">영업중</div>			
			</div>
			<div class="fv_reShop_in"><span>3,702</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>
	
		</div>
		<input type="hidden" class="strNo" name="strNo" value="DBE2">
		<input type="hidden" class="strNm" name="strNm" value="삼송역점">
		<input type="hidden" class="lat" name="lat" value="37.6526357">
		<input type="hidden" class="lng" name="lng" value="126.895247">
		<input type="hidden" class="dist" name="dist" value="21.1">
		<input type="hidden" class="intCnt" name="intCnt" value="3,702">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="D517div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">행신역점</a>			
			</h4>
			<p class="addr">경기도 고양시 덕양구 충장로 14</p> 
			<div class="area">
				<div class="call">031-973-5290</div>
				<div class="time on">영업중</div>				
			</div>
			<div class="fv_reShop_in"><span>4,764</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>		
		</div>
		<input type="hidden" class="strNo" name="strNo" value="D517">
		<input type="hidden" class="strNm" name="strNm" value="행신역점">
		<input type="hidden" class="lat" name="lat" value="37.614032">
		<input type="hidden" class="lng" name="lng" value="126.8344851">
		<input type="hidden" class="dist" name="dist" value="21.3">
		<input type="hidden" class="intCnt" name="intCnt" value="4,764">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="DC50div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">원흥역점</a>			
			</h4>
			<p class="addr">경기도 고양시 덕양구 권율대로 668 티오피클래식 101,102,107,108호</p> 
			<div class="area">
				<div class="call">031-962-7121</div>
				<div class="time on">영업중</div>				
			</div>
			<div class="fv_reShop_in"><span>2,898</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>		
		</div>
		<input type="hidden" class="strNo" name="strNo" value="DC50">
		<input type="hidden" class="strNm" name="strNm" value="원흥역점">
		<input type="hidden" class="lat" name="lat" value="37.64943531244175">
		<input type="hidden" class="lng" name="lng" value="126.87387044399567">
		<input type="hidden" class="dist" name="dist" value="21.9">
		<input type="hidden" class="intCnt" name="intCnt" value="2,898">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="D446div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">고양행신점</a>			
			</h4>
			<p class="addr">경기도 고양시 덕양구 중앙로 560</p> 
			<div class="area">
				<div class="call">031-972-5290</div>
				<div class="time on">영업중</div>			
			</div>
			<div class="fv_reShop_in"><span>3,372</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>		
		</div>
		<input type="hidden" class="strNo" name="strNo" value="D446">
		<input type="hidden" class="strNm" name="strNm" value="고양행신점">
		<input type="hidden" class="lat" name="lat" value="37.6240683">
		<input type="hidden" class="lng" name="lng" value="126.8352914">
		<input type="hidden" class="dist" name="dist" value="22">
		<input type="hidden" class="intCnt" name="intCnt" value="3,372">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="D477div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">고양삼송점</a>			
			</h4>
			<p class="addr">경기도 고양시 덕양구 권율대로 893 파스텔시티 1층</p> 
			<div class="area">
				<div class="call">02-381-5291</div>
				<div class="time on">영업중</div>			
			</div>
			<div class="fv_reShop_in"><span>2,437</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>		
		</div>
		<input type="hidden" class="strNo" name="strNo" value="D477">
		<input type="hidden" class="strNm" name="strNm" value="고양삼송점">
		<input type="hidden" class="lat" name="lat" value="37.6635973">
		<input type="hidden" class="lng" name="lng" value="126.8896797">
		<input type="hidden" class="dist" name="dist" value="22.4">
		<input type="hidden" class="intCnt" name="intCnt" value="2,437">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="B169div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">화정로데오점</a>			
			</h4>
			<p class="addr">경기도 고양시 덕양구 화신로260번길 33</p> 
			<div class="area">
				<div class="call">031-974-8831</div>
				<div class="time on">영업중</div>				
			</div>
			<div class="fv_reShop_in"><span>4,744</span>명이 관심매장으로 등록했습니다.</div>	
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>		
		</div>
		<input type="hidden" class="strNo" name="strNo" value="B169">
		<input type="hidden" class="strNm" name="strNm" value="화정로데오점">
		<input type="hidden" class="lat" name="lat" value="37.6323216">
		<input type="hidden" class="lng" name="lng" value="126.8325457">
		<input type="hidden" class="dist" name="dist" value="22.8">
		<input type="hidden" class="intCnt" name="intCnt" value="4,744">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="D421div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">고양원당점</a>			
			</h4>
			<p class="addr">경기도 고양시 덕양구 호국로789번길 6</p> 
			<div class="area">
				<div class="call">031-964-5290</div>
				<div class="time on">영업중</div>			
			</div>
			<div class="fv_reShop_in"><span>4,295</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>		
		</div>
		<input type="hidden" class="strNo" name="strNo" value="D421">
		<input type="hidden" class="strNm" name="strNm" value="고양원당점">
		<input type="hidden" class="lat" name="lat" value="37.6569905">
		<input type="hidden" class="lng" name="lng" value="126.8361039">
		<input type="hidden" class="dist" name="dist" value="24.6">
		<input type="hidden" class="intCnt" name="intCnt" value="4,295">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="D473div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">고양동점</a>			
			</h4>
			<p class="addr">경기도 고양시 덕양구 혜음로 34 1층</p> 
			<div class="area">
				<div class="call">031-962-5291</div>
				<div class="time on">영업중</div>			
			</div>
			<div class="fv_reShop_in"><span>1,543</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>			
		</div>
		<input type="hidden" class="strNo" name="strNo" value="D473">
		<input type="hidden" class="strNm" name="strNm" value="고양동점">
		<input type="hidden" class="lat" name="lat" value="37.7035127">
		<input type="hidden" class="lng" name="lng" value="126.90224">
		<input type="hidden" class="dist" name="dist" value="25.9">
		<input type="hidden" class="intCnt" name="intCnt" value="1,543">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>		
	<li class="DA7Ddiv">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">일산벨라시타점</a>			
			</h4>
			<p class="addr">경기도 고양시 일산동구 강송로 33</p> 
			<div class="area">
				<div class="call">031-849-5790</div>
				<div class="time on">영업중</div>			
			</div>
			<div class="fv_reShop_in"><span>2,495</span>명이 관심매장으로 등록했습니다.</div>	
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>		
		</div>
		<input type="hidden" class="strNo" name="strNo" value="DA7D">
		<input type="hidden" class="strNm" name="strNm" value="일산벨라시타점">
		<input type="hidden" class="lat" name="lat" value="37.6422533">
		<input type="hidden" class="lng" name="lng" value="126.7924717">
		<input type="hidden" class="dist" name="dist" value="26.2">
		<input type="hidden" class="intCnt" name="intCnt" value="2,495">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="D527div">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">백석역점</a>			
			</h4>
			<p class="addr">경기도 고양시 일산동구 중앙로 1066</p> 
			<div class="area">
				<div class="call">031-932-5290</div>
				<div class="time on">영업중</div>			
			</div>	
			<div class="fv_reShop_in"><span>2,607</span>명이 관심매장으로 등록했습니다.</div>	
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>		
		</div>
		<input type="hidden" class="strNo" name="strNo" value="D527">
		<input type="hidden" class="strNm" name="strNm" value="백석역점">
		<input type="hidden" class="lat" name="lat" value="37.6447768">
		<input type="hidden" class="lng" name="lng" value="126.78638">
		<input type="hidden" class="dist" name="dist" value="26.8">
		<input type="hidden" class="intCnt" name="intCnt" value="2,607">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
	<li class="DA9Cdiv">
		<div class="li_Pc_reInner">
			<h4 class="tit">
				<a href="javascript:;">일산백마점</a>			
			</h4>
			<p class="addr">경기도 고양시 일산동구 일산로 232</p> 
			<div class="area">
				<div class="call">031-901-2834</div>
				<div class="time on">영업중</div>				
			</div>
			<div class="fv_reShop_in"><span>2,960</span>명이 관심매장으로 등록했습니다.</div>
			<button class="star active" onclick="javascript:store.main.setStarEvent($(this))" title="관심매장 해제됨">관심매장</button>		
		</div>
		<input type="hidden" class="strNo" name="strNo" value="DA9C">
		<input type="hidden" class="strNm" name="strNm" value="일산백마점">
		<input type="hidden" class="lat" name="lat" value="37.6570657">
		<input type="hidden" class="lng" name="lng" value="126.7889228">
		<input type="hidden" class="dist" name="dist" value="27.5">
		<input type="hidden" class="intCnt" name="intCnt" value="2,960">
		<input type="hidden" class="favorYn" name="favorYn" value="N">
		<input type="hidden" class="openYn" name="openYn" value="Y">
	</li>
</ul>
								</div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: block;"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px; height: 98px; display: block; max-height: 450px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
							</div>
						</div>
						<!-- 지역검색 영역 E  -->
						
						<!-- 관심매장 영역 S  -->
						<div class="tab_area" id="searchFavorDiv" style="display: none;">
							<h4 class="hide">관심매장</h4>
							<div class="store_favInner" id="favorStoreInfo" style="display: none;">
							</div>
							<!-- :: 관심매장이 없는 경우 :: -->
							<div class="no_store" id="noFavorStoreInfo" style="display: none">
								<dl class="no_list">
								</dl>
							</div>
							<div class="no_store" id="noLoginInfo" style="">
								<dl class="no_login">
									<dt>로그인하시면 자주가는 매장을<br>관심 매장으로 설정 할수 있습니다.</dt>
									<dd><a href="javascript:common.loginChk();">로그인</a></dd>
								</dl>
							</div>
							<div class="no_store" id="noSearchFavorInfo" style="display: none">
								<dl class="no_list">
									<dt>매장 검색 옵션에 해당하는<br>매장이 없습니다.</dt>
								</dl>
							</div>
							<div class="sroll_store scrbar mCustomScrollbar _mCS_4 mCS_no_scrollbar" style="max-height:500px; overflow: auto;"><div id="mCSB_4" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 0px;" tabindex="0"><div id="mCSB_4_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
								<ul class="mlist-reStore" id="favorStoreList" style="display: none;">
</ul>
							</div><div id="mCSB_4_scrollbar_vertical" class="mCSB_scrollTools mCSB_4_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_4_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
						</div>
						<!-- 관심매장 영역 E  -->					
						<!-- 판매매장 찾기 영역 S  -->
						<div class="tab_area" id="searchItemDiv" style="display:none">
							<h4 class="hide">상품 판매매장 찾기</h4>
							<div class="store_rebox">
								<div class="store_sch">
									<div class="store_schInner">
										<input type="text" name="searchItem" id="searchItem" value="" onkeyup="javascript:store.main.searchStoreList2(event);" title="상품명을 입력해주세요" placeholder="상품명을 입력해주세요">
										<!-- 상품번호(goodsNo) -->
										<input type="hidden" name="searchItemNo" id="searchItemNo" value="">
										<!-- 옵션번호(itemNo) -->
										<input type="hidden" name="searchItemNo2" id="searchItemNo2" value="">
										<input type="hidden" name="searchItemLgcNo" id="searchItemLgcNo" value="">
										<a href="javascript:;" class="btn_sch_del"><span class="blind">검색어 삭제</span></a>
										<a href="javascript:;" class="btn_sch"><span class="blind">검색</span></a>
									</div>
								</div>
								<div class="no_store" id="noSearchItemInfo" style="display: none">	
									<dl class="no_list">
										<dt>매장 검색 옵션에 해당하는<br>매장이 없습니다.</dt>
									</dl>
								</div>
								<div class="sroll_store scrbar mCustomScrollbar _mCS_5 mCS_no_scrollbar" style="overflow: auto;"><div id="mCSB_5" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 0px;" tabindex="0"><div id="mCSB_5_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
									<ul class="mlist-reStore" id="itemStoreList">
									</ul>
								</div><div id="mCSB_5_scrollbar_vertical" class="mCSB_scrollTools mCSB_5_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_5_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
							</div>
						</div>
						<!-- 판매매장 찾기 영역 E  -->
						
						<!-- 매장 검색 옵션 S -->
						<div class="store_opSt">
							<a href="javascript:;" class="btn_opSt">매장 검색 옵션</a>
							<div class="choice_opSt" style="display:none">
								<div class="choice_opView">
									<input type="checkbox" name="reShop_chk" id="reShop_chk"><label for="reShop_chk">영업중 매장만 보기</label>
								</div>
								<div class="reShop_opList" id="tc_list">
									<p>카테고리 취급매장</p>
									<ul>
										<li><button>스킨케어</button><input type="hidden" name="tcVal" value="A"></li><li><button>메이크업</button><input type="hidden" name="tcVal" value="B"></li><li><button>프래그런스</button><input type="hidden" name="tcVal" value="C"></li><li><button>바디케어</button><input type="hidden" name="tcVal" value="D"></li><li><button>헤어케어</button><input type="hidden" name="tcVal" value="E"></li><li><button>프리미엄브랜드</button><input type="hidden" name="tcVal" value="F"></li><li><button>건강/위생용품</button><input type="hidden" name="tcVal" value="G"></li><li><button>건강식품</button><input type="hidden" name="tcVal" value="H"></li><li><button>생활용품</button><input type="hidden" name="tcVal" value="I"></li><li><button>펫용품</button><input type="hidden" name="tcVal" value="J"></li><li><button>주류</button><input type="hidden" name="tcVal" value="P"></li>
									</ul>
								</div>
								<div class="reShop_opList" id="ps_list">
									<p>서비스 제공 매장</p>
									<ul>
										<li><button>선물포장</button><input type="hidden" name="psVal" value="A"></li><li><button>TAXREFUND</button><input type="hidden" name="psVal" value="B"></li><li><button>TAXREFUND(즉시환급)</button><input type="hidden" name="psVal" value="C"></li><li><button>기프트카드판매</button><input type="hidden" name="psVal" value="D"></li><li><button>현금없는매장</button><input type="hidden" name="psVal" value="E"></li><li><button>상품권판매(문화)</button><input type="hidden" name="psVal" value="F"></li><li><button>상품권판매(CJ)</button><input type="hidden" name="psVal" value="G"></li><li><button>간편결제</button><input type="hidden" name="psVal" value="H"></li><li><button>뷰티스트</button><input type="hidden" name="psVal" value="I"></li><li><button>주차가능</button><input type="hidden" name="psVal" value="J"></li><li><button>스마트반품</button><input type="hidden" name="psVal" value="K"></li><li><button>픽업</button><input type="hidden" name="psVal" value="L"></li><li><button>뷰티사이클</button><input type="hidden" name="psVal" value="O"></li><li><button>주류</button><input type="hidden" name="psVal" value="P"></li>
									</ul>
								</div>
								<div class="btnBox">
									<a href="javascript:;" class="init_btn empty_btn">초기화</a>
									<a href="javascript:;" class="btnSmall choice_btn">적용하기</a>
								</div>
							</div>
						</div>
						<!-- 매장 검색 옵션 E -->
						
					</div>
				</div>
		</div>
	</div>
	
<input type="hidden" id="usrLat_default" value="37.4900806"><!-- default : 서울특별시 서초구 서초동 위도 -->
<input type="hidden" id="usrLng_default" value="127.0193972"><!-- default : 서울특별시 서초구 서초동 경도 -->
<input type="hidden" id="usrLat" value="37.4900806"><!-- default : 서울특별시 서초구 서초동 위도 -->
<input type="hidden" id="usrLng" value="127.0193972"><!-- default : 서울특별시 서초구 서초동 경도 -->
<input type="hidden" id="searchType" value="area">
<input type="hidden" id="tabType" value="areaTab">	
<input type="hidden" id="askLoc" value="">
<input type="hidden" id="useLocYN" value="">

<!-- 매장 검색옵션 -->
<!-- 영업중인 매장만 보기 -->
<input type="hidden" id="openYn" value="N">
<!-- 취급카테고리 -->
<input type="hidden" id="tcCd" value="">
<!-- 제공서비스 -->
<input type="hidden" id="psCd" value="">
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
	<div id="directTop" style="display: none;">
		<button><span></span>TOP</button>
	</div>
	<!--/ㅁ 2017-02-23 수정 : TOP 바로가기 버튼 추가 -->

</div>

<div class="layer_pop_wrap" id="layer_pop_wrap" style="z-index: 999;">
</div>

<div class="popup-contents" id="pop_cont" style="top:50%;width:650px;margin:-258px 0 0 -325px; display:none; z-index:999">
</div>
<div class="layer_pop_wrap w490" id="basketOption" style="z-index: 999;">
</div>
<div class="layer_pop_wrap w488" id="layerWrap488" style="z-index: 999;">
</div>
<div class="layer_pop_wrap w680" id="layerWrap680" style="z-index: 999;">
</div>
<div class="layer_pop_wrap w850" id="layerWrap850" style="z-index: 999;">
</div>
<div class="layer_pop_wrap w920" id="layerWrap920" style="z-index: 999;">
</div>
<div class="layer_pop_wrap w850" id="offlineStock" style="z-index: 999;">
</div>

<div class="layer_pop_wrap w850" id="todayDelivery" style="z-index: 999;">
</div>

<div class="layer_pop_wrap w850" id="todayRegDelivery" style="z-index: 991;">
</div>

<div class="layer_pop_wrap experience-popup" id="lay_experience_info" style="">
</div>

<div class="layer_pop_wrap" id="zipcodeQuick" style="z-index: 999;">
</div>

<div class="layer_pop_wrap w750 tdLayer" id="deliveryTracking" style="">
</div>

<!-- 201912 PC 매장 상세 팝업 -->
<div class="layer_pop_wrap w850" id="store_viewPop_renew" style="z-index: 100; width: 560px; max-height: 1000px; margin-left: -280px; display: none; left: 50%; top: 310px;">

<input type="hidden" id="strNo" value="DC8F">
<input type="hidden" id="strPrdLoad" value="N">
<input type="hidden" id="recommYn" value="Y">
<input type="hidden" id="myPageYn" value="Y">
<div class="layer_cont5 recoStore ">
	<h2 class="layer_title5">매장 안내</h2>

	<ul class="store_handleTab" id="layerTabList">
		<li class="on"><a href="#" class="on strTab" id="info">매장 안내</a></li>
		<li><a href="#" class="strTab" id="prod">베스트 상품</a></li>
	</ul>
	<div class="mCustomScrollbar _mCS_7 mCS_no_scrollbar"><div id="mCSB_7" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 0px;"><div id="mCSB_7_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
		<div class="depth1" id="strInfo">
			<div class="store_vArea">
				<div class="store_vArea_top">
					<h4 class="tit">
						<!-- 3501644 매장안내 팝업 관심매장 등록 결함 개선 요청 -->						
						<button class="star active star_DC8F" id="btn_star" data_strno="DC8F">관심매장</button>
						고양향동점
					</h4>
					<span class="store_nearWay" style="display:none;">Km</span>
					<p class="addr">경기도 고양시 덕양구 꽃마을로 4 퍼스트타워 101, 102, 103호</p>
					<div class="area">		
						<div class="call">02-3159-0243</div>
					
								<div class="time on">영업중</div>		
					<div class="fv_reShop_in"><span class="str_DC8F_favorCnt">3,106</span>명이 관심매장으로 등록했습니다.</div>
					</div>
			 <!-- 매장 추천일 때만 지도 영역 노출 -->
					<div class="api_mapArea">
						<div class="store_wayP" id="store_map" style="overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/bg_tile.png&quot;);"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute;"><div style="position: absolute; z-index: 0;"></div><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/3/2013/860.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -112px; top: 20px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/3/2013/861.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 144px; top: 20px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/3/2013/862.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 400px; top: 20px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/3/2014/860.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -112px; top: -236px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/3/2014/861.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 144px; top: -236px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNG01/v23_izbfy/3/2014/862.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 400px; top: -236px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1; width: 0px; height: 0px;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: 0px; top: 0px; width: 0px; height: 0px;" viewBox="0 0 0 0"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);"><div style="position: absolute; margin: -34px 0px 0px -11px; z-index: 0; left: 215px; top: 100px; display: none;"><img draggable="false" src="https://static.oliveyoung.co.kr/pc-static-root/image/store/point_way.png" alt="" role="presentation" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 24px, 35px, 0px); top: 0px; left: 0px; width: 24px; height: 35px;"></div></div></div></div><div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);"><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left; display: none;"><div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 46px;"></div><div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">50m</div></div><div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="https://t1.daumcdn.net/mapjsapi/images/2x/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a><div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div></div>
					</div>
			
				</div>
	
				<div class="store_infoBox">
					<h2>영업시간</h2>
					<div class="store_time">
						<ul>
							<li>
								<p>
									<span class="day">
										<em>평일</em> : <strong>10:00 - 22:30</strong>
									</span>
								</p>
							</li>
							<li>
								<p>
									<span class="day">
										<em>토요일</em> : <strong>10:00 - 22:30</strong>
									</span>
									<span class="day">
										<em>일요일</em> : <strong>10:00 - 22:30</strong>
									</span>
									<span class="day">
										<em>공휴일</em> : <strong>10:00 - 22:30</strong>
									</span>
								</p>
							</li>
						</ul>
					</div>
					<div class="urNotice">
						<p>매장 상황에 따라 매장별 실 영업시간이 다를 수 있습니다.</p>
					</div>
				</div>		
				<div class="store_infoBox">
					<h2>취급 카테고리</h2>
					<div class="store_pdList">
						<div class="inner">
						<span class="tag">스킨케어</span><span class="tag">메이크업</span><span class="tag">프래그런스</span><span class="tag">바디케어</span><span class="tag">헤어케어</span><span class="tag">건강/위생용품</span><span class="tag">건강식품</span><span class="tag">생활용품</span></div>
					</div>
				</div>		
				<div class="store_infoBox">
					<h2>매장 사진</h2>
					<div class="store_sl">
						<div class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-free-mode" id="store_sl">
							<ul class="swiper-wrapper" id="swiper-wrapper-3f6fe4af7c1bb9fe" aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">
								<li class="swiper-slide swiper-slide-active" role="group" aria-label="1 / 3" style="width: 210px; margin-right: 10px;"><img src="https://image.oliveyoung.co.kr/uploads/images/store/DC8F_1.jpg" onerror="common.errorImg(this);" class="mCS_img_loaded"></li>
								<li class="swiper-slide swiper-slide-next" role="group" aria-label="2 / 3" style="width: 210px; margin-right: 10px;"><img src="https://image.oliveyoung.co.kr/uploads/images/store/DC8F_2.jpg" onerror="common.errorImg(this);" class="mCS_img_loaded"></li>			
								<li class="swiper-slide" role="group" aria-label="3 / 3" style="width: 210px; margin-right: 10px;"><img src="https://image.oliveyoung.co.kr/uploads/images/store/DC8F_3.jpg" onerror="common.errorImg(this);" class="mCS_img_loaded"></li>
							</ul>
							<div class="swiper-scrollbar"><div class="swiper-scrollbar-drag" style="transform: translate3d(0px, 0px, 0px); width: 0px;"></div></div>
						<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
						<div class="recoStBtn">
							<button class="recoStBtn_prev swiper-button-disabled" tabindex="-1" aria-label="Previous slide" aria-controls="swiper-wrapper-3f6fe4af7c1bb9fe" aria-disabled="true"></button>
							<button class="recoStBtn_next" tabindex="0" aria-label="Next slide" aria-controls="swiper-wrapper-3f6fe4af7c1bb9fe" aria-disabled="false"></button>
						</div>
					</div>
					<p class="store_time mgT10">매장의 이미지는 단순 참고용으로만 확인부탁드립니다.<br>실제 매장 방문시 연출물은 시기에 따라 다를 수 있습니다.</p>
				</div>	
				<div class="store_infoBox">
					<h2>제공중인 서비스</h2>
					<ul class="store_sv">
					<li><dl class="ico_rss_A"><dt>선물포장</dt><dd>올리브영 구입 상품을 유료 선물포장</dd></dl></li><li><dl class="ico_rss_B"><dt>TAXREFUND</dt><dd> </dd></dl></li><li><dl class="ico_rss_D"><dt>기프트카드판매</dt></dl></li><li><dl class="ico_rss_E"><dt>현금없는매장</dt><dd>현금 외 신용카드,기프트카드,<br>모바일 상품권,모바일 페이 결제 가능</dd></dl></li><li><dl class="ico_rss_H"><dt>간편결제</dt><dd>카카오페이,위챗페이,<br>알리페이 결제 가능</dd></dl></li><li><dl class="ico_rss_K"><dt>스마트반품</dt></dl></li><li><dl class="ico_rss_L"><dt>픽업</dt></dl></li><li><dl class="ico_rss_O"><dt>뷰티사이클</dt><dd>화장품 용기수거 가능</dd></dl></li></ul>
				</div>		
			</div>
		</div>
		<div class="depth1" id="strPrdInfo" style="display:none;">
			<div class="liveRk_bestPd">
				<div class="topCate">					
					<span class="bestSelect">
						<select id="selAge" title="연령대">							
								<option value="ALL">전체</option>							
								<option value="10">10대</option>							
								<option value="20">20대</option>						
								<option value="30">30대</option>							
								<option value="40">40대</option>
								<option value="50">50대</option>
						</select>
					</span>
					<span class="bestSelect">
						<select id="selGen" title="성별">
							<option value="ALL">전체</option>
							<option value="B">여성</option>
							<option value="A">남성</option>
						</select>
					</span>
					<span class="bestSelect">
						<select id="selCate" title="카테고리">
						</select>
					</span>
					<span>베스트 상품이에요</span>
				</div>
				<p class="bestPd_date"><span>10</span>월 <span>05</span>일 ~ <span>11</span>월 <span>05</span>일 | 온라인몰 판매 중인 매장 베스트 상품</p>
			</div>
			<div class="curation_area" id="storeBestProdArea">
				
			</div>
		</div>
		<a href="javascript:;" class="store_btn" id="bottm_closeBtn" onclick="javascript:curation.popClose('store_viewPop_renew');">닫기</a>
	</div><div id="mCSB_7_scrollbar_vertical" class="mCSB_scrollTools mCSB_7_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_7_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: block; height: 303px; max-height: 595px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
	<button class="layer_close type4" onclick="javascript:curation.popClose('store_viewPop_renew');">창 닫기</button>
	<input type="hidden" name="storeNo" value="DC8F">
</div>
</div>

<!-- 201912 PC 매장 취급 현황 팝업 -->
<div class="layer_pop_wrap" id="store_handlePop" style="z-index: 999; left: 50%; top: 0px; margin-left: -320px;">
</div>

<!-- 202003 PC 반품 가능 매장 찾기 팝업 -->
<div class="layer_pop_wrap" id="returnStorePop" style="z-index: 999;">
</div>


<div class="popup-contents" id="eventPop" style="z-index:999;top:50%;width:500px;margin:-337px 0 0 -250px;">
</div>


<div class="layer_pop_wrap w480" id="newJoinEvt" style="z-index: 999;">
</div>

<input type="hidden" id="popPushMsgRcvYn" name="popPushMsgRcvYn" value="">
<div class="oyLayerWrap" id="pushMsgRcvAgrPop">
</div>

<div class="layer_pop_wrap w534" id="layerWrap534" style="z-index: 999;">
</div>

<div class="layer_pop_wrap" id="crtPopWrap" style="display: none; top: 50%; width: 849px;">
	
	<div class="layer_cont4 w900">
		
	</div>
</div>

<div class="layer_pop_wrap" id="advPopWrap" style="display: none; top: 50%; width: 850px;">
	<div class="layer_cont4 advPop w850">
	
	</div>
</div>

<div class="oyLayerWrap" id="cyberAuditPop">
</div>

<div id="tempHtml" class="contEditor" style="display:none">
	
</div>


<div class="layer_pop_wrap w560" id="layerWrap560" style="z-index: 999;">
</div>

<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>

</html>