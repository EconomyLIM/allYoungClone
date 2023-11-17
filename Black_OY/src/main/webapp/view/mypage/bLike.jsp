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
				
				
				<jsp:include page="/view/mypage/layout/mypageside.jsp" flush="false"></jsp:include>
				
				
				<div class="mypage-conts">

				
					<div class="title-area linezero">
						<h2 class="tit">좋아요</h2>
					</div>
				     
				     
					<ul class="comm1sTabs mgzero">
						<li><a href="javascript:void(0);" class="movePrdWish">상품</a></li>
						<li class="on"><a>브랜드</a></li>
					</ul>

					<div class="result-common">
						<span class="num">
							<strong>전체 <em>1</em>개</strong>
						</span>
						
						<button type="button" class="all-delete">전체 삭제</button>
						
					</div>
					
						<div class="brand_like_list">
							<ul class="inner clrfix" id="brand_area">
														
								
									
											<li>
													<div class="option">
														<p class="opt">
															<a href="javascript:void(0);" class="link moveBrandShop" value="A003377" data-ref-onlbrndcd="A003377">
																아누아
															</a>
														</p>
														<p class="txt">좋아요 <span>6,905</span><button type="button" class="btnlike">좋아요</button></p>
													</div>	
													<p class="ban_brand">
														<a href="javascript:void(0);" class="moveBrandShop" value="A003377" data-ref-onlbrndcd="A003377">
															
															
																
																<img onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/temp/img_brand_no.jpg'" src="https://image.oliveyoung.co.kr/uploads/images/display/90000020653/263/4572023418429793016.jpg" alt="아누아">
															
															
															
														</a>
													</p>
											</li>
									
														
								
								
							</ul>
						</div>
					



			

	<div class="pageing">
	
	
		
			
		<strong title="현재 페이지">1</strong>
			
			
		
	
	
	</div>


				
<script type="text/javascript" src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/wish.js?dumm=202311160002" charset="utf-8"></script>
<script type="text/javascript">
$(document).ready(function() {
	mypage.brndWish.init();
});
</script>





			</div>
				
			</div>

		</div>

	</div>



<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>