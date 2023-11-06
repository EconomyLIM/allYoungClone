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
<link rel="stylesheet" href="/BlackOY/css/style.css">
<title>블랙올리브영 온라인몰</title>
</head>
<body>
<jsp:include page="/layout/head.jsp"></jsp:include>
<div>
<div id="Contents">
			
			<!-- title_box -->
			<div class="title_box">
				<h1>장바구니 
					
						
						
					
				</h1>
				<ul class="step_list">
					<li class="on"><span class="hide">현재단계</span><span class="step_num tx_num">1</span> 장바구니</li><!-- 현재단계 li에 클래스 on과 <span class="hide">현재단계</span> 넣어주세요 -->
					<li><span class="step_num tx_num">2</span> 주문/결제</li>
					<li class="last"><span class="step_num tx_num">3 </span> 주문완료</li>
				</ul>
			</div>
			<!--// title_box -->
			
			<!-- membership_box -->



	
	
	
	
	
		
	

			<div class="membership_box  iconGrade5">
				<p class="tx_grade_info"><strong>신기범</strong>님의 멤버십 등급은 <span class="grade">BABY OLIVE</span>입니다 </p>
				<ul class="membership_info_list">
					
					<li><a href="https://www.oliveyoung.co.kr/store/main/getMembership.do" class="grade_benefit"><span>등급혜택</span></a></li>
					<li><a href="https://www.oliveyoung.co.kr/store/mypage/getCJOnePointInfo.do"><strong><span class="tx_num">CJ ONE</span> 포인트</strong> 
					<span class="own_point">
					
					
						
						
						
							<span class="tx_num">0</span>P
						
					
					</span></a></li>
					
					<li><a href="https://www.oliveyoung.co.kr/store/mypage/getCouponList.do"><strong>할인쿠폰</strong> <span class="own_point"><span class="tx_num">1</span>개</span></a></li>
					<li><a href="https://www.oliveyoung.co.kr/store/mypage/getDepositList.do"><strong>예치금</strong> <span class="own_point"><span class="tx_num">0</span>원</span></a></li>
					
					
					
				</ul>
			</div>
			<!--// membership_box -->
			
<!-- 일반배송, 당일배송 탭 -->
	<ul class="comm5sTabs" id="ulDelivGb">
		<li quickyn="N" class="on"><button type="button" data-attr="장바구니^Tab^일반 배송" title="선택됨">일반 배송 (0)</button></li>
		<li quickyn="Y"><button type="button" data-attr="장바구니^Tab^오늘 드림">오늘드림&amp;픽업 (0)</button></li>
	</ul>
<!--// 일반배송, 당일배송 탭 -->

<!-- 배송지 선택 -->

	<div class="box_delivery pickStore" id="divDelivery" style="display:none;">
        
		
		
		
		<div class="storePick_area" style="display:none;">
			<div class="tBox">
				<strong>매장에서 픽업 하시겠어요? <a href="javascript:;" data-rel="layer" data-target="storePickPop" class="ico_info_view">매장픽업 안내 레이어열기</a></strong>
				<span>실제 픽업 매장의 재고는 상이할 수 있습니다.</span>
			</div>
			<div class="toggleInput">
				<label class="switch">
					<input type="checkbox" id="pickupDirectYn" name="pickupDirectYn" value="Y">
					<span class="slider"></span>
				</label>	
			</div>
		</div>
		<div class="today_dalivery">
		<dl class="box_dl">
			<dd>
				<div class="prd_option_box sel_delivery">
				
					
					
						<a href="javascript:;" class="sel_option">배송지를 선택해주세요</a>
						<input type="hidden" id="dlvpSeqSelect" value="">
						<input type="hidden" id="strNoSelect" value="">
					 
				
					<div class="sel_option_fix">
						<ul class="sel_option_list">
							
						</ul>
						<p class="btn_fix"><a href="javascript:;" class="btn_addadr">+ 배송지 추가</a></p>
					</div>
				</div>
			</dd>
		</dl>	
		</div>
		<!-- 20191213 s -->
		
		
			
			
				
					
					
						<dl class="error_boxMod">
							
								
								
								<!-- <dt>현재 일시적으로 서비스가 불가능해요</dt>-->
									<dt></dt>
								
							
						</dl>
					
					
				
				
			
		
		
	
		<!-- 20191213 e -->			
	</div>
<!--// 배송지 선택 -->


	
			<h2 class="sub-title2"></h2>
			<table class="tbl_prd_list tableFix">  
				<caption>상품정보, 판매가, 수량, 구매가, 배송정보, 선택으로 이루어진 제휴업체 배송상품 장바구니 목록 표</caption>
				<colgroup>
					<col style="width:40px">
					<col style="width:*">
					<col style="width:110px">
					<col style="width:100px">
					<col style="width:110px">
					<col style="width:120px"><!-- 2017-01-13 수정 -->
					<col style="width:150px">					
				</colgroup>
				<thead>
				<tr>
					<th scope="col"><input type="checkbox" id="" name="" value="" title="올리브영 배송상품 전체 선택"></th>
					<th scope="col">상품정보</th>
					<th scope="col">판매가</th>
					<th scope="col">수량</th>
					<th scope="col">구매가</th>
					<th scope="col">선택</th>
					<th scope="col">배송정보</th>
				</tr>
				</thead>
				<tbody>
				
				<!-- 장바구니 상품 없을 시 -->
				<tr>
					<td colspan="7" class="no_data">장바구니에 저장된 상품이 없습니다.</td>
				</tr>
				</tbody>
			</table>
	
	
	
	
		
		</div>
</div>
<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>