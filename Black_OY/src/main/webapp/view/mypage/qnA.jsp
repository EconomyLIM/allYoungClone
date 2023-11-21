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
				
				<%-- mypage-lnb --%>
				<jsp:include page="/view/mypage/layout/mypageside.jsp" flush="false"></jsp:include>
				
				
				<div class="mypage-conts">
				
					<div class="title-area">
						<h2 class="tit">상품 Q&amp;A</h2>
					</div>
					
					<jsp:include page="/view/mypage/layout/searchoptiondateonly.jsp" flush="false"></jsp:include>
					
					<script src="/Black_OY/js/searchoptiondateonly.js"></script>
					<%
						String myPageURL = "productQnA.do";
					%>
					<script>
						var myPageURL = "<%= myPageURL %>"
					</script>
					


					<table class="board-list-2s mgT20">
						<caption>상품 Q&amp;A 내역 목록</caption>
						<colgroup>
							<col style="width:367px;">
							<col style="width:272px;">
							<col style="width:150px;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">상품</th>
								<th scope="col">문의내용</th>
								<th scope="col">답변상태</th>
							</tr>
						</thead>
						<tbody class="qna">
					
		
							<c:forEach items="${ prodQnA }" var="qna">
							
							<tr data-gdas-seq="23597682" data-goods-no="A000000006564" data-param="" data-prgs-stat-cd="20">
								<td colspan="3">
									<div class="question">
										<div class="area oneDv">
											<a class="thum goodsList" href="javascript:;">
												<img src="${ qna.qnaImg }" alt="${ qna.qnaDisplN }" onerror="common.errorImg(this);">
											</a>
											<div class="textus">
												<a class="goodsList" href="javascript:;">
													<span class="tit">${ qna.qnaBrand }</span>
													<span class="txt">${ qna.qnaDisplN }</span>
												</a>
											</div>
										</div>
										
										<div class="area twoDv">
											<div class="textus">
												<dl class="data">
													<dt>문의일자</dt>
													<dd>${ qna.qnaDate }</dd>
												</dl>
												<a class="" href="#">
													<span class="txt">${ qna.qnaQus }</span>
												</a>
											</div>
										</div>
										
										<div class="threeDv">
				
					
					
															<strong class="comp">${ qna.qnaState }</strong>
					
				
										</div>
									</div>
									<ul class="conts">
										<li class="question">
											<strong>문의</strong>
											<p>
												${ qna.qnaQus }
											</p>
											<div class="btn">
				
												<button type="button" class="ButtonBasic delete" id="delete" name="delete">삭제</button>
											</div>
										</li>
										<c:choose>
											<c:when test="${ not empty qna.qnaAns }">
												<li class="answer">
													<strong>답변<span class="ids">운영자</span><span class="day">2023.11.14</span></strong>
													<p>
														안녕하세요. 우르오스 담당자입니다. <br>저희 상품에 관심을 가져주셔서 감사합니다.<br><br>해당 상품에 라임전초오일 성분이 포함되어있어 사용하시기 전 매장에서 테스터 진행해보시고<br><br>이상 유무 확인 후 사용하시길 권장드립니다.<br><br>오늘도 좋은 하루 보내시길 바랍니다 :)<br>감사합니다.
													</p>
												</li>
											</c:when>
											<c:otherwise>
												
											</c:otherwise>
										</c:choose>
										
										
				
									</ul>
								</td>
							</tr>
			
							</c:forEach>
		
	
						</tbody>
					</table>
					<!-- //내역 -->


			

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