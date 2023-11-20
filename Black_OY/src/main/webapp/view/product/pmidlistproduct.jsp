<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<%@ include file="/WEB-INF/inc/session_auth.jspf"%>
<%
ArrayList myList = (ArrayList) request.getAttribute("pbrandlist");
ArrayList proList = (ArrayList) request.getAttribute("pmidlistdto");

String currentUrl = request.getRequestURL().toString();
String midId = request.getParameter("displNum");

String largecol = "0000";
String midcol = "0000";
String smallcol = "0000";

if (midId.length() == 4) { // displ 자리가 4자리 일때
	largecol = midId.substring(0, 4);
	request.setAttribute("largecol", largecol);
} else if (midId.length() == 8) { // displ 자리가 8자리 일때
	largecol = midId.substring(0, 4);
	midcol = midId.substring(4, 8);
	request.setAttribute("midcol", midcol);
} else if (midId.length() == 12) { // displ 자리가 12자리 일때
	largecol = midId.substring(0, 4); // 대분류
	midcol = midId.substring(4, 8); // 중
	smallcol = midId.substring(8, 12); //소
	request.setAttribute("smallcol", smallcol);
}

int sortcate = 1;

if (request.getParameter("sort") == null) {
	
	request.setAttribute("sort", sortcate);
	
} else if (request.getParameter("sort") != null) {
	sortcate = Integer.parseInt(request.getParameter("sort"));
} //if

String s = "";
if(request.getParameter("brandId") != null){
	String brandIds[] = request.getParameterValues("brandId");	
	
	for(int i = 0 ; i < brandIds.length ; i++ ){
		s += "&brandId=" + brandIds[i];
	} // for
	
} //if
String curParam = request.getQueryString();
			
//
int getPPval = 0;
			
if(request.getParameter("perPage")!= null){
	if(request.getParameter("perPage").equals("8")){
		getPPval = 1;
	}else if(request.getParameter("perPage").equals("12")){
		getPPval =2;
	}else{
		getPPval = 0;
	}//if else
}
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
<style>
	.modal-backdrop {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5); /* 어두운 배경색, 투명도 조절 가능 */
    z-index: 998; /* 모달보다 한 단계 낮은 z-index */
}
	
	
</style>
</head>
<script>
$(function () {
	console.log(window.location.href);
	$(".loc_history>li").mouseover(function () {
		$(this).addClass("active");
		$("history_cate_box").css("display","block");
	})
	$(".loc_history>li").mouseleave(function () {
		$(".loc_history>li").removeClass("active");
	})
	//
	
	 $('.btn_more').click(function() {
	        const brandBox = $('.cate_brand_box');
	        if (brandBox.hasClass('more_view')) {
	            brandBox.removeClass('more_view');
	            $(this).text('더보기');
	        } else {
	            brandBox.addClass('more_view');
	            $(this).text('축소');
	        }
	    });
	//

	 // midId와 일치하는 id를 가진 li 요소에 'on' 클래스 추가
	$( '.loc_history li a#' + '<%=largecol%>').addClass('on');
	$('#Contents > div.page_location > ul > li:nth-child(2) > div > ul > li a#' + '<%=midcol%>').addClass('on'); 
	$('#Contents > div.page_location > ul > li:nth-child(3) > div > ul > li a#' + '<%=smallcol%>').addClass('on');
	 
	// 정렬 리스트 class on 추가
	$(".cate_align_box .align_sort ul > li").removeClass("on");
	$(".cate_align_box .align_sort ul > li").eq( ${param.sort} == null ? 1 : ${param.sort}-1).addClass("on");
	
	//
	$("#Contents > ul.cate_list_box li").removeClass("on");
	$('#Contents > ul.cate_list_box li#' + '<%=smallcol%>').addClass('on') ; 
	if (<%=smallcol%> == ("0000")) {
		$('#Contents > ul.cate_list_box li.first').addClass('on') ; 
	}
	
	$("div.count_sort.tx_num > ul > li").removeClass("on");
	$("div.count_sort.tx_num > ul > li").eq(<%=getPPval%>).addClass("on");
	
	console.log('?<%=request.getQueryString()%>');

	var urlParams = new URLSearchParams(window.location.search);
    var checkboxes = document.querySelectorAll('input[name="brandId"]');

    // 브랜드 체크 처리
    if (urlParams.has('brandId')) {
        var selectedBrands = urlParams.getAll('brandId');
        
        checkboxes.forEach(function(checkbox) {
            var brandID = checkbox.value;
            if (selectedBrands.includes(brandID)) {
                checkbox.checked = true; // 파라미터에 해당하는 값이 있으면 체크박스를 체크함
            }
        });
    }

    $('input[name="brandId"]').on('change', function() {
    	
    	var url = "/Black_OY/view/product/pmidlistproduct.do?displNum="+'<%=midId%>'+"&sort=${param.sort}&currentpage=1<%=s%>";
    	console.log(url);
        var brandID = $(this).val();

        if ($(this).is(':checked')) {
            // 체크박스가 체크되었을 때
            if (url.indexOf('brandId=' + brandID) === -1) {
                // 파라미터가 없으면 파라미터 추가
                var separator = url.indexOf('?') !== -1 ? '&' : '?';
                window.location.href = url + separator + 'brandId=' + brandID;
            }
        } else {
            // 체크박스가 해제되었을 때
            if (url.indexOf('brandId=' + brandID) !== -1) {
                // 파라미터가 있으면 파라미터 삭제
                var newUrl = url.replace(new RegExp('[?&]brandId=' + brandID), '');
                window.location.href = newUrl;
            }
        }
    })   
}) ; 

