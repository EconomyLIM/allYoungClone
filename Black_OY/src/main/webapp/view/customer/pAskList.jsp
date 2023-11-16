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
	<div>
<div id="Container">
		<!-- #Contents -->
		<div id="Contents">
			<div class="sub_title_area customer">
				<h1>고객센터 <span>무엇을 도와드릴까요?</span></h1>
				<button type="button" class="btn_inquiry" id="regForm1on1" >1<em>:</em>1 문의하기</button>
			</div>

			<ul class="comm1sTabs threeSet customer">
				<li id="tabFaq"><a href="javascript:common.faq.getFaqList('99');">FAQ</a></li>
				<li id="tab1on1" class="on"><a href="javascript:common.link.moveQnaList();" title="선택됨">1:1문의</a></li>
				<li id="tabNotice"><a href="https://www.oliveyoung.co.kr/store/counsel/getNoticeList.do?t_page=고객센터&amp;t_click=공지사항_리스트">공지사항</a></li>
			</ul>
			<!-- 기간조회 -->
	<jsp:include page="/view/mypage/layout/searchoptiondateonly.jsp" flush="false"></jsp:include>

	<script src="/Black_OY/js/searchoptiondateonly.js"></script>
	<%
		String myPageURL = "pAskList.do";
	%>
	<script>
		var myPageURL = "<%= myPageURL %>"
	</script>
			<!-- //기간조회 -->
			<div class="list-customer onenone m2105">
				<ul>
				<c:choose>
					<!-- 1:1문의리스트 -->
					<c:when test="${ not empty userpAsk }">
						<c:forEach items="${ userpAsk }" var="pa">
					<li id="<!-- ac_id -->">
						
						<a href="#" role="button" class="stit complete" id="btnAnsCont" title="답변 내용보기">
							<strong>${ pa.paskState }</strong>${ pa.paskQuestion }
							<span class="data">${ pa.paskDate }</span>
						</a>
						<!-- 1:1문의 더보기 -->
						 <!-- 답변내용 -->
						<ul class="conts">
							<li class="question">
								<strong>문의</strong>
								<ul>
								    <li class="inquiry_type"><span>매장</span> &gt; <span>매장 문의</span></li>
								</ul>
								<p>
									역삼역 근처 매장 알려주세요
								</p>
							</li>
						<li class="answer">
							<strong style="color:#9bce26">답변완료
								<span class="answer_date">2023.11.15</span></strong>
								<p>${ 답변내용 }</p>
							<div class="phr">문의에 대한 답변이 부족하거나 추가문의사항이 있으시면 새로운 문의사항으로 등록해주세요.
							<a href="<%=contextPath %>/olive/pAsk.do" class="btnGreenW">새로운 문의하기</a>
							</div>
						</li>
					</ul><%-- conts --%>

		
					</li>
							<!--  --><!--  -->
							</c:forEach>
						</c:when>
					<c:otherwise>
						<li class="nodata">최근 1개월간 문의하신 내용이 없습니다.</li>
					</c:otherwise>
				</c:choose>
				</ul>
			</div>

			<!-- pageing star -->
	<div class="pageing">

		<strong title="현재 페이지">1</strong>

	</div>

			<!-- //pageing end -->

			<div class="area1sButton pdT30">
				<a href="<%=contextPath %>/olive/pAsk.do" class="btnGreen" data-attr="고객센터^FAQ^1:1문의">1:1문의하기</a>
			</div>
		</div>
		<!-- //#Contents -->
	</div>	
	</div>
	<script>
	//답변대기
	
	//답변중
	
	//답변완료
	</script>
	<script>
	$("#regForm1on1").on("click", function () {
		location.href = "<%=contextPath %>/olive/pAsk.do";
	});
	</script>
	<jsp:include page="/layout/footer.jsp"></jsp:include>

</body>
</html>