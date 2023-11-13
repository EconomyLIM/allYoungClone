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
	<script>
		$(function() {
			let e_dis = '${dto.e_dis}';
			
			if(e_dis == "온라인몰") {
				e_dis = "online";
			} else if(e_dis == "오프라인") {
				e_dis = "offline";
			} else if(e_dis == "온&오프라인") {
				e_dis = "both";
			}
			
			$(".evt_flag").addClass(e_dis);
		})
	</script>
	<jsp:include page="/layout/head.jsp"></jsp:include>

	<div id="Wrapper">

		<div id="Container">

			<div class="event_tit_box">

				<h1>
					이벤트 <span>다양한 이벤트를 한눈에 확인하세요</span>
				</h1>
				<button type="button" id="winner">당첨자 발표 보기</button>
			</div>
			<div class="event_cont_wrap">
				<div class="event_title_box ">

					<span class="evt_flag"> ${dto.e_dis } </span>

					<p class="event_name">${dto.e_decate }</p>
					<p class="event_date">${dto.e_start} - ${dto.e_end }</p>
					<div class="event_share_link">

						<a href="javascript:;" class="link_social kakaoT" title="새창 열림">카카오톡
							공유하기</a> <a href="javascript:;" class="link_social kakao"
							title="새창 열림">카카오스토리 공유하기</a> <a href="javascript:;"
							class="link_social facebook" title="새창 열림">페이스북 공유하기</a> <a
							href="javascript:;" class="link_social url">URL 공유하기</a>
					</div>
				</div>

				<!-- qa, 운영에서 각 이벤트 번호일 경우는  event_detail_cont 클래스 제외(꼭 알아두세요 내용 중앙정렬 문제)-->

				<div class="event_detail_cont">
					<div class="DimTransparent"></div>
					<div class="inner_cont contEditor">

						<div class="pc w638 plan-template">
							<div class="oyblind">올리브영 기프트카드</div>
							<img alt=""
								src="${dto.e_img_src }">
						</div>

					</div>

				</div>
				<div class="event_btn_area"></div>

				<div class="reply_sub_title" id="commmentHeader"
					style="display: none;">
					<p>전체(0)</p>
					<button type="button" class="more">내 댓글 보기</button>
				</div>
				<div class="reply_sub_title" id="myCommmentHeader"
					style="display: none;">
					<p>내 댓글</p>
					<button type="button" class="more">전체 보기</button>
				</div>
				<ul class="event_reply_list" id="commentList" style="display: none;"></ul>
				<ul class="event_reply_list" id="myCommentList"
					style="display: none;"></ul>
				<div class="pageing" id="ajax-paging-area"></div>
			</div>
		</div>
	</div>

		<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>