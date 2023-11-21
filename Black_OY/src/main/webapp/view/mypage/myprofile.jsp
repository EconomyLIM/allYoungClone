<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

<div id="Contents">

	<div class="reviewer-profile-wrap clrfix">
           
			<div class="reviewer-profile-info profile-top-reviewer-v1  ">
          
                <jsp:include page="/view/mypage/layout/profilelayout.jsp"></jsp:include>
               
              
           
                <div class="reviewer-profile-button-area">
                    
                        <!-- [D] 프로필 수정 노출 on 클래스 -->
                        <div class="user-edit-area on">
                            <!-- 프로필 수정 버튼 추가 :: 수정 페이지에서는 버튼 사라짐 :: 시작 -->
                            <a href="<%= contextPath %>/olive/profileEdit.do" class="reviewer-button reviewer-button--update" onclick="">프로필 수정</a>
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

        
</div>



<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>