<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
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


	<div id="Container">

		<div id="Contents">

			<jsp:include page="/view/mypage/layout/mypagehead.jsp" flush="false"></jsp:include>

			<div class="mypage-ix">
				
				
				<jsp:include page="/view/mypage/layout/mypageside.jsp" flush="false"></jsp:include>
				
				
				<div class="mypage-conts">
				

					<div class="title-area linezero">
						<h2 class="tit">좋아요</h2>
					</div>

					<ul class="comm1sTabs mgzero">
						<li class="on"><a href="<%= contextPath%>/olive/Like.do">상품</a></li>
						<li><a href="#" class="moveBrndWish">브랜드</a></li>
					</ul>
					
					 <c:set value="${ pLike }" var="plike" />
					
					<div class="result-common">
						<span class="num">
							<strong>전체 <em>${ fn:length(plike) }</em>개</strong>
							<span class="txt">좋아요 상품은 최대 <em>120일간</em> 보관됩니다.</span>
						</span>

						<button type="button" class="all-delete">전체 삭제</button>

					</div>

					
					<table class="board-list-2s">
						<caption>좋아요 상품 목록</caption>
						<colgroup>
							<col style="width:55%;">
							<col style="width:30%;">
							<col style="width:15%;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">상품</th>
								<th scope="col">가격</th>
								<th scope="col">관리</th>
							</tr>
						</thead>
						<tbody>
						
						<c:choose>
							<c:when test="${ not empty pLike }">
								<c:forEach items="${ pLike }" var="pl">
									<tr class="">
										<td class="subject"><div class="area">
												<a href="<%=contextPath %>/olive/productDetail.do?goodsNo=${pl.plpdispId}&displNum=${pl.plcsid}${pl.plcmid}" name="Like" class="thum goodsList"
													data-ref-goodsno="${ pl.plpdispId }" data-ref-dispcatno=""
													data-ref-itemno="001">
													<img src="${ pl.plImgsrc }"
													alt="${ pl.plpdispN }"
													onerror="common.errorImg(this);">
												</a>
												<div class="textus">
													<a href="<%=contextPath %>/olive/productDetail.do?goodsNo=${pl.plpdispId}&displNum=${pl.plcsid}${pl.plcmid}" name="Like" class="goodsList"
														data-ref-goodsno="${ pl.plpdispId }" data-ref-dispcatno=""
														data-ref-itemno="001">
														<span class="tit">${ pl.plbrand }</span>
														<span class="txt">${ pl.plpdispN }</span>
													</a>
														<div class="prd_flag mgT10">														
															<c:if test="${ pl.pmd eq 1 }">
																<span class="icon_flag sale">세일</span>
															</c:if>
															<c:if test="${ pl.pmp eq 1 }">
																<span class="icon_flag gift">증정</span>
															</c:if>
															<c:if test="${ pl.pmc eq 1 }">
																<span class="icon_flag coupon">쿠폰</span>
															</c:if>
															<c:if test="${	pl.stock > 0}">
																<span class="icon_flag delivery">오늘드림</span>
															</c:if>
														</div>
													</div>
											</div>
											</td>
										
										<td>
											<p class="sale">
												${ pl.plpricep }<em>원</em> 
											</p>
											<p class="won">
												${ pl.plpricea }<em>원</em>
											</p>
										</td>
		
										<td>
											<button type="button" class="BtnCart cartBtn"
												data-ref-goodsno="A000000190116" data-ref-itemno="001"
												name="Like">장바구니</button>
											<br>
											<button type="button" class="BtnDelete delBtn"
												data-ref-goodsno="${ pl.plpdispId }">삭제</button>
										</td>
									</tr>
															
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr style="display:none;">
									<td class="nodata" colspan="3">좋아요 상품이 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>

							
							

						</tbody>
					</table>
					

	<div class="pageing">
	
	
		
			
		<strong title="현재 페이지">1</strong>
			
			
		
	
	
	</div>

						
				
				</div>
				
			</div>

		</div>

	</div>
<script>
//좋아요 상품 하나 삭제
$("button.BtnDelete.delBtn").on("click", function() {
	var result = confirm("정말 삭제하시겠습니까?")
	let deltype = 0;
	let pdispId = null;
	if (result) {
		pdispId = $(this).attr("data-ref-goodsno");
		var url = '<%= contextPath %>/olive/LikeDelete.do' + '?DelType=' + encodeURIComponent(deltype) + '&Del=' + encodeURIComponent(pdispId);
		location.href = url;
	} 
});

//좋아요 전체 상품 삭제
$("button.all-delete").on("click", function() {
	var result = confirm("정말 삭제하시겠습니까?")
	let deltype = 1;
	let pdispId = null;
	if (result) {
		var url = '<%= contextPath %>/olive/LikeDelete.do' + '?DelType=' + encodeURIComponent(deltype) + '&Del=';
		location.href = url;
	} 
})

$("a.moveBrndWish").on("click", function() {
	var url = '<%= contextPath %>/olive/Like.do' + '?bnd=y';
	location.href = url;
})

</script>



<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>