<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/WEB-INF/inc/include.jspf"%>

 
 <c:if test="${fn:length(sessionScope.productHistory) > 0}">
						<c:set var="i" value="${0 }" />
						<c:forEach items="${productHistory }" var="history">
						<c:if test="${not empty history.PRO_DISPL_ID }">
						<c:set var="i" value="${i + 1 }" />
								<li data-ref-recentgoodsidx="${i }">
									<div class="prd_info ">
										<a
											href="/Black_OY/olive/productDetail.do?goodsNo=${history.PRO_DISPL_ID }&displNum=${history.CAT_L_ID}${history.CAT_M_ID}"
											name="Common_Recent" class="prd_thumb goodsList"
											data-ref-goodsno="A000000165598"
											data-attr="공통^최근본상품^[단독기획] 토리든 다이브인 저분자 히알루론산 수딩크림 더블기획 (100ml+100ml)^1"
											data-ref-dispcatno="" data-ref-itemno="001" data-trk="null"
											data-impression="null"
											onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000165598&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;공통_최근본상품&quot;, &quot;1&quot;);"><span
											class="thumb_flag best">베스트</span><img
											src="${history.PRO_DISPL_SRC }"
											alt="[단독기획] 토리든 다이브인 저분자 히알루론산 수딩크림 더블기획 (100ml+100ml)"
											onerror="common.errorImg(this);"></a>
										<div class="prd_name">
											<a href="javascript:;" name="Common_Recent" class="goodsList"
												data-ref-goodsno="A000000165598"
												data-attr="공통^최근본상품^[단독기획] 토리든 다이브인 저분자 히알루론산 수딩크림 더블기획 (100ml+100ml)^1"
												data-ref-dispcatno="" data-ref-itemno="001" data-trk="null"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000165598&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;공통_최근본상품&quot;, &quot;1&quot;);"><span
												class="tx_brand">${history.BRAND_NAME }</span>
											<p class="tx_name">${history.PRO_DISPL_NAME }</p></a>
										</div>
										<button class="btn_zzim jeem" data-ref-goodsno="A000000165598">
											<span>찜하기전</span>
										</button>
										<p class="prd_price">
											<span class="tx_org"><span class="tx_num">${history.PROPRICE }</span>원
											</span><span class="tx_cur"><span class="tx_num">${history.AFTERPRICE }</span>원
											</span>
										</p>
										<p class="prd_flag">
											<span class="icon_flag sale">세일</span><span
												class="icon_flag gift">증정</span><span
												class="icon_flag delivery">오늘드림</span>
										</p>
										<!-- <p class="prd_point_area tx_num">
											<span class="review_point"><span class="point"
												style="width: 96.0%">10점만점에 5.5점</span></span>(999+)
										</p> -->
										<p class="prd_btn_area">
											<button class="cartBtn" data-ref-goodsno="A000000165598"
												data-ref-dispcatno="" data-ref-itemno="001">장바구니</button>
											<button class="btn_new_pop goodsList">새창보기</button>
										</p>
									</div>



									<!-- <p class="btn_recom">
										<button type="button" class="btn btnCuration"
											onclick="common.recentGoods.curationMove('8809784600398','A000000165598','1000001000100150001','크림')">
											<span class="bul">추천 상품 보기</span>
										</button>
									</p> -->

									<button type="button" id="${history.PRO_DISPL_ID}" class="btnDelete cookiedel">삭제</button>
								</li>
							</c:if>
							</c:forEach>
							</c:if>
 
 
 
 
<script>
// 쿠키 전체 삭제
function deleteCookie(name) {
	var exdate = new Date();
	  exdate.setDate(exdate.getDate() -1);
	  var cookie_value = escape(0) + ((-1 == null) ? '' : '; expires=' + exdate.toUTCString());
	  document.cookie = name + '=' + cookie_value;
}

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
	
function setCookie(cookie_name, value, days) {
	  var exdate = new Date();
	  exdate.setDate(exdate.getDate() + days);
	  // 설정 일수만큼 현재시간에 만료값으로 지정

	  var cookie_value = escape(value) + ((days == null) ? '' : '; expires=' + exdate.toUTCString());
	  document.cookie = cookie_name + '=' + cookie_value;
	}


$(function(){
	$(".cookiedelete").on("click",function(){
		deleteCookie('productItems');
		
		$.ajax({
			url: "<%=contextPath%>/olive/history.do",
			data:data,
			cache: false,
			success:function( response ) {
				$(".cate_prd_list.gtm_common_recent_list").empty();
	              $(".cate_prd_list.gtm_common_recent_list").append( response );
	          }
	        , error		: function() {
	            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
	        }
		})
	})
	
	$(".cookiedel").on("click", function(){
    let value = $(this).attr("id");
    let items = getCookie('productItems'); // productItems 쿠키값 가져오기

    if (items) {
        let itemArray = items.split(','); // 쿠키 값을 배열로 변환
        let filteredItems = itemArray.filter(item => item !== value); // 받아온 값(value) 제외한 값들만 필터링

        // 쿠키에서 제외된 값을 새로운 쿠키에 다시 설정
        let expire = 7; // 쿠키 만료 날짜
        setCookie('productItems', filteredItems, expire)
        
    }
});



	
	$("#Header > div.header_inner > ul > li.recent > a").on("click",function(event){
		event.preventDefault();
	})
})
</script>