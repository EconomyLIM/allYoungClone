<%@page import="user.domain.LogOnDTO"%>
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
	<jsp:include page="/layout/head.jsp"></jsp:include>
<div id="Contents">
			<div class="sub_title_area customer">
				<h1>고객센터 <span>무엇을 도와드릴까요?</span></h1>
			</div>

		



		<ul class="comm1sTabs threeSet customer">
			<li id="tabFaq"><a href="javascript:common.faq.getFaqList('99');">FAQ</a></li>
			<li id="tab1on1" class="on"><a href="javascript:common.link.moveQnaList();" title="선택됨">1:1문의</a></li>
			<li id="tabNotice"><a href="https://www.oliveyoung.co.kr/store/counsel/getNoticeList.do">공지사항</a></li>
		</ul>
		<!-- 등록 게시판 -->
		<table class="board-write-1s mgT40">
			<caption>문의유형, FAQ, 내용, 답변등록 알림(선택)으로 이루어진 1:1 문의 등록 표</caption>
			<colgroup>
				<col style="width:25%;">
				<col style="width:75%;">
			</colgroup>
			<tbody>
					<tr>
						<th scope="col"><label for="TypeInquiry">문의유형</label></th>
						<td>
							<select id="cnslLrgCate" name="cnslLrgCd" title="문의유형 항목을 선택하세요" style="width:192px;">
								<option value="" selected="selected">선택해주세요</option>
								<option value="200">온라인몰</option>
								<option value="300">오늘드림</option>
								<option value="400">매장</option>
							</select>
							<select id="cnslMidCate" name="cnslMidCd" title="문의유형 항목을 선택하세요" style="width:192px;"><option value="">선택해주세요</option><option value="301" name="300">주문/결제</option><option value="302" name="300">배송문의</option><option value="303" name="300">취소/교환/환불</option><option value="304" name="300">이벤트</option></select>
