//BRAND.JSP
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<%@ include file="/WEB-INF/inc/session_auth.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script type="text/javascript"
	src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<script src="/Black_OY/js/head.js"></script>
<link rel="stylesheet" href="/Black_OY/css/style.css">
<link rel="stylesheet" href="/Black_OY/css/brand.css">
<title>블랙올리브영 온라인몰</title>
</head>
<body>


	<script>
    $(function() {
       
       $("ul.cate_list_box >  li").on("click", function(event) {
    	   
          event.preventDefault();
           let sort ='p';
           let brand_id = '<%=request.getParameter("brandId")%>';     
          let dispcatno = $(this).find("a").data("ref-dispcatno");
          
      
          $.ajax({
                type : 'get'
             , async : false
             , cache: false
             , url : '/Black_OY/GetSortBrandAjax'
             
             , data : {
            	brand_id : brand_id ,
                dispcatno: dispcatno,
                sort: sort
             }
             , success : function(response) {
                    /* console.log(data); */
                    $(".prod-list.goodsProd").empty()
                    $(".prod-list.goodsProd").append(response)
            	 
                }
             , error : function (response, textStatus) {
                   console.log('error');
                }
            });
   
           
       }) 
       
       $("#tabitem2").on("click", function() {
          $(this).addClass("active");
          $(this).next().removeClass("active");
          $("#tab-panel2").addClass("active");
          $("#tab-panel3").removeClass("active");
       });
       
       $("#tabitem3").on("click", function() {
          $(this).addClass("active");
          $(this).prev().removeClass("active");
          $("#tab-panel2").removeClass("active");
          $("#tab-panel3").addClass("active");
          
       })
    })
 </script>


	<div id="Wrapper">
		<div id="skip_navi">
			<a href="#Container">본문바로가기</a>
		</div>
		<jsp:include page="/layout/head_main.jsp"></jsp:include>
		<form name="ssologinfrm"
			action="https://www.oliveyoung.co.kr/store/login/ssoLogin.do"
			method="post">
			<input type="hidden" id="cjssoq" name="cjssoq">
		</form>
		<div id="Container">
			<div class="page_location">
				<a href="javascript:common.link.moveMainHome();" class="loc_home">홈</a>
				<ul class="loc_history">
					<li><a href="javascript:common.link.moveBrandPage();">브랜드</a>
					</li>
					<li><a href="javascript:;">구달</a></li>
				</ul>
			</div>
			<div class="brand">
				<h2 class="title-detail-brand">${ brand.brand_name }</h2>
				<div class="brand_like">
					<a href="javascript:void(0);" data-ref-onlbrndnm="구달"
						data-ref-onlbrndcd="A001436" id="icobrand">
						<p class="brand">
							<span class="icon"><span class="fw400">${ brand.brand_like }</span>명이
								구달을 좋아합니다.</span>
						</p>
					</a>
				</div>
			</div>
			<div id="brandDataSort">
				<div class="brand">
					<div class="brand_visual">
						<div class="visual">
							<img
								data-original="https://image.oliveyoung.co.kr/uploads/images/display/90000020137/263/8950018296969934705.jpg"
								alt="구달 이미지 배너입니다."
								data-ref-link-url="https://www.oliveyoung.co.kr/store/"
								class="completed-seq-lazyload" src="${ brand.brand_img_src }">
						</div>
						<div class="info">
							<h4 class="vtit">${ brand.brand_summ }</h4>
							<p class="txt">${ brand.brand_expl }</p>
						</div>
					</div>
				</div>
				<div class="brand" data-sort="5" id="dataSortBox" corner-no="267">
					<div class="brandBox lineb">
						<div class="head md">
							<h3 class="tit">슬로-에이징 구달 스킨케어</h3>
						</div>
						<div class="mdSwiperBox">
							<div class="mdSwiper" id="mdSwiper">
								<div aria-live="polite" class="slick-list draggable">
									<div class="slick-track" role="listbox"
										style="opacity: 1; width: 1020px; transform: translate3d(0px, 0px, 0px);">
										<div class="item" data-slick-index="0" aria-hidden="false"
											style="width: 1020px;" tabindex="-1" role="option"
											aria-describedby="slick-slide00">
											<ul class="prod-list">
												<li>
													<div class="prod">
														<a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=90000020137&amp;trackingCd=BrandA001436_Mdpick1&amp;t_page=브랜드관&amp;t_click=테마별상품전시1_상품상세&amp;t_number=1"
															name="BrandA001436_Mdpick1" class="thumb goodsList"
															data-ref-goodsno="A000000162323"
															data-ref-dispcatno="90000020137" data-ref-itemno="001"
															data-attr="브랜드관^구달_테마별상품전시_1^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
															data-trk="/" tabindex="0"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_테마별상품전시_1&quot;, &quot;1&quot;);"><img
															src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016232329ko.jpg?l=ko"
															alt="[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
															class="pic-thumb" onerror="common.errorImg(this);"><span
															class="flag-badge best">베스트</span></a>
														<div class="prod-info"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_테마별상품전시_1&quot;, &quot;1&quot;);">
															<a
																href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=90000020137&amp;trackingCd=BrandA001436_Mdpick1&amp;t_page=브랜드관&amp;t_click=테마별상품전시1_상품상세&amp;t_number=1"
																name="BrandA001436_Mdpick1" class="goodsList"
																data-ref-goodsno="A000000162323"
																data-ref-dispcatno="90000020137" data-ref-itemno="001"
																data-attr="브랜드관^구달_테마별상품전시_1^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
																data-trk="/" tabindex="0"><div class="prod-brand">
																	<strong class="exclusive"></strong>
																</div> <span class="prod-name double-line">[한정기획] 구달 청귤
																	비타C 잡티케어 세럼 50ml+31ml 증정 기획</span>
																<div class="discount">
																	<strong class="rate-of">28%</strong> <span
																		class="origin">43,000원</span>
																</div>
																<div class="price">
																	<strong class="total">30,960<span class="won">원</span></strong>
																	<span class="oneday">오늘드림</span>
																</div>
																<div class="rating">
																	<span class="point">4.7</span><span class="num">(999+)</span>
																</div>
																<div class="flags">
																	<span class="flag sale">세일</span><span
																		class="flag coupon">쿠폰</span>
																</div></a>
														</div>
														<div class="prod-func">
															<button type="button" class="favorite btn_zzim jeem"
																data-ref-goodsno="A000000162323" tabindex="0">
																<span>찜하기</span>
															</button>
															<button type="button" class="cart"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000162323" data-item-no="001"
																tabindex="0">장바구니</button>
														</div>

													</div>
												</li>
												<li>
													<div class="prod">
														<a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162021&amp;dispCatNo=90000020137&amp;trackingCd=BrandA001436_Mdpick1&amp;t_page=브랜드관&amp;t_click=테마별상품전시1_상품상세&amp;t_number=2"
															name="BrandA001436_Mdpick1" class="thumb goodsList"
															data-ref-goodsno="A000000162021"
															data-ref-dispcatno="90000020137" data-ref-itemno="001"
															data-attr="브랜드관^구달_테마별상품전시_1^[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)"
															data-trk="/" tabindex="0"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162021&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_테마별상품전시_1&quot;, &quot;2&quot;);"><img
															src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016202129ko.jpg?l=ko"
															alt="[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)"
															class="pic-thumb" onerror="common.errorImg(this);"></a>
														<div class="prod-info"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162021&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_테마별상품전시_1&quot;, &quot;2&quot;);">
															<a
																href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162021&amp;dispCatNo=90000020137&amp;trackingCd=BrandA001436_Mdpick1&amp;t_page=브랜드관&amp;t_click=테마별상품전시1_상품상세&amp;t_number=2"
																name="BrandA001436_Mdpick1" class="goodsList"
																data-ref-goodsno="A000000162021"
																data-ref-dispcatno="90000020137" data-ref-itemno="001"
																data-attr="브랜드관^구달_테마별상품전시_1^[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)"
																data-trk="/" tabindex="0"><div class="prod-brand">
																	<strong class="exclusive"></strong>
																</div> <span class="prod-name double-line">[한정기획] 구달 청귤
																	비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)</span>
																<div class="price">
																	<strong class="total">28,000<span class="won">원</span></strong>
																	<span class="oneday">오늘드림</span>
																</div>
																<div class="rating">
																	<span class="point">4.7</span><span class="num">(999+)</span>
																</div>
																<div class="flags blank"></div></a>
														</div>
														<div class="prod-func">
															<button type="button" class="favorite btn_zzim jeem"
																data-ref-goodsno="A000000162021" tabindex="0">
																<span>찜하기</span>
															</button>
															<button type="button" class="cart"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000162021" data-item-no="001"
																tabindex="0">장바구니</button>
														</div>

													</div>
												</li>

												<li></li>

												<li></li>

											</ul>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="brand" data-sort="6" id="dataSortBox" corner-no="359">
					<div class="brandBox lineb">
						<div class="head md">
							<h3 class="tit">가을 햇살에는 구달 어성초 선케어</h3>
						</div>
						<div class="mdSwiperBox">
							<div class="mdSwiper" id="mdSwiper">

								<div aria-live="polite">
									<div class="slick-track" role="listbox"
										style="opacity: 1; width: 1020px; transform: translate3d(0px, 0px, 0px);">
										<div class="item" data-slick-index="0" aria-hidden="false"
											style="width: 1020px;" tabindex="-1" role="option"
											aria-describedby="slick-slide10">
											<ul class="prod-list">


												<li>
													<div class="prod" id="slide">
														<a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182780&amp;dispCatNo=90000020137&amp;trackingCd=BrandA001436_Mdpick2&amp;t_page=브랜드관&amp;t_click=테마별상품전시2_상품상세&amp;t_number=1"
															name="BrandA001436_Mdpick2" class="thumb goodsList"
															data-ref-goodsno="A000000182780"
															data-ref-dispcatno="90000020137" data-ref-itemno="001"
															data-attr="브랜드관^구달_테마별상품전시_2^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++"
															data-trk="/" tabindex="0"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_테마별상품전시_2&quot;, &quot;3&quot;);"><img
															src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018278013ko.jpg?l=ko"
															alt="[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++"
															class="pic-thumb" onerror="common.errorImg(this);"><span
															class="flag-badge best">베스트</span></a>
														<div class="prod-info"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_테마별상품전시_2&quot;, &quot;3&quot;);">
															<a
																href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182780&amp;dispCatNo=90000020137&amp;trackingCd=BrandA001436_Mdpick2&amp;t_page=브랜드관&amp;t_click=테마별상품전시2_상품상세&amp;t_number=1"
																name="BrandA001436_Mdpick2" class="goodsList"
																data-ref-goodsno="A000000182780"
																data-ref-dispcatno="90000020137" data-ref-itemno="001"
																data-attr="브랜드관^구달_테마별상품전시_2^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++"
																data-trk="/" tabindex="0"><div class="prod-brand">
																	<strong class="exclusive"></strong>
																</div> <span class="prod-name double-line">[1+1 기획] 구달
																	맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++</span>
																<div class="discount">
																	<strong class="rate-of">17%</strong> <span
																		class="origin">20,000원</span>
																</div>
																<div class="price">
																	<strong class="total">16,560<span class="won">원</span></strong>
																	<span class="oneday">오늘드림</span>
																</div>
																<div class="rating">
																	<span class="point">4.8</span><span class="num">(999+)</span>
																</div>
																<div class="flags">
																	<span class="flag sale">세일</span><span
																		class="flag coupon">쿠폰</span>
																</div></a>
														</div>
														<div class="prod-func">
															<button type="button" class="favorite btn_zzim jeem"
																data-ref-goodsno="A000000182780" tabindex="0">
																<span>찜하기</span>
															</button>
															<button type="button" class="cart"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000182780" data-item-no="001"
																tabindex="0">장바구니</button>
														</div>

													</div>
												</li>
												<li>
													<div class="prod">
														<a
															href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182782&amp;dispCatNo=90000020137&amp;trackingCd=BrandA001436_Mdpick2&amp;t_page=브랜드관&amp;t_click=테마별상품전시2_상품상세&amp;t_number=2"
															name="BrandA001436_Mdpick2" class="thumb goodsList"
															data-ref-goodsno="A000000182782"
															data-ref-dispcatno="90000020137" data-ref-itemno="001"
															data-attr="브랜드관^구달_테마별상품전시_2^[한정기획] 구달 맑은 어성초 진정 쿨링 선스틱 1+1 기획 SPF50+ PA++++"
															data-trk="/" tabindex="0"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182782&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_테마별상품전시_2&quot;, &quot;4&quot;);"><img
															src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018278210ko.jpg?l=ko"
															alt="[한정기획] 구달 맑은 어성초 진정 쿨링 선스틱 1+1 기획 SPF50+ PA++++"
															class="pic-thumb" onerror="common.errorImg(this);"><span
															class="flag-badge best">베스트</span></a>
														<div class="prod-info"
															onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182782&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_테마별상품전시_2&quot;, &quot;4&quot;);">
															<a
																href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182782&amp;dispCatNo=90000020137&amp;trackingCd=BrandA001436_Mdpick2&amp;t_page=브랜드관&amp;t_click=테마별상품전시2_상품상세&amp;t_number=2"
																name="BrandA001436_Mdpick2" class="goodsList"
																data-ref-goodsno="A000000182782"
																data-ref-dispcatno="90000020137" data-ref-itemno="001"
																data-attr="브랜드관^구달_테마별상품전시_2^[한정기획] 구달 맑은 어성초 진정 쿨링 선스틱 1+1 기획 SPF50+ PA++++"
																data-trk="/" tabindex="0"><div class="prod-brand">
																	<strong class="exclusive"></strong>
																</div> <span class="prod-name double-line">[한정기획] 구달 맑은
																	어성초 진정 쿨링 선스틱 1+1 기획 SPF50+ PA++++</span>
																<div class="discount">
																	<strong class="rate-of">10%</strong> <span
																		class="origin">22,000원</span>
																</div>
																<div class="price">
																	<strong class="total">19,800<span class="won">원</span></strong>
																	<span class="oneday">오늘드림</span>
																</div>
																<div class="rating">
																	<span class="point">4.7</span><span class="num">(656)</span>
																</div>
																<div class="flags">
																	<span class="flag sale">세일</span>
																</div></a>
														</div>
														<div class="prod-func">
															<button type="button" class="favorite btn_zzim jeem"
																data-ref-goodsno="A000000182782" tabindex="0">
																<span>찜하기</span>
															</button>
															<button type="button" class="cart"
																onclick="common.gf_regCart(this); return false;"
																data-goods-no="A000000182782" data-item-no="001"
																tabindex="0">장바구니</button>
														</div>

													</div>
												</li>
												<li></li>

												<li></li>

											</ul>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="brandBox" data-sort="7" id="dataSortBox" corner-no="266">
					<div class="brand-promotion video_box">
						<div class="brand-promotion-container">
							<h3 class="tit">제주 성산에서 자라난 흑당근으로 모공그늘이별</h3>
							<div class="video_masking_box">
								<div id="promotion-video-player" data-plyr-provider="Youtube"
									data-plyr-embed-id="9HU0a9cM6tM">
									<iframe id="playPlayer" frameborder="0" allowfullscreen="1"
										allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
										title="[goodal] Black Carrot Vita-A Retinol Ampoule 흑당근 비타A 레티놀 앰플🥕"
										width="640" height="360"
										src="https://www.youtube.com/embed/9HU0a9cM6tM?version=1&amp;autoplay=1&amp;controls=1&amp;modestbranding=1&amp;fs=1&amp;rel=0&amp;playsinline=1&amp;enablejsapi=1&amp;origin=https%3A%2F%2Fwww.oliveyoung.co.kr&amp;widgetid=1"
										data-gtm-yt-inspected-28="true"
										data-gtm-yt-inspected-33="true"></iframe>
								</div>
							</div>
							<ul class="video_thumbs_box">

								<li class="video_item on"><a href="#promotion-video-player"
									class="video_thumbs" data-thumb-youtubeid="9HU0a9cM6tM"
									data-attr="브랜드관^구달_동영상^#흑당근비타A 모공탄력 레티놀앰플^1" data-trk="/"
									data-tracking-param="t_page=브랜드관&amp;t_click=브랜드스토리_영상&amp;t_video_name=#흑당근비타A 모공탄력 레티놀앰플&amp;t_number=1">
										<span class="thumb_img"><img
											src="https://img.youtube.com/vi/9HU0a9cM6tM/mqdefault.jpg"
											alt=""></span> <span class="thumb_txt">#흑당근비타A 모공탄력
											레티놀앰플</span>
								</a></li>
								<li class="video_item "><a href="#promotion-video-player"
									class="video_thumbs" data-thumb-youtubeid="wTokmmAVn6Q"
									data-attr="브랜드관^구달_동영상^#흑당근비타A 쫀쫀탄력 레티놀크림^2" data-trk="/"
									data-tracking-param="t_page=브랜드관&amp;t_click=브랜드스토리_영상&amp;t_video_name=#흑당근비타A 쫀쫀탄력 레티놀크림&amp;t_number=2">
										<span class="thumb_img"><img
											src="https://img.youtube.com/vi/wTokmmAVn6Q/mqdefault.jpg"
											alt=""></span> <span class="thumb_txt">#흑당근비타A 쫀쫀탄력
											레티놀크림</span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="brand">
				<div class="brandBox lineb">
					<div class="tabHead">
						<ul class="tablist" role="tablist">


							<li class="tab active" role="tab" id="tabitem2"
								aria-controls="tab-panel2" tabindex="0" aria-selected="true">베스트</li>


							<li class="tab" role="tab" id="tabitem3"
								aria-controls="tab-panel3" tabindex="0">리뷰</li>

						</ul>
					</div>

					<div class="tabContainer">
						<div class="tabCont active" role="tabpanel" id="tab-panel2"
							aria-lebelledby="tabitem2">
							<div class="itemList">
								<div class="tabSwiperBox">
									<div class="tabSwiper slick-initialized slick-slider"
										id="bestTabSwiper">
										<button type="button" data-role="none"
											class="slick-prev slick-arrow" aria-label="Previous"
											role="button" style="display: block;">Previous</button>




										<div aria-live="polite" class="slick-list draggable">
											<div class="slick-track" role="listbox"
												style="opacity: 1; width: 5100px; transform: translate3d(-1020px, 0px, 0px);">
												<div class="item slick-slide slick-cloned"
													data-slick-index="-1" aria-hidden="true"
													style="width: 1020px;" tabindex="-1">
													<ul class="prod-list">


														<li id="">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171548&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=9"
																	name="BrandA001436_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000171548"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 다크서클 아이크림 30ml 기획 (+15ml*2ea증정)"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000171548&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;1&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017154812ko.jpg?l=ko"
																	alt="[한정기획] 구달 청귤 비타C 다크서클 아이크림 30ml 기획 (+15ml*2ea증정)"
																	class="pic-thumb" onerror="common.errorImg(this);"></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000171548&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;1&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171548&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=9"
																		name="BrandA001436_Best" class="goodsList"
																		data-ref-goodsno="A000000171548"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 다크서클 아이크림 30ml 기획 (+15ml*2ea증정)"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[한정기획] 구달
																			청귤 비타C 다크서클 아이크림 30ml 기획 (+15ml*2ea증정)</span>
																	<div class="price">
																			<strong class="total">24,000<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.6</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags blank"></div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000171548" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000171548" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>







														<li id="">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189175&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=10"
																	name="BrandA001436_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000189175"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^구달_베스트^[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189175&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;2&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018917508ko.jpg?l=ko"
																	alt="[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획"
																	class="pic-thumb" onerror="common.errorImg(this);"></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189175&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;2&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189175&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=10"
																		name="BrandA001436_Best" class="goodsList"
																		data-ref-goodsno="A000000189175"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^구달_베스트^[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[NEW] 구달 청귤
																			비타C 잡티케어 패드 70매+70매 리필기획</span>
																	<div class="price">
																			<strong class="total">38,000<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.7</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags blank"></div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000189175" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000189175" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>








														<li></li>

														<li></li>

													</ul>
												</div>
												<div class="item slick-slide slick-current slick-active"
													data-slick-index="0" aria-hidden="false"
													style="width: 1020px;" tabindex="-1" role="option"
													aria-describedby="slick-slide20">
													<ul class="prod-list">


														<li id="bestTab1">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=1"
																	name="BrandA001436_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000162323"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
																	data-trk="/" tabindex="0"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;3&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016232329ko.jpg?l=ko"
																	alt="[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;3&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=1"
																		name="BrandA001436_Best" class="goodsList"
																		data-ref-goodsno="A000000162323"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
																		data-trk="/" tabindex="0"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[한정기획] 구달
																			청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획</span>
																	<div class="discount">
																			<span class="origin">43,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">29,900<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.7</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span><span
																				class="flag coupon">쿠폰</span><span class="flag gift">증정</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000162323" tabindex="0">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000162323" data-item-no="001"
																		tabindex="0">장바구니</button>
																</div>

															</div>
														</li>







														<li id="bestTab2">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168705&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=2"
																	name="BrandA001436_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000168705"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++"
																	data-trk="/" tabindex="0"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168705&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;4&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016870522ko.jpg?l=ko"
																	alt="[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168705&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;4&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168705&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=2"
																		name="BrandA001436_Best" class="goodsList"
																		data-ref-goodsno="A000000168705"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++"
																		data-trk="/" tabindex="0"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[1+1기획] 구달
																			맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++</span>
																	<div class="discount">
																			<span class="origin">18,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">17,100<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.8</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag coupon">쿠폰</span><span
																				class="flag gift">증정</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000168705" tabindex="0">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000168705" data-item-no="001"
																		tabindex="0">장바구니</button>
																</div>

															</div>
														</li>







														<li id="bestTab3">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162021&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=3"
																	name="BrandA001436_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000162021"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)"
																	data-trk="/" tabindex="0"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162021&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;5&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016202129ko.jpg?l=ko"
																	alt="[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162021&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;5&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162021&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=3"
																		name="BrandA001436_Best" class="goodsList"
																		data-ref-goodsno="A000000162021"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)"
																		data-trk="/" tabindex="0"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[한정기획] 구달
																			청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)</span>
																	<div class="price">
																			<strong class="total">28,000<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.7</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags blank"></div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000162021" tabindex="0">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000162021" data-item-no="001"
																		tabindex="0">장바구니</button>
																</div>

															</div>
														</li>







														<li id="bestTab4">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182780&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=4"
																	name="BrandA001436_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000182780"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^구달_베스트^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++"
																	data-trk="/" tabindex="0"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;6&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018278013ko.jpg?l=ko"
																	alt="[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;6&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182780&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=4"
																		name="BrandA001436_Best" class="goodsList"
																		data-ref-goodsno="A000000182780"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^구달_베스트^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++"
																		data-trk="/" tabindex="0"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[1+1 기획] 구달
																			맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++</span>
																	<div class="discount">
																			<span class="origin">20,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">17,100<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.8</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span><span
																				class="flag coupon">쿠폰</span><span class="flag gift">증정</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000182780" tabindex="0">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000182780" data-item-no="001"
																		tabindex="0">장바구니</button>
																</div>

															</div>
														</li>


													</ul>
												</div>
												<div class="item slick-slide" data-slick-index="1"
													aria-hidden="true" style="width: 1020px;" tabindex="-1"
													role="option" aria-describedby="slick-slide21">
													<ul class="prod-list">


														<li id="bestTab5">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162325&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=5"
																	name="BrandA001436_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000162325"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^구달_베스트^[단독기획] 구달 청귤 비타C 잡티케어 세럼 30ml 기획 (+세럼 10ml +마스크팩 1매 증정)"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162325&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;7&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016232526ko.jpg?l=ko"
																	alt="[단독기획] 구달 청귤 비타C 잡티케어 세럼 30ml 기획 (+세럼 10ml +마스크팩 1매 증정)"
																	class="pic-thumb" onerror="common.errorImg(this);"></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162325&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;7&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162325&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=5"
																		name="BrandA001436_Best" class="goodsList"
																		data-ref-goodsno="A000000162325"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^구달_베스트^[단독기획] 구달 청귤 비타C 잡티케어 세럼 30ml 기획 (+세럼 10ml +마스크팩 1매 증정)"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[단독기획] 구달
																			청귤 비타C 잡티케어 세럼 30ml 기획 (+세럼 10ml +마스크팩 1매 증정)</span>
																	<div class="discount">
																			<span class="origin">28,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">22,400<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.7</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span><span
																				class="flag gift">증정</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000162325" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000162325" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>







														<li id="bestTab6">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000169825&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=6"
																	name="BrandA001436_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000169825"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^구달_베스트^구달 청귤 비타C 수분 아이패치 60매"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000169825&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;8&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016982518ko.jpg?l=ko"
																	alt="구달 청귤 비타C 수분 아이패치 60매" class="pic-thumb"
																	onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000169825&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;8&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000169825&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=6"
																		name="BrandA001436_Best" class="goodsList"
																		data-ref-goodsno="A000000169825"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^구달_베스트^구달 청귤 비타C 수분 아이패치 60매"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">구달 청귤 비타C
																			수분 아이패치 60매</span>
																	<div class="discount">
																			<span class="origin">20,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">16,000<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.6</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000169825" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000169825" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>







														<li id="bestTab7">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165071&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=7"
																	name="BrandA001436_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000165071"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^구달_베스트^[한정기획] 구달 맑은 어성초 진정 수분크림 75ml 기획(+세럼 20ml+화장솜 20매 증정)"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000165071&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;9&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016507112ko.jpg?l=ko"
																	alt="[한정기획] 구달 맑은 어성초 진정 수분크림 75ml 기획(+세럼 20ml+화장솜 20매 증정)"
																	class="pic-thumb" onerror="common.errorImg(this);"></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000165071&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;9&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165071&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=7"
																		name="BrandA001436_Best" class="goodsList"
																		data-ref-goodsno="A000000165071"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^구달_베스트^[한정기획] 구달 맑은 어성초 진정 수분크림 75ml 기획(+세럼 20ml+화장솜 20매 증정)"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[한정기획] 구달
																			맑은 어성초 진정 수분크림 75ml 기획(+세럼 20ml+화장솜 20매 증정)</span>
																	<div class="price">
																			<strong class="total">26,000<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.7</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags blank"></div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000165071" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000165071" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>







														<li id="bestTab8">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183371&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=8"
																	name="BrandA001436_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000183371"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183371&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;10&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018337104ko.jpg?l=ko"
																	alt="[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)"
																	class="pic-thumb" onerror="common.errorImg(this);"></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183371&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;10&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000183371&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=8"
																		name="BrandA001436_Best" class="goodsList"
																		data-ref-goodsno="A000000183371"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[1+1기획] 구달
																			맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)</span>
																	<div class="discount">
																			<span class="origin">30,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">24,000<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.8</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000183371" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000183371" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>


													</ul>
												</div>
												<div class="item slick-slide" data-slick-index="2"
													aria-hidden="true" style="width: 1020px;" tabindex="-1"
													role="option" aria-describedby="slick-slide22">
													<ul class="prod-list">


														<li id="bestTab9">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171548&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=9"
																	name="BrandA001436_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000171548"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 다크서클 아이크림 30ml 기획 (+15ml*2ea증정)"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000171548&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;11&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017154812ko.jpg?l=ko"
																	alt="[한정기획] 구달 청귤 비타C 다크서클 아이크림 30ml 기획 (+15ml*2ea증정)"
																	class="pic-thumb" onerror="common.errorImg(this);"></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000171548&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;11&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171548&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=9"
																		name="BrandA001436_Best" class="goodsList"
																		data-ref-goodsno="A000000171548"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 다크서클 아이크림 30ml 기획 (+15ml*2ea증정)"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[한정기획] 구달
																			청귤 비타C 다크서클 아이크림 30ml 기획 (+15ml*2ea증정)</span>
																	<div class="price">
																			<strong class="total">24,000<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.6</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags blank"></div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000171548" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000171548" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>







														<li id="bestTab10">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189175&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=10"
																	name="BrandA001436_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000189175"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^구달_베스트^[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189175&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;12&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018917508ko.jpg?l=ko"
																	alt="[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획"
																	class="pic-thumb" onerror="common.errorImg(this);"></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189175&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;12&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189175&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=10"
																		name="BrandA001436_Best" class="goodsList"
																		data-ref-goodsno="A000000189175"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^구달_베스트^[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[NEW] 구달 청귤
																			비타C 잡티케어 패드 70매+70매 리필기획</span>
																	<div class="price">
																			<strong class="total">38,000<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.7</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags blank"></div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000189175" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000189175" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>








														<li></li>

														<li></li>

													</ul>
												</div>
												<div class="item slick-slide slick-cloned"
													data-slick-index="3" aria-hidden="true"
													style="width: 1020px;" tabindex="-1">
													<ul class="prod-list">


														<li id="">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=1"
																	name="BrandA001436_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000162323"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;13&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016232329ko.jpg?l=ko"
																	alt="[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;13&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=1"
																		name="BrandA001436_Best" class="goodsList"
																		data-ref-goodsno="A000000162323"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[한정기획] 구달
																			청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획</span>
																	<div class="discount">
																			<span class="origin">43,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">29,900<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.7</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span><span
																				class="flag coupon">쿠폰</span><span class="flag gift">증정</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000162323" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000162323" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>







														<li id="">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168705&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=2"
																	name="BrandA001436_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000168705"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168705&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;14&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016870522ko.jpg?l=ko"
																	alt="[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168705&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;14&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168705&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=2"
																		name="BrandA001436_Best" class="goodsList"
																		data-ref-goodsno="A000000168705"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[1+1기획] 구달
																			맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++</span>
																	<div class="discount">
																			<span class="origin">18,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">17,100<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.8</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag coupon">쿠폰</span><span
																				class="flag gift">증정</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000168705" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000168705" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>







														<li id="">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162021&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=3"
																	name="BrandA001436_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000162021"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162021&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;15&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016202129ko.jpg?l=ko"
																	alt="[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162021&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;15&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162021&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=3"
																		name="BrandA001436_Best" class="goodsList"
																		data-ref-goodsno="A000000162021"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[한정기획] 구달
																			청귤 비타C 잡티케어 크림 75ml 기획(+크림 10mlx2ea 증정)</span>
																	<div class="price">
																			<strong class="total">28,000<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.7</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags blank"></div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000162021" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000162021" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>







														<li id="">
															<div class="prod">
																<a
																	href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182780&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=4"
																	name="BrandA001436_Best" class="thumb goodsList"
																	data-ref-goodsno="A000000182780"
																	data-ref-dispcatno="9000002" data-ref-itemno="001"
																	data-attr="브랜드관^구달_베스트^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++"
																	data-trk="/" tabindex="-1"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;16&quot;);"><img
																	src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018278013ko.jpg?l=ko"
																	alt="[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++"
																	class="pic-thumb" onerror="common.errorImg(this);"><span
																	class="flag-badge best">베스트</span></a>
																<div class="prod-info"
																	onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;16&quot;);">
																	<a
																		href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182780&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=4"
																		name="BrandA001436_Best" class="goodsList"
																		data-ref-goodsno="A000000182780"
																		data-ref-dispcatno="9000002" data-ref-itemno="001"
																		data-attr="브랜드관^구달_베스트^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++"
																		data-trk="/" tabindex="-1"><div class="prod-brand">
																			<strong class="exclusive"></strong>
																		</div>
																		<span class="prod-name double-line">[1+1 기획] 구달
																			맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++</span>
																	<div class="discount">
																			<span class="origin">20,000원</span>
																		</div>
																		<div class="price">
																			<strong class="total">17,100<span
																				class="won">원</span></strong> <span class="oneday">오늘드림</span>
																		</div>
																		<div class="rating">
																			<span class="point">4.8</span><span class="num">(999+)</span>
																		</div>
																		<div class="flags">
																			<span class="flag sale">세일</span><span
																				class="flag coupon">쿠폰</span><span class="flag gift">증정</span>
																		</div></a>
																</div>
																<div class="prod-func">
																	<button type="button" class="favorite btn_zzim jeem"
																		data-ref-goodsno="A000000182780" tabindex="-1">
																		<span>찜하기</span>
																	</button>
																	<button type="button" class="cart"
																		onclick="common.gf_regCart(this); return false;"
																		data-goods-no="A000000182780" data-item-no="001"
																		tabindex="-1">장바구니</button>
																</div>

															</div>
														</li>


													</ul>
												</div>
											</div>
										</div>
										<!-- item -->





										<!-- item -->







										<button type="button" data-role="none"
											class="slick-next slick-arrow" aria-label="Next"
											role="button" style="display: block;">Next</button>
									</div>

								</div>

							</div>
							<script>
	$(function(){
	$('#bestTabSwiper').slick({
	   slidesToShow: 1,
	   slidesToScroll: 1,
	   draggable: true
	});
	})