function changePerPage(value) { // perPage 수정
	  // 현재 URL 또는 기존 링크에서 파라미터 값 가져오기
	const currentURL = window.location.href;
	  const url = new URL(currentURL);

	  // 'perPage' 파라미터 값 변경
	  url.searchParams.set('perPage', value);

	  // 새 URL을 만들고 브라우저의 주소창을 업데이트
	  window.location.href = url;
	}
	
function changePerPageAndClass(value) {
	  const perPage = value.toString();
	  const currentURL = new URL(window.location.href);
	  
	  // Set 'perPage' parameter value
	  currentURL.searchParams.set('perPage', perPage);
	  
	  
	  // Go to the new URL with updated 'perPage' parameter
	  window.location.href = currentURL;

	  // Remove 'on' class from all li elements
	  const allLi = document.querySelectorAll('.count_sort tx_num ul li');
	  allLi.forEach(li => {
	    li.classList.remove('on');
	  });

	  // Get 'perPage' parameter value from the URL
	  const urlParams = currentURL.searchParams.get('perPage');

	  // Add 'on' class to the li element matching the 'perPage' parameter
	  const matchedLi = document.querySelector(`.count_sort tx_num ul li a[href*="perPage=${urlParams}"]`);
	  if (matchedLi) {
	    matchedLi.parentElement.classList.add('on');
	  }
	}
	$(function(){
	// 브랜드 선택 초기화
	$("#onlBrndReSet").on("click",function(){
		var url = "/Black_OY/view/product/pmidlistproduct.do?displNum="+'<%=midId%>'+"&sort=${param.sort}&currentpage=1";
		window.location.href = url;
	})
	})
