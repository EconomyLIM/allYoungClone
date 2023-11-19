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

<div class="reviewer-profile-wrap clrfix">
            <!-- reviewer-profile-info :: 리뷰어 프로필 시작 -->
            <!-- [D] 탑리뷰언서 UI top-reviewer 클래스 추가 / 닉네임 미설정 nickname-not-set 클래스 추가 -->
            <div class="reviewer-profile-info profile-top-reviewer-v1  ">
                <div class="top-reviewer-inner">
                    
                    <!-- 탑리뷰어언서 UI추가 -->
                    <div class="top-reviewer-profile">
                        <div class="profile-top-content">
                            <div class="thum">
                                <img src="<%-- 나의 프로필 이미지 --%>" class="profileThum_s" alt="프로필 이미지" onerror="common.errorProfileImg(this);">
                            </div>

                            <div class="new-profile-info">
                                <!-- 등급 rate_01, rate_02, rate_03, rate_04, rate_05 -->
                                <div class="user-id-area rate_05">
                                    
                                        
                                        
                                            <!--[D] 나의 프로필 닉네임 노출 on 클래스 -->
                                            <p class="id my-profile on">
                                                <strong><%-- 닉네임 --%></strong>
                                                <span class="badge-img">
                                                    <span class="blind">멤버십 등급별 이미지</span>
                                                </span>
                                            </p>
                                        
                                    
                                </div>

                                <div class="profile-badge on">
                                    
                                    
                                </div>
                            </div>
                        </div>
                        <div class="profile-info-content">
                            
                                <div class="profile-keyword-area">
                                    
                                        
                                        
                                        <ul class="profile-keyword-list on">
                                            
                                              <c:choose>
                                              	<c:when test="<%-- 피부타입이 설정되어 있다면 --%>">
                                              		<c:forEach items="<%-- 피부타입, 피부톤, 피부고민 + 관심카테고리(피부고민부터 2개만) --%>">
                                              		
	                                              	
	                                              		<li class="list-item">지성</li>
	                                                
	                                                
	                                                
	                                            
	                                                
	                                                
	                                                    <li class="list-item">웜톤</li>
	                                                
	                                                
	                                            
	                                                
	                                                
	                                                
	                                                    <li class="list-item">각질</li>
	                                                    
	                                                
	                                            
	                                                
	                                                
	                                                
	                                                    <li class="list-item">모공</li>
	                                                    
                                              		</c:forEach>
                                              	</c:when>
                                              	<c:otherwise>
	                                              	<a href="https://www.oliveyoung.co.kr/store/mypage/getMySkinCondition.do?t_page=내프로필&amp;t_click=프로필수정" class="nickname-text on" data-attr="리뷰어프로필^피부컨디션^피부타입을 설정해주세요">
	                                                피부타입을 설정해주세요
	                                            	</a>
                                              	</c:otherwise>
                                              </c:choose>  
                                                    <li class="list-item">지성</li>
                                                
                                                
                                                
                                            
                                        </ul>
                                    
                                    
                                    
                                </div>
                            

                                    <p class="top-reviewer-info on">
                                        
                                        나의 프로필 소개
                                            
                                            <br>
                                        
                                    </p>
                                
                            
                        </div>
                    </div>
                    <!-- // 탑리뷰어언서 UI추가 -->
                    
                        <ul class="reviewer-profile-info__bottom reviewer-data-info">
                            <li class="reviewer-data-info__list">
                                <span id="recommedCnt" class="num">
                                    
                                        
                                           <%-- 도움 수 --%>
                                        
                                        
                                    
                                </span>
                                <span class="txt">도움</span>
                            </li>
                            <li class="reviewer-data-info__list">
                                <a href="#" class="button-follower">
                                    <span class="num" id="followerCount">
                                        <%-- 팔로워 수 --%>
                                    </span>
                                    <span class="txt">팔로워</span>
                                </a>
                            </li>
                            <li class="reviewer-data-info__list">
                                <a href="#" class="button-follower">
                                    <span class="num" id="followingCount">
                                        <%-- 팔로잉 수 --%>
                                    </span>
                                    <span class="txt">팔로잉</span>
                                </a>
                            </li>
                        </ul>
                    
                </div>
                <div class="reviewer-profile-button-area">
                    
                        <!-- [D] 프로필 수정 노출 on 클래스 -->
                        <div class="user-edit-area on">
                            <!-- 프로필 수정 버튼 추가 :: 수정 페이지에서는 버튼 사라짐 :: 시작 -->
                            <a href="<%-- 나의 프로필 수정으로 이동하는 스크립트 --%>" class="reviewer-button reviewer-button--update" onclick="location.href='https://www.oliveyoung.co.kr/store/mypage/getMySkinCondition.do?t_page=내프로필&amp;t_click=프로필수정';" data-attr="리뷰어프로필^프로필수정^프로필 수정">프로필 수정</a>
                            <!-- 프로필 수정 버튼 추가 :: 끝 -->
                            <button type="button" class="btn-user-graph" onclick="mypage.reviewerInfo.getMyActivityInfo('getMyActivityInfoPop', {t_page: '내프로필', t_click: '나의리뷰활동'})" data-attr="리뷰어프로필^나의리뷰활동^나의활동내역">
                                <span class="blind">나의 리뷰 활동 버튼</span>
                                <%-- 리뷰 활동을 확인하는 모달창을 띄우는 스크립트 --%>
                            </button>
                        </div>
                    
                    
                </div>
            </div>

            <!-- reviewer-profile-info :: 리뷰어 프로필 끝 -->

            <!-- 누적리뷰영역 -->
            
                
                    
                    <div class="reviewer-profile-content">



                        <div class="reviewer-profile-content__header">
                            <div>
                                누적 리뷰 <span>
                                
                                
                                    -
                                
                            </span>
                            </div>
                            <div class="select-order">
                                <button type="button" class="select-order__selected">최근작성순</button>
                                <ul class="select-order__list-wrap" id="reviewSort" style="">
                                    <li class="select-order__list" data-value="01" data-attr="리뷰어프로필^리뷰필터^높은도움순">높은도움순</li>
                                    <li class="select-order__list" data-value="02" data-attr="리뷰어프로필^리뷰필터^낮은도움순">낮은도움순</li>
                                    <li class="select-order__list select-order__list--active" data-value="03" data-attr="리뷰어프로필^리뷰필터^최근작성순">최근작성순</li>
                                    <li class="select-order__list" data-value="04" data-attr="리뷰어프로필^리뷰필터^별점높은순">별점높은순</li>
                                    <li class="select-order__list" data-value="05" data-attr="리뷰어프로필^리뷰필터^낮은별점순">낮은별점순</li>
                                </ul>
                            </div>
                        </div>

                        <!-- reviewer-profile-content__body :: 누적리뷰 리스트 시작 -->
                        <div class="reviewer-profile-content__body" id="reviewerGdasList">
                            <%-- 작성한 리뷰 --%>
                            <%-- 위의 리뷰 정렬 서비스 필요 아마 order by로..? --%>
                            
                        </div>
                        <!-- reviewer-profile-content__body :: 누적리뷰 리스트 끝 -->
                    </div>
                
                
            
            <!-- 누적리뷰영역 -->
        </div>

<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>