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
<link rel="stylesheet" href="/Black_OY/css/style.css">
<title>블랙올리브영 온라인몰</title>
</head>
<body>
<jsp:include page="/layout/head.jsp"></jsp:include>
<div id="Container">
        <div id="Contents">

            <!-- 상단 카테고리 history -->
            <div class="page_location">
                <a href="#" class="loc_home">홈</a>
                <ul class="loc_history">
                    <li>
                        <a href="#" class="cate_y" id="midCatNm">스킨케어</a>
                        <div class="history_cate_box" style="width: 242px;">
                            <ul>
                                <li data-ref-dispcatno="10000010001" data-ref-catarea="midCatArea"><a href="#"
                                        class="goods_category1  on  ">스킨케어</a></li>
                                <li data-ref-dispcatno="10000010009" data-ref-catarea="midCatArea"><a href="#"
                                        class="goods_category1  ">마스크팩</a></li>
                                <li data-ref-dispcatno="10000010010" data-ref-catarea="midCatArea"><a href="#"
                                        class="goods_category1  ">클렌징</a></li>
                                <li data-ref-dispcatno="10000010011" data-ref-catarea="midCatArea"><a href="#"
                                        class="goods_category1  ">선케어</a></li>
                                <li data-ref-dispcatno="10000010008" data-ref-catarea="midCatArea"><a href="#"
                                        class="goods_category1  ">더모 코스메틱</a></li>
                                <li data-ref-dispcatno="10000010002" data-ref-catarea="midCatArea"><a href="#"
                                        class="goods_category1  ">메이크업</a></li>
                                <li data-ref-dispcatno="10000010012" data-ref-catarea="midCatArea"><a href="#"
                                        class="goods_category1  ">네일</a></li>
                                <li data-ref-dispcatno="10000010003" data-ref-catarea="midCatArea"><a href="#"
                                        class="goods_category1  ">바디케어</a></li>
                                <li data-ref-dispcatno="10000010004" data-ref-catarea="midCatArea"><a href="#"
                                        class="goods_category1  ">헤어케어</a></li>
                                <li data-ref-dispcatno="10000010005" data-ref-catarea="midCatArea"><a href="#"
                                        class="goods_category1  ">향수/디퓨저</a></li>
                            </ul>
                            <ul>
                                <li data-ref-dispcatno="10000010006" data-ref-catarea="midCatArea"><a href="#"
                                        class="goods_category1  ">미용소품</a></li>
                                <li data-ref-dispcatno="10000010007" data-ref-catarea="midCatArea"><a href="#"
                                        class="goods_category1  ">남성</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#" class="cate_y" id="smlCatNm">에센스/크림</a>
                        <div class="history_cate_box" style="width: 122px;">
                            <ul>
                                <li data-ref-dispcatno="100000100010008" data-ref-catarea="smlCatArea"><a href="#"
                                        class="goods_category2  ">토너/로션/올인원</a></li>
                                <li data-ref-dispcatno="100000100010009" data-ref-catarea="smlCatArea"><a href="#"
                                        class="goods_category2  on  ">에센스/크림</a></li>
                                <li data-ref-dispcatno="100000100010010" data-ref-catarea="smlCatArea"><a href="#"
                                        class="goods_category2  ">미스트/오일</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#" class="cate_y" id="dtlCatNm">크림</a>
                        <div class="history_cate_box" style="width: 122px;">
                            <ul>
                                <li data-ref-uprdispcatno="100000100010009 " data-ref-dispcatno="1000001000100090001"
                                    data-ref-catarea="dtlCatArea"><a href="#" class="goods_category3 ">에센스/세럼</a></li>
                                <li data-ref-uprdispcatno="100000100010009 " data-ref-dispcatno="1000001000100090002"
                                    data-ref-catarea="dtlCatArea"><a href="#" class="goods_category3 on ">크림</a></li>
                                <li data-ref-uprdispcatno="100000100010009 " data-ref-dispcatno="1000001000100090003"
                                    data-ref-catarea="dtlCatArea"><a href="#" class="goods_category3 ">아이크림</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- //상단 카테고리 history -->

            <div class="prd_detail_box renew">
                <div class="left_area">
                    <div class="prd_img">
                        <img id="mainImg"
                            src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017506009ko.jpg?l=ko"
                            alt="상품명 이미지" onerror="common.errorImg(this);">
                        <input type="hidden" id="mainImgSize" value="550">
                        <!-- 20200526 상품개선 : 추가 / 발색비교 옵션 선택 시 옵션명 변경 및 관련 썸네일로 변경 -->
                        <div class="prd-option-name"><!-- 노출 시 is-active class 추가 -->
                            <span class="txt" id="goodstxt">03. 얼모스트 핑크</span>
                        </div>
                    </div>
                    <ul class="prd_thumb_list" id="prd_thumb_list">
                        <input type="hidden" id="snsImgUrl"
                            value="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017506009ko.jpg?l=ko">
                        <li class="sel"><a href="javascript:;"
                                data-img="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017506009ko.jpg?l=ko"><img
                                    src="https://image.oliveyoung.co.kr/uploads/images/goods/85/10/0000/0017/A00000017506009ko.jpg?l=ko"
                                    alt="썸네일이미지" onerror="common.errorImg(this);"></a></li>
                        <li class=""><a href="javascript:;"
                                data-img="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017506004ko.jpg?l=ko"><img
                                    src="https://image.oliveyoung.co.kr/uploads/images/goods/85/10/0000/0017/A00000017506004ko.jpg?l=ko"
                                    alt="썸네일이미지" onerror="common.errorImg(this);"></a></li>
                        <li class=""><a href="javascript:;"
                                data-img="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017506011ko.jpg?l=ko"><img
                                    src="https://image.oliveyoung.co.kr/uploads/images/goods/85/10/0000/0017/A00000017506011ko.jpg?l=ko"
                                    alt="썸네일이미지" onerror="common.errorImg(this);"></a></li>
                        <li class=""><a href="javascript:;"
                                data-img="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017506010ko.jpg?l=ko"><img
                                    src="https://image.oliveyoung.co.kr/uploads/images/goods/85/10/0000/0017/A00000017506010ko.jpg?l=ko"
                                    alt="썸네일이미지" onerror="common.errorImg(this);"></a></li>
                    </ul>
                    <!-- 202005 상품개선 : 위치 변경 및 마크업 변경 -->
                    <!-- 고객 만족도 및 공유, 재고확인 -->
                    <div class="prd_social_info">
                        <!-- 평점 및 리뷰 건수 추가 -->
                        <p id="repReview">
                            <strong>고객 리뷰</strong>
                            <span class="review_point">
                                <span class="point" style="width:98.0%">

                                </span>
                            </span>
                            <b>
                                4.9
                            </b>
                            <em>(216건)</em>
                        </p>
                        <!-- 위치 변경 <p><a href="#" class="btn_off_store" data-rel="layer" data-target="offlineStore">올리브영 오프라인 매장 재고확인</a></p>-->
                        <p>
                            <!-- 							<strong>공유하기</strong> -->
                            <a href="javascript:common.sns.doShare('kakaostory');"
                                class="link_social kakao goods_share_kakao">카카오톡 공유하기(새창)</a>
                            <a href="javascript:common.sns.doShare('facebook');"
                                class="link_social facebook goods_share_facebook">페이스북 공유하기(새창)</a>
                            <a href="javascript:common.sns.doShare('url');"
                                class="link_social url goods_share_url">URL공유하기</a>
                        </p>
                    </div>
                    <!--// 고객 만족도 및 공유, 재고확인 -->

                </div>
                <div class="right_area">
                    <div class="prd_info">
                        <p class="prd_brand">
                            <a href="#" id="moveBrandShop" class="pd_arrow_link">가히</a>
                        </p>
                        <p class="prd_name">가히 멀티밤 리필</p>
                        <!-- 202005 상품개선 : 추가 -->
                        <div class="price">
                            <span class="price-1">
                                <strike>25,000</strike>
                                <span>원</span>
                            </span>
                            <span class="price-2">
                                <strong>17,000</strong>
                                <span>원</span>
                            </span>
                            <button type="button" id="btnSaleOpen" class="btn_more">혜택 정보</button>
                            <div id="saleLayer" class="sale_list" style="display:none">
                                <p class="tit">혜택 정보</p>
                                <div class="detail">
                                    <div class="list">
                                        <div class="flex-item">
                                            <span class="label">판매가</span>
                                            <span class="price">25,000<em>원</em></span>
                                        </div>
                                        <div class="price_child">
                                            <div class="flex-item">
                                                <span class="label">세일
                                                    (23.11.01 ~ 23.12.30)</span>
                                                <span class="price">- 8,000<em>원</em></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="list">
                                        <div class="flex-item">
                                            <span class="label"><b>최적가</b></span>
                                            <span class="price total">17,000<em>원</em></span>
                                        </div>
                                    </div>
                                </div>
                                <button type="button" id="btnSaleClose" class="btn_close">레이어 닫기</button>
                            </div>
                        </div>
                        <p class="prd_flag" id="icon_area">
                            <span class="icon_flag sale">세일</span>
                            <!-- 기간계 상품, 브랜드 증정품만 아이콘 노출 -->
                            <span class="icon_flag gift" id="free_gift">증정</span>
                            <span class="icon_flag delivery" id="quick_yn">오늘드림</span>
                        </p>
                        <div class="viewArea" id="div_goodsViewNumArea" style="display:none;">
                            <span><span class="viewNum" id="goodsViewNum"></span>명이 보고있어요</span>
                        </div>
                        <!-- 프로 모션 쿠폰영역-->
                        <!-- 프로 모션 쿠폰영역-->
                        <!-- EP 쿠폰영역-->
                        <!-- EP 쿠폰영역-->
                        <div class="prd_more_info">
                            <div class="row">
                                <p class="tit">배송정보<a href="javascript:goods.detail.openDlexFullPop('20','1');"
                                        class="ico_info" style="margin:5px 0 0 7px">배송정보 레이어 열기</a></p>
                                <p></p>
                                <ul class="bl_list">
                                    <li>
                                        <span>일반배송</span>
                                        <div>
                                            2,500원
                                            ( 20,000 원 이상 무료배송 )
                                            <br><em>올리브영 배송 </em>
                                            <em>평균 3일 이내 배송</em>
                                            <!-- 												<b>무료배송</b>  -->
                                            <!-- 														 <br><b>업체배송</b> -->
                                            <!-- 															<em><b>합배송 불가</b></em> -->
                                            <!-- 															<em><b>합배송 불가</b></em> -->
                                        </div>
                                    </li>
                                    <li>
                                        <span>오늘드림</span>
                                        <div>
                                            2,500원 또는 5,000원
                                            <a href="javascript:goods.detail.todayDelivery.openQuickPopMidle('question');"
                                                class="ico_info">배송정보 안내 레이어열기</a>
                                        </div>
                                    </li>
                                    <!-- 202005 상품개선 : 오늘드림 빠름배송 -->
                                    <li class="liQuickAI" style="">
                                        <span class="tx_tit">
                                            오늘드림 빠름 배송 AI 예측
                                            <!-- 202005 상품개선 : 자세히 보기 위치 변경 -->
                                            <a href="javascript:goods.detail.todayDelivery.openQuickDeliAI();"
                                                class="ico_infoMore">자세히 보기</a>
                                        </span>
                                        <p class="tx_addre">
                                            <span>┖ </span><span class="quickUsrAddr">서울 강동구 풍성로 128 (성내동,
                                                성내동삼성아파트)</span> 기준
                                            <!-- 202005 상품개선 : tx_cont 위치 변경 -->
                                            <span class="tx_cont">
                                                <span class="span_dlvTitlNm">1~2시간 내</span> <span
                                                    class="span_maxDeliPer">60%</span>
                                            </span>
                                        </p>
                                    </li>
                                    <li>
                                        <span>픽업</span>
                                        <div>
                                            배송비 조건 없음
                                            <a href="javascript:goods.detail.todayDelivery.openPickupPop();"
                                                class="ico_info">픽업 안내 레이어열기</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="row">
                                <p class="tit">결제혜택</p>
                                <div class="txt_list">
                                    <p>THE CJ 카드 추가 10%할인 <a href="javascript:goods.detail.openCardFullPop();"
                                            class="ico_info">카드혜택가 안내 레이어 열기</a></p>
                                    <p>
                                        CJ ONE 포인트 <span class="color-5">BABY OLIVE</span>
                                        0.5% 적립 예상
                                        <a href="javascript:goods.detail.openCjonepntPop();" class="ico_info">CJ ONE 포인트
                                            예상적립 레이어 열기</a>
                                    </p>



                                </div>
                            </div>


                        </div>


                        <div class="option_add_area">

                            <div class="prd_cnt_box">
                                <div class="tit_area"><span>구매수량</span></div>
                                <div class="cont_area">
                                    <span class="option_cnt_box">
                                        <button class="btnCalc minus"
                                            onclick="goods.detail.cart.prevVal('A000000175060001','17000','1');">수량
                                            1감소</button>
                                        <input type="text" id="cartCnt_A000000175060001" name="cartCnt_A000000175060001"
                                            value="1" class="tx_num" title="구매수량">
                                        <button class="btnCalc plus"
                                            onclick="goods.detail.cart.nextVal('A000000175060001','17000','1');">수량
                                            1증가</button>
                                    </span>
                                </div>
                            </div>

                        </div>
                        <div class="prd_total_price">
                            <span class="tx_tit">상품금액 합계</span>
                            <input type="hidden" id="totalCnt" value="1" name="totalCnt">
                            <input type="hidden" id="totalPrc" value="17000" name="totalPrc">
                            <span class="tx_cont"><span class="tx_num" id="totalPrcTxt">17,000</span>원</span>

                        </div>

                        <!-- 20191213 s -->
                        <!-- today_dvs s -->
                        <div class="today_dv">
                            <div class="today_dvChk">
                                <input type="checkbox" id="deliveDay" name="qDelive" value="Y" class="o2oDeliveDay "
                                    data-attr="상품상세^오늘드림신청여부^오늘드림신청"><label for="deliveDay">오늘드림으로 받아 보시겠어요?</label>
                                <dl>
                                    <dd><a href="javascript:goods.detail.todayDelivery.openQuickPopMidle('question');"
                                            class="ico_info_view">오늘드림 안내 레이어열기</a></dd>
                                </dl>
                                <div class="input_nudge nudge_show" id="deliveNudge" style="">
                                    <div class="nudge_txt" id="quickNudge"><strong class="impY"><span>46</span>분
                                            <span>21</span>초</strong> 안에 주문하면 오후 <span>4</span>시 전 도착!</div>
                                </div>
                            </div>
                            <!-- //today_dvChk e -->

                            <div class="today_dvArea">
                                <div class="today_dvArea_inner">
                                    <a href="javascript:common.zipcodequick.pop.deliveryRegistFormOnlyRegist();"
                                        class="btn_noDv" style="display:none;">+ 배송지 추가</a>
                                    <a href="#" class="btn_todayDV">
                                        <dl>

                                        </dl>
                                    </a>
                                    <div class="todayDV_list">
                                        <ul>
                                        </ul>
                                    </div>
                                    <!-- //todayDV_list e -->
                                </div>
                                <!-- //today_dvArea_inner e -->
                            </div>
                            <!-- //today_dvArea e -->

                            <div class="today_dvChk" id="pikcupOnlyYn" style="display:none;">
                                <input type="checkbox" id="pickupDirectYn" name="pickupDirectYn" value="Y"
                                    data-attr="상품상세^매장픽업여부^매장픽업신청"><label for="pickupDirectYn">매장에서 픽업 하시겠어요?</label>
                                <dl>
                                    <dd><a href="javascript:goods.detail.todayDelivery.openQuickPopMidle('pickup');"
                                            class="ico_info_view">매장픽업 안내 레이어열기</a></dd>
                                </dl>
                                <div class="input_nudge" id="storePickNudge" style="display:none;">
                                    <div class="nudge_txt">
                                        배송비 허들없는 픽업을 이용해 보세요!
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- //today_dv e -->
                        <!-- 20191213 e -->

                        <div class="prd_btn_area new-style type1">
                            <button class="btnBasket  goods_cart"
                                onclick="javascript:common.popLayer.todayDelivery.openTodayDeliveryNotice('goodsdetail.cart');"
                                data-attr="상품상세^주문유형^장바구니">장바구니</button>
                            <!-- <button class="btnBuy goods_buy" id="cartBtn" onClick="javascript:goods.detail.bindBtnBuy();">구매하기</button> -->

                            <button class="btnBuy goods_buy" id="cartBtn"
                                onclick="javascript:common.popLayer.todayDelivery.openTodayDeliveryNotice('goodsdetail.order');"
                                data-attr="상품상세^주문유형^바로구매">바로구매</button>
                            <button class="btnGift goods_gift"
                                onclick="javascript:common.popLayer.todayDelivery.openTodayDeliveryNotice('goodsdetail.gift');"
                                data-attr="상품상세^주문유형^선물하기">선물하기</button>
                            <button class="btnSoldout dupItem goods_cart" style="display: none;"
                                onclick="javascript:;">일시품절</button>
                            <button class="goods_buy btnReStock" style="display: none;" onclick="javascript:;"
                                data-attr="상품상세^재입고알림신청^가히 멀티밤 리필_클릭" data-trk="/Cat100000100010009_Small">재입고
                                알림신청</button>
                            <button class="btnZzim  goods_wish" data-ref-goodsno="A000000175060"
                                data-attr="상품상세^상품좋아요^가히 멀티밤 리필_1">찜하기전</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 202005 상품상세 개선 : 증정품 마크업 수정 -->
            <div class="prd_free_gift" id="giftInfo">
                <p class="tit">증정품 안내</p>
                <div class="free_gift">
                    <div class="inner">
                        <div class="info">
                            <div class="tarea soldout">
                                <b>[소진완료]</b>

                                <!-- 50:브랜드S -->

                                <!-- 수량S -->

                                <!-- 수량(일반)S -->

                                <!-- 수량(일반)E -->

                                <!-- 수량(개당)S -->
                                <span class="txt">전 회원 가히 상품 구매 상품 1개당, <span class="num">증정품 1개</span> 선착순 증정</span>

                                <!-- 수량(개당)E -->

                                <!-- 수량E -->

                                <!-- 금액S -->

                                <!-- 금액E -->

                                <!-- 50:브랜드E -->

                                <!-- 35:기간계상품S -->

                                <!-- 35:기간계상품E -->

                                <!-- 20:표준카테고리S -->

                                <!-- 20:표준카테고리E -->

                                <!-- 00:전체S -->

                                <!-- 00:전체E -->

                                <!-- 90:브랜드+표준분류S -->

                                <!-- 90:브랜드+표준분류E -->
                            </div>
                            <span class="notice_exception">오늘드림 주문시 온라인 전용 증정품 미제공</span>
                        </div>
                    </div>
                </div>
                <a href="javascript:goods.detail.openGiftLayerPop();" class="btn_more goods_giftinfo">더보기</a>


            </div>

            <!-- 증정품 오늘드림S  -->

            <input type="hidden" id="h_first_quickGift" value="2345679364472">
            <input type="hidden" id="h_quickGift_count" value="1">
            <div class="prd_free_gift" id="quickGiftInfo" style="display: none;">
                <p class="tit">증정품 안내</p>
                <div class="free_gift">
                    <div class="inner">
                        <div class="info">
                            <div id="quickgift_1_2345679364472" data-evtno="G000000024149"
                                class="tarea  prd_gift_infoVer2">
                                <b id="quickgift_2_2345679364472">[오늘드림]</b>
                                <span class="txt">전 회원 올리브영 전 상품 50,000원 이상 구매 시, <span class="num">증정품 1개</span> 선착순
                                    증정</span>
                            </div>
                        </div>
                    </div>
                </div>
                <a id="quickGift_more" href="javascript:goods.detail.openGiftLayerPop();"
                    class="btn_more goods_giftinfo">더보기</a>
            </div>
            <div class="prd_more_info type2 type-logo">
                <div class="row store_search">
                    <a href="javascript:;" class="btn_off_store goods_offline link_arrow gen1" data-rel="layer"
                        data-target="offStoreStock" data-attr="상품상세^구매가능매장^구매가능매장확인버튼" id="buyPossibleStore">
                        <em><i>구매 가능 매장</i>을 확인해보세요</em>
                    </a>
                    <!-- <a href="javascript:mgoods.detail.openOffstoreFullPop2();" class="link_arrow"><span>구매 가능 매장을 확인해보세요</span></a> -->
                </div>
                <div class="row">
                    <!-- 202005 상품개선 : 브랜드 좋아요 추가 -->
                    <div class="brand_like">
                        <p class="inner">
                            <a href="javascript:;" id="moveBrandShop_like" class="link arr goods_brand">
                                <!-- 								<span class="img" style="background-image:url('/pc-static-root/image/product/img_brand_default.png')"></span> -->
                                <span class="logo"
                                    style="background-image:url('https://image.oliveyoung.co.kr/uploads/images/onlBrandMgmt/2023/3/667175229883283657.jpg')"></span>
                                <em>가히 브랜드관</em>
                            </a>
                            <button type="button" id="brnd_wish" data-ref-onlbrndcd="A003585"
                                class="icon goods_brandlike " data-attr="상품상세^브랜드관좋아요^가히">좋아요 해제됨</button>
                        </p>
                    </div>
                </div>
            </div>
            <!-- // 202005 상품상세 개선 : 증정품 마크업 수정 -->
            <!-- 큐레이션 2차 S -->
            <div class="curation_area_a002_lead"></div>
            <div id="recobell_area_a002" class="cura_pord">
                <h4 class="tit_h4"></h4>
                <div class="loading_box">
                    <span class="icon"><img
                            src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif"
                            alt="로딩중"></span>
                    <p class="txt">고객님을 위한 상품 추천중이에요</p>
                </div>
            </div>
            <!-- 큐레이션 2차 E -->
            <ul class="prd_detail_tab" id="tabList">
                <li class="on" id="productInfo"><a href="javascript:;" class="goods_detailinfo"
                        data-attr="상품상세^상품상세_SortingTab^상품설명">상품설명</a></li>
                <li id="buyInfo"><a href="javascript:;" class="goods_buyinfo"
                        data-attr="상품상세^상품상세_SortingTab^구매정보">구매정보</a></li>
                <li id="reviewInfo"><a href="javascript:;" class="goods_reputation"
                        data-attr="상품상세^상품상세_SortingTab^리뷰">리뷰<span>(216)</span></a></li>
                <li id="qnaInfo"><a href="javascript:;" class="goods_qna"
                        data-attr="상품상세^상품상세_SortingTab^Q&amp;A">Q&amp;A<span>(2)</span></a></li>
            </ul>
            <div class="tabConts prd_detail_cont show">
                <div class="detail_area">
                    <!--
                    * [3492841] 상품상세 'MD공지배너' 노출 우선순위 변경 요청
                    - 노출 순서(AS IS) : 전체 > 배송유형 > 표준 카테고리 > 전시 카테고리 > 협력사 > 온라인 브랜드 > 상품
                    - 노출 순서(TO BE) : 전체 > 배송유형 > 표준 카테고리 > 전시 카테고리(남성>더모>기타 카테고리) > 협력사 > 온라인 브랜드 > 상품
                    - 1 : 전체
                    - 2 : 배송유형
                    - 3 : 표준분류
                    - 4 : 전시카테고리
                    - 5 : 협력사
                    - 6 : 온라인브랜드
                    - 7 : 상품
                    - 8 : 더모 (전시구분 DISP_SEQ (8) 삭제)
                    1. 전시 카테고리 : 남성 카테고리 카운팅 - 10000010007
                    2. 전시 카테고리 : 더모 카테고리 카운팅 - 10000010008 -->
                    <!-- 전체, 배송유형, 표준분류 카테고리 노출 -->
                    <!-- 전시카테고리 남성 카테고리 노출 -->
                    <!-- 전시카테고리 더모 카테고리 노출 -->
                    <!-- 전시카테고리 그외 카테고리 노출 -->
                    <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102700126&amp;trackingCd=Banner"
                        data-attr="상품상세^MD공지배너^100000100010008,100000100010009,100000100010010_클릭"
                        data-trk="/Cat100000100010009_Small" onclick="javascript:common.wlog('mdBanner');">
                        <img src="https://image.oliveyoung.co.kr/uploads/images/display/9000003/396/3903698812558035257.jpg"
                            alt="100000100010008,100000100010009,100000100010010">
                    </a>
                    <!-- 협력사, 온라인브랜드, 상품 카테고리 노출 -->
                    <div class="contEditor">
                        <script>
                            $(window).load(function () {
                                // 2017-02-18 : txs : 상품 상세 레이아웃 크기 재조정
                                goods.detail.tagHandler.inittGoodsDetailObjects();
                                $("#tempHtml").html("");
                            });
                        </script>
                        <img alt=""
                            src="https://image.oliveyoung.co.kr/uploads/images/editor/QuickUpload/C19207/image/20231019101108/qc19_20231019101108.jpg"><br>
                        <img alt=""
                            src="https://image.oliveyoung.co.kr/uploads/images/editor/QuickUpload/C19207/image/20221025161903/qc19_20221025161903.png">
                        <img alt=""
                            src="https://image.oliveyoung.co.kr/uploads/images/editor/QuickUpload/C19207/image/20221102112539/qc19_20221102112539.jpg">
                        <img alt=""
                            src="https://image.oliveyoung.co.kr/uploads/images/editor/QuickUpload/C19207/image/20221104000941/qc19_20221104000941.jpg">
                        <img alt=""
                            src="https://image.oliveyoung.co.kr/uploads/images/editor/QuickUpload/C19207/image/20221104001306/qc19_20221104001306.jpg"><iframe
                            allowfullscreen="" frameborder="0" height="563"
                            src="https://player.vimeo.com/video/765984185?h=af290d33f3?autoplay=1&amp;loop=1&amp;title=0&amp;background=1"
                            width="1000"></iframe> <img alt=""
                            src="https://image.oliveyoung.co.kr/uploads/images/editor/QuickUpload/C19207/image/20221104001035/qc19_20221104001035.jpg"><iframe
                            allowfullscreen="" frameborder="0" height="563"
                            src="https://player.vimeo.com/video/765984203?h=f0216840c8?autoplay=1&amp;loop=1&amp;title=0&amp;background=1"
                            width="1000"></iframe> <img alt=""
                            src="https://image.oliveyoung.co.kr/uploads/images/editor/QuickUpload/C19207/image/20221104001129/qc19_20221104001129.jpg"><iframe
                            allowfullscreen="" frameborder="0" height="563"
                            src="https://player.vimeo.com/video/765984232?h=c8135492e9?autoplay=1&amp;loop=1&amp;title=0&amp;background=1"
                            width="1000"></iframe> <img alt=""
                            src="https://image.oliveyoung.co.kr/uploads/images/editor/QuickUpload/C19207/image/20221104001140/qc19_20221104001140.jpg"><iframe
                            allowfullscreen="" frameborder="0" height="563"
                            src="https://player.vimeo.com/video/765984288?h=0aee7a235c?autoplay=1&amp;loop=1&amp;title=0&amp;background=1"
                            width="1000"></iframe>
                    </div>
                    <div style="text-align:center;padding:20px 0px 0px 0px;">
                        <p
                            style="display:inline-block;font-size:14px;border:1px solid #ddd;padding:10px 40px 10px 40px;text-align:center;">
                            본 상품 정보(상품 상세, 상품 설명 등)의 내용은 협력사가 직접 등록한 것 입니다.</p>
                    </div>
                </div>
                <p class="tit_cate_best mgT40 dispCatBest" style="display:none;">스킨케어 카테고리 베스트 상품</p>
                <ul class="cate_prd_list dispCatBest" id="recommGoodsList" style="display:none;">
                </ul>
                <div class="curation_area_a029_lead"></div>
                <div id="recobell_area_a029" class="cura_pord curation_area_029 btm" style="display:none;">
                    <h4 class="tit_h4">다른 고객이 함께 본 상품</h4>
                    <div class="loading_box">
                        <span class="icon"><img
                                src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif"
                                alt="로딩중"></span>
                        <p class="txt">고객님을 위한 상품 추천중이에요</p>
                    </div>
                </div>
                <div id="relPlanShop_area" class="related_plan"></div>
            </div>
            <div class="tabConts prd_detail_cont">
                <h3 class="detail_tit">상품정보 제공고시</h3>
                <div id="kcInfo">
                </div>
                <div id="artcInfo">
                </div>
                <h3 class="detail_tit mgT40">배송안내</h3>
                <dl class="detail_info_list" id="dlexAjaxInfo">
                    <dt>배송비/배송가능일</dt>
                    <dd>
                        <div>
                            <p><strong>[일반 배송]</strong></p>
                            <p><strong>배송지역 : </strong>전국</p>
                            <p><strong>배송비 : </strong>
                                <!-- 그외 표기 -->
                                <span>2,500원</span>
                            </p>
                            <p>올리브영 배송 상품의 총 결제금액 <span>20,000</span>원 이상일 경우 <span>무료배송</span> 됩니다.</p>
                            <p>도서, 산간, 오지 일부 지역은 배송비가 추가될 수 있습니다.</p>
                            <p><strong>배송가능일 : </strong><span>3</span>일</p>
                            <p>배송가능일이란 본 상품을 주문하신 고객님들께 상품 배송이 가능한 기간을 의미합니다. 단, 연휴 및 공휴일은 기간 계산시 제외하며 현금 주문일 경우 입금일 기준
                                입니다.</p>
                            <p>예약 상품의 경우 예약된 날짜에 출고되며, 상품의 입고가 빠르게 진행된 경우 예약일 보다 일찍 배송될 수 있습니다.</p>
                        </div>
                        <br>
                        <div>
                            <p><strong>[오늘드림 배송]</strong></p>
                            <p><strong>배송지역 : </strong>전국(일부지역 제외)</p>
                            <p><strong>배송비 : </strong><strong>빠름</strong>&nbsp;<span>5,000원</span>,
                                <strong>3!4!/미드나잇</strong>&nbsp;<span>2,500원</span>
                            </p>
                            <p>오늘드림 배송 상품의 총 결제금액&nbsp;<span>30,000</span>원 이상일 경우&nbsp;<span>무료배송</span>&nbsp;됩니다.</p>
                            <p>오늘드림 배송비는 도서, 산간지역에 관련없이 배송비가 동일합니다.</p>
                            <div class="crlfix">
                                <p style="float:left;"><strong>배송가능시간 : </strong></p>
                                <div style="margin-left:87px">
                                    <p><strong>빠름/미드나잇 </strong>당일 20시까지 주문 시 당일 도착, 이후 주문 건 익일 도착</p>
                                    <p><strong>3!4! </strong>당일13시까지 주문 시 당일 도착, 이후 주문 건 익일 도착</p>
                                </div>
                            </div>
                        </div>
                    </dd>
                </dl>
                <h3 class="detail_tit mgT40">교환/반품/환불 안내</h3>
                <dl class="detail_info_list">
                    <dt>교환/반품 신청 방법</dt>
                    <dd>마이페이지 내 주문내역에서 신청가능하며,<br>반품 신청의 경우 택배회수 / 매장방문(일부 매장)중 선택하여 신청가능합니다.</dd>
                </dl>
                <dl class="detail_info_list">
                    <dt>교환/반품 신청 기간</dt>
                    <dd>
                        교환, 반품 신청은 배송이 완료된 후 15일 이내 가능합니다.<br>
                        고객님이 배송 받으신 상품의 내용이 표시∙광고의 내용과 다르거나 계약내용과 다르게 이행된 경우에는 배송 받으신 날로부터 3개월 이내, 혹은 그 사실을 알 수 있었던 날로
                        부터 30일 이내에 가능합니다.
                    </dd>
                </dl>
                <dl class="detail_info_list">
                    <dt>교환/반품/회수 비용</dt>
                    <dd>
                        <p><strong>[택배 회수 반품]</strong></p>
                        고객님의 사유에 의한 교환 및 반품은 회수 및 배송에 필요한 비용을 부담해주셔야 합니다.<br>
                        기본 비용은 교환 5,000원(회수비+배송비), 반품 2,500원(회수비)입니다.<br>
                        제주도 및 도서산간 지방에는 추가 운임이 발생합니다.<br>
                        당사의 사유(상품의 하자, 배송의 오류 등)로 인한 경우 교환 및 반품에 필요한 비용은 당사에서 부담합니다.
                        <br><br>
                        <p><strong>[매장 방문 반품]</strong></p>
                        올리브영 일반 주문 GREEN OLIVE 이상 등급 또는 오늘드림 주문에 한해서 별도 회수비 부담없이 반품 가능합니다.(단, 일부 매장만 가능)
                    </dd>
                </dl>
                <dl class="detail_info_list">
                    <dt>교환/반품 불가안내</dt>
                    <dd>
                        고객님의 사유에 의한 교환 및 반품이 불가한 경우<br>
                        1. 배송이 완료된 후 15일이 경과한 경우<br>
                        2. 포장 훼손 및 사용 또는 일부 소비, 구성품 누락 및 상품의 결함 발생으로 인해 상품의 가치가 훼손된 경우<br><br>
                        당사의 사유에 의한 교환 및 반품이 불가한 경우<br>
                        1. 배송 받으신 날로부터 3개월, 혹은 그 사실을 알 수 있었던 날로 부터 30일이 경과한 경우<br>
                        2. 당사의 귀책(상품의 불량, 생산 및 제조 및 배송 간의 파손 등)으로 인한 현상이 아닌 해당 상품의 고유한 특성, 혹은 상품 수령 후 고객님의 과실로 인한 문제임이
                        규명된 경우
                    </dd>
                </dl>
            </div>
            <!--// 구매정보 컨텐츠 영역 -->
            <div class="tabConts prd_detail_cont" id="gdasContentsArea">
                <div class="review_wrap renew review-reward-notice"><!-- ## 리뷰 고도화 1차 : 영역 부모 div 추가 ## -->
                </div>
            </div>
            <div class="tabConts prd_detail_cont" id="qnaContentsArea">
            </div>
        </div>
    </div>
</body>
</html>