</script>
<body>
	<jsp:include page="/layout/head.jsp"></jsp:include>
	
	<div id="Container">
		<div id="Contents">
			<div class="page_location">
				<a href="<%=contextPath%>/olive/main.do" class="loc_home">홈</a>
				<ul class="loc_history">
					<li><a href="#" class="cate_y">${mnameiddto.catLName} </a>
						<div class="history_cate_box" style="width: 242px">
							<ul>
								<c:if test="${not empty topcatedto}">
									<c:forEach items="${topcatedto}" var="tcd">
										<li><a id="${tcd.id}"
											href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=${tcd.id}">${tcd.name}</a></li>
									</c:forEach>
								</c:if>
							</ul>
						</div></li>
					<li><a href="#" class="cate_y"> ${mnameiddto.catMName}</a>
						<div class="history_cate_box" style="width: 122px">
							<ul>
								<c:if test="${not empty midcatedto}">
									<c:forEach items="${midcatedto}" var="mcd">
										<li><a id="${mcd.id}"
											href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=${mnameiddto.catLId}${mcd.id}&sort=1">${mcd.name}</a></li>
									</c:forEach>
								</c:if>
							</ul>
						</div></li>
					<%
					if (midId.length() == 12) {
					%>
					<c:if test="${not empty pLowcateList}">
						<li class=""><a href="#" class="cate_y">${pcurnamedto.name}</a>
							<div class="history_cate_box" style="width: 122px;">
								<ul>
									<c:forEach items="${ pLowcateList}" var="pll">
										<li><a id="${pll.sId}"
											href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=${mnameiddto.catLId}${mnameiddto.catMId}${pll.sId}&sort=1">${pll.plowcate}</a></li>
									</c:forEach>
								</ul>
							</div></li>
					</c:if>

					<%
					}
					%>

				</ul>
			</div>

			<div class="titBox">
				<h1>${pcurnamedto.name}</h1>
			</div>

			<ul class="cate_list_box">
				<li class="first on"><a
					href="pmidlistproduct.do?displNum=${mnameiddto.catLId}${mnameiddto.catMId}&sort=1"
					class="<%=midId %>" data-attr="카테고리상세^카테고리리스트^전체">전체</a></li>
				<c:set var="counter" value="0" />
				<c:if test="${not empty pLowcateList}">
					<c:forEach items="${pLowcateList}" var="pl">
						<li id="${pl.sId}"><a
							data-attr="카테고리상세^카테고리리스트^${pl.plowcate}"
							href="pmidlistproduct.do?displNum=${mnameiddto.catLId}${mnameiddto.catMId}${pl.sId}&sort=1">${pl.plowcate}</a></li>
						<c:set var="counter" value="${counter + 1}" />
					</c:forEach>
				</c:if>
				<c:set var="remainder" value="${counter % 5}" />
				<c:forEach begin="1" end="${5-remainder}">
					<li>&nbsp;</li>
				</c:forEach>

			</ul>

			<div class="cate_brand_box">
				<div class="tit_area">
					<strong>브랜드</strong> <span class="tx_num">Total <%=myList.size()%></span>
				</div>
				<ul class="brand_list">

					<c:if test="${ not empty pbrandlist }">
						<c:forEach items="${ pbrandlist }" var="pbl">
							<li><input type="checkbox" id="${ pbl.brandID }"
								name="brandId" value="${ pbl.brandID }"
								 /> <label
								for="${pbl.brandID}"> ${pbl.pBrandName} </label></li>
						</c:forEach>

					</c:if>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>
					<li><input type="checkbox" name="" /> <label for="">123123</label></li>


				</ul>

				<button class="btn_more">더보기</button>

				<div class="btn_reset">
					<button id="onlBrndReSet">선택 초기화</button>
				</div>
			</div>

			<%
			if (midId.length() == 8) {
			%>
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
					id="plan_prev" aria-disabled="true" tabindex="-1">prev</span> <span
					class="slick-next next slick-arrow slick-hidden" id="plan_next"
					aria-disabled="true" tabindex="-1">next</span>
			</div>
			<!-- //2020.12.01 기획전 개선 -->
			<%
			}
			%>
			<p class="cate_info_tx">
				${pcurnamedto.name}<span> ${totalRecords}</span> 개의 상품이 등록되어 있습니다.
			</p>

			<div class="cate_align_box">
				<div class="align_sort">
					<ul>
						<li><a class="on"
							href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=<%=midId%>&sort=1&currentpage=1"
							data-prdsoting="01">인기순</a></li>
						<li><a
							href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=<%=midId%>&sort=2&currentpage=1"
							data-prdsoting="02">신상품순</a></li>
						<li><a
							href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=<%=midId%>&sort=3&currentpage=1"
							data-prdsoting="03">판매순</a></li>

						<li><a
							href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=<%=midId%>&sort=4&currentpage=1"
							data-prdsoting="05">낮은 가격순</a></li>

						<li><a
							href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=<%=midId%>&sort=5&currentpage=1"
							data-prdsoting="09">할인율순</a></li>
					</ul>
				</div>

				<script>
				
					
				</script>

				<div class="count_sort tx_num">
					<span class="tx_view">VIEW</span>
					<ul>
						<li class="on"><a href="#" onclick="changePerPage(4)" title="24개씩 보기">24</a>
						</li>
						<li><a href="#" onclick="changePerPage(8)" title="36개씩 보기">36</a></li>
						<li><a href="#" onclick="changePerPage(12);" title="48개씩 보기">48</a></li>
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
				<c:forEach var="i" varStatus="outerLoop" begin="1" end="6">
					<ul class="cate_prd_list gtm_cate_list">

						<c:set var="innerLoopBegin" value="${(outerLoop.index - 1) * 4}" />
						<c:set var="innerLoopEnd" value="${(outerLoop.index * 4) -1}" />

						<c:forEach items="${pmidlistdto}" var="pml"
							begin="${innerLoopBegin}" end="${innerLoopEnd}"
							varStatus="innerLoop">

							<li class="flag">
								<div class="prd_info">
									<a href="<%=contextPath%>/olive/productDetail.do?goodsNo=${pml.displId}&displNum=<%=midId %>" class="prd_thumb goodsList"
										name="${pml.displId}"> <img src="${pml.displImgSrc}" alt="사진"
										class="completed-seq-lazyload" />
									</a>
									<div class="prd_name">
										<a href="#" class="goodsList"> <span class="tx_brand">${pml.brandName}</span>
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

										<c:if test="${pml.pmp eq 1}">
											<span class="icon_flag gift">증정</span>
										</c:if>

										<c:if test="${pml.stock > 0}">
											<span class="icon_flag delivery">오늘드림</span>
										</c:if>
									</p>
									<!-- 리뷰점수 추가 -->
									
									<p class="prd_btn_area">
										<button class="cartBtn" id="${pml.displId }" data-ref-goodsno="A000000188420" data-ref-dispcatno="100000100010009" data-ref-itemno="001">장바구니</button>
										<button class="btn_new_pop goodsList" name="Cat100000100010009_MID">새창보기</button>
									</p>
									
									
								</div>
							</li>

						</c:forEach>
					</ul>
				</c:forEach>
			</c:if>
		</div>

		<div class="pageing">
			<c:if test="${pDto.prev }">
				<a class="prev" href="<%=contextPath%>/view/product/pmidlistproduct.do?displNum=${param.displNum}&sort=${param.sort}&currentpage=${pDto.start-1}<%=s %>&perPage=${param.perPage}" data-page-no="1">이전 10
				페이지</a>
			</c:if>
			<c:forEach var="i" begin="${pDto.start }" end="${pDto.end }" step="1">
				<c:choose>
					<c:when test="${i eq pDto.currentPage}">
						<strong title="현재 페이지">${i}</strong>
						<%-- <a class="active" href="#">${i }</a> --%>
					</c:when>
					<c:otherwise>
						<a
							href="<%=contextPath%>/view/product/pmidlistproduct.do?displNum=${param.displNum}&sort=${param.sort}&currentpage=${i}<%=s %>&perPage=${param.perPage}">${i }</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${pDto.next }">
				<a class="next" href="<%=contextPath%>/view/product/pmidlistproduct.do?displNum=${param.displNum}&sort=${param.sort}&currentpage=${pDto.end+1}<%=s %>&perPage=${param.perPage}" data-page-no="21">다음 10 페이지</a>
			</c:if>
			<!-- <strong title="현재 페이지">1</strong> -->
		</div>
	</div>


 <div id="displItem"></div>


