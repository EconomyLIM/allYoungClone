<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

<div class="top-reviewer-inner">
                      <c:forEach items="${ profileInfo }" var="pf">
                    <!-- 탑리뷰어언서 UI추가 -->
                    <div class="top-reviewer-profile">
                        <div class="profile-top-content">
                        
                            <div class="thum">
                                <img src="${ pf.pfimgsrc }" class="profileThum_s" alt="프로필 이미지" onerror="common.errorProfileImg(this);">
                            </div>

                            <div class="new-profile-info">
                                <!-- 등급 rate_01, rate_02, rate_03, rate_04, rate_05 -->
                                <div class="user-id-area rate_05">
                                    
                                        
                                        
                                            <!--[D] 나의 프로필 닉네임 노출 on 클래스 -->
                                            <p class="id my-profile on">
                                                <strong>${ pf.nickname }</strong>
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
                                              	<c:when test="${ not empty pf.skinType }">
                                              		      
	                                              		<li class="list-item">${ pf.skinType }</li>
	                                                
	                                                    <li class="list-item">${ pf.skinTone }</li>
	                                                	
	                                                	<c:choose>
		                                                	<c:when test="${ fn:length(skintrouble) >= 2 }">
		                                                		<c:forEach items="${ skintrouble }" var="str" begin="0" end="2">
				                                                    <li class="list-item">${ str }</li>
				                                                    
			                                                    </c:forEach>
		                                                    </c:when>
		                                                    <c:otherwise>
		                                                    	<c:forEach items="${ skintrouble }" var="str">
		                                                    	<li class="list-item">${ str }</li>
		                                                    	</c:forEach>
		                                                    	<c:forEach items="${ intcate }" var="ic" begin="0" end="1">
		                                                    	<li class="list-item">${ ic }</li>		                                                    	
		                                                    	</c:forEach>
	                                                    	</c:otherwise>
	                                                    </c:choose>
                                              	</c:when>
                                              	<c:otherwise>
	                                              	<a href="https://www.oliveyoung.co.kr/store/mypage/getMySkinCondition.do?t_page=내프로필&amp;t_click=프로필수정" class="nickname-text on" data-attr="리뷰어프로필^피부컨디션^피부타입을 설정해주세요">
	                                                피부타입을 설정해주세요
	                                            	</a>
                                              	</c:otherwise>
                                              </c:choose>  
                                                  
                                        </ul>
                                    
                                </div>
                            

                                    <p class="top-reviewer-info on">
                                        
                                        ${ pf.pfContent }
                                            
                                            <br>
                                        
                                    </p>
                                
                            
                        </div>
                    </div>
                    <!-- // 탑리뷰어언서 UI추가 -->
                    
                        <ul class="reviewer-profile-info__bottom reviewer-data-info">
                            <li class="reviewer-data-info__list">
                                <span id="recommedCnt" class="num">
                                    
                                        
                                          ${ pf.recommCount }
                                        
                                        
                                    
                                </span>
                                <span class="txt">도움</span>
                            </li>
                            <li class="reviewer-data-info__list">
                                <a href="#" class="button-follower">
                                    <span class="num" id="followerCount">
                                        ${ pf.followerCount }
                                    </span>
                                    <span class="txt">팔로워</span>
                                </a>
                            </li>
                            <li class="reviewer-data-info__list">
                                <a href="#" class="button-follower">
                                    <span class="num" id="followingCount">
                                        ${ pf.followingCount }
                                    </span>
                                    <span class="txt">팔로잉</span>
                                </a>
                            </li>
                        </ul>
                     </c:forEach>
                </div>

</body>
</html>