<!-- 							<span class="store_off"><input type="checkbox" id="offLine" name="offlineYn" value="Y"><label for="offLine">오프라인 매장 문의</label></span> -->
						</td>
					</tr>
					<tr id="cnslGoodsSelect" style="display: none;">
						<th scope="col"><label for="goodsInquiry">문의상품</label></th>
						<td>
							<div class="over" style="width:98%;">
								<div class="input-delete" style="width:84%;">
								
								
									<input type="text" id="goodsInquiry" title="문의상품을 선택해 주세요. (필수)" placeholder="문의상품을 선택해 주세요. (필수)" readonly="readonly">
									
									<button type="button" class="ButtonDelete" onclick="javascript:counsel.reg.goodsDel();">삭제</button>
								</div>
								<input type="button" class="ButtonSubmit" onclick="javascript:counsel.reg.openCnslGoodsList('open');return false;" value="문의상품 선택">
								<input type="hidden" id="cnslSeq" value="">
								<input type="hidden" id="goodsYn" value="N">
								<input type="hidden" id="ordNo" name="ordNo" value="">
								<input type="hidden" id="goodsNo" name="goodsNo" value="">
								<input type="hidden" name="goodsSeq" value="">
							</div>
						</td>
					</tr>
					<tr id="recommFaqList" style="display: table-row;">
						<th scope="col">혹시 이게 궁금하세요?</th>
						<td>
							<div class="list-customer">
								<ul class="faq_list"><li><a href="#n" role="button" title="답변 내용보기" class="tit">[오늘드림] 오늘드림으로 주문시 선물포장도 가능한가요?</a><ul class="conts"><li class="question"><p class="pdzero">오늘드림&nbsp;주문&nbsp;시&nbsp;결제창에서&nbsp;노출되는&nbsp;선물포장&nbsp;서비스&nbsp;체크박스를&nbsp;클릭&nbsp;해주시면&nbsp;선물&nbsp;포장이&nbsp;가능합니다.&nbsp;<br&nbsp;><br>선물포장&nbsp;비용&nbsp;2,000원이&nbsp;발생하는&nbsp;점&nbsp;참고&nbsp;부탁드립니다.<br&nbsp;><br><br&nbsp;><br>※결제금액&nbsp;3만원&nbsp;이상<br&nbsp;><br>※선물포장이&nbsp;불가한&nbsp;상품은&nbsp;제외(부피,&nbsp;크기&nbsp;등)</br&nbsp;></br&nbsp;></br&nbsp;></br&nbsp;></p></li></ul></li><li><a href="#n" role="button" title="답변 내용보기" class="tit">[오늘드림] 일반배송으로 주문했는데 오늘드림이 변경 가능한가요?</a><ul class="conts"><li class="question"><p class="pdzero">오늘드림은&nbsp;반드시&nbsp;오늘드림&nbsp;장바구니&nbsp;내에서&nbsp;주문해주셔야&nbsp;이용&nbsp;가능한&nbsp;서비스입니다.&nbsp;</p></li></ul></li></ul>
							</div>
						</td>
					</tr>
					<tr class="textarea">
						<th scope="col"><label for="InputTextarea">내용</label></th>
						<td>
							<textarea id="InputTextarea" name="inqCont" cols="5" rows="1" placeholder="문의내용을 입력해주세요.(2000자 이내)" style="width:98%;height:280px;" disabled="disabled"></textarea>
							<div id="multiple-thumbnail" class="full">
								<span class="txt">10MB이하 이미지파일 (JPG,PNG,GIF) 3개를 첨부하실 수 있습니다.</span>
								<div class="thumbnail-upload">
									<label for="inputFile">
										<button type="button" id="btnFile" class="file"><em id="imgCnt" class="count"><span>0</span>3</em></button>
									</label>
									<input type="file" id="inputFile" name="cnslFile" class="btnFileAdd" value="첨부파일" title="첨부파일 선택" style="display:none;" accept="image/*">

									<ul id="ulImg" class="thumbnail-list">

									</ul>
								</div>
								<!-- 첨부파일 등록 후 -->
								<div class="fileName" style="display:none;">

								</div>
								<canvas id="canvas" style="display:none;"></canvas>
							</div>
						</td>
					</tr>
					<tr class="notice">
						<th scope="col">답변등록 알림(선택)</th>
						<td>
							<ul>
								<li>
									<input type="checkbox" id="NoticeSms" value="Y" name="smsRcvYn" class="chkSmall" checked="checked"><label for="NoticeSms">SMS</label>
									<select title="통신사를 선택하세요" id="rgnNoSelect" class="sms" name="cellSctNo" style="width:122px;" selected="selected">
										<option selected="selected">010</option>
										<option>011</option>
										<option>016</option>
										<option>017</option>
										<option>018</option>
										<option>019</option>
										<option>0130</option>
										<option>0303</option>
										<option>0502</option>
										<option>0504</option>
										<option>0505</option>
										<option>0506</option>
									</select>
									<input type="hidden" id="cellSctNo" value="010">
									<span class="des">-</span>
									<input type="tel" class="sms" name="cellTxnoNo" value="7367" title="휴대폰 가운데 4자리를 입력하세요" maxlength="4" placeholder="0000" style="width:122px;">
									<span class="des">-</span>
									<input type="tel" class="sms" name="cellEndNo" value="8785" title="휴대폰 마지막 4자리를 입력하세요" maxlength="4" placeholder="0000" style="width:122px;">
								</li>
								<li>
									<input type="checkbox" id="NoticeEmail" name="emailRcvYn" value="Y" class="chkSmall"><label for="NoticeEmail">E-mail</label>
									<input type="text" title="아이디를 입력하세요" class="email" name="emailAddr1" placeholder="아이디를 입력하세요" style="width:152px;ime-mode:disabled;" disabled="disabled">
									<span class="des">@</span>
									<input type="text" class="email" name="emailAddr2" title="직접 입력 하세요" placeholder="직접 입력 하세요" style="width:140px;ime-mode:disabled;" disabled="disabled">
									<input type="hidden" name="emailAddr" value="jybee2301@naver.com">
									<select title="도메인 주소를 선택하세요." class="email" style="width:122px;" id="emailAddrSelect" disabled="disabled" selected="selected">
										<option value="-1" selected="selected">직접입력</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="naver.com">naver.com</option>
										<option value="nate.com">nate.com</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="yahoo.co.kr">yahoo.co.kr</option>
										<option value="paran.com">paran.com</option>
										<option value="empal.com">empal.com</option>
										<option value="gmail.com">gmail.com</option>
										<option value="dreamwiz.com">dreamwiz.com</option>
										<option value="korea.com">korea.com</option>
										<option value="lycos.co.kr">lycos.co.kr</option>
										<option value="hanafos.com">hanafos.com</option>
										<option value="daum.net">daum.net</option>
										<option value="chol.com">chol.com</option>
										<option value="feechal.com">feechal.com</option>
									</select>
								</li>
							</ul>
						</td>
					</tr>
				
			</tbody>
		</table>
		<!-- //등록 게시판 -->
		
		<div class="area1sButton pdT30">
			<a href="javascript:;" id="cnslSubmit" class="btnGreen">등록</a>
			<a href="javascript:;" id="cnslCancel" class="btnGray">취소</a>
		</div>
	
	</div>
<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>