<!-- 팝업창 -->
<!-- <div class="layer_pop_wrap w490" id="basketOption" style="z-index: 999; display: none; left: 50%; margin-left: -245px; top: 871.5px;" data-quick-yn="N">

	<div class="layer_cont2">
		<h2 class="layer_title2">선택완료</h2>
		<div class="basket_add_txt">장바구니에 추가되었습니다.</div>
		
		
			
				<div class="area2sButton">
					<button class="btnGreen" onclick="fnLayerSet('basketOption', 'close');"><span>쇼핑 계속하기</span></button>
					<button class="btnGray" onclick="common.link.moveCartPage();"><span>장바구니 확인</span></button>						
				</div>
				<button class="layer_close type2">창 닫기</button>
	</div>	
</div>
 -->


	<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
<script>
$(document).ready(function() {
    $('.align_sort ul li').on('click', function() {
        // 현재 클릭된 요소에 'on' 클래스 추가 및 형제 요소로부터 'on' 클래스 제거
        $(this).addClass('on').siblings().removeClass('on');
    });
});
</script>
<script>
	$(document).ready(function(){
		$(".btn_thumb").click(function(){
			$(this).addClass('active');
			$(".btn_list").removeClass('active');
			$(".cate_prd_list.gtm_cate_list").removeClass("list_type");
		})
		
		$(".btn_list").click(function(){
			$(this).addClass('active');
			$(".btn_thumb").removeClass('active');
			$(".cate_prd_list.gtm_cate_list").addClass("list_type");
		})
		
		$(".cartBtn").click(function(){
			
			
			
			addModalBackdrop();
			
			let displID = $(this).attr("id");
			let url = window.location.href
			let data = {
					displID: displID,
					url: url
				}
			
			$.ajax({
				
				
				url: "<%=contextPath%>/olive/itemlist.do",
				data:data,
				cache: false,
				beforeSend: function(xmlHttpRequest) {
			        xmlHttpRequest.setRequestHeader("AJAX", "true");
			    },
				success:function( response ) {
		              $("#displItem").empty();
		              $("#displItem").append( response );
		              
		          }
		        , error		: function(xhr, textStatus, error) {
		        	if (xhr.status == 500) {
		                alert("Login Session Expired");
		                window.location.href = "/Black_OY/view/logon/logon.jsp";
		            }else {
		            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
		            }
		        }
			})
		});
		
		
		$(".layer_close.type2").click(function(){
			$("#basketOption").css("display","none");
		})
		
	})
	
	function addModalBackdrop() {
    var backdrop = $('<div class="modal-backdrop"></div>');
    $("body").append(backdrop);
}
	
