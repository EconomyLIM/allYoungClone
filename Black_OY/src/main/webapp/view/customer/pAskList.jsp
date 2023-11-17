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
				<li id="tabFaq"><a href="#">FAQ</a></li>
				<li id="tab1on1" class="on"><a href="#" title="선택됨">1:1문의</a></li>
				<li id="tabNotice"><a href="#">공지사항</a></li>
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

<!-- 내용 -->
<div class="list-customer onenone m2105">
				<ul>
	
					<li id="num" class="">
						
						<a href="#" class="stit complete" id="btnAnsCont">
							<strong>
								답변완료
							</strong>역삼역 근처 매장 알려주세요
							<span class="data">2023.11.15</span>
						</a>
		
		
		
						<ul class="conts" style="display: none">
							<li class="question">
								<strong>문의</strong>
								<ul>
								
								    <li class="inquiry_type"><span>매장</span> &gt; <span>매장 문의</span></li>
								
		
			
			
								</ul>
								<p>
									역삼역 근처 매장 알려주세요
								</p>
							</li>
						</ul>
					</li>
	
					<li id="5063493" class="">
						
						<a href="#n" role="button" class="stit complete" title="답변 내용보기">
							<strong>
								답변완료
							</strong>반품신청을 취소 가능한가요?
							<span class="data">2023.11.03</span>
						</a>
		
		
		
						<ul class="conts">
							<li class="question">
								<strong>문의</strong>
								<ul>
								
								    <li class="inquiry_type"><span>온라인몰</span> &gt; <span>취소/교환/환불</span></li>
								
		
									<li><em>주문일자</em>2023.10.26</li>
		
			
									<li><em>문의상품</em>[단독기획]메이크프렘 세이프 미 릴리프 모이스처 클렌징폼150ml 1+1기획</li>
			
			
								</ul>
								<p>
									반품신청을 취소 가능한가요?
								</p>
							</li>
						</ul>
					</li>
	
					<li id="5035019">
						
						<a href="#n" role="button" class="stit complete" title="답변 내용보기">
							<strong>
								답변완료
							</strong>상봉역점 주차되나용?
							<span class="data">2023.10.26</span>
						</a>
		
		
		
						<ul class="conts">
							<li class="question">
								<strong>문의</strong>
								<ul>
								
								    <li class="inquiry_type"><span>매장</span> &gt; <span>매장 문의</span></li>
								
		
			
			
								</ul>
								<p>
									상봉역점 주차되나용?
								</p>
							</li>
						</ul>
					</li>
	
					<li id="5034146" class="">
						
						<a href="#n" role="button" class="stit complete" title="답변 내용보기">
							<strong>
								답변완료
							</strong>올영세일 언제 하나용?
							<span class="data">2023.10.26</span>
						</a>
		
		
		
						<ul class="conts">
							<li class="question">
								<strong>문의</strong>
								<ul>
								
								    <li class="inquiry_type"><span>온라인몰</span> &gt; <span>이벤트</span></li>
								
		
			
			
								</ul>
								<p>
									올영세일 언제 하나용?
								</p>
							</li>
						</ul>
					</li>
	

	
				</ul>
			</div>
<!-- //내용 -->

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
		$("#btnAnsCont").on("click", function (event) {
			//a태그 이벤트 막기
			event.preventDefault();
			var conts = $(".conts");
			if( conts.css('display') === 'block' ){
				conts.css('display', 'none');
			} else
				conts.css('display', 'block');
		}
		
		});

	
	</script>
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