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
						<li class="on"><a>상품</a></li>
						<li><a href="#" class="moveBrndWish">브랜드</a></li>
					</ul>
					
					<c:set value="${  }"></c:set>
					
					<div class="result-common">
						<span class="num">
							<strong>전체 <em>5</em>개</strong>
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


							<tr class="">
								<td class="subject"><div class="area">
										<a href="javascript:;" name="Like" class="thum goodsList"
											data-ref-goodsno="A000000190116" data-ref-dispcatno=""
											data-ref-itemno="001">
											<img src="<%-- 상품표시이미지 --%>"
											alt="[한정기획] 아이소이 10년간, 1등 잡티세럼 20ml+20ml+15ml 증량 기획"
											onerror="common.errorImg(this);">
										</a>
										<div class="textus">
											<a href="javascript:;" name="Like" class="goodsList"
												data-ref-goodsno="A000000190116" data-ref-dispcatno=""
												data-ref-itemno="001">
												<span class="tit">아이소이</span>
												<span class="txt">[한정기획] 아이소이 10년간, 1등 잡티세럼 20ml+20ml+15ml
													증량 기획</span>
											</a>
											<div class="prd_flag mgT10">
												<span class="icon_flag blank"></span>
											</div>
										</div>
									</div>
									</td>
								<td>
									<p class="won">
										54,000<em>원</em>
									</p></td>

								<td>
									<button type="button" class="BtnCart cartBtn"
										data-ref-goodsno="A000000190116" data-ref-itemno="001"
										name="Like">장바구니</button>
									<br>
									<button type="button" class="BtnDelete delBtn"
										data-ref-goodsno="A000000190116">삭제</button>
								</td>
							</tr>

							<tr style="display:none;">
								<td class="nodata" colspan="3">좋아요 상품이 없습니다.</td>
							</tr>

						</tbody>
					</table>
					

	<div class="pageing">
	
	
		
			
		<strong title="현재 페이지">1</strong>
			
			
		
	
	
	</div>

						
				
				</div>
				
			</div>

		</div>

	</div>



<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>