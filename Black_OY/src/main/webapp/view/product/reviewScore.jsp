<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/inc/include.jspf" %>
<%@ include file="/WEB-INF/inc/session_auth.jspf" %>




<div class="product_rating_area review-write-delete">
				<div class="inner clrfix">
					<div class="grade_img">
						<p class="img_face">
						<c:set var="integerPart" value="${fn:split(reviewScore.averagegrade, '.')[0]}" />
							<span class="grade grade${integerPart}"></span>
							<em>
							<c:if test="${reviewScore.averagegrade < 3}">최저</c:if>
							<c:if test="${reviewScore.averagegrade >= 3 && reviewScore.averagegrade < 4}">보통</c:if>
							<c:if test="${reviewScore.averagegrade >= 4}">최고</c:if>
							</em>
						</p>
						<!-- grade5 : 최고, grade4 : 좋음, grade3 : 보통, grade2 : 별로, grade1 : 나쁨  -->
					</div>
					<div class="star_area">
						<p class="total">
							총 <em>${reviewcnt }</em>건
						</p>
						<!-- ## 리뷰 고도화 2차 ## 리뷰 전체 건수(본상품+연관상품) -->
						<p class="num">
							<strong>${reviewScore.averagegrade }</strong><span>점</span>
						</p>
						<ul class="star_list">


						 <c:forEach begin="1" end="${reviewScore.averagegrade}"  varStatus="loop">
        <li><span class="rating"></span><img
                src="https://static.oliveyoung.co.kr/pc-static-root/image//product/bg_rating_star.png"></li>
    </c:forEach>
    		
    		<c:set var="decimalPart" value="${reviewScore.averagegrade mod 1 }" />
    		
    		<c:if test="${decimalPart gt 0 }">
    			<li><span class="rating" style="width:${decimalPart*100}%;"></span><img
                src="https://static.oliveyoung.co.kr/pc-static-root/image//product/bg_rating_star.png"></li>
    			</c:if>
    			
				<c:forEach begin="1" end="${5 - reviewScore.averagegrade}"  varStatus="loop">
				<li><span class="rating" style="width:0%;"></span><img
                src="https://static.oliveyoung.co.kr/pc-static-root/image//product/bg_rating_star.png"></li>
					</c:forEach>
						</ul>
					</div>
					<div class="graph_area">
						<ul class="graph_list">
							<li><span class="per">${reviewScore.grade_5_ratio }%</span>
								<div class="graph">
									<span style="height: ${reviewScore.grade_5_ratio }%;"></span>
								</div> <span class="txt">5점</span></li>


							<li><span class="per">${reviewScore.grade_4_ratio }%</span>
								<div class="graph">
									<span style="height: ${reviewScore.grade_4_ratio }%;"></span>
								</div> <span class="txt">4점</span></li>


							<li><span class="per">${reviewScore.grade_3_ratio }%</span>
								<div class="graph">
									<span style="height: ${reviewScore.grade_3_ratio }%;"></span>
								</div> <span class="txt">3점</span></li>


							<li><span class="per">${reviewScore.grade_2_ratio }%</span>
								<div class="graph">
									<span style="height: ${reviewScore.grade_2_ratio }%;"></span>
								</div> <span class="txt">2점</span></li>


							<li><span class="per">${reviewScore.grade_1_ratio }%</span>
								<div class="graph">
									<span style="height: ${reviewScore.grade_1_ratio }%;"></span>
								</div> <span class="txt">1점</span></li>
						</ul>
					</div>

				</div>
			</div>


			<!--평균별점집계 end-->

			<!-- 만족도결과 start-->
			<!-- <h3 class="tit_type poll_tit">고객 만족도</h3> -->
			<!-- ## 리뷰 고도화 1차 ## -->
			<div class="poll_all clrfix">
				<dl class="poll_type2 type3">
					<dt>
						<span>피부타입</span>
					</dt>
					<dd>
						<ul class="list">
							<li><span class="txt">건성에 좋아요</span>
							<div class="graph">
									<span style="width: ${reviewScore.grade1_3_ratio }%;"></span>
								</div>
								<em class="per" data-value="19">${reviewScore.grade1_3_ratio }%</em></li>
							<li><span class="txt">복합성에 좋아요</span>
							<div class="graph">
									<span style="width: ${reviewScore.grade1_2_ratio }%;"></span>
								</div>
								<em class="per" data-value="60">${reviewScore.grade1_2_ratio }%</em></li>
							<li><span class="txt">지성에 좋아요</span>
							<div class="graph">
									<span style="width: ${reviewScore.grade1_1_ratio }%;"></span>
								</div>
								<em class="per" data-value="21">${reviewScore.grade1_1_ratio }%</em></li>


						</ul>
					</dd>
				</dl>
				<dl class="poll_type2 type3">
					<dt>
						<span>피부고민</span>
					</dt>
					<dd>
						<ul class="list">
							<li><span class="txt">보습에 좋아요</span>
							<div class="graph">
									<span style="width: ${reviewScore.grade2_3_ratio }%;"></span>
								</div>
								<em class="per" data-value="21">${reviewScore.grade2_3_ratio }%</em></li>
							<li><span class="txt">진정에 좋아요</span>
							<div class="graph">
									<span style="width: ${reviewScore.grade2_2_ratio }%;"></span>
								</div>
								<em class="per" data-value="79">${reviewScore.grade2_2_ratio }%</em></li>
							<li><span class="txt">주름/미백에 좋아요</span>
							<div class="graph">
									<span style="width: ${reviewScore.grade2_1_ratio }%;"></span>
								</div>
								<em class="per" data-value="1">${reviewScore.grade2_1_ratio }%</em></li>
						</ul>
					</dd>
				</dl>
				<dl class="poll_type2 type3">
					<dt>
						<span>자극도</span>
					</dt>
					<dd>
						<ul class="list">
							<li><span class="txt">자극없이 순해요</span>
							<div class="graph">
									<span style="width: ${reviewScore.grade3_3_ratio }%;"></span>
								</div>
								<em class="per" data-value="76">${reviewScore.grade3_3_ratio }%</em></li>
							<li><span class="txt">보통이에요</span>
							<div class="graph">
									<span style="width: ${reviewScore.grade3_2_ratio }%;"></span>
								</div>
								<em class="per" data-value="24">${reviewScore.grade3_2_ratio }%</em></li>
							<li><span class="txt">자극이 느껴져요</span>
							<div class="graph">
									<span style="width: ${reviewScore.grade3_1_ratio }%;"></span>
								</div>
								<em class="per" data-value="1">${reviewScore.grade3_1_ratio }%</em></li>
						</ul>
					</dd>
				</dl>
			</div>