</script>
<script>


// 쿠키 저장 함수
function setCookie(cookie_name, value, days) {
  var exdate = new Date();
  exdate.setDate(exdate.getDate() + days);
  // 설정 일수만큼 현재시간에 만료값으로 지정

  var cookie_value = escape(value) + ((days == null) ? '' : '; expires=' + exdate.toUTCString());
  document.cookie = cookie_name + '=' + cookie_value;
}

// 쿠키 값 가져오는 함수
function getCookie(cookie_name) {
	  var x, y;
	  var val = document.cookie.split(';');

	  for (var i = 0; i < val.length; i++) {
	    x = val[i].substr(0, val[i].indexOf('='));
	    y = val[i].substr(val[i].indexOf('=') + 1);
	    x = x.replace(/^\s+|\s+$/g, ''); // 앞과 뒤의 공백 제거하기
	    if (x == cookie_name) {
	      return unescape(y); // unescape로 디코딩 후 값 리턴
	    }
	  }
	}
	
	//쿠키 값 저장 하기
	function addCookie(id) {
  var items = getCookie('productItems'); // 이미 저장된 값을 쿠키에서 가져오기
  var maxItemNum = 4; // 최대 저장 가능한 아이템 개수
  var expire = 7; // 쿠키값을 저장할 기간
  
  if (items) {
    var itemArray = items.split(',');
    var itemSet = new Set(itemArray); // 중복 아이템을 제거하기 위해 Set 사용
    
    if (!itemSet.has(id)) {
      // 새로운 값 추가
      itemSet.add(id);
      
      // 쿠키에 새로운 값 추가 후, 최대 개수 유지하기
      var updatedItemsArray = Array.from(itemSet);
      while (updatedItemsArray.length > maxItemNum) {
        updatedItemsArray.shift(); // 오래된 값을 삭제
      }

      // 쿠키에 새로운 값을 추가한 후, 다시 설정
      var updatedItemsString = updatedItemsArray.join(',');
      setCookie('productItems', updatedItemsString, expire);
    }
  } else {
    // 신규 id값 저장하기
    setCookie('productItems', id, expire);
  }
}

// 클릭 이벤트 처리
$(function(){
  $(".prd_thumb.goodsList").on("click",function(){
    let pro_id = $(this).attr("name");
    addCookie(pro_id); // addCookie 함수 호출
  })
})


	
</script>

</html>
