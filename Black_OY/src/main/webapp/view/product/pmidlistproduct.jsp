<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<%@ include file="/WEB-INF/inc/session_auth.jspf"%>
<%
	ArrayList myList = (ArrayList)request.getAttribute("pbrandlist");
%>
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
	<div id="Container">
		<div id="Contents">
			<div class="page_location">
				<a href="javascript:common.link.moveMainHome();" class="loc_home">홈</a>
				<ul class="loc_history">
					<li><a href="#" class="cate_y">클렌징</a>
						<div class="history_cate_box" style="width: 242px">
							<ul>
								<li data-ref-dispcatno="10000010001"><a
									href="javascript:common.link.moveCategoryShop('10000010001','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_스킨케어' })">스킨케어</a>
								</li>

								<li data-ref-dispcatno="10000010009"><a
									href="javascript:common.link.moveCategoryShop('10000010009','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_마스크팩' })">마스크팩</a>
								</li>

								<li data-ref-dispcatno="10000010010"><a
									href="javascript:common.link.moveCategoryShop('10000010010','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_클렌징' })"
									class="on">클렌징</a></li>

								<li data-ref-dispcatno="10000010011"><a
									href="javascript:common.link.moveCategoryShop('10000010011','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_선케어' })">선케어</a>
								</li>

								<li data-ref-dispcatno="10000010008"><a
									href="javascript:common.link.moveCategoryShop('10000010008','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_더모 코스메틱' })">더모
										코스메틱</a></li>

								<li data-ref-dispcatno="10000010002"><a
									href="javascript:common.link.moveCategoryShop('10000010002','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_메이크업' })">메이크업</a>
								</li>

								<li data-ref-dispcatno="10000010012"><a
									href="javascript:common.link.moveCategoryShop('10000010012','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_네일' })">네일</a>
								</li>

								<li data-ref-dispcatno="10000010003"><a
									href="javascript:common.link.moveCategoryShop('10000010003','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_바디케어' })">바디케어</a>
								</li>

								<li data-ref-dispcatno="10000010004"><a
									href="javascript:common.link.moveCategoryShop('10000010004','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_헤어케어' })">헤어케어</a>
								</li>

								<li data-ref-dispcatno="10000010005"><a
									href="javascript:common.link.moveCategoryShop('10000010005','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_향수/디퓨저' })">향수/디퓨저</a>
								</li>
							</ul>

							<ul>
								<li data-ref-dispcatno="10000010006"><a
									href="javascript:common.link.moveCategoryShop('10000010006','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_미용소품' })">미용소품</a>
								</li>

								<li data-ref-dispcatno="10000010007"><a
									href="javascript:common.link.moveCategoryShop('10000010007','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_남성' })">남성</a>
								</li>
							</ul>
						</div></li>

					<li><a href="#" class="cate_y">클렌징폼/젤</a>
						<div class="history_cate_box" style="width: 122px">
							<ul>
								<li data-ref-dispcatno="100000100100001"><a href="#"
									class="on"
									data-tracking-param="t_page=로케이션_카테고리관&amp;t_click=카테고리탭_중카테고리&amp;t_2nd_category_type=중_클렌징폼/젤">클렌징폼/젤</a>
								</li>

								<li data-ref-dispcatno="100000100100002"><a href="#"
									data-tracking-param="t_page=로케이션_카테고리관&amp;t_click=카테고리탭_중카테고리&amp;t_2nd_category_type=중_오일/워터/리무버">오일/워터/리무버</a>
								</li>

								<li data-ref-dispcatno="100000100100003"><a href="#"
									data-tracking-param="t_page=로케이션_카테고리관&amp;t_click=카테고리탭_중카테고리&amp;t_2nd_category_type=중_필링/패드">필링/패드</a>
								</li>
							</ul>
						</div></li>
				</ul>
			</div>

			<div class="titBox">
				<h1>클렌징폼/젤</h1>
			</div>

			<ul class="cate_list_box">
				<li class="first on"><a href="javascript:;"
					class="100000100100001" data-attr="카테고리상세^카테고리리스트^전체">전체</a>
				</li>
				<c:if test="${not empty pLowcateList}">
					<c:forEach items="${pLowcateList}" var="pl">
						<li><a>${pl.plowcate}</a></li>
					</c:forEach>
				</c:if>

				<li>&nbsp;</li>

				<li>&nbsp;</li>

				<li>&nbsp;</li>
			</ul>

			<div class="cate_brand_box">
				<div class="tit_area">
					<strong>브랜드</strong> <span class="tx_num">Total <%=myList.size() %></span>
				</div>
				<ul class="brand_list">

					<c:if test="${ not empty pbrandlist }">
						<c:forEach items="${ pbrandlist }" var="pbl">
							<li><input type="checkbox" id="${ pbl.brandID }" name=""
								value="" /> <label for="${pbl.brandID}">
									${pbl.pBrandName} </label></li>
						</c:forEach>
					</c:if>

				</ul>

				<button class="btn_more">더보기</button>

				<div class="btn_reset">
					<button id="onlBrndReSet">선택 초기화</button>
				</div>
			</div>

			<!-- 2020.12.01 기획전 개선 -->
			<div class="plan_slider_wrap02">
				<div
					class="paln_slider_ty02 slick_slider slick-initialized slick-slider"
					id="planSlider_ty02">
					<div aria-live="polite" class="slick-list draggable">
						<div class="slick-track" role="listbox"
							style="opacity: 1; width: 1040px; transform: translate3d(0px, 0px, 0px);">
							<div class="slick_slide slick-slide slick-current slick-active"
								data-slick-index="0" aria-hidden="false" style="width: 500px"
								tabindex="-1" role="option" aria-describedby="slick-slide00">
								<a href="javascript:;" data-attr="카테고리상세^연관기획전^클렌징 블프시작^1"
									data-trk="/Cat100000100100001_Small"
									data-tracking-param="t_page=카테고리관&amp;t_click=클렌징폼/젤_전체_기획전상세&amp;t_plan_name=클렌징 블랙프라이데이
    BEST 상품만 모아!
    #7일간 혜택&amp;t_number=1"
									tabindex="0"> <img
									data-original="https://image.oliveyoung.co.kr/uploads/images//categoryBanner/5933098486848573045.jpg"
									alt="클렌징 블프시작" data-ref-dispcatno="500000102730094"
									class="completed-seq-lazyload"
									src="https://image.oliveyoung.co.kr/uploads/images//categoryBanner/5933098486848573045.jpg" />
									<div class="text_wrap">
										<dl style="color: #">
											<dt>클렌징 블랙프라이데이</dt>
											<dt>BEST 상품만 모아!</dt>
											<dd>BEST 상품만 모아!</dd>
										</dl>
									</div>
								</a>
							</div>
							<div class="slick_slide slick-slide slick-active"
								data-slick-index="1" aria-hidden="false" style="width: 500px"
								tabindex="-1" role="option" aria-describedby="slick-slide01">
								<a href="javascript:;" data-attr="카테고리상세^연관기획전^메이크프렘 혜택^2"
									data-trk="/Cat100000100100001_Small"
									data-tracking-param="t_page=카테고리관&amp;t_click=클렌징폼/젤_전체_기획전상세&amp;t_plan_name=최모나 P!CK
    순한 클렌징 메이크프렘
    #증정혜택까지&amp;t_number=2"
									tabindex="0"> <img
									data-original="https://image.oliveyoung.co.kr/uploads/images//categoryBanner/6955634061284247514.jpg"
									alt="메이크프렘 혜택" data-ref-dispcatno="500000102730095"
									class="completed-seq-lazyload"
									src="https://image.oliveyoung.co.kr/uploads/images//categoryBanner/6955634061284247514.jpg" />
									<div class="text_wrap">
										<dl style="color: #">
											<dt>최모나 P!CK</dt>
											<dt>순한 클렌징 메이크프렘</dt>
											<dd>순한 클렌징 메이크프렘</dd>
										</dl>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<span class="slick-prev prev slick-arrow slick-hidden"
					id="plan_prev" aria-disabled="true" tabindex="-1">prev</span>
				<span class="slick-next next slick-arrow slick-hidden"
					id="plan_next" aria-disabled="true" tabindex="-1">next</span>
			</div>
			<!-- //2020.12.01 기획전 개선 -->

			<p class="cate_info_tx">
				클렌징폼/젤 카테고리에 <span> 15 </span> 개의 상품이 등록되어 있습니다.
			</p>

			<div class="cate_align_box">
				<div class="align_sort">
					<ul>
						<li><a href="javascript:;" data-prdsoting="01">인기순</a></li>
						<li class="on"><a href="javascript:;" data-prdsoting="02">신상품순</a>
						</li>
						<li><a href="javascript:;" data-prdsoting="03">판매순</a></li>

						<li><a href="javascript:;" data-prdsoting="05">낮은 가격순</a></li>

						<li><a href="javascript:;" data-prdsoting="09">할인율순</a></li>
					</ul>
				</div>
				<div class="count_sort tx_num">
					<span class="tx_view">VIEW</span>
					<ul>
						<li class="on"><a href="javascript:;" title="24개씩 보기">24</a>
						</li>
						<li><a href="javascript:;" title="36개씩 보기">36</a></li>
						<li><a href="javascript:;" title="48개씩 보기">48</a></li>
					</ul>
				</div>
				<div class="type_sort">
					<button class="btn_thumb active" data-view-cnt="4">컬럼형식으로
						보기</button>
					<button class="btn_list" data-view-cnt="1">리스트형식으로 보기</button>
				</div>
			</div>
			
			<!-- pmidlistdto -->
			<c:if test="${not empty pmidlistdto}">
					<c:forEach items="${pmidlistdto}" var="pml" varStatus="outerLoop" begin="1" end="6">
						<ul class="cate_prd_list gtm_cate_list">
						 <c:forEach begin="1" end="4" varStatus="innerLoop">
						 <c:if test="${innerLoop.index == 4}">
						 <c:set var="index" value="${outerLoop.index * 6 + innerLoop.index}" />
						<li class="flag" data-index="${index}">
							<div class="prd_info">
								<a 
								href="do?${pml.productID}"
								class="prd_thumb goodsList"
								name=""> 
								<img
									src="${pml.displImgSrc}" alt="사진" 
									class="completed-seq-lazyload"/>
								</a>
								<div class="prd_name">
									<a href="#" class="goodsList"> 
									<span class="tx_brand">${pml.brandName}</span>
										<p class="tx_name">${pml.displProName}</p>
									</a>
								</div>
								<button class="btn_zzim jeem" data-ref-goodsno="A000000185252">
									<span>찜하기전</span>
								</button>
								<p class="prd_price">
									<span class="tx_org"> <span class="tx_num">
											${pml.proPrice}</span> 원
									</span> <span class="tx_cur"> <span class="tx_num">
											${pml.afterPrice}</span> 원
									</span>
								</p>
								<p class="prd_flag">
									<c:if test="${pml.pdc eq 1}">
										<span class="icon_flag sale">세일</span>
									</c:if>
									<c:if test="${pml.prc eq 1}">
										<span class="icon_flag coupon">쿠폰</span>
									</c:if>
									<span class="icon_flag gift">증정</span>
									<c:if test="${pml.stock > 0}">
										<span class="icon_flag delivery">오늘드림</span>
									</c:if>
								</p>
							</div>
						</li>
						</c:if>
						</c:forEach>
						</ul>
					</c:forEach>
				</c:if>

				<!-- 부가정보수집 -->

				<li criteo-goods="A000000141736001" class="" data-index="9">
					<div class="prd_info">
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000141736&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=10"
							name="Cat100000100100001_Small" class="prd_thumb goodsList"
							data-ref-goodsno="A000000141736"
							data-attr="카테고리상세^검색결과상품_신상품순^네오젠 더마로지 카밍시카트리 미셀라 클렌징 폼 200ml^10"
							data-ref-dispcatno="100000100100001" data-ref-itemno="001"
							data-trk="/Cat100000100100001_Small"
							data-impression="A000000141736^카테고리상세_검색결과상품_신상품순^10"
							onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000141736", "", "ee-productClick", "카테고리상세_검색결과상품", "10");'
							data-impression-visibility="1">
							<img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014173606ko.jpg?l=ko"
							alt="네오젠 더마로지 카밍시카트리 미셀라 클렌징 폼 200ml"
							onerror="common.errorImg(this);" /></a>
						<div class="prd_name">
							<a href="javascript:;" name="Cat100000100100001_Small"
								class="goodsList" data-ref-goodsno="A000000141736"
								data-attr="카테고리상세^검색결과상품_신상품순^네오젠 더마로지 카밍시카트리 미셀라 클렌징 폼 200ml^10"
								data-ref-dispcatno="100000100100001" data-ref-itemno="001"
								data-trk="/Cat100000100100001_Small"
								onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000141736", "", "ee-productClick", "카테고리상세_검색결과상품", "10");'>
								<span class="tx_brand">네오젠</span>
								<p class="tx_name">네오젠 더마로지 카밍시카트리 미셀라 클렌징 폼 200ml</p></a>
						</div>
						<button class="btn_zzim jeem" data-ref-goodsno="A000000141736">
							<span>찜하기전</span>
						</button>
						<p class="prd_price">
							<span class="tx_cur"><span
								class="tx_num">14,000</span>원 </span>
						</p>
						<p class="prd_point_area tx_num">
							<span class="review_point"><span
								class="point" style="width: 96%">10점만점에
									5.5점</span></span>(13)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000141736"
								data-ref-dispcatno="100000100100001" data-ref-itemno="001">
								장바구니</button>
							<button class="btn_new_pop goodsList"
								name="Cat100000100100001_Small">새창보기
							</button>
						</p>
					</div>
				</li>

				<!-- 부가정보수집 -->

				<li criteo-goods="A000000130399001" class="" data-index="10">
					<div class="prd_info">
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000130399&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=11"
							name="Cat100000100100001_Small" class="prd_thumb goodsList"
							data-ref-goodsno="A000000130399"
							data-attr="카테고리상세^검색결과상품_신상품순^그레이멜린 센텔라 크레이지 폼 클렌저 500ml^11"
							data-ref-dispcatno="100000100100001" data-ref-itemno="001"
							data-trk="/Cat100000100100001_Small"
							data-impression="A000000130399^카테고리상세_검색결과상품_신상품순^11"
							onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000130399", "", "ee-productClick", "카테고리상세_검색결과상품", "11");'
							data-impression-visibility="1"><img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0013/A00000013039907ko.jpg?l=ko"
							alt="그레이멜린 센텔라 크레이지 폼 클렌저 500ml" onerror="common.errorImg(this);" /><span
							class="status_flag soldout">일시품절</span></a>
						<div class="prd_name">
							<a href="javascript:;" name="Cat100000100100001_Small"
								class="goodsList" data-ref-goodsno="A000000130399"
								data-attr="카테고리상세^검색결과상품_신상품순^그레이멜린 센텔라 크레이지 폼 클렌저 500ml^11"
								data-ref-dispcatno="100000100100001" data-ref-itemno="001"
								data-trk="/Cat100000100100001_Small"
								onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000130399", "", "ee-productClick", "카테고리상세_검색결과상품", "11");'><span
								class="tx_brand">그레이멜린</span>
								<p class="tx_name">그레이멜린 센텔라 크레이지 폼 클렌저 500ml</p></a>
						</div>
						<button class="btn_zzim jeem" data-ref-goodsno="A000000130399">
							<span>찜하기전</span>
						</button>
						<p class="prd_price">
							<span class="tx_org"><span class="tx_num">15,000</span>원 </span><span
								class="tx_cur"><span class="tx_num">10,600</span>원
							</span>
						</p>
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span><span
								class="icon_flag delivery">오늘드림</span>
						</p>
						<p class="prd_point_area tx_num">
							<span class="review_point"><span
								class="point" style="width: 92%">10점만점에
									5.5점</span></span>(144)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000130399"
								data-ref-dispcatno="100000100100001" data-ref-itemno="001">
								장바구니</button>
							<button class="btn_new_pop goodsList"
								name="Cat100000100100001_Small">새창보기
							</button>
						</p>
					</div>
				</li>

				<!-- 부가정보수집 -->

				<li criteo-goods="A000000130391001" class="" data-index="13">
					<div class="prd_info">
						<a
							href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000130391&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=14"
							name="Cat100000100100001_Small" class="prd_thumb goodsList"
							data-ref-goodsno="A000000130391"
							data-attr="카테고리상세^검색결과상품_신상품순^그레이멜린 그린티 크레이지 폼클렌저 500ml^14"
							data-ref-dispcatno="100000100100001" data-ref-itemno="001"
							data-trk="/Cat100000100100001_Small"
							data-impression="A000000130391^카테고리상세_검색결과상품_신상품순^14"
							onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000130391", "", "ee-productClick", "카테고리상세_검색결과상품", "14");'
							data-impression-visibility="1"><img
							src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0013/A00000013039104ko.jpg?l=ko"
							alt="그레이멜린 그린티 크레이지 폼클렌저 500ml" onerror="common.errorImg(this);" /></a>
						<div class="prd_name">
							<a href="javascript:;" name="Cat100000100100001_Small"
								class="goodsList" data-ref-goodsno="A000000130391"
								data-attr="카테고리상세^검색결과상품_신상품순^그레이멜린 그린티 크레이지 폼클렌저 500ml^14"
								data-ref-dispcatno="100000100100001" data-ref-itemno="001"
								data-trk="/Cat100000100100001_Small"
								onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000130391", "", "ee-productClick", "카테고리상세_검색결과상품", "14");'><span
								class="tx_brand">그레이멜린</span>
								<p class="tx_name">그레이멜린 그린티 크레이지 폼클렌저 500ml</p></a>
						</div>
						<button class="btn_zzim jeem" data-ref-goodsno="A000000130391">
							<span>찜하기전</span>
						</button>
						<p class="prd_price">
							<span class="tx_cur"><span
								class="tx_num">15,000</span>원 </span>
						</p>
						<p class="prd_flag">
							<span class="icon_flag delivery">오늘드림</span>
						</p>
						<p class="prd_point_area tx_num">
							<span class="review_point"><span
								class="point" style="width: 94%">10점만점에
									5.5점</span></span>(150)
						</p>
						<p class="prd_btn_area">
							<button class="cartBtn" data-ref-goodsno="A000000130391"
								data-ref-dispcatno="100000100100001" data-ref-itemno="001">
								장바구니</button>
							<button class="btn_new_pop goodsList"
								name="Cat100000100100001_Small">새창보기
							</button>
						</p>
					</div>
				</li>

				<!-- 부가정보수집 -->
			</ul>
		</div>

		<div class="pageing">
			<strong title="현재 페이지">1</strong>
		</div>
	</div>
	<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>