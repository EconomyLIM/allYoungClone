<%@page import="basket.domain.BasketDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<%@ include file="/WEB-INF/inc/session_auth.jspf"%>
<%
	ArrayList<BasketDTO> basketList = (ArrayList) request.getAttribute("list");
	String quickyn = request.getParameter("quickyn");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<title>블랙올리브영 온라인몰</title>
</head>
<body>
<!-- title_box -->
			<div class="title_box">
				<h1>장바구니</h1>
				<ul class="step_list">
					<li class="on"><span class="hide">현재단계</span><span
						class="step_num tx_num">1</span> 장바구니</li>
					<!-- 현재단계 li에 클래스 on과 <span class="hide">현재단계</span> 넣어주세요 -->
					<li><span class="step_num tx_num">2</span> 주문/결제</li>
					<li class="last"><span class="step_num tx_num">3 </span> 주문완료</li>
				</ul>
			</div>
			<!--// title_box -->

			<!-- membership_box -->











			<div class="membership_box  iconGrade5">
				<p class="tx_grade_info">
					<strong>${sessionScope.logOn.u_name}</strong>님의 멤버십 등급은 <span class="grade">${sessionScope.logOn.grade_id}
						</span>입니다
				</p>
				<ul class="membership_info_list">

					<li><a
						href="https://www.oliveyoung.co.kr/store/main/getMembership.do"
						class="grade_benefit"><span>등급혜택</span></a></li>
					<li><a
						href="https://www.oliveyoung.co.kr/store/mypage/getCJOnePointInfo.do"><strong><span
								class="tx_num">CJ ONE</span> 포인트</strong> <span class="own_point">





								<span class="tx_num">0</span>P


						</span></a></li>

					<li><a
						href="https://www.oliveyoung.co.kr/store/mypage/getCouponList.do"><strong>할인쿠폰</strong>
							<span class="own_point"><span class="tx_num">1</span>개</span></a></li>
					<li><a
						href="https://www.oliveyoung.co.kr/store/mypage/getDepositList.do"><strong>예치금</strong>
							<span class="own_point"><span class="tx_num">0</span>원</span></a></li>



				</ul>
			</div>
			<!--// membership_box -->

			<!-- 일반배송, 당일배송 탭 -->
			<ul class="comm5sTabs" id="ulDelivGb">
				<li quickyn="N" class="on"><button type="button" class = "basketType nb"
						data-attr="장바구니^Tab^일반 배송" title="선택됨">일반 배송 (${sessionScope.basketlistcnt[0]})</button></li>
				<li quickyn="Y"><button type="button"  class = "basketType tb"
						data-attr="장바구니^Tab^오늘 드림">오늘드림&amp;픽업 (${sessionScope.basketlistcnt[1]})</button></li>
			</ul>
			<!--// 일반배송, 당일배송 탭 -->

			<!-- 배송지 선택 -->

			<div class="box_delivery pickStore" id="divDelivery"
				style="display: none;">




				<div class="storePick_area" style="display: none;">
					<div class="tBox">
						<strong>매장에서 픽업 하시겠어요? <a href="javascript:;"
							data-rel="layer" data-target="storePickPop" class="ico_info_view">매장픽업
								안내 레이어열기</a></strong> <span>실제 픽업 매장의 재고는 상이할 수 있습니다.</span>
					</div>
					<div class="toggleInput">
						<label class="switch"> <input type="checkbox"
							id="pickupDirectYn" name="pickupDirectYn" value="Y"> <span
							class="slider"></span>
						</label>
					</div>
				</div>
				<div class="today_dalivery">
					<dl class="box_dl">
						<dd>
							<div class="prd_option_box sel_delivery">



								<a href="javascript:;" class="sel_option">배송지를 선택해주세요</a> <input
									type="hidden" id="dlvpSeqSelect" value=""> <input
									type="hidden" id="strNoSelect" value="">


								<div class="sel_option_fix">
									<ul class="sel_option_list">

									</ul>
									<p class="btn_fix">
										<a href="javascript:;" class="btn_addadr">+ 배송지 추가</a>
									</p>
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
				<caption>상품정보, 판매가, 수량, 구매가, 배송정보, 선택으로 이루어진 제휴업체 배송상품
					장바구니 목록 표</caption>
				<colgroup>
					<col style="width: 40px">
					<col style="width: *">
					<col style="width: 110px">
					<col style="width: 100px">
					<col style="width: 110px">
					<col style="width: 120px">
					<!-- 2017-01-13 수정 -->
					<col style="width: 150px">
				</colgroup>
				<thead>
					<tr>
						<th scope="col"><input type="checkbox" id="all" name="" value=""
							title="올리브영 배송상품 전체 선택"></th>
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
					<c:choose>
						<c:when test="${empty list }">
							<tr>
								<td colspan="7" class="no_data">장바구니에 저장된 상품이 없습니다.</td>
							</tr>
							</tbody>
							</table>
						</c:when>
						<c:otherwise>
						<c:set var="salePrice" value="${0}" scope="page" />
						<c:set var="totalPrice" value="${0}" scope="page" />
							<c:forEach items="${ list }" var="bpl">
							
								<c:set var="totalPrice" value="${totalPrice + (bpl.proPrice * bpl.product_cnt)}" scope="page" />
								<c:set var="salePrice" value="${salePrice + (bpl.afterPrice * bpl.product_cnt)}" scope="page" />
								<tr soldoutyn="N" cno="677745447" goodsno="${bpl.productID }"
									itemno="002" lgcgoodsno="8809643061308" oripno="${bpl.proPrice }" pno="${bpl.afterPrice}"
									promkndcd="" rsvsaleyn="N" drtpuryn="N" dispcatno=""
									buycondstrtqtyamt="" getcondstrtqtyamt="" pkggoodsno=""
									quickyn="N" strno="" onladltcertyn="N"
									criteo-goods="A000000184129002"
									trackingcd="Cat100000100010008_MID" gatecd="Drawer"
									infnselimpsyn="N">

									<input type="hidden" id="soldout_yn" name="soldout_yn"
										value="N">

									<td colspan="7">


										<div class="tbl_cont_area">

											<!-- 쿠폰할인 : 즉시할인,상품할인 쿠폰 할인가 적용 -->

											<input type="hidden" id="saleCpnDcPrc" name="saleCpnDcPrc"
												value="22040"> <input type="hidden" id="goodsCpnYn"
												name="goodsCpnYn" value="Y">

											<div class="tbl_cell w40">
												<input type="checkbox" saleprc="23200" orgsaleprc="31000"
													cpndcamt="1160" ordqty="1" rsvstockqty="N" stockqty="208"
													checked="checked" id="inp_prd_chk1" name="s_checkbox"
													soldoutyn="N" value="0" class="chkSmall"
													title="${bpl.displProName }">

												<input type="hidden" name="s_cart_no" value="677745447">
												<input type="hidden" name="s_prom_no" value=""> <input
													type="hidden" name="s_buy_cond_strt_qty_amt" value="">
												<input type="hidden" name="s_disp_cat_no" value="">
												<input type="hidden" name="s_goods_no" value="A000000184129">
												<input type="hidden" name="s_item_no" value="002"> <input
													type="hidden" name="s_cpn_dc_amt" value="1160"> <input
													type="hidden" name="s_org_sale_prc" value="31000">
												<input type="hidden" name="s_sale_prc" value="23200">
												<input type="hidden" name="s_drt_pur_yn" value="N">
												<input type="hidden" name="s_dlex_polc_no" value="1">
												<input type="hidden" name="s_trade_shp_cd" value="1">
												<input type="hidden" name="s_entr_no" value="C19275">
												<input type="hidden" name="s_sum_pkg_yn" value="Y">
												<input type="hidden" name="s_whsg_expc_dt" value="">
												<input type="hidden" name="s_dlex_free_yn" value="N">


											</div>
											<div class="tbl_cell w390">
												<div class="prd_info ">

													<a class="prd_img" href="#"> <img
														data-original="https://image.oliveyoung.co.kr/uploads/images/goods/220/10/0000/0018/A00000018412902ko.jpg?l=ko"
														class="completed-seq-lazyload" alt="상품이미지"
														onerror="common.errorImg(this);" src="${bpl.displImgSrc }">
													</a>
													<!-- 
											셀링포인트영역 셋팅시작
											프로모션시작일자,프로모션종료일자가있거나 셀링텍스트가 잇으면 해당영역보여줌.
										-->






													<a class="prd_name" href="#"> <span
														class="tx_sale_info"> </span> <!-- 브랜드명 및 할인정보 --> <span
														id="brandNm">${bpl.brandName } </span>
														<p id="goodsNm">${bpl.displProName }</p>
													</a>
													<p class="prd_opt">

														<i class="tit">옵션</i><span>${bpl.pro_name }</span>

														<button type="button" class="change"
															data-ref-goodsno="A000000184129" data-ref-itemno="002">옵션변경</button>


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
												</div>
											</div>
											<div class="tbl_cell w110">


												<span class="cur_price"><span class="tx_num">${bpl.proPrice }</span>원</span>

											</div>
											<div class="tbl_cell w100">
												<div class="prd_cnt">



													<select class="amount" name="s_amount" prdtp="1" prdcnt="0"
														ordpsbminqty="1" ordpsbmaxqty="999" qtyaddunit="1"
														ordqty="1" title="상품 수량 선택">
														
														<c:forEach var="value" begin="1" end="10">
        												<option value="${value}" <c:if test="${value == bpl.product_cnt}">selected</c:if>>${value}</option>
    													</c:forEach>

														<option value="10+">10+</option>

													</select>


												</div>



												<button type="button" class="btnSmall wGray"
													style="display: none;" name="btnQtyMod">
													<span>변경</span>
												</button>


											</div>
											<div class="tbl_cell w110">


												<span class="org_price"> <span class="tx_num">${bpl.proPrice * bpl.product_cnt}</span>원

												</span> <span class="pur_price"><span class="tx_num">${bpl.afterPrice * bpl.product_cnt}</span>원</span>

											</div>

											<div class="tbl_cell w120  ">
												<!-- 합배송, 배송 예정 class / sum   delay추가 하기 -->


												<p class="prd_delivery">
													<strong id="deliStrongText">무료배송<span class="ex">도서·산간
															제외</span></strong>

												</p>

											</div>
											<!--// 2017-01-13 수정 -->

											<!-- 쇼핑찜 설정 -->


											<div class="tbl_cell w150">
												<div class="btn_group">


													<button id="677745447|A000000184129|002" type="button"
														class="btnSmall wGreen" name="btn_buy"
														data-attr="장바구니^장바구니바로구매^바로구매">
														<span data-attr="장바구니^장바구니바로구매^바로구매">바로구매</span>
													</button>
													<!-- 3440969_PM작업시 오늘드림 레이어 팝업 노출 요청 건 - obj인계 불가능에 따른 고유 ID 선언(즉시 구매 시, find로 찾기 위함) -->

													<button type="button" class="btnSmall wGray zzim "
														name="btnZzim" zim-on-off=""
														data-ref-goodsno="A000000184129">
														<span>쇼핑찜<span class="oyblind">해제됨</span></span>
													</button>
													<button type="button" class="btnSmall wGray delete"
														name="btnDelete" data-attr="장바구니^장바구니상품삭제^삭제">
														<span data-attr="장바구니^장바구니상품삭제^삭제">삭제</span>
													</button>
													<!-- 버튼 공간(스페이스바)없이 붙여주세요. -->


												</div>
											</div>

										</div> <!-- input type="text" name="test1" value = "Y" />
										<input type="text" name="test2" value = "N" />
										<input type="text" name="test3" value = "20" />
										<input type="text" name="test4" value = "10" />
										<input type="text" name="test5" value = "20" />
										<input type="text" name="test6" value = "208" />
										<input type="text" name="test7" value = "N" />
										<input type="text" name="test8" value = "208" />
										<input type="text" name="test9" value = "N" />
										<input type="text" name="test9" value = "1" /> -->


										<div class="curation_box"
											id="curation_area_8809643061308_A000000184129_002">
											<div class="loading_box">
												<span class="icon"><img
													src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif"
													alt="로딩중"></span>
												<p class="txt">고객님을 위한 상품 추천중이에요</p>
											</div>
										</div>

									</td>
								</tr>
							</c:forEach>
							</tbody>
							</table>
							
							<div class="basket_price_info">
					<div class="btn_area">
						<button type="button" class="btnSmall wGray type2" id="partDelBtn1" name="partDelBtn"><span>선택상품 삭제</span></button> 
						<button type="button" class="btnSmall wGray type2" id="soldOutDelBtn1" name="soldOutDelBtn"><span>품절상품 삭제</span></button>
					</div>
					<div class="sum_price">총 판매가 <span class="tx_num originalprice">${totalPrice }</span>원 <span class="tx_sign minus">-</span> 총 할인금액 <span class="tx_num saleprice">${totalPrice - salePrice }</span>원 <span class="tx_sign plus">+</span> 배송비 <span class="tx_num">0</span>원 <span class="span_quickDeliCharge" style="display:none;">(3!4!, 미드나잇 이용시)</span><span class="tx_sign equal">=</span> <span class="tx_total_price">총 결제금액 <span class="tx_price"><span class="tx_num totalprice">${salePrice }</span>원</span></span></div>
				</div>
				<div class="total_price_info">
				<div class="detail_price">
					<p>총 판매가<span><span class="tx_num originalprice">${totalPrice }</span>원</span></p>
					<span class="tx_sign2 minus">-</span>
					<p class="tx_sale">총 할인금액<span><span class="tx_num saleprice">${totalPrice - salePrice }</span>원</span></p>
					<span class="tx_sign2 plus">+</span>
					<p>배송비 <span><span class="tx_num">0</span>원</span></p>
				</div>	
				<div class="sum_price">
				
					
						<span class="tx_text">배송비는 쿠폰할인금액에 따라 변경될 수 있습니다.</span>
					
					
				
					
					총 결제예상금액 <span class="span_quickDeliCharge" style="display:none;">최소</span><span class="tx_price"><span class="tx_num totalprice">${salePrice }</span>원</span></div>	
			</div>
			
			<div class="order_btn_area order_cart">
			<button type="button" class="btnOrangeW" name="partOrderBtn" data-attr="장바구니^주문유형^선택주문">선택주문(1)</button>
			<button type="button" class="btnOrange" name="allOrderBtn" data-attr="장바구니^주문유형^전체주문">전체주문</button>
		</div>
			
			<div class="basket_btmBox" id="curation_area_a015">

 
	
		<h4 class="tit_h4">함께 구매하면 좋은 추천 상품이에요<button class="moreBtn" id="crt_more_a015" onclick="javascript:common.wlog('cart_curation_more_btn');"><span>더보기</span></button></h4>
		<div class="inner_cont" id="curation_area_inner_a015" role="toolbar">
			<ul class="curation_basket slide_list slick_slider slick-initialized slick-slider slick-dotted" id="curation_ul_a015"><button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous" role="button" style="display: block;">Previous</button>
				
					
						<div aria-live="polite" class="slick-list draggable"><div class="slick-track" role="listbox" style="opacity: 1; width: 5832px; transform: translate3d(-972px, 0px, 0px);"><li data-wlog_type="normal" class="slick-slide slick-cloned" data-slick-index="-3" aria-hidden="true" style="width: 324px;" tabindex="-1">
							<div class="thum" data-ref-goodsno="A000000190021" data-egrank="11" data-egcode="a015_a015" data-attr="장바구니^추천상품^[NEW]브링그린 쑥세라카밍모이스처젤크림 75mL 더블기획" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=10" data-ref-dispcatno="" data-ref-itemno="001"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019002108ko.jpg?l=ko" alt="[NEW]브링그린 쑥세라카밍모이스처젤크림 75mL 더블기획" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000190021" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000190021" tabindex="-1"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190021&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;10&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000190021&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;11&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=10&quot;);" class="a_detail" data-ref-goodsno="A000000190021" data-egrank="11" data-egcode="a015_a015" data-attr="장바구니^추천상품^[NEW]브링그린 쑥세라카밍모이스처젤크림 75mL 더블기획" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=10" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl><dt class="tit">[NEW]브링그린 쑥세라카밍모이스처젤크림 75mL 더블기획</dt><dd class="price"><del>41,400원</del><strong>26,800원</strong></dd><dd class="icon"><span class="icon_flag sale">세일</span><span class="icon_flag gift">증정</span><span class="icon_flag delivery">오늘드림</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide slick-cloned" data-slick-index="-2" aria-hidden="true" style="width: 324px;" tabindex="-1">
							<div class="thum" data-ref-goodsno="A000000189837" data-egrank="13" data-egcode="a015_a015" data-attr="장바구니^추천상품^[단독기획] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=11" data-ref-dispcatno="" data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018983703ko.jpg?l=ko" alt="[단독기획] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000189837" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000189837" tabindex="-1"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189837&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;11&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000189837&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;13&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=11&quot;);" class="a_detail" data-ref-goodsno="A000000189837" data-egrank="13" data-egcode="a015_a015" data-attr="장바구니^추천상품^[단독기획] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=11" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl><dt class="tit">[단독기획] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획</dt><dd class="price"><del>46,000원</del><strong>32,200원</strong></dd><dd class="icon"><span class="icon_flag sale">세일</span><span class="icon_flag delivery">오늘드림</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" style="width: 324px;" tabindex="-1">
							<div class="thum" data-ref-goodsno="A000000189181" data-egrank="14" data-egcode="a015_a015" data-attr="장바구니^추천상품^[블프특가]브링그린 티트리시카수딩토너 500mL한정기획(+100mL증정)" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=12" data-ref-dispcatno="" data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018918103ko.jpg?l=ko" alt="[블프특가]브링그린 티트리시카수딩토너 500mL한정기획(+100mL증정)" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000189181" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000189181" tabindex="-1"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189181&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;12&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000189181&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;14&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=12&quot;);" class="a_detail" data-ref-goodsno="A000000189181" data-egrank="14" data-egcode="a015_a015" data-attr="장바구니^추천상품^[블프특가]브링그린 티트리시카수딩토너 500mL한정기획(+100mL증정)" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=12" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl><dt class="tit">[블프특가]브링그린 티트리시카수딩토너 500mL한정기획(+100mL증정)</dt><dd class="price"><del>27,000원</del><strong>19,440원</strong></dd><dd class="icon"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span><span class="icon_flag gift">증정</span><span class="icon_flag delivery">오늘드림</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 324px;" tabindex="-1" role="option" aria-describedby="slick-slide00">
							<div class="thum" data-ref-goodsno="A000000175878" data-egrank="1" data-egcode="a015_a015" data-attr="장바구니^추천상품^[대용량] 파티온 노스카나인 트러블 세럼 단독 기획(50ml+15ml)" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=1" data-ref-dispcatno="" data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017587818ko.jpg?l=ko" alt="[대용량] 파티온 노스카나인 트러블 세럼 단독 기획(50ml+15ml)" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000175878" data-ref-dispcatno="" data-ref-itemno="001" tabindex="0"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000175878" tabindex="0"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000175878&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;1&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000175878&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;1&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=1&quot;);" class="a_detail" data-ref-goodsno="A000000175878" data-egrank="1" data-egcode="a015_a015" data-attr="장바구니^추천상품^[대용량] 파티온 노스카나인 트러블 세럼 단독 기획(50ml+15ml)" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=1" data-ref-dispcatno="" data-ref-itemno="001" tabindex="0"><dl><dt class="tit">[대용량] 파티온 노스카나인 트러블 세럼 단독 기획(50ml+15ml)</dt><dd class="price"><del>38,000원</del><strong>28,200원</strong></dd><dd class="icon"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span><span class="icon_flag gift">증정</span><span class="icon_flag delivery">오늘드림</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide slick-active" data-slick-index="1" aria-hidden="false" style="width: 324px;" tabindex="-1" role="option" aria-describedby="slick-slide01">
							<div class="thum" data-ref-goodsno="A000000190798" data-egrank="2" data-egcode="a015_a015" data-attr="장바구니^추천상품^에스트라 리제덤365 모공탄력 캡슐세럼 30ml+7ml 기획(+리제덤 크림 10ml+마스크팩 3매 증정)(2310)" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=2" data-ref-dispcatno="" data-ref-itemno="002"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019079804ko.jpg?l=ko" alt="에스트라 리제덤365 모공탄력 캡슐세럼 30ml+7ml 기획(+리제덤 크림 10ml+마스크팩 3매 증정)(2310)" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000190798" data-ref-dispcatno="" data-ref-itemno="002" tabindex="0"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000190798" tabindex="0"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190798&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;2&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000190798&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;2&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=2&quot;);" class="a_detail" data-ref-goodsno="A000000190798" data-egrank="2" data-egcode="a015_a015" data-attr="장바구니^추천상품^에스트라 리제덤365 모공탄력 캡슐세럼 30ml+7ml 기획(+리제덤 크림 10ml+마스크팩 3매 증정)(2310)" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=2" data-ref-dispcatno="" data-ref-itemno="002" tabindex="0"><dl><dt class="tit">에스트라 리제덤365 모공탄력 캡슐세럼 30ml+7ml 기획(+리제덤 크림 10ml+마스크팩 3매 증정)(2310)</dt><dd class="price"><strong>48,000원</strong></dd><dd class="icon"><span class="icon_flag gift">증정</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide slick-active" data-slick-index="2" aria-hidden="false" style="width: 324px;" tabindex="-1" role="option" aria-describedby="slick-slide02">
							<div class="thum" data-ref-goodsno="A000000190824" data-egrank="3" data-egcode="a015_a015" data-attr="장바구니^추천상품^[박은빈 포카/무인도SOS키트 증정]한율 어린쑥 수분진정크림 55ml+25ml+마스크팩 기획" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=3" data-ref-dispcatno="" data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019082406ko.jpg?l=ko" alt="[박은빈 포카/무인도SOS키트 증정]한율 어린쑥 수분진정크림 55ml+25ml+마스크팩 기획" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000190824" data-ref-dispcatno="" data-ref-itemno="001" tabindex="0"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000190824" tabindex="0"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190824&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;3&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000190824&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;3&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=3&quot;);" class="a_detail" data-ref-goodsno="A000000190824" data-egrank="3" data-egcode="a015_a015" data-attr="장바구니^추천상품^[박은빈 포카/무인도SOS키트 증정]한율 어린쑥 수분진정크림 55ml+25ml+마스크팩 기획" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=3" data-ref-dispcatno="" data-ref-itemno="001" tabindex="0"><dl><dt class="tit">[박은빈 포카/무인도SOS키트 증정]한율 어린쑥 수분진정크림 55ml+25ml+마스크팩 기획</dt><dd class="price"><del>38,000원</del><strong>27,600원</strong></dd><dd class="icon"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span><span class="icon_flag gift">증정</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide" data-slick-index="3" aria-hidden="true" style="width: 324px;" tabindex="-1" role="option" aria-describedby="slick-slide03">
							<div class="thum" data-ref-goodsno="A000000162323" data-egrank="4" data-egcode="a015_a015" data-attr="장바구니^추천상품^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=4" data-ref-dispcatno="" data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016232329ko.jpg?l=ko" alt="[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000162323" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000162323" tabindex="-1"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;4&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000162323&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;4&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=4&quot;);" class="a_detail" data-ref-goodsno="A000000162323" data-egrank="4" data-egcode="a015_a015" data-attr="장바구니^추천상품^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=4" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl><dt class="tit">[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획</dt><dd class="price"><del>43,000원</del><strong>30,960원</strong></dd><dd class="icon"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide" data-slick-index="4" aria-hidden="true" style="width: 324px;" tabindex="-1" role="option" aria-describedby="slick-slide04">
							<div class="thum" data-ref-goodsno="A000000156842" data-egrank="5" data-egcode="a015_a015" data-attr="장바구니^추천상품^[11월 올영픽/화장솜 증정기획]바이오더마 하이드라비오 에센스로션 200ml(화장솜 증정)" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=5" data-ref-dispcatno="" data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015684228ko.jpg?l=ko" alt="[11월 올영픽/화장솜 증정기획]바이오더마 하이드라비오 에센스로션 200ml(화장솜 증정)" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000156842" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000156842" tabindex="-1"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000156842&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;5&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000156842&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;5&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=5&quot;);" class="a_detail" data-ref-goodsno="A000000156842" data-egrank="5" data-egcode="a015_a015" data-attr="장바구니^추천상품^[11월 올영픽/화장솜 증정기획]바이오더마 하이드라비오 에센스로션 200ml(화장솜 증정)" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=5" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl><dt class="tit">[11월 올영픽/화장솜 증정기획]바이오더마 하이드라비오 에센스로션 200ml(화장솜 증정)</dt><dd class="price"><del>35,000원</del><strong>22,710원</strong></dd><dd class="icon"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span><span class="icon_flag gift">증정</span><span class="icon_flag delivery">오늘드림</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide" data-slick-index="5" aria-hidden="true" style="width: 324px;" tabindex="-1" role="option" aria-describedby="slick-slide05">
							<div class="thum" data-ref-goodsno="A000000186993" data-egrank="7" data-egcode="a015_a015" data-attr="장바구니^추천상품^에스트라 테라크네365 액티브 세럼 30ml 기획 (+클렌징폼30g+토너25ml 증정)(2307)" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=6" data-ref-dispcatno="" data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018699303ko.jpg?l=ko" alt="에스트라 테라크네365 액티브 세럼 30ml 기획 (+클렌징폼30g+토너25ml 증정)(2307)" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000186993" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000186993" tabindex="-1"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000186993&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;6&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000186993&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;7&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=6&quot;);" class="a_detail" data-ref-goodsno="A000000186993" data-egrank="7" data-egcode="a015_a015" data-attr="장바구니^추천상품^에스트라 테라크네365 액티브 세럼 30ml 기획 (+클렌징폼30g+토너25ml 증정)(2307)" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=6" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl><dt class="tit">에스트라 테라크네365 액티브 세럼 30ml 기획 (+클렌징폼30g+토너25ml 증정)(2307)</dt><dd class="price"><del>42,000원</del><strong>31,500원</strong></dd><dd class="icon"><span class="icon_flag sale">세일</span><span class="icon_flag gift">증정</span><span class="icon_flag delivery">오늘드림</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide" data-slick-index="6" aria-hidden="true" style="width: 324px;" tabindex="-1" role="option" aria-describedby="slick-slide06">
							<div class="thum" data-ref-goodsno="A000000149485" data-egrank="8" data-egcode="a015_a015" data-attr="장바구니^추천상품^[블프특가]바이오힐보 비타민 토닝 올인원 에센스 120mL" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=7" data-ref-dispcatno="" data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014948501ko.jpg?l=ko" alt="[블프특가]바이오힐보 비타민 토닝 올인원 에센스 120mL" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000149485" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000149485" tabindex="-1"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000149485&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;7&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000149485&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;8&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=7&quot;);" class="a_detail" data-ref-goodsno="A000000149485" data-egrank="8" data-egcode="a015_a015" data-attr="장바구니^추천상품^[블프특가]바이오힐보 비타민 토닝 올인원 에센스 120mL" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=7" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl><dt class="tit">[블프특가]바이오힐보 비타민 토닝 올인원 에센스 120mL</dt><dd class="price"><del>28,000원</del><strong>8,960원</strong></dd><dd class="icon"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span><span class="icon_flag delivery">오늘드림</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide" data-slick-index="7" aria-hidden="true" style="width: 324px;" tabindex="-1" role="option" aria-describedby="slick-slide07">
							<div class="thum" data-ref-goodsno="A000000163907" data-egrank="9" data-egcode="a015_a015" data-attr="장바구니^추천상품^[올리브영 단독] 크리니크 모이스춰 써지 쏙보습크림/리치크림 50ml 기획 (루피 파우치 증정)" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=8" data-ref-dispcatno="" data-ref-itemno="003"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016390719ko.jpg?l=ko" alt="[올리브영 단독] 크리니크 모이스춰 써지 쏙보습크림/리치크림 50ml 기획 (루피 파우치 증정)" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000163907" data-ref-dispcatno="" data-ref-itemno="003" tabindex="-1"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000163907" tabindex="-1"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000163907&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;8&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000163907&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;9&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=8&quot;);" class="a_detail" data-ref-goodsno="A000000163907" data-egrank="9" data-egcode="a015_a015" data-attr="장바구니^추천상품^[올리브영 단독] 크리니크 모이스춰 써지 쏙보습크림/리치크림 50ml 기획 (루피 파우치 증정)" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=8" data-ref-dispcatno="" data-ref-itemno="003" tabindex="-1"><dl><dt class="tit">[올리브영 단독] 크리니크 모이스춰 써지 쏙보습크림/리치크림 50ml 기획 (루피 파우치 증정)</dt><dd class="price"><del>47,000원</del><strong>37,600원</strong></dd><dd class="icon"><span class="icon_flag sale">세일</span><span class="icon_flag gift">증정</span><span class="icon_flag delivery">오늘드림</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide" data-slick-index="8" aria-hidden="true" style="width: 324px;" tabindex="-1" role="option" aria-describedby="slick-slide08">
							<div class="thum" data-ref-goodsno="A000000190166" data-egrank="10" data-egcode="a015_a015" data-attr="장바구니^추천상품^[대용량/키링 증정] 리얼베리어 익스트림 크림 70ml 1+1 기획 (벨리곰 콜라보)" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=9" data-ref-dispcatno="" data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019016603ko.jpg?l=ko" alt="[대용량/키링 증정] 리얼베리어 익스트림 크림 70ml 1+1 기획 (벨리곰 콜라보)" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000190166" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000190166" tabindex="-1"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190166&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;9&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000190166&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;10&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=9&quot;);" class="a_detail" data-ref-goodsno="A000000190166" data-egrank="10" data-egcode="a015_a015" data-attr="장바구니^추천상품^[대용량/키링 증정] 리얼베리어 익스트림 크림 70ml 1+1 기획 (벨리곰 콜라보)" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=9" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl><dt class="tit">[대용량/키링 증정] 리얼베리어 익스트림 크림 70ml 1+1 기획 (벨리곰 콜라보)</dt><dd class="price"><del>38,000원</del><strong>29,500원</strong></dd><dd class="icon"><span class="icon_flag sale">세일</span><span class="icon_flag delivery">오늘드림</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide" data-slick-index="9" aria-hidden="true" style="width: 324px;" tabindex="-1" role="option" aria-describedby="slick-slide09">
							<div class="thum" data-ref-goodsno="A000000190021" data-egrank="11" data-egcode="a015_a015" data-attr="장바구니^추천상품^[NEW]브링그린 쑥세라카밍모이스처젤크림 75mL 더블기획" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=10" data-ref-dispcatno="" data-ref-itemno="001"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019002108ko.jpg?l=ko" alt="[NEW]브링그린 쑥세라카밍모이스처젤크림 75mL 더블기획" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000190021" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000190021" tabindex="-1"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190021&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;10&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000190021&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;11&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=10&quot;);" class="a_detail" data-ref-goodsno="A000000190021" data-egrank="11" data-egcode="a015_a015" data-attr="장바구니^추천상품^[NEW]브링그린 쑥세라카밍모이스처젤크림 75mL 더블기획" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=10" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl><dt class="tit">[NEW]브링그린 쑥세라카밍모이스처젤크림 75mL 더블기획</dt><dd class="price"><del>41,400원</del><strong>26,800원</strong></dd><dd class="icon"><span class="icon_flag sale">세일</span><span class="icon_flag gift">증정</span><span class="icon_flag delivery">오늘드림</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide" data-slick-index="10" aria-hidden="true" style="width: 324px;" tabindex="-1" role="option" aria-describedby="slick-slide010">
							<div class="thum" data-ref-goodsno="A000000189837" data-egrank="13" data-egcode="a015_a015" data-attr="장바구니^추천상품^[단독기획] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=11" data-ref-dispcatno="" data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018983703ko.jpg?l=ko" alt="[단독기획] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000189837" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000189837" tabindex="-1"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189837&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;11&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000189837&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;13&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=11&quot;);" class="a_detail" data-ref-goodsno="A000000189837" data-egrank="13" data-egcode="a015_a015" data-attr="장바구니^추천상품^[단독기획] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=11" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl><dt class="tit">[단독기획] 넘버즈인 5번 글루타치온C 흔적 앰플 30ml+30ml 듀오기획</dt><dd class="price"><del>46,000원</del><strong>32,200원</strong></dd><dd class="icon"><span class="icon_flag sale">세일</span><span class="icon_flag delivery">오늘드림</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide" data-slick-index="11" aria-hidden="true" style="width: 324px;" tabindex="-1" role="option" aria-describedby="slick-slide011">
							<div class="thum" data-ref-goodsno="A000000189181" data-egrank="14" data-egcode="a015_a015" data-attr="장바구니^추천상품^[블프특가]브링그린 티트리시카수딩토너 500mL한정기획(+100mL증정)" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=12" data-ref-dispcatno="" data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018918103ko.jpg?l=ko" alt="[블프특가]브링그린 티트리시카수딩토너 500mL한정기획(+100mL증정)" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000189181" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000189181" tabindex="-1"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189181&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;12&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000189181&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;14&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=12&quot;);" class="a_detail" data-ref-goodsno="A000000189181" data-egrank="14" data-egcode="a015_a015" data-attr="장바구니^추천상품^[블프특가]브링그린 티트리시카수딩토너 500mL한정기획(+100mL증정)" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=12" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl><dt class="tit">[블프특가]브링그린 티트리시카수딩토너 500mL한정기획(+100mL증정)</dt><dd class="price"><del>27,000원</del><strong>19,440원</strong></dd><dd class="icon"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span><span class="icon_flag gift">증정</span><span class="icon_flag delivery">오늘드림</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide slick-cloned" data-slick-index="12" aria-hidden="true" style="width: 324px;" tabindex="-1">
							<div class="thum" data-ref-goodsno="A000000175878" data-egrank="1" data-egcode="a015_a015" data-attr="장바구니^추천상품^[대용량] 파티온 노스카나인 트러블 세럼 단독 기획(50ml+15ml)" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=1" data-ref-dispcatno="" data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017587818ko.jpg?l=ko" alt="[대용량] 파티온 노스카나인 트러블 세럼 단독 기획(50ml+15ml)" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000175878" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000175878" tabindex="-1"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000175878&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;1&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000175878&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;1&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=1&quot;);" class="a_detail" data-ref-goodsno="A000000175878" data-egrank="1" data-egcode="a015_a015" data-attr="장바구니^추천상품^[대용량] 파티온 노스카나인 트러블 세럼 단독 기획(50ml+15ml)" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=1" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl><dt class="tit">[대용량] 파티온 노스카나인 트러블 세럼 단독 기획(50ml+15ml)</dt><dd class="price"><del>38,000원</del><strong>28,200원</strong></dd><dd class="icon"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span><span class="icon_flag gift">증정</span><span class="icon_flag delivery">오늘드림</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide slick-cloned" data-slick-index="13" aria-hidden="true" style="width: 324px;" tabindex="-1">
							<div class="thum" data-ref-goodsno="A000000190798" data-egrank="2" data-egcode="a015_a015" data-attr="장바구니^추천상품^에스트라 리제덤365 모공탄력 캡슐세럼 30ml+7ml 기획(+리제덤 크림 10ml+마스크팩 3매 증정)(2310)" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=2" data-ref-dispcatno="" data-ref-itemno="002"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019079804ko.jpg?l=ko" alt="에스트라 리제덤365 모공탄력 캡슐세럼 30ml+7ml 기획(+리제덤 크림 10ml+마스크팩 3매 증정)(2310)" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000190798" data-ref-dispcatno="" data-ref-itemno="002" tabindex="-1"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000190798" tabindex="-1"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190798&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;2&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000190798&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;2&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=2&quot;);" class="a_detail" data-ref-goodsno="A000000190798" data-egrank="2" data-egcode="a015_a015" data-attr="장바구니^추천상품^에스트라 리제덤365 모공탄력 캡슐세럼 30ml+7ml 기획(+리제덤 크림 10ml+마스크팩 3매 증정)(2310)" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=2" data-ref-dispcatno="" data-ref-itemno="002" tabindex="-1"><dl><dt class="tit">에스트라 리제덤365 모공탄력 캡슐세럼 30ml+7ml 기획(+리제덤 크림 10ml+마스크팩 3매 증정)(2310)</dt><dd class="price"><strong>48,000원</strong></dd><dd class="icon"><span class="icon_flag gift">증정</span></dd></dl></a></div>

						</li><li data-wlog_type="normal" class="slick-slide slick-cloned" data-slick-index="14" aria-hidden="true" style="width: 324px;" tabindex="-1">
							<div class="thum" data-ref-goodsno="A000000190824" data-egrank="3" data-egcode="a015_a015" data-attr="장바구니^추천상품^[박은빈 포카/무인도SOS키트 증정]한율 어린쑥 수분진정크림 55ml+25ml+마스크팩 기획" data-impression="null" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=3" data-ref-dispcatno="" data-ref-itemno="001"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0019/A00000019082406ko.jpg?l=ko" alt="[박은빈 포카/무인도SOS키트 증정]한율 어린쑥 수분진정크림 55ml+25ml+마스크팩 기획" onerror="common.errorImg(this);"><div class="my"><button type="button" class="myCart cartBtnRecoBell" data-ref-goodsno="A000000190824" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><span>장바구니</span></button><button type="button" class="mySee btn_zzim" data-ref-goodsno="A000000190824" tabindex="-1"><span>찜하기전</span></button></div></div><div class="info"><a href="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190824&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;장바구니_추천상품&quot;, &quot;3&quot;);common.wlog(&quot;cart_curation_prod&quot;);common.link.moveGoodsDetailCuration(&quot;A000000190824&quot;, &quot;&quot;,&quot;cart_normal&quot;,&quot;pc_cart_02_a&quot;, &quot;a015_a015&quot;, &quot;3&quot;, &quot;Basket_Curation2&quot;, &quot;t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=3&quot;);" class="a_detail" data-ref-goodsno="A000000190824" data-egrank="3" data-egcode="a015_a015" data-attr="장바구니^추천상품^[박은빈 포카/무인도SOS키트 증정]한율 어린쑥 수분진정크림 55ml+25ml+마스크팩 기획" data-tracking-param="t_page=장바구니&amp;t_click=함께구매추천상품_상품상세&amp;t_number=3" data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1"><dl><dt class="tit">[박은빈 포카/무인도SOS키트 증정]한율 어린쑥 수분진정크림 55ml+25ml+마스크팩 기획</dt><dd class="price"><del>38,000원</del><strong>27,600원</strong></dd><dd class="icon"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span><span class="icon_flag gift">증정</span></dd></dl></a></div>

						</li></div></div>
									
					
				
			<button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="display: block;">Next</button><ul class="slick-dots" style="display: block;" role="tablist"><li class="slick-active" aria-hidden="false" role="presentation" aria-selected="true" aria-controls="navigation00" id="slick-slide00"><button type="button" data-role="none" role="button" tabindex="0">1</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation01" id="slick-slide01"><button type="button" data-role="none" role="button" tabindex="0">2</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation02" id="slick-slide02"><button type="button" data-role="none" role="button" tabindex="0">3</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation03" id="slick-slide03"><button type="button" data-role="none" role="button" tabindex="0">4</button></li></ul></ul>
		</div>
		
	
	


