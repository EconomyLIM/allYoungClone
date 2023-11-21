<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/inc/include.jspf" %>
<%@ include file="/WEB-INF/inc/session_auth.jspf" %>

<c:set var="i" value="${0 }" />
				<c:forEach items="${reviewlist }" var="review">
				
				<c:set var="i" value="${i + 1 }" />
					<li>
						<div class="info">
							<div class="user clrfix">
								<a href="javascript:;"
									onclick="goods.gdas.hadleClickProductDetailReviewerProfile('QjdncktGcWptUk5vclBWbnM2NkN6QT09', { t_page: '상품상세', t_click: '리뷰어_리뷰어프로필', t_profile_name: '글리스', t_review_rank_name: '19'})"
									data-attr="상품상세^리뷰어프로필^프로필이미지 또는 닉네임 클릭"> <img
									src="https://image.oliveyoung.co.kr/uploads/images/mbrProfile/2023/11/04/1699105876598.png"
									onerror="common.errorProfileImg(this);"
									onload="common.onLoadProfileImg(this, 60)"
									style="display: none;">
									<div class="thum">
										<span class="bg"></span> <img
											src="${review.user_img }"
											class="profileThum_s"
											style="background: url(https://static.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg) no-repeat 0 0; background-size: 60px">
									</div>
								</a>
								<!--## 리뷰 고도화 1차 ## : top, id 위치 변경 및 마크업 변경 -->
								<p class="info_user">
									<a href="javascript:;" class="id"
										onclick="goods.gdas.hadleClickProductDetailReviewerProfile('QjdncktGcWptUk5vclBWbnM2NkN6QT09', { t_page: '상품상세', t_click: '리뷰어_리뷰어프로필', t_profile_name: '글리스', t_review_rank_name: '19'})"
										data-attr="상품상세^리뷰어프로필^프로필이미지 또는 닉네임 클릭">${review.user_id }</a>
									<!--## 리뷰 고도화 1차 ## :  탑리뷰어 라운지로 이동시킴 -->
									<a href="javascript:;"
										onclick="goods.gdas.handleClickTopReviewer({t_page: '상품상세', t_click: '리뷰어_탑리뷰어순위', t_review_rank_name: '19'})"
										class="top" data-attr="상품상세^랭킹순위^순위클릭">TOP ${i }</a>
								</p>
								<!--## 리뷰 고도화 2차 ## : 명성리뷰어 -->
								<p class="tag">
									<!--피부 컨디션이 -->
									<!--<strong _tmplitem="143" >-->
									<!-- ## 리뷰 고도화 1차 ## : 위치 변경 및 마크업 변경 -->
									<span>${review.skintype_title }</span> <span>${review.skintone_title }</span> 
									<c:forEach items="${skinlists }" var="skinlist">
													<c:forEach items="${skinlist }" var="skintrb">
														<c:if test="${skintrb.user_id eq review.user_id }">
												<span>${skintrb.skintrb_title }</span>
												</c:if>
												</c:forEach>
												</c:forEach>
									<!--</strong>-->
								</p>
								<!--## 리뷰 고도화 1차 ## : 재구매/한달사용 리뷰 -->
								<div class="badge"></div>
							</div>
						</div>
						<div class="review_cont">
							<div class="score_area">
								<span class="review_point"><span class="point"
									style="width: ${review.rev_grade*20 }%">5점만점에 ${review.rev_grade }점</span></span> <span class="date">${review.rev_reg }</span>
							</div>
							<!--## 리뷰 고도화 1차 ## 위치변경 -->
							<!--## 리뷰 고도화 1차 ## 위치변경 -->
							<!--## 리뷰 고도화 1차 ## 위치변경 -->
							<div class="poll_sample">
								<dl class="poll_type1">
									<dt>
										<span>피부타입</span>
									</dt>
									<dd>
										<span class="txt">
											<c:choose>
												<c:when test="${review.rev_grade_1 eq 3 }">
													건성에 좋아요
												</c:when>
												<c:when test="${review.rev_grade_1 eq 2 }">
													복합성에 좋아요
												</c:when>
												<c:when test="${review.rev_grade_1 eq 1 }">
													지성에 좋아요
												</c:when>
											
											</c:choose>
											
										</span>
									</dd>
								</dl>
								<dl class="poll_type1">
									<dt>
										<span>피부고민</span>
									</dt>
									<dd>
										<span class="txt">
											<c:choose>
												<c:when test="${review.rev_grade_2 eq 3 }">
													보습에 좋아요
												</c:when>
												<c:when test="${review.rev_grade_2 eq 2 }">
													진정에 좋아요
												</c:when>
												<c:when test="${review.rev_grade_2 eq 1 }">
													주름/미백에 좋아요
												</c:when>
											
											</c:choose>
										</span>
									</dd>
								</dl>
								<dl class="poll_type1">
									<dt>
										<span>자극도</span>
									</dt>
									<dd>
										<span class="txt">
											<c:choose>
												<c:when test="${review.rev_grade_3 eq 3 }">
													자극없이 순해요
												</c:when>
												<c:when test="${review.rev_grade_3 eq 2 }">
													보통이에요
												</c:when>
												<c:when test="${review.rev_grade_3 eq 1 }">
													자극이 느껴져요
												</c:when>
											
											</c:choose>
										</span>
									</dd>
								</dl>
							</div>
							<!--## 리뷰 고도화 1차 ## 위치변경 -->
							<div class="txt_inner">
								${review.rev_content }
							</div>
							<!-- ## 리뷰 고도화 1차 ## : 태그 추가 -->
							<div class="review_tag">
								<span>어성초토너</span> <span>보습토너</span> <span>진정토너</span>
							</div>
							<div class="review_thum type1">
								<ul class="inner clrfix">
								<c:forEach items="${reviewimg }" var="imglist">
								<c:forEach items="${imglist }" var="img">
								 
								<c:if test="${img.rev_id eq review.rev_id }">
									<li><a href="#" data-attr="상품상세^포토리뷰^포토 클릭^1"><span><img
												src="${img.rev_img_src }"
												onload="common.imgLoads(this,165);" data-value="23082403_1"
												class="thum" alt=""
												onerror="common.errorResizeImg(this,165)"></span></a></li>
												</c:if>
									</c:forEach>
									</c:forEach>
								</ul>
							</div>
							<div class="rw-photo-slide" style="display: none">
								<div>
									<img
										src="https://image.oliveyoung.co.kr/uploads/images/gdasEditor/2023/10/22/1697938427930.png">
								</div>
							</div>
							<!--## 리뷰 고도화 2차 ## 연관상품 -->
							<p class="txt_beauty">※ 해당 리뷰는 원칙적으로 기본 상품이 동일한 단품 사용 후 작성된
								것이며,개별 상품에 따라 용량 내지 일부 구성(1+1, 기획상품 등)이 상이할 수 있음을 안내드립니다.</p>
							<!--## 리뷰 고도화 1차 ## 위치변경 및 삭제-->
							<!-- ## 리뷰 고도화 1차 ##  : 리뷰제한 카테고리 일경우 안보이게 -->
							<div class="recom_area">
								<button type="button" class="btn_recom " id="gdas_23082403"
									onclick="goods.gdas.setRecommGdasToggle('23082403',  'N', {t_page: '상품상세', t_click: '상품상세_도움이돼요', t_profile_name: '글리스', t_review_rank_name: '19'});"
									data-attr="상품상세^도움이돼요^도움이돼요">
									이 리뷰가 도움이 돼요! <span class="num" data-attr="상품상세^도움이돼요^도움이돼요">
										${review.rev_like } </span>
								</button>
								<input type="hidden" name="recommCnt_23082403" value="30">
							</div>
							<button type="button" class="btn_dec"
								onclick="goods.gdas.goGdasReportPop('23082403', 'A000000147339', '001', 'N', {t_page: '상품상세', t_click: '상품상세_리뷰신고하기', gdas_seq: '23082403'});"
								data-attr="상품상세^신고하기^신고하기">신고하기</button>
						</div>
					</li>
					</c:forEach>