</script>
							<c:forEach var="pro" items="${ sellbrandProducts }">
								<div class="item">
									<ul class="prod-list">


										<li id="">
											<div class="prod">
												<a
													href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=1"
													name="BrandA001436_Best" class="thumb goodsList"
													data-ref-goodsno="A000000162323"
													data-ref-dispcatno="9000002" data-ref-itemno="001"
													data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
													data-trk="/" tabindex="-1"
													onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;13&quot;);"><img
													src="${ sellbrandProducts.PRO_DISPL_SRC }"
													alt="[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
													class="pic-thumb" onerror="common.errorImg(this);"><span
													class="flag-badge best">베스트</span></a>
												<div class="prod-info"
													onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;13&quot;);">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=1"
														name="BrandA001436_Best" class="goodsList"
														data-ref-goodsno="A000000162323"
														data-ref-dispcatno="9000002" data-ref-itemno="001"
														data-attr="브랜드관^구달_베스트^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
														data-trk="/" tabindex="-1"><div class="prod-brand">
															<strong class="exclusive"></strong>
														</div> <span class="prod-name double-line">${sellbrandProducts.PRO_DISPL_NAME }</span>
														<div class="discount">
															<span class="origin">${ sellbrandProducts.PRO_PRICE }</span>
														</div>
														<div class="price">
															<strong class="total">30,960<span class="won">원</span></strong>
															<span class="oneday">오늘드림</span>
														</div>
														<div class="rating">
															<span class="point">4.7</span><span class="num">(999+)</span>
														</div>
														<div class="flags">
															<span class="flag sale">세일</span><span
																class="flag coupon">쿠폰</span>
														</div></a>
												</div>
												<div class="prod-func">
													<button type="button" class="favorite btn_zzim jeem"
														data-ref-goodsno="A000000162323" tabindex="-1">
														<span>찜하기</span>
													</button>
													<button type="button" class="cart"
														onclick="common.gf_regCart(this); return false;"
														data-goods-no="A000000162323" data-item-no="001"
														tabindex="-1">장바구니</button>
												</div>

											</div>
										</li>

										<li id="">
											<div class="prod">
												<a
													href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168705&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=2"
													name="BrandA001436_Best" class="thumb goodsList"
													data-ref-goodsno="A000000168705"
													data-ref-dispcatno="9000002" data-ref-itemno="001"
													data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++"
													data-trk="/" tabindex="-1"
													onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168705&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;14&quot;);"><img
													src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016870522ko.jpg?l=ko"
													alt="[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++"
													class="pic-thumb" onerror="common.errorImg(this);"><span
													class="flag-badge best">베스트</span></a>
												<div class="prod-info"
													onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168705&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;14&quot;);">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168705&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=2"
														name="BrandA001436_Best" class="goodsList"
														data-ref-goodsno="A000000168705"
														data-ref-dispcatno="9000002" data-ref-itemno="001"
														data-attr="브랜드관^구달_베스트^[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++"
														data-trk="/" tabindex="-1"><div class="prod-brand">
															<strong class="exclusive"></strong>
														</div> <span class="prod-name double-line">[1+1기획] 구달 맑은
															어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++</span>
														<div class="price">
															<strong class="total">18,000<span class="won">원</span></strong>
															<span class="oneday">오늘드림</span>
														</div>
														<div class="rating">
															<span class="point">4.8</span><span class="num">(999+)</span>
														</div>
														<div class="flags blank"></div></a>
												</div>
												<div class="prod-func">
													<button type="button" class="favorite btn_zzim jeem"
														data-ref-goodsno="A000000168705" tabindex="-1">
														<span>찜하기</span>
													</button>
													<button type="button" class="cart"
														onclick="common.gf_regCart(this); return false;"
														data-goods-no="A000000168705" data-item-no="001"
														tabindex="-1">장바구니</button>
												</div>

											</div>
										</li>
										<li id="">
											<div class="prod">
												<a
													href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182780&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=3"
													name="BrandA001436_Best" class="thumb goodsList"
													data-ref-goodsno="A000000182780"
													data-ref-dispcatno="9000002" data-ref-itemno="001"
													data-attr="브랜드관^구달_베스트^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++"
													data-trk="/" tabindex="-1"
													onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;15&quot;);"><img
													src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018278013ko.jpg?l=ko"
													alt="[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++"
													class="pic-thumb" onerror="common.errorImg(this);"><span
													class="flag-badge best">베스트</span></a>
												<div class="prod-info"
													onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;15&quot;);">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000182780&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=3"
														name="BrandA001436_Best" class="goodsList"
														data-ref-goodsno="A000000182780"
														data-ref-dispcatno="9000002" data-ref-itemno="001"
														data-attr="브랜드관^구달_베스트^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++"
														data-trk="/" tabindex="-1"><div class="prod-brand">
															<strong class="exclusive"></strong>
														</div> <span class="prod-name double-line">[1+1 기획] 구달 맑은
															어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++</span>
														<div class="discount">
															<span class="origin">20,000원</span>
														</div>
														<div class="price">
															<strong class="total">16,560<span class="won">원</span></strong>
															<span class="oneday">오늘드림</span>
														</div>
														<div class="rating">
															<span class="point">4.8</span><span class="num">(999+)</span>
														</div>
														<div class="flags">
															<span class="flag sale">세일</span><span
																class="flag coupon">쿠폰</span>
														</div></a>
												</div>
												<div class="prod-func">
													<button type="button" class="favorite btn_zzim jeem"
														data-ref-goodsno="A000000182780" tabindex="-1">
														<span>찜하기</span>
													</button>
													<button type="button" class="cart"
														onclick="common.gf_regCart(this); return false;"
														data-goods-no="A000000182780" data-item-no="001"
														tabindex="-1">장바구니</button>
												</div>

											</div>
										</li>
										<li id="">
											<div class="prod">
												<a
													href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189175&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=4"
													name="BrandA001436_Best" class="thumb goodsList"
													data-ref-goodsno="A000000189175"
													data-ref-dispcatno="9000002" data-ref-itemno="001"
													data-attr="브랜드관^구달_베스트^[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획"
													data-trk="/" tabindex="-1"
													onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189175&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;16&quot;);"><img
													src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018917508ko.jpg?l=ko"
													alt="[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획"
													class="pic-thumb" onerror="common.errorImg(this);"><span
													class="flag-badge best">베스트</span></a>
												<div class="prod-info"
													onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189175&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_베스트&quot;, &quot;16&quot;);">
													<a
														href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000189175&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_Best&amp;t_page=브랜드관&amp;t_click=베스트_상품상세&amp;t_number=4"
														name="BrandA001436_Best" class="goodsList"
														data-ref-goodsno="A000000189175"
														data-ref-dispcatno="9000002" data-ref-itemno="001"
														data-attr="브랜드관^구달_베스트^[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획"
														data-trk="/" tabindex="-1"><div class="prod-brand">
															<strong class="exclusive"></strong>
														</div> <span class="prod-name double-line">[NEW] 구달 청귤
															비타C 잡티케어 패드 70매+70매 리필기획</span>
														<div class="discount">
															<span class="origin">38,000원</span>
														</div>
														<div class="price">
															<strong class="total">26,600<span class="won">원</span></strong>
															<span class="oneday">오늘드림</span>
														</div>
														<div class="rating">
															<span class="point">4.7</span><span class="num">(999+)</span>
														</div>
														<div class="flags">
															<span class="flag coupon">쿠폰</span>
														</div></a>
												</div>
												<div class="prod-func">
													<button type="button" class="favorite btn_zzim jeem"
														data-ref-goodsno="A000000189175" tabindex="-1">
														<span>찜하기</span>
													</button>
													<button type="button" class="cart"
														onclick="common.gf_regCart(this); return false;"
														data-goods-no="A000000189175" data-item-no="001"
														tabindex="-1">장바구니</button>
												</div>

											</div>
										</li>


									</ul>
								</div>
						</div>

					</div>
					</c:forEach>
					<!-- item -->
					<!-- item -->


					<!-- 슬라이더끝 -->
				</div>
			</div>
			<c:forEach items="${ relist }" var="review" varStatus="status">
				<div class="tabCont reviewPanel" role="tabpanel" id="tab-panel3"
					aria-lebelledby="tabitem3">

					<div class="tabSwiperBox">
						<div class="tabSwiper slick-initialized slick-slider"
							id="reviewTabSwiper">
							<button type="button" data-role="none"
								class="slick-prev slick-arrow" aria-label="Previous"
								role="button" style="display: block;">Previous</button>

							<div aria-live="polite" class="slick-list draggable">
								<div class="slick-track" role="listbox"
									style="opacity: 1; width: 0px; transform: translate3d(0px, 0px, 0px);">
									<div class="reviewList slick-slide slick-cloned"
										data-slick-index="-1" aria-hidden="true" style="width: 0px;"
										tabindex="-1">
										<ul class="inner">


											<li>
												<p class="thum"
													onclick="javascript:common.link.moveGoodsDetail('A000000162318', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'10'}); ">
													<img src="${ review.pro_displ_src }"
														data-ref-goodsno="A000000162318"
														alt="구달 청귤 비타C 잡티케어 세럼 마스크 1매 "
														onerror="common.errorImg(this);"
														data-attr="브랜드관^구달_리뷰^구달 청귤 비타C 잡티케어 세럼 마스크 1매 "
														data-trk="/"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162318&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;1&quot;);">
												</p>
												<div class="reviewCont"
													onclick="javascript:display.brandShopDetail.amplitudeReview('A000000162318', '구달 청귤 비타C 잡티케어 세럼 마스크 1매 ', '10'); mypage.reviewerLounge.goReviewDetail('23251131', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'10'});">
													<div class="topinfo">
														<div class="review_stat type2">
															<span class="point pt5">${ review.rev_grade }</span>
														</div>
														<span class="like"><span class="icon">${review.rev_like }</span></span>
													</div>
													<dl class="retxt">
														<dd>${ review.rev_content }</dd>
													</dl>
													<a href="javascript:void(0);" class="btn_detail"
														onclick="javascript:display.brandShopDetail.amplitudeReview('A000000162318', '구달 청귤 비타C 잡티케어 세럼 마스크 1매 ', '10'); mypage.reviewerLounge.goReviewDetail('23251131', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'10'});"
														tabindex="-1">자세히 보기</a>
												</div>
											</li>

											<li></li>

											<li></li>

										</ul>
									</div>
									<div class="reviewList slick-slide slick-current slick-active"
										data-slick-index="0" aria-hidden="false" style="width: 0px;"
										tabindex="-1" role="option" aria-describedby="slick-slide30">
										<ul class="inner">


											<li>
												<p class="thum"
													onclick="javascript:common.link.moveGoodsDetail('A000000168705', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'1'}); ">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016870522ko.jpg?l=ko"
														data-ref-goodsno="A000000168705"
														alt="[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++"
														onerror="common.errorImg(this);"
														data-attr="브랜드관^구달_리뷰^[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++"
														data-trk="/"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168705&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;2&quot;);">
												</p>
												<div class="reviewCont"
													onclick="javascript:display.brandShopDetail.amplitudeReview('A000000168705', '[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++', '1'); mypage.reviewerLounge.goReviewDetail('23033813', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'1'});">
													<div class="topinfo">
														<div class="review_stat type2">
															<span class="point pt5">5점</span>
														</div>
														<span class="like"><span class="icon">33</span></span>
													</div>
													<dl class="retxt">
														<dd>💬자칭/타칭 선크림 처돌이인 나 - ! 이 제품 후기가 꽤 좋다는 것을 알고 있었는데,
															이미 너무 많아서 사볼 엄두가 안났음,,,, 내 최애 선크림인 엠디스픽 선크림을 다 쓴 김에 한번
															구매해봄 ! 일단 [당분간 정착할 예정]이라는 결론부터 말하고 시작 ~ ➕요즘 핫한 라운드랩 자작나무
															선크림, 아떼 만큼 발림성 좋은 유기자차 ➕진정 성분 들어있어 자극적이지도 않고 나는 눈시림도 괜찮음
															💛아떼는 자극이 있었는데 이 제품 자극 못느꼈고, 💙라운드랩은 흡수 후 약간의 유분이 남았는데 이
															제품은 좀 더 깔끔하게 흡수됨 💚이번에 해외여행가면서 동생은 식물나라 산소수 선젤로션, 나는 구달
															선크림 사용했는데, 내가 훨씬 덜 탐,,, 둘다 50+에 PA++++로 동일한데도 불구하고,,,,
															위에서 비교한 선크림 3종과 구달 선크림까지 전부 [한국콜마]라는 같은 곳에서 제조된 거라 전반적인
															사용감은 비슷하나, 개인적으로 단점이 안보였던 구달로 정착 예정 ! 엠디스픽 선크림과 거의 똑같은데
															올영 입점으로 접근성 좋고 할인도 되는 구달로 정착해야지 ! ✨ 늘 가방에 넣어놓고 다니면서 자주
															발랐더니 한달도 안되어서 한 통 끝 ! 도움이 되셨다면, 도움이 돼요(👍🏻) 한번만 눌러주세요 🤍</dd>
													</dl>
													<a href="javascript:void(0);" class="btn_detail"
														onclick="javascript:display.brandShopDetail.amplitudeReview('A000000168705', '[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++', '1'); mypage.reviewerLounge.goReviewDetail('23033813', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'1'});"
														tabindex="0">자세히 보기</a>
												</div>
											</li>

											<li>
												<p class="thum"
													onclick="javascript:common.link.moveGoodsDetail('A000000162323', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'2'}); ">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016232329ko.jpg?l=ko"
														data-ref-goodsno="A000000162323"
														alt="[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
														onerror="common.errorImg(this);"
														data-attr="브랜드관^구달_리뷰^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
														data-trk="/"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;3&quot;);">
												</p>
												<div class="reviewCont"
													onclick="javascript:display.brandShopDetail.amplitudeReview('A000000162323', '[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획', '2'); mypage.reviewerLounge.goReviewDetail('23102015', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'2'});">
													<div class="topinfo">
														<div class="review_stat type2">
															<span class="point pt5">5점</span>
														</div>
														<span class="like"><span class="icon">24</span></span>
													</div>
													<dl class="retxt">
														<dd>5⭐️/5 이 세럼은 필수품입니다! 🍋 지난 1년간 매일 아침 종교적으로 바르고
															있습니다. 이 세럼 덕분에, 제 피부는 항상 빛나고, 피곤하고 스트레스를 받을 때도 결코 칙칙해 보이지
															않습니다! 🍋 이 세럼은 흉터와 흑점 제거에도 많은 도움을 주며, 사용을 시작한 후 피부 톤이 훨씬
															균일해졌다는 것을 알게 되었습니다! 🍋 질감은 제가 항상 세럼에서 찾는 텍스처입니다: 두껍고 약간
															끈적거려서 이 세럼을 바르면 하루 종일 제 피부를 보호해주는 장벽이 생기는 것처럼 느껴집니다. 🍋 제
															피부가 매우 건조하고, 이 세럼은 피부에 기름기를 남기지 않고 완벽하게 흡수됩니다! 🍋 이 세럼의
															귤냄새가 너무 좋아요! 상쾌한 아침향으로 제격입니다 :) 이건 절대 포기하지 않을 제품이에요, 찐짜 제
															피부를 바뀌었어요 🥰</dd>
													</dl>
													<a href="javascript:void(0);" class="btn_detail"
														onclick="javascript:display.brandShopDetail.amplitudeReview('A000000162323', '[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획', '2'); mypage.reviewerLounge.goReviewDetail('23102015', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'2'});"
														tabindex="0">자세히 보기</a>
												</div>
											</li>

											<li>
												<p class="thum"
													onclick="javascript:common.link.moveGoodsDetail('A000000183371', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'3'}); ">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018337104ko.jpg?l=ko"
														data-ref-goodsno="A000000183371"
														alt="[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)"
														onerror="common.errorImg(this);"
														data-attr="브랜드관^구달_리뷰^[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)"
														data-trk="/"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183371&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;4&quot;);">
												</p>
												<div class="reviewCont"
													onclick="javascript:display.brandShopDetail.amplitudeReview('A000000183371', '[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)', '3'); mypage.reviewerLounge.goReviewDetail('22999186', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'3'});">
													<div class="topinfo">
														<div class="review_stat type2">
															<span class="point pt5">5점</span>
														</div>
														<span class="like"><span class="icon">16</span></span>
													</div>
													<dl class="retxt">
														<dd>자극 없이 순하고, 막 쓰고 3스킨하기 진짜 좋습니당 🤗 뭐 나는 것도 하나 없어요!</dd>
													</dl>
													<a href="javascript:void(0);" class="btn_detail"
														onclick="javascript:display.brandShopDetail.amplitudeReview('A000000183371', '[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)', '3'); mypage.reviewerLounge.goReviewDetail('22999186', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'3'});"
														tabindex="0">자세히 보기</a>
												</div>
											</li>


										</ul>
									</div>
									<div class="reviewList slick-slide" data-slick-index="1"
										aria-hidden="true" style="width: 0px;" tabindex="-1"
										role="option" aria-describedby="slick-slide31">
										<ul class="inner">


											<li>
												<p class="thum"
													onclick="javascript:common.link.moveGoodsDetail('A000000182780', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'4'}); ">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018278013ko.jpg?l=ko"
														data-ref-goodsno="A000000182780"
														alt="[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++"
														onerror="common.errorImg(this);"
														data-attr="브랜드관^구달_리뷰^[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++"
														data-trk="/"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000182780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;5&quot;);">
												</p>
												<div class="reviewCont"
													onclick="javascript:display.brandShopDetail.amplitudeReview('A000000182780', '[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++', '4'); mypage.reviewerLounge.goReviewDetail('23039309', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'4'});">
													<div class="topinfo">
														<div class="review_stat type2">
															<span class="point pt4">4점</span>
														</div>
														<span class="like"><span class="icon">10</span></span>
													</div>
													<dl class="retxt">
														<dd>조금 건조한 느낌 있어요 백탁 있구요 근데 이건 어느정도 잘 발라주면 덜하긴 하지만
															확실히 하얘지는건 있어요 글구 시간 지나고 낮잠 자고 그러면 엄청 건조해진다네여 ㅠㅠ 건조한거
															싫은분들은 비추천입니다</dd>
													</dl>
													<a href="javascript:void(0);" class="btn_detail"
														onclick="javascript:display.brandShopDetail.amplitudeReview('A000000182780', '[1+1 기획] 구달 맑은 어성초 진정 무기자차 선크림 50ml 1+1 기획 SPF50+ PA++++', '4'); mypage.reviewerLounge.goReviewDetail('23039309', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'4'});"
														tabindex="-1">자세히 보기</a>
												</div>
											</li>

											<li>
												<p class="thum"
													onclick="javascript:common.link.moveGoodsDetail('A000000171077', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'5'}); ">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017107701ko.jpg?l=ko"
														data-ref-goodsno="A000000171077" alt="구달 살구 콜라겐 탄력 마스크 1매"
														onerror="common.errorImg(this);"
														data-attr="브랜드관^구달_리뷰^구달 살구 콜라겐 탄력 마스크 1매" data-trk="/"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000171077&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;6&quot;);">
												</p>
												<div class="reviewCont"
													onclick="javascript:display.brandShopDetail.amplitudeReview('A000000171077', '구달 살구 콜라겐 탄력 마스크 1매', '5'); mypage.reviewerLounge.goReviewDetail('22881713', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'5'});">
													<div class="topinfo">
														<div class="review_stat type2">
															<span class="point pt3">3점</span>
														</div>
														<span class="like"><span class="icon">10</span></span>
													</div>
													<dl class="retxt">
														<dd>개인적으로 저랑은 안 맞았던 팩이에요 뭐가 올라오거나 한 것은 아니지만 올리면 얼굴이
															따가워서 금방 뗐습니다 개인 피부마다 차이가 있으니 다른 분들은 잘 맞을 수 있지만 저는 안 맞아서
															아쉬웠어요</dd>
													</dl>
													<a href="javascript:void(0);" class="btn_detail"
														onclick="javascript:display.brandShopDetail.amplitudeReview('A000000171077', '구달 살구 콜라겐 탄력 마스크 1매', '5'); mypage.reviewerLounge.goReviewDetail('22881713', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'5'});"
														tabindex="-1">자세히 보기</a>
												</div>
											</li>

											<li>
												<p class="thum"
													onclick="javascript:common.link.moveGoodsDetail('A000000187780', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'6'}); ">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018778005ko.jpg?l=ko"
														data-ref-goodsno="A000000187780"
														alt="[단독기획] 구달 청귤 비타C 수분 아이패치 60매 (+60매 더블증정 단독기획)"
														onerror="common.errorImg(this);"
														data-attr="브랜드관^구달_리뷰^[단독기획] 구달 청귤 비타C 수분 아이패치 60매 (+60매 더블증정 단독기획)"
														data-trk="/"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000187780&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;7&quot;);">
												</p>
												<div class="reviewCont"
													onclick="javascript:display.brandShopDetail.amplitudeReview('A000000187780', '[단독기획] 구달 청귤 비타C 수분 아이패치 60매 (+60매 더블증정 단독기획)', '6'); mypage.reviewerLounge.goReviewDetail('22915372', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'6'});">
													<div class="topinfo">
														<div class="review_stat type2">
															<span class="point pt5">5점</span>
														</div>
														<span class="like"><span class="icon">8</span></span>
													</div>
													<dl class="retxt">
														<dd>써보고 좋아서 엄마랑 하나씩 가지려고 구매했어요 할인해서 좋아용</dd>
													</dl>
													<a href="javascript:void(0);" class="btn_detail"
														onclick="javascript:display.brandShopDetail.amplitudeReview('A000000187780', '[단독기획] 구달 청귤 비타C 수분 아이패치 60매 (+60매 더블증정 단독기획)', '6'); mypage.reviewerLounge.goReviewDetail('22915372', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'6'});"
														tabindex="-1">자세히 보기</a>
												</div>
											</li>


										</ul>
									</div>
									<div class="reviewList slick-slide" data-slick-index="2"
										aria-hidden="true" style="width: 0px;" tabindex="-1"
										role="option" aria-describedby="slick-slide32">
										<ul class="inner">


											<li>
												<p class="thum"
													onclick="javascript:common.link.moveGoodsDetail('A000000190110', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'7'}); ">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0019/A00000019011007ko.jpg?l=ko"
														data-ref-goodsno="A000000190110"
														alt="[단독기획]구달 흑당근 비타A 레티놀 탄력 크림 50ml 기획 (+크림 15ml*2ea)"
														onerror="common.errorImg(this);"
														data-attr="브랜드관^구달_리뷰^[단독기획]구달 흑당근 비타A 레티놀 탄력 크림 50ml 기획 (+크림 15ml*2ea)"
														data-trk="/"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190110&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;8&quot;);">
												</p>
												<div class="reviewCont"
													onclick="javascript:display.brandShopDetail.amplitudeReview('A000000190110', '[단독기획]구달 흑당근 비타A 레티놀 탄력 크림 50ml 기획 (+크림 15ml*2ea)', '7'); mypage.reviewerLounge.goReviewDetail('23024154', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'7'});">
													<div class="topinfo">
														<div class="review_stat type2">
															<span class="point pt5">5점</span>
														</div>
														<span class="like"><span class="icon">6</span></span>
													</div>
													<dl class="retxt">
														<dd>흑당근 앰플이랑 크림 저녁에 함께 사용중인데 쫀쫀하고 좋네요</dd>
													</dl>
													<a href="javascript:void(0);" class="btn_detail"
														onclick="javascript:display.brandShopDetail.amplitudeReview('A000000190110', '[단독기획]구달 흑당근 비타A 레티놀 탄력 크림 50ml 기획 (+크림 15ml*2ea)', '7'); mypage.reviewerLounge.goReviewDetail('23024154', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'7'});"
														tabindex="-1">자세히 보기</a>
												</div>
											</li>

											<li>
												<p class="thum"
													onclick="javascript:common.link.moveGoodsDetail('A000000189175', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'8'}); ">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018917508ko.jpg?l=ko"
														data-ref-goodsno="A000000189175"
														alt="[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획"
														onerror="common.errorImg(this);"
														data-attr="브랜드관^구달_리뷰^[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획"
														data-trk="/"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000189175&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;9&quot;);">
												</p>
												<div class="reviewCont"
													onclick="javascript:display.brandShopDetail.amplitudeReview('A000000189175', '[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획', '8'); mypage.reviewerLounge.goReviewDetail('22890557', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'8'});">
													<div class="topinfo">
														<div class="review_stat type2">
															<span class="point pt4">4점</span>
														</div>
														<span class="like"><span class="icon">6</span></span>
													</div>
													<dl class="retxt">
														<dd>제 기억으로 토너패드를 입문하게 해준 게 구달 청귤패드인데요, 닦토로 쓰기에 정말
															좋았지만 나중에 성분을 볼줄 알게 되니 청귤추출물 말고는 미백 유효성분 없는 걸 알게되고 실망했던
															제품이에요. 근데! 원단도 닦토 팩토 다 가능할 것처럼 바뀌고, 나이아신아마이드도 추가돼서
															구매해봤어요. 매장에서 손등 테스트 했는데 원단이 신세계였어요! 반투명해서 붙이기도 괜찮은 것 같은데
															힘있어서 닦기도 굿… 근데 실상은 좀 다르네요. 분명히 원단에 에센스 흥건하게 적셔있는데… 닦토 한 번
															하면 붙일 정도로 촉촉하진 않아서 닦토 후 붙이긴 애매해요ㅋㅋㅠ 토너팩을 먼저 하고 닦토해야 할 것
															같아요. 근데 그러면 팩 안붙인 곳은 건조하자나요ㅠ 하지만 동시에 못한다는 거지, 둘 다 어느정도
															좋아요~~ 물론 흐물흐물하게 붙는 팩토 전용은 아니라서 닦토로써 더 좋긴 합니다. 근데ㅠ 실링 제발
															바꿔주세요… 두꺼운 실링 필름이 붙어있고, 그 위에 반은 떠있는 비닐 필름을 두어서 비닐을 당기면
															실링이 뜯기는 방식인데요, 비닐을 어떻게 잡아도 비닐만 뜯겨서 실링 뚫고 뜯다가 손 베어버렸어요… 사실
															매장에서도 테스터 개봉 안 돼있길래 뜯으려다 포기했는데…!!!</dd>
													</dl>
													<a href="javascript:void(0);" class="btn_detail"
														onclick="javascript:display.brandShopDetail.amplitudeReview('A000000189175', '[NEW] 구달 청귤 비타C 잡티케어 패드 70매+70매 리필기획', '8'); mypage.reviewerLounge.goReviewDetail('22890557', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'8'});"
														tabindex="-1">자세히 보기</a>
												</div>
											</li>

											<li>
												<p class="thum"
													onclick="javascript:common.link.moveGoodsDetail('A000000190108', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'9'}); ">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0019/A00000019010811ko.jpg?l=ko"
														data-ref-goodsno="A000000190108"
														alt="[재유PICK/단독기획]구달 흑당근 비타A 레티놀 탄력 앰플 30ml 기획 (+앰플 9ml*2ea)"
														onerror="common.errorImg(this);"
														data-attr="브랜드관^구달_리뷰^[재유PICK/단독기획]구달 흑당근 비타A 레티놀 탄력 앰플 30ml 기획 (+앰플 9ml*2ea)"
														data-trk="/"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000190108&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;10&quot;);">
												</p>
												<div class="reviewCont"
													onclick="javascript:display.brandShopDetail.amplitudeReview('A000000190108', '[재유PICK/단독기획]구달 흑당근 비타A 레티놀 탄력 앰플 30ml 기획 (+앰플 9ml*2ea)', '9'); mypage.reviewerLounge.goReviewDetail('22776824', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'9'});">
													<div class="topinfo">
														<div class="review_stat type2">
															<span class="point pt5">5점</span>
														</div>
														<span class="like"><span class="icon">6</span></span>
													</div>
													<dl class="retxt">
														<dd>다른 레티놀에 비해 순하긴 한 것 같아요. 타사 유명한 레티놀 제품을 사용했을 때 좋다.
															잘 맞는다. 괜찮다. 이런 느낌은 안 들었어서 이번에도 사용하기가 좀 무서웠어요. 근데 3일동안 밤에만
															사용했는데 생각보다 자극이 된다고 느껴지진 않았어요. 이거 쓰고 피부 결이 좋아진 것 같은데 지금은
															피부가 좀 예민해져서 잠시 중단했습니다.</dd>
													</dl>
													<a href="javascript:void(0);" class="btn_detail"
														onclick="javascript:display.brandShopDetail.amplitudeReview('A000000190108', '[재유PICK/단독기획]구달 흑당근 비타A 레티놀 탄력 앰플 30ml 기획 (+앰플 9ml*2ea)', '9'); mypage.reviewerLounge.goReviewDetail('22776824', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'9'});"
														tabindex="-1">자세히 보기</a>
												</div>
											</li>


										</ul>
									</div>
									<div class="reviewList slick-slide" data-slick-index="3"
										aria-hidden="true" style="width: 0px;" tabindex="-1"
										role="option" aria-describedby="slick-slide33">
										<ul class="inner">


											<li>
												<p class="thum"
													onclick="javascript:common.link.moveGoodsDetail('A000000162318', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'10'}); ">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016231805ko.jpg?l=ko"
														data-ref-goodsno="A000000162318"
														alt="구달 청귤 비타C 잡티케어 세럼 마스크 1매 "
														onerror="common.errorImg(this);"
														data-attr="브랜드관^구달_리뷰^구달 청귤 비타C 잡티케어 세럼 마스크 1매 "
														data-trk="/"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162318&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;11&quot;);">
												</p>
												<div class="reviewCont"
													onclick="javascript:display.brandShopDetail.amplitudeReview('A000000162318', '구달 청귤 비타C 잡티케어 세럼 마스크 1매 ', '10'); mypage.reviewerLounge.goReviewDetail('23251131', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'10'});">
													<div class="topinfo">
														<div class="review_stat type2">
															<span class="point pt5">5점</span>
														</div>
														<span class="like"><span class="icon">4</span></span>
													</div>
													<dl class="retxt">
														<dd>비타민c팩이라 하고나면 피부가 밝아보입니다. 시트팩 밀착력도 좋습니다</dd>
													</dl>
													<a href="javascript:void(0);" class="btn_detail"
														onclick="javascript:display.brandShopDetail.amplitudeReview('A000000162318', '구달 청귤 비타C 잡티케어 세럼 마스크 1매 ', '10'); mypage.reviewerLounge.goReviewDetail('23251131', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'10'});"
														tabindex="-1">자세히 보기</a>
												</div>
											</li>

											<li></li>

											<li></li>

										</ul>
									</div>
									<div class="reviewList slick-slide slick-cloned"
										data-slick-index="4" aria-hidden="true" style="width: 0px;"
										tabindex="-1">
										<ul class="inner">


											<li>
												<p class="thum"
													onclick="javascript:common.link.moveGoodsDetail('A000000168705', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'1'}); ">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016870522ko.jpg?l=ko"
														data-ref-goodsno="A000000168705"
														alt="[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++"
														onerror="common.errorImg(this);"
														data-attr="브랜드관^구달_리뷰^[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++"
														data-trk="/"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168705&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;12&quot;);">
												</p>
												<div class="reviewCont"
													onclick="javascript:display.brandShopDetail.amplitudeReview('A000000168705', '[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++', '1'); mypage.reviewerLounge.goReviewDetail('23033813', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'1'});">
													<div class="topinfo">
														<div class="review_stat type2">
															<span class="point pt5">5점</span>
														</div>
														<span class="like"><span class="icon">33</span></span>
													</div>
													<dl class="retxt">
														<dd>💬자칭/타칭 선크림 처돌이인 나 - ! 이 제품 후기가 꽤 좋다는 것을 알고 있었는데,
															이미 너무 많아서 사볼 엄두가 안났음,,,, 내 최애 선크림인 엠디스픽 선크림을 다 쓴 김에 한번
															구매해봄 ! 일단 [당분간 정착할 예정]이라는 결론부터 말하고 시작 ~ ➕요즘 핫한 라운드랩 자작나무
															선크림, 아떼 만큼 발림성 좋은 유기자차 ➕진정 성분 들어있어 자극적이지도 않고 나는 눈시림도 괜찮음
															💛아떼는 자극이 있었는데 이 제품 자극 못느꼈고, 💙라운드랩은 흡수 후 약간의 유분이 남았는데 이
															제품은 좀 더 깔끔하게 흡수됨 💚이번에 해외여행가면서 동생은 식물나라 산소수 선젤로션, 나는 구달
															선크림 사용했는데, 내가 훨씬 덜 탐,,, 둘다 50+에 PA++++로 동일한데도 불구하고,,,,
															위에서 비교한 선크림 3종과 구달 선크림까지 전부 [한국콜마]라는 같은 곳에서 제조된 거라 전반적인
															사용감은 비슷하나, 개인적으로 단점이 안보였던 구달로 정착 예정 ! 엠디스픽 선크림과 거의 똑같은데
															올영 입점으로 접근성 좋고 할인도 되는 구달로 정착해야지 ! ✨ 늘 가방에 넣어놓고 다니면서 자주
															발랐더니 한달도 안되어서 한 통 끝 ! 도움이 되셨다면, 도움이 돼요(👍🏻) 한번만 눌러주세요 🤍</dd>
													</dl>
													<a href="javascript:void(0);" class="btn_detail"
														onclick="javascript:display.brandShopDetail.amplitudeReview('A000000168705', '[1+1기획] 구달 맑은 어성초 진정 수분 선크림 50ml 1+1 기획 SPF50+ PA++++', '1'); mypage.reviewerLounge.goReviewDetail('23033813', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'1'});"
														tabindex="-1">자세히 보기</a>
												</div>
											</li>

											<li>
												<p class="thum"
													onclick="javascript:common.link.moveGoodsDetail('A000000162323', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'2'}); ">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016232329ko.jpg?l=ko"
														data-ref-goodsno="A000000162323"
														alt="[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
														onerror="common.errorImg(this);"
														data-attr="브랜드관^구달_리뷰^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
														data-trk="/"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;13&quot;);">
												</p>
												<div class="reviewCont"
													onclick="javascript:display.brandShopDetail.amplitudeReview('A000000162323', '[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획', '2'); mypage.reviewerLounge.goReviewDetail('23102015', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'2'});">
													<div class="topinfo">
														<div class="review_stat type2">
															<span class="point pt5">5점</span>
														</div>
														<span class="like"><span class="icon">24</span></span>
													</div>
													<dl class="retxt">
														<dd>5⭐️/5 이 세럼은 필수품입니다! 🍋 지난 1년간 매일 아침 종교적으로 바르고
															있습니다. 이 세럼 덕분에, 제 피부는 항상 빛나고, 피곤하고 스트레스를 받을 때도 결코 칙칙해 보이지
															않습니다! 🍋 이 세럼은 흉터와 흑점 제거에도 많은 도움을 주며, 사용을 시작한 후 피부 톤이 훨씬
															균일해졌다는 것을 알게 되었습니다! 🍋 질감은 제가 항상 세럼에서 찾는 텍스처입니다: 두껍고 약간
															끈적거려서 이 세럼을 바르면 하루 종일 제 피부를 보호해주는 장벽이 생기는 것처럼 느껴집니다. 🍋 제
															피부가 매우 건조하고, 이 세럼은 피부에 기름기를 남기지 않고 완벽하게 흡수됩니다! 🍋 이 세럼의
															귤냄새가 너무 좋아요! 상쾌한 아침향으로 제격입니다 :) 이건 절대 포기하지 않을 제품이에요, 찐짜 제
															피부를 바뀌었어요 🥰</dd>
													</dl>
													<a href="javascript:void(0);" class="btn_detail"
														onclick="javascript:display.brandShopDetail.amplitudeReview('A000000162323', '[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획', '2'); mypage.reviewerLounge.goReviewDetail('23102015', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'2'});"
														tabindex="-1">자세히 보기</a>
												</div>
											</li>

											<li>
												<p class="thum"
													onclick="javascript:common.link.moveGoodsDetail('A000000183371', '', 'BrandA001436_Review', {t_page:'브랜드관',t_click:'리뷰_상품상세', t_number:'3'}); ">
													<img
														src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0018/A00000018337104ko.jpg?l=ko"
														data-ref-goodsno="A000000183371"
														alt="[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)"
														onerror="common.errorImg(this);"
														data-attr="브랜드관^구달_리뷰^[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)"
														data-trk="/"
														onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000183371&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_리뷰&quot;, &quot;14&quot;);">
												</p>
												<div class="reviewCont"
													onclick="javascript:display.brandShopDetail.amplitudeReview('A000000183371', '[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)', '3'); mypage.reviewerLounge.goReviewDetail('22999186', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'3'});">
													<div class="topinfo">
														<div class="review_stat type2">
															<span class="point pt5">5점</span>
														</div>
														<span class="like"><span class="icon">16</span></span>
													</div>
													<dl class="retxt">
														<dd>자극 없이 순하고, 막 쓰고 3스킨하기 진짜 좋습니당 🤗 뭐 나는 것도 하나 없어요!</dd>
													</dl>
													<a href="javascript:void(0);" class="btn_detail"
														onclick="javascript:display.brandShopDetail.amplitudeReview('A000000183371', '[1+1기획] 구달 맑은 어성초 진정 수분 토너 300ml 기획(+300ml 리필)', '3'); mypage.reviewerLounge.goReviewDetail('22999186', {t_page:'브랜드관',t_click:'리뷰_리뷰상세보기',t_number:'3'});"
														tabindex="-1">자세히 보기</a>
												</div>
											</li>


										</ul>
									</div>
								</div>
							</div>

							<button type="button" data-role="none"
								class="slick-next slick-arrow" aria-label="Next" role="button"
								style="display: block;">Next</button>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<!--tabContainer  -->
	</div>
	<!-- brandBox line -->
	<div class="brandBox" id="sub_gbn_cate">
		<div class="head">
			<h3 class="tit" param="구달">
				구달 전체상품 (<span id="totCnt">29</span>개)
			</h3>
		</div>
		<ul class="cate_list_box">
			<li class="first on"><a href="javascript:;"
				data-ref-dispcatno="cate_01">전체</a></li>
			<li><a href="javascript:;" data-ref-dispcatno="cate_02">스킨케어</a></li>
			<li><a href="javascript:;" data-ref-dispcatno="cate_03">마스크팩</a></li>
			<li><a href="javascript:;" data-ref-dispcatno="cate_04">선케어</a></li>
			<li class="disabled">&nbsp;</li>
			<!-- 2017-02-03 빈 태그일때 class=disabled 추가 -->

			<li class="disabled">&nbsp;</li>
			<!-- 2017-02-03 빈 태그일때 class=disabled 추가 -->
		</ul>

		<div class="cate_align_box mgT20">
			<div class="align_sort" id="alignPrdSort">
				<ul>
					<li class="on"><a href="javascript:;" data-sort="p">인기순</a></li>
					<li><a href="javascript:;" data-sort="n">신상품순</a></li>
					<li><a href="javascript:;" data-sort="s">판매순</a></li>
					<li><a href="javascript:;" data-sort="l">낮은 가격순</a></li>
					<li><a href="javascript:;" data-sort="d">할인율순</a></li>
				</ul>
			</div>

			<div class="count_sort tx_num">
				<span class="tx_view">VIEW</span>
				<ul>
					<li class=""><a href="javascript:;" title="24개씩 보기">24</a></li>
					<li><a href="javascript:;" title="36개씩 보기">36</a></li>
					<li><a href="javascript:;" title="48개씩 보기">48</a></li>
				</ul>
			</div>

			<div class="type_sort" id="div_type_sort">
				<button class="btn_thumb active">컬럼형식으로 보기</button>
				<button class="btn_list">리스트형식으로 보기</button>
			</div>
		</div>
		<div id="allGoodsList">
			<input type="hidden" id="strList" name="strList" value=""> <input
				type="hidden" id="lgcGoodsList" name="lgcGoodsList1" value="">
			<input type="hidden" id="idx" name="idx" value="1"> <input
				type="hidden" id="totCntFmt" name="totCntFmt" value="29"> <input
				type="hidden" id="goodsTrackingCd" name="goodsTrackingCd" value="">

			<ul class="prod-list goodsProd">
				<c:forEach items="${ jsonObject }" var="dto" varStatus="status">


					<li data-goods-idx="1">
						<div class="prod">
							<a
								href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=1"
								name="BrandA001436_PROD" class="thumb goodsList"
								data-ref-goodsno="A000000162323" data-ref-dispcatno="9000002"
								data-ref-itemno="001"
								data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획"
								onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;1&quot;);">
								<img src="${ dto.pro_displ_src }"
								alt="[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획" class="pic-thumb"
								onerror="common.errorImg(this);"> <span
								class="flag-badge best">베스트</span>
							</a>
							<div class="prod-info"
								onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000162323&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;브랜드관_구달_전체상품_전체&quot;, &quot;1&quot;);">
								<div class="prod-brand">
									<strong class="exclusive"></strong>
								</div>
								<a
									href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162323&amp;dispCatNo=9000002&amp;trackingCd=BrandA001436_PROD&amp;t_page=브랜드관&amp;t_click=전체상품_전체_상품상세&amp;t_number=1"
									class="goodsList" data-ref-goodsno="A000000162323"
									data-ref-dispcatno="9000002" data-ref-itemno="001"
									data-attr="브랜드관^구달_전체상품_전체^[한정기획] 구달 청귤 비타C 잡티케어 세럼 50ml+31ml 증정 기획">
									<span class="prod-name double-line">${dto.pro_displ_name }</span>
								</a>
								<div class="price-info">
									<div class="discount">
										<span class="origin"><fmt:formatNumber
												value="${dto.pro_price }" groupingUsed="true" />원</span>
									</div>
									<div class="price">
										<strong class="total">30,960<span class="won">원</span></strong>
										<span class="oneday">오늘드림</span>
									</div>
									<div class="rating">
										<span class="point">4.7</span><span class="num">(999+)</span>
									</div>
									<div class="rating_type">
										<div class="rating_point star5">
											<span class="oyblind">별점 5점 만점에 4.7점</span>
										</div>
										<span>(999+)</span>
									</div>
								</div>
								<div class="flags">
									<span class="flag sale">세일</span><span class="flag coupon">쿠폰</span>
								</div>
							</div>
							<div class="prod-func">
								<button type="button" class="favorite"
									data-ref-goodsno="A000000162323">
									<span>찜하기</span>
								</button>
								<button type="button" class="cart"
									onclick="common.gf_regCart(this); return false;"
									data-goods-no="A000000162323" data-item-no="001">
									<span>장바구니</span>
								</button>
							</div>
						</div>
					</li>


				</c:forEach>
			</ul>
			<div class="pageing">
				<strong title="현재 페이지">1</strong> <a href="javascript:void(0);"
					data-page-no="2">2</a>

			</div>
		</div>
	</div>
	</div>
	</div>


	<form id="initForm" name="initForm" method="get">
		<input type="hidden" id="dispCatNo" name="dispCatNo"
			value="90000020137"> <input type="hidden" id="fltDispCatNo"
			name="fltDispCatNo" value=""> <input type="hidden"
			id="prdSort" name="prdSort" value="01"> <input type="hidden"
			id="pageIdx" name="pageIdx" value="1"> <input type="hidden"
			id="rowsPerPage" name="rowsPerPage" value="24"> <input
			type="hidden" id="onlBrndCd" name="onlBrndCd" value="A001436">
		<input type="hidden" id="onlBrndNm" name="onlBrndNm" value="구달">
		<input type="hidden" id="trackingCd" name="trackingCd" value="">
	</form>

	<div class="laytoast" id="brandOff" style="display: none;">
		<div class="inner">
			<p class="txt_recom txt_01">
				브랜드<br> <em>좋아요</em>
			</p>
		</div>
	</div>
	<div class="laytoast on" id="brandOn" style="display: none;">
		<div class="inner">
			<p class="txt_recom txt_01">
				브랜드<br> <em>좋아요</em>
			</p>
		</div>
	</div>
	<!-- 브랜드 찜 확인 레이어 -->
	<div class="layerAlim brand zzimOn" style="display: none;">
		<!-- zzimOn / zzimOff -->
		<span class="icon"></span>
		<p>
			브랜드<strong>좋아요</strong>
		</p>
	</div>

	<div class="layerAlim brand zzimOff" style="display: none;">
		<!-- zzimOn / zzimOff -->
		<span class="icon"></span>
		<p>
			브랜드<strong>좋아요</strong>
		</p>
	</div>
	<!-- 브랜드 찜 확인 레이어 -->

	<!-- 찜 확인 레이어 -->
	<div class="layerAlim zzimOn wishPrd" style="display: none;">
		<span class="icon"></span>
		<p class="one">
			<strong>좋아요</strong>
		</p>
	</div>
	<!--// 찜 확인 레이어 -->

	<!-- 찜 취소 레이어 -->
	<div class="layerAlim zzimOff wishPrd" style="display: none;">
		<span class="icon"></span>
		<p class="one">
			<strong>좋아요</strong>
		</p>
	</div>
	<!--// 찜 취소 레이어 -->

	<!-- 2017-02-23 수정 : TOP 바로가기 버튼 추가 -->
	<div id="directTop">
		<button>
			<span></span>TOP
		</button>
	</div>
	<!--/ㅁ 2017-02-23 수정 : TOP 바로가기 버튼 추가 -->


	</div>
	<jsp:include page="/layout/footer.jsp"></jsp:include>
	
	
</body>





</html>