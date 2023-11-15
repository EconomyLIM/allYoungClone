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

	<script>
		$(function() {
			// e_dis 색깔 바꾸기 온, 오프라인 등등
			let spans = $(".evt_flag");
			for (var i = 0; i < spans.length; i++) {
				let e_dis = $(spans[i]).text();
				
				if(e_dis == "온라인몰") {
					e_dis = "online";
				} else if(e_dis == "오프라인") {
					e_dis = "offline";
				} else if(e_dis == "온&오프라인") {
					e_dis = "both";
				}
				$(spans[i]).addClass(e_dis); 
			}
			
			let lis = $("#tabList > li");
			let type = '${type}';
			for (var i = 0; i < lis.length; i++) {
				if($(lis[i]).text() == type) {
					$(lis[i]).addClass("on");
					break;
				}
			}
		})
	</script>

<jsp:include page="/layout/head.jsp"></jsp:include>
<div id="Wrapper">
	<div id="Container">
		<div class="event_cont_wrap">
			<div class="event_tit_box">
				<h1>이벤트 <span>풍성한 이벤트! 즐거운 올리브영</span></h1>
				<button type="button" id="winner">당첨자 발표 보기</button>
			</div>

			<ul class="event_tab_list" id="tabList">
				<li><a href="<%=contextPath %>/olive/event.do?type=모든회원" title="선택됨" data-attr="이벤트^이벤트_모든회원">모든회원</a></li>
				<li><a href="<%=contextPath %>/olive/event.do?type=구매회원" data-attr="이벤트^이벤트_구매회원">구매회원</a></li>
				<li><a href="" data-attr="이벤트^이벤트_체험단">체험단</a></li>
			</ul>
			<div class="event_tab_cont">
				<ul class="event_thumb_list">
					<c:forEach items="${list }" var="list">
						<li>
							<a href="<%=contextPath%>/olive/eventDetail.do?event_id=${list.event_id}">
								<span class="evt_flag">${list.e_dis }</span>
								<img alt="올리브영 헬시어터🎬" class="completed-seq-lazyload" src="${list.e_dimg_src }">
								<p class="evt_tit">${list.e_title }</p>
								<p class="evt_desc">${list.e_ltitle }</p>
								<p class="evt_date">${list.e_start}-${list.e_end}</p>
							</a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>