</div>

<div class="cart_comment">
			<p>장바구니 상품은 90일동안, 판매종료 된 상품은 10일동안 보관됩니다.</p>
		</div>
							
						</c:otherwise>
					</c:choose>
				

			
			
				
			
		</div>
		<script>
		function closeCrtPopWrap() {
	  		$('#crtPopWrap').hide();
			}
		
	$(function() {
		
		$("#crt_more_a015").click(function(){
			$("#crtPopWrap").show();
		})
		
		
		
		// HTML에서 체크박스를 모두 선택합니다.
		const checkboxes = document.querySelectorAll('input[type="checkbox"]');
		let selected = $("input:checkbox:checked").length
		// 체크된 행의 org_price의 총합을 저장할 변수를 초기화합니다.
		let totalPriceSum = 0;
		let salePriceSum = 0;
		let finalPriceSum = 0;
		// 각 체크박스에 대해 이벤트 리스너를 추가합니다.
		
		 const selectAllCheckbox = document.getElementById('all');
        
        // 일반 체크박스들
        //const checkboxes = document.querySelectorAll('.checkbox');
        
        
        

        
		// 전체 선택/해제 체크박스를 클릭했을 때
        selectAllCheckbox.addEventListener('click', function() {
            const isChecked = this.checked;
            
            checkboxes.forEach(checkbox => {
                checkbox.checked = isChecked;
                if (!isChecked) {
                	totalPriceSum =0
                	salePriceSum =0
                	finalPriceSum =0
                	selected = 0
				}else{
					totalPriceSum =${totalPrice}
                	salePriceSum =${salePrice}
                	finalPriceSum =${totalPrice - salePrice}
                	selected = $(".tbl_cell.w40 > input:checkbox:checked").length
				}
                
            });
        });
		
		
		checkboxes.forEach(checkbox => {
		    // 각 체크박스를 초기에 체크합니다.
		    checkbox.checked = true;

		    // 해당 체크박스의 부모 행(<tr>)을 찾습니다.
		    const row = checkbox.closest('tr');
		    if (row) {
		        // org_price의 값을 가져와서 숫자로 변환하여 총합에 추가합니다.
		        const orgPriceElement = row.querySelector('.org_price .tx_num');
		        const purPriceElement = row.querySelector('.pur_price .tx_num');
		        if (orgPriceElement) {
		            const orgPrice = parseInt(orgPriceElement.textContent);
		            const purPrice = parseInt(purPriceElement.textContent);
		            if (!isNaN(orgPrice)) {
		                totalPriceSum += orgPrice;
		                salePriceSum += purPrice;
		            }
		        }
		    }

		    checkbox.addEventListener('change', function() {
		        // 체크박스가 체크되었을 때
		        if (this.checked) {
		            // 해당 체크박스의 부모 행(<tr>)을 찾습니다.
		            
		            const row = this.closest('tr');
		            if (row) {
		                // org_price의 값을 가져와서 숫자로 변환하여 총합에 추가합니다.
		                const orgPriceElement = row.querySelector('.org_price .tx_num');
		                const purPriceElement = row.querySelector('.pur_price .tx_num');
		                if (orgPriceElement) {
		                    const orgPrice = parseInt(orgPriceElement.textContent);
		                    const purPrice = parseInt(purPriceElement.textContent);
		                    if (!isNaN(orgPrice)) {
		                    	selected++;
		                        totalPriceSum += orgPrice;
		                        salePriceSum += purPrice;
		                    }
		                }
		            }
		        } else {
		        	
		            // 체크박스가 체크 해제되었을 때, 총합에서 값을 뺍니다.
		            const row = this.closest('tr');
		            if (row) {
		                const orgPriceElement = row.querySelector('.org_price .tx_num');
		                const purPriceElement = row.querySelector('.pur_price .tx_num');
		                if (orgPriceElement) {
		                    const orgPrice = parseInt(orgPriceElement.textContent);
		                    const purPrice = parseInt(purPriceElement.textContent);
		                    if (!isNaN(orgPrice)) {
		                    	selected--;
		                        totalPriceSum -= orgPrice;
		                        salePriceSum -= purPrice;
		                    }
		                }
		            }
		        }
		        finalPriceSum = totalPriceSum - salePriceSum;
		        
		        
		        // 결과를 화면에 업데이트합니다.
		        document.querySelector(".total_price_info .originalprice").textContent = totalPriceSum;
		        document.querySelector(".total_price_info .totalprice").textContent = salePriceSum;
		        document.querySelector(".total_price_info .saleprice").textContent = finalPriceSum;
		        
		        document.querySelector(".originalprice").textContent = totalPriceSum;
		        document.querySelector(".totalprice").textContent = salePriceSum;
		        document.querySelector(".saleprice").textContent = finalPriceSum;
		        
		        $(".btnOrangeW").html("선택주문("+selected+")");
		        

		    });
		});
		
		$(".btnOrangeW").html("선택주문("+selected+")");

	})
	</script>
	
	
	<!-- // 장바구니 삭제 버튼 클릭시 -->
	<script>
$(document).ready(function() {
	
	$("ul#ulDelivGb li").removeClass("on");
	if("<%=quickyn%>" === "N" || "<%=quickyn%>" == "null"){
		$('li[quickyn="N"]').addClass("on")
	}else{
		$('li[quickyn="Y"]').addClass("on")
	}
	
	 $(".delete").click(function() {
	        // 삭제 버튼을 클릭했을 때 실행할 동작
	        var tr = $(this).closest('tr'); // 클릭한 버튼이 속한 <tr> 요소를 찾음
	        var goodsno = tr.attr('goodsno'); // 해당 <tr> 요소의 goodsno 속성 값을 가져옴
			
	        
	        alert("goodsno test: " + goodsno);
	        window.location.href = "<%=contextPath%>/olive/delete.do?quickyn=" +"<%=quickyn%>"+ "&productid=" + goodsno;
	        
	    });
    
    $("button.basketType").click(function() {
    	var basketType = $(this).closest('li').attr("quickyn");
    	//alert("basketType: " + basketType);
    	 window.location.href = "<%=contextPath%>/olive/basket.do?quickyn=" + basketType;
	})
    
});
</script>

<script>
	
</script>
		
</body>
</html>