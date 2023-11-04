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
        <div class="page_location">
          <a href="javascript:common.link.moveMainHome();" class="loc_home"
            >홈</a
          >
          <ul class="loc_history">
            <li>
              <a href="#" class="cate_y">클렌징</a>
              <div class="history_cate_box" style="width: 242px">
                <ul>
                  <li data-ref-dispcatno="10000010001">
                    <a
                      href="javascript:common.link.moveCategoryShop('10000010001','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_스킨케어' })"
                      >스킨케어</a
                    >
                  </li>

                  <li data-ref-dispcatno="10000010009">
                    <a
                      href="javascript:common.link.moveCategoryShop('10000010009','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_마스크팩' })"
                      >마스크팩</a
                    >
                  </li>

                  <li data-ref-dispcatno="10000010010">
                    <a
                      href="javascript:common.link.moveCategoryShop('10000010010','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_클렌징' })"
                      class="on"
                      >클렌징</a
                    >
                  </li>

                  <li data-ref-dispcatno="10000010011">
                    <a
                      href="javascript:common.link.moveCategoryShop('10000010011','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_선케어' })"
                      >선케어</a
                    >
                  </li>

                  <li data-ref-dispcatno="10000010008">
                    <a
                      href="javascript:common.link.moveCategoryShop('10000010008','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_더모 코스메틱' })"
                      >더모 코스메틱</a
                    >
                  </li>

                  <li data-ref-dispcatno="10000010002">
                    <a
                      href="javascript:common.link.moveCategoryShop('10000010002','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_메이크업' })"
                      >메이크업</a
                    >
                  </li>

                  <li data-ref-dispcatno="10000010012">
                    <a
                      href="javascript:common.link.moveCategoryShop('10000010012','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_네일' })"
                      >네일</a
                    >
                  </li>

                  <li data-ref-dispcatno="10000010003">
                    <a
                      href="javascript:common.link.moveCategoryShop('10000010003','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_바디케어' })"
                      >바디케어</a
                    >
                  </li>

                  <li data-ref-dispcatno="10000010004">
                    <a
                      href="javascript:common.link.moveCategoryShop('10000010004','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_헤어케어' })"
                      >헤어케어</a
                    >
                  </li>

                  <li data-ref-dispcatno="10000010005">
                    <a
                      href="javascript:common.link.moveCategoryShop('10000010005','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_향수/디퓨저' })"
                      >향수/디퓨저</a
                    >
                  </li>
                </ul>

                <ul>
                  <li data-ref-dispcatno="10000010006">
                    <a
                      href="javascript:common.link.moveCategoryShop('10000010006','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_미용소품' })"
                      >미용소품</a
                    >
                  </li>

                  <li data-ref-dispcatno="10000010007">
                    <a
                      href="javascript:common.link.moveCategoryShop('10000010007','',{ t_page: '로케이션_카테고리관', t_click: '카테고리탭_대카테고리', t_1st_category_type: '대_남성' })"
                      >남성</a
                    >
                  </li>
                </ul>
              </div>
            </li>

            <li>
              <a href="#" class="cate_y">클렌징폼/젤</a>
              <div class="history_cate_box" style="width: 122px">
                <ul>
                  <li data-ref-dispcatno="100000100100001">
                    <a
                      href="#"
                      class="on"
                      data-tracking-param="t_page=로케이션_카테고리관&amp;t_click=카테고리탭_중카테고리&amp;t_2nd_category_type=중_클렌징폼/젤"
                      >클렌징폼/젤</a
                    >
                  </li>

                  <li data-ref-dispcatno="100000100100002">
                    <a
                      href="#"
                      data-tracking-param="t_page=로케이션_카테고리관&amp;t_click=카테고리탭_중카테고리&amp;t_2nd_category_type=중_오일/워터/리무버"
                      >오일/워터/리무버</a
                    >
                  </li>

                  <li data-ref-dispcatno="100000100100003">
                    <a
                      href="#"
                      data-tracking-param="t_page=로케이션_카테고리관&amp;t_click=카테고리탭_중카테고리&amp;t_2nd_category_type=중_필링/패드"
                      >필링/패드</a
                    >
                  </li>
                </ul>
              </div>
            </li>
          </ul>
        </div>

        <div class="titBox">
          <h1>클렌징폼/젤</h1>
        </div>

        <ul class="cate_list_box">
          <li class="first on">
            <a
              href="javascript:;"
              class="100000100100001"
              data-attr="카테고리상세^카테고리리스트^전체"
              >전체</a
            >
          </li>
		<c:if test="${not empty pLowcateList}">
			<c:forEach items="${pLowcateList}" var="pl">
				<li><a>${pl.plowcate}</a></li>
			</c:forEach>
		</c:if>

          <li>&nbsp;</li>

          <li>&nbsp;</li>

          <li>&nbsp;</li>
        </ul>

        <div class="cate_brand_box">
          <div class="tit_area">
            <strong>브랜드</strong>
            <span class="tx_num">Total 159 </span>
          </div>
          <ul class="brand_list">
            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003585"
                name="searchOnlBrndCdArr"
                value="A003585"
                checked=""
                data-attr="카테고리상세^필터_브랜드^가히"
                data-brndnm="가히"
              />
              <label for="searchOnlBrndCdArrA003585">가히</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000030"
                name="searchOnlBrndCdArr"
                value="A000030"
                checked=""
                data-attr="카테고리상세^필터_브랜드^갸스비"
                data-brndnm="갸스비"
              />
              <label for="searchOnlBrndCdArrA000030">갸스비</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001624"
                name="searchOnlBrndCdArr"
                value="A001624"
                checked=""
                data-attr="카테고리상세^필터_브랜드^그라펜"
                data-brndnm="그라펜"
              />
              <label for="searchOnlBrndCdArrA001624">그라펜</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002880"
                name="searchOnlBrndCdArr"
                value="A002880"
                checked=""
                data-attr="카테고리상세^필터_브랜드^그레이멜린"
                data-brndnm="그레이멜린"
              />
              <label for="searchOnlBrndCdArrA002880">그레이멜린</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001712"
                name="searchOnlBrndCdArr"
                value="A001712"
                data-attr="카테고리상세^필터_브랜드^나이팅게일"
                data-brndnm="나이팅게일"
              />
              <label for="searchOnlBrndCdArrA001712">나이팅게일</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002517"
                name="searchOnlBrndCdArr"
                value="A002517"
                data-attr="카테고리상세^필터_브랜드^나인위시스"
                data-brndnm="나인위시스"
              />
              <label for="searchOnlBrndCdArrA002517">나인위시스</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003477"
                name="searchOnlBrndCdArr"
                value="A003477"
                data-attr="카테고리상세^필터_브랜드^넘버즈인"
                data-brndnm="넘버즈인"
              />
              <label for="searchOnlBrndCdArrA003477">넘버즈인</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001130"
                name="searchOnlBrndCdArr"
                value="A001130"
                checked=""
                data-attr="카테고리상세^필터_브랜드^네오젠"
                data-brndnm="네오젠"
              />
              <label for="searchOnlBrndCdArrA001130">네오젠</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000486"
                name="searchOnlBrndCdArr"
                value="A000486"
                data-attr="카테고리상세^필터_브랜드^눅스"
                data-brndnm="눅스"
              />
              <label for="searchOnlBrndCdArrA000486">눅스</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000044"
                name="searchOnlBrndCdArr"
                value="A000044"
                data-attr="카테고리상세^필터_브랜드^뉴트로지나"
                data-brndnm="뉴트로지나"
              />
              <label for="searchOnlBrndCdArrA000044">뉴트로지나</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003264"
                name="searchOnlBrndCdArr"
                value="A003264"
                data-attr="카테고리상세^필터_브랜드^니들리"
                data-brndnm="니들리"
              />
              <label for="searchOnlBrndCdArrA003264">니들리</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000049"
                name="searchOnlBrndCdArr"
                value="A000049"
                data-attr="카테고리상세^필터_브랜드^니베아"
                data-brndnm="니베아"
              />
              <label for="searchOnlBrndCdArrA000049">니베아</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001316"
                name="searchOnlBrndCdArr"
                value="A001316"
                data-attr="카테고리상세^필터_브랜드^다슈"
                data-brndnm="다슈"
              />
              <label for="searchOnlBrndCdArrA001316">다슈</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003326"
                name="searchOnlBrndCdArr"
                value="A003326"
                checked=""
                data-attr="카테고리상세^필터_브랜드^닥터디퍼런트"
                data-brndnm="닥터디퍼런트"
              />
              <label for="searchOnlBrndCdArrA003326">닥터디퍼런트</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000447"
                name="searchOnlBrndCdArr"
                value="A000447"
                data-attr="카테고리상세^필터_브랜드^닥터브로너스"
                data-brndnm="닥터브로너스"
              />
              <label for="searchOnlBrndCdArrA000447">닥터브로너스</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000426"
                name="searchOnlBrndCdArr"
                value="A000426"
                data-attr="카테고리상세^필터_브랜드^닥터자르트"
                data-brndnm="닥터자르트"
              />
              <label for="searchOnlBrndCdArrA000426">닥터자르트</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000627"
                name="searchOnlBrndCdArr"
                value="A000627"
                data-attr="카테고리상세^필터_브랜드^닥터지"
                data-brndnm="닥터지"
              />
              <label for="searchOnlBrndCdArrA000627">닥터지</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002367"
                name="searchOnlBrndCdArr"
                value="A002367"
                data-attr="카테고리상세^필터_브랜드^달팡"
                data-brndnm="달팡"
              />
              <label for="searchOnlBrndCdArrA002367">달팡</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002924"
                name="searchOnlBrndCdArr"
                value="A002924"
                data-attr="카테고리상세^필터_브랜드^더랩바이블랑두"
                data-brndnm="더랩바이블랑두"
              />
              <label for="searchOnlBrndCdArrA002924">더랩바이블랑두</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003550"
                name="searchOnlBrndCdArr"
                value="A003550"
                data-attr="카테고리상세^필터_브랜드^더말로지카"
                data-brndnm="더말로지카"
              />
              <label for="searchOnlBrndCdArrA003550">더말로지카</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002789"
                name="searchOnlBrndCdArr"
                value="A002789"
                data-attr="카테고리상세^필터_브랜드^더바디샵"
                data-brndnm="더바디샵"
              />
              <label for="searchOnlBrndCdArrA002789">더바디샵</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003819"
                name="searchOnlBrndCdArr"
                value="A003819"
                data-attr="카테고리상세^필터_브랜드^더파이에센셜"
                data-brndnm="더파이에센셜"
              />
              <label for="searchOnlBrndCdArrA003819">더파이에센셜</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001047"
                name="searchOnlBrndCdArr"
                value="A001047"
                data-attr="카테고리상세^필터_브랜드^데저트 에센스"
                data-brndnm="데저트"
                에센스=""
              />
              <label for="searchOnlBrndCdArrA001047">데저트 에센스</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000652"
                name="searchOnlBrndCdArr"
                value="A000652"
                data-attr="카테고리상세^필터_브랜드^듀이트리"
                data-brndnm="듀이트리"
              />
              <label for="searchOnlBrndCdArrA000652">듀이트리</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003210"
                name="searchOnlBrndCdArr"
                value="A003210"
                data-attr="카테고리상세^필터_브랜드^디오디너리"
                data-brndnm="디오디너리"
              />
              <label for="searchOnlBrndCdArrA003210">디오디너리</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003222"
                name="searchOnlBrndCdArr"
                value="A003222"
                data-attr="카테고리상세^필터_브랜드^땡큐파머"
                data-brndnm="땡큐파머"
              />
              <label for="searchOnlBrndCdArrA003222">땡큐파머</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002886"
                name="searchOnlBrndCdArr"
                value="A002886"
                data-attr="카테고리상세^필터_브랜드^라곰"
                data-brndnm="라곰"
              />
              <label for="searchOnlBrndCdArrA002886">라곰</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002948"
                name="searchOnlBrndCdArr"
                value="A002948"
                data-attr="카테고리상세^필터_브랜드^라네즈"
                data-brndnm="라네즈"
              />
              <label for="searchOnlBrndCdArrA002948">라네즈</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003810"
                name="searchOnlBrndCdArr"
                value="A003810"
                data-attr="카테고리상세^필터_브랜드^라라레서피"
                data-brndnm="라라레서피"
              />
              <label for="searchOnlBrndCdArrA003810">라라레서피</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000954"
                name="searchOnlBrndCdArr"
                value="A000954"
                data-attr="카테고리상세^필터_브랜드^라로슈포제"
                data-brndnm="라로슈포제"
              />
              <label for="searchOnlBrndCdArrA000954">라로슈포제</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002753"
                name="searchOnlBrndCdArr"
                value="A002753"
                data-attr="카테고리상세^필터_브랜드^라씨엘르"
                data-brndnm="라씨엘르"
              />
              <label for="searchOnlBrndCdArrA002753">라씨엘르</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002907"
                name="searchOnlBrndCdArr"
                value="A002907"
                data-attr="카테고리상세^필터_브랜드^라엘"
                data-brndnm="라엘"
              />
              <label for="searchOnlBrndCdArrA002907">라엘</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002756"
                name="searchOnlBrndCdArr"
                value="A002756"
                data-attr="카테고리상세^필터_브랜드^라운드랩"
                data-brndnm="라운드랩"
              />
              <label for="searchOnlBrndCdArrA002756">라운드랩</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001306"
                name="searchOnlBrndCdArr"
                value="A001306"
                data-attr="카테고리상세^필터_브랜드^라운드어라운드"
                data-brndnm="라운드어라운드"
              />
              <label for="searchOnlBrndCdArrA001306">라운드어라운드</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000859"
                name="searchOnlBrndCdArr"
                value="A000859"
                data-attr="카테고리상세^필터_브랜드^랩시리즈"
                data-brndnm="랩시리즈"
              />
              <label for="searchOnlBrndCdArrA000859">랩시리즈</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA009971"
                name="searchOnlBrndCdArr"
                value="A009971"
                data-attr="카테고리상세^필터_브랜드^런드리유"
                data-brndnm="런드리유"
              />
              <label for="searchOnlBrndCdArrA009971">런드리유</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001722"
                name="searchOnlBrndCdArr"
                value="A001722"
                data-attr="카테고리상세^필터_브랜드^로벡틴"
                data-brndnm="로벡틴"
              />
              <label for="searchOnlBrndCdArrA001722">로벡틴</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001702"
                name="searchOnlBrndCdArr"
                value="A001702"
                data-attr="카테고리상세^필터_브랜드^리르"
                data-brndnm="리르"
              />
              <label for="searchOnlBrndCdArrA001702">리르</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001662"
                name="searchOnlBrndCdArr"
                value="A001662"
                data-attr="카테고리상세^필터_브랜드^리얼베리어"
                data-brndnm="리얼베리어"
              />
              <label for="searchOnlBrndCdArrA001662">리얼베리어</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002884"
                name="searchOnlBrndCdArr"
                value="A002884"
                data-attr="카테고리상세^필터_브랜드^리우젤"
                data-brndnm="리우젤"
              />
              <label for="searchOnlBrndCdArrA002884">리우젤</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001924"
                name="searchOnlBrndCdArr"
                value="A001924"
                data-attr="카테고리상세^필터_브랜드^마녀공장"
                data-brndnm="마녀공장"
              />
              <label for="searchOnlBrndCdArrA001924">마녀공장</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001560"
                name="searchOnlBrndCdArr"
                value="A001560"
                data-attr="카테고리상세^필터_브랜드^맥스클리닉"
                data-brndnm="맥스클리닉"
              />
              <label for="searchOnlBrndCdArrA001560">맥스클리닉</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA009711"
                name="searchOnlBrndCdArr"
                value="A009711"
                data-attr="카테고리상세^필터_브랜드^메디비티"
                data-brndnm="메디비티"
              />
              <label for="searchOnlBrndCdArrA009711">메디비티</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003336"
                name="searchOnlBrndCdArr"
                value="A003336"
                data-attr="카테고리상세^필터_브랜드^메디필"
                data-brndnm="메디필"
              />
              <label for="searchOnlBrndCdArrA003336">메디필</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000688"
                name="searchOnlBrndCdArr"
                value="A000688"
                data-attr="카테고리상세^필터_브랜드^메디힐"
                data-brndnm="메디힐"
              />
              <label for="searchOnlBrndCdArrA000688">메디힐</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002310"
                name="searchOnlBrndCdArr"
                value="A002310"
                data-attr="카테고리상세^필터_브랜드^메이크프렘"
                data-brndnm="메이크프렘"
              />
              <label for="searchOnlBrndCdArrA002310">메이크프렘</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA006694"
                name="searchOnlBrndCdArr"
                value="A006694"
                data-attr="카테고리상세^필터_브랜드^멘톨로지"
                data-brndnm="멘톨로지"
              />
              <label for="searchOnlBrndCdArrA006694">멘톨로지</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA008151"
                name="searchOnlBrndCdArr"
                value="A008151"
                data-attr="카테고리상세^필터_브랜드^몰바니"
                data-brndnm="몰바니"
              />
              <label for="searchOnlBrndCdArrA008151">몰바니</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001680"
                name="searchOnlBrndCdArr"
                value="A001680"
                data-attr="카테고리상세^필터_브랜드^미프"
                data-brndnm="미프"
              />
              <label for="searchOnlBrndCdArrA001680">미프</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003666"
                name="searchOnlBrndCdArr"
                value="A003666"
                data-attr="카테고리상세^필터_브랜드^믹순"
                data-brndnm="믹순"
              />
              <label for="searchOnlBrndCdArrA003666">믹순</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003247"
                name="searchOnlBrndCdArr"
                value="A003247"
                data-attr="카테고리상세^필터_브랜드^밀크바오밥"
                data-brndnm="밀크바오밥"
              />
              <label for="searchOnlBrndCdArrA003247">밀크바오밥</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003258"
                name="searchOnlBrndCdArr"
                value="A003258"
                data-attr="카테고리상세^필터_브랜드^밀크터치"
                data-brndnm="밀크터치"
              />
              <label for="searchOnlBrndCdArrA003258">밀크터치</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002759"
                name="searchOnlBrndCdArr"
                value="A002759"
                data-attr="카테고리상세^필터_브랜드^바닐라코"
                data-brndnm="바닐라코"
              />
              <label for="searchOnlBrndCdArrA002759">바닐라코</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003024"
                name="searchOnlBrndCdArr"
                value="A003024"
                data-attr="카테고리상세^필터_브랜드^바르테라"
                data-brndnm="바르테라"
              />
              <label for="searchOnlBrndCdArrA003024">바르테라</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000451"
                name="searchOnlBrndCdArr"
                value="A000451"
                data-attr="카테고리상세^필터_브랜드^바이오더마"
                data-brndnm="바이오더마"
              />
              <label for="searchOnlBrndCdArrA000451">바이오더마</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000897"
                name="searchOnlBrndCdArr"
                value="A000897"
                data-attr="카테고리상세^필터_브랜드^바이오힐보"
                data-brndnm="바이오힐보"
              />
              <label for="searchOnlBrndCdArrA000897">바이오힐보</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003907"
                name="searchOnlBrndCdArr"
                value="A003907"
                data-attr="카테고리상세^필터_브랜드^볼드포뮬러"
                data-brndnm="볼드포뮬러"
              />
              <label for="searchOnlBrndCdArrA003907">볼드포뮬러</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA005331"
                name="searchOnlBrndCdArr"
                value="A005331"
                data-attr="카테고리상세^필터_브랜드^뷰"
                data-brndnm="뷰"
              />
              <label for="searchOnlBrndCdArrA005331">뷰</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002843"
                name="searchOnlBrndCdArr"
                value="A002843"
                data-attr="카테고리상세^필터_브랜드^브로앤팁스"
                data-brndnm="브로앤팁스"
              />
              <label for="searchOnlBrndCdArrA002843">브로앤팁스</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002253"
                name="searchOnlBrndCdArr"
                value="A002253"
                data-attr="카테고리상세^필터_브랜드^브링그린"
                data-brndnm="브링그린"
              />
              <label for="searchOnlBrndCdArrA002253">브링그린</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001873"
                name="searchOnlBrndCdArr"
                value="A001873"
                data-attr="카테고리상세^필터_브랜드^브이티"
                data-brndnm="브이티"
              />
              <label for="searchOnlBrndCdArrA001873">브이티</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002359"
                name="searchOnlBrndCdArr"
                value="A002359"
                data-attr="카테고리상세^필터_브랜드^블라이드"
                data-brndnm="블라이드"
              />
              <label for="searchOnlBrndCdArrA002359">블라이드</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA008671"
                name="searchOnlBrndCdArr"
                value="A008671"
                data-attr="카테고리상세^필터_브랜드^블랑네이처"
                data-brndnm="블랑네이처"
              />
              <label for="searchOnlBrndCdArrA008671">블랑네이처</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001859"
                name="searchOnlBrndCdArr"
                value="A001859"
                data-attr="카테고리상세^필터_브랜드^블리블리"
                data-brndnm="블리블리"
              />
              <label for="searchOnlBrndCdArrA001859">블리블리</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003836"
                name="searchOnlBrndCdArr"
                value="A003836"
                data-attr="카테고리상세^필터_브랜드^비건이펙트"
                data-brndnm="비건이펙트"
              />
              <label for="searchOnlBrndCdArrA003836">비건이펙트</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003747"
                name="searchOnlBrndCdArr"
                value="A003747"
                data-attr="카테고리상세^필터_브랜드^비알머드"
                data-brndnm="비알머드"
              />
              <label for="searchOnlBrndCdArrA003747">비알머드</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000733"
                name="searchOnlBrndCdArr"
                value="A000733"
                data-attr="카테고리상세^필터_브랜드^비알티씨"
                data-brndnm="비알티씨"
              />
              <label for="searchOnlBrndCdArrA000733">비알티씨</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000989"
                name="searchOnlBrndCdArr"
                value="A000989"
                data-attr="카테고리상세^필터_브랜드^비오템 옴므"
                data-brndnm="비오템"
                옴므=""
              />
              <label for="searchOnlBrndCdArrA000989">비오템 옴므</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002222"
                name="searchOnlBrndCdArr"
                value="A002222"
                data-attr="카테고리상세^필터_브랜드^비욘드"
                data-brndnm="비욘드"
              />
              <label for="searchOnlBrndCdArrA002222">비욘드</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000849"
                name="searchOnlBrndCdArr"
                value="A000849"
                data-attr="카테고리상세^필터_브랜드^비페스타"
                data-brndnm="비페스타"
              />
              <label for="searchOnlBrndCdArrA000849">비페스타</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002833"
                name="searchOnlBrndCdArr"
                value="A002833"
                data-attr="카테고리상세^필터_브랜드^비플레인"
                data-brndnm="비플레인"
              />
              <label for="searchOnlBrndCdArrA002833">비플레인</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA007011"
                name="searchOnlBrndCdArr"
                value="A007011"
                data-attr="카테고리상세^필터_브랜드^산다화"
                data-brndnm="산다화"
              />
              <label for="searchOnlBrndCdArrA007011">산다화</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA010151"
                name="searchOnlBrndCdArr"
                value="A010151"
                data-attr="카테고리상세^필터_브랜드^살사랑"
                data-brndnm="살사랑"
              />
              <label for="searchOnlBrndCdArrA010151">살사랑</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000720"
                name="searchOnlBrndCdArr"
                value="A000720"
                data-attr="카테고리상세^필터_브랜드^센카"
                data-brndnm="센카"
              />
              <label for="searchOnlBrndCdArrA000720">센카</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002895"
                name="searchOnlBrndCdArr"
                value="A002895"
                data-attr="카테고리상세^필터_브랜드^센텔리안24"
                data-brndnm="센텔리안24"
              />
              <label for="searchOnlBrndCdArrA002895">센텔리안24</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002971"
                name="searchOnlBrndCdArr"
                value="A002971"
                data-attr="카테고리상세^필터_브랜드^셀리맥스"
                data-brndnm="셀리맥스"
              />
              <label for="searchOnlBrndCdArrA002971">셀리맥스</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001854"
                name="searchOnlBrndCdArr"
                value="A001854"
                data-attr="카테고리상세^필터_브랜드^셀퓨전씨"
                data-brndnm="셀퓨전씨"
              />
              <label for="searchOnlBrndCdArrA001854">셀퓨전씨</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002246"
                name="searchOnlBrndCdArr"
                value="A002246"
                data-attr="카테고리상세^필터_브랜드^수이사이"
                data-brndnm="수이사이"
              />
              <label for="searchOnlBrndCdArrA002246">수이사이</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003619"
                name="searchOnlBrndCdArr"
                value="A003619"
                data-attr="카테고리상세^필터_브랜드^수이스킨"
                data-brndnm="수이스킨"
              />
              <label for="searchOnlBrndCdArrA003619">수이스킨</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA007231"
                name="searchOnlBrndCdArr"
                value="A007231"
                data-attr="카테고리상세^필터_브랜드^숨37"
                data-brndnm="숨37"
              />
              <label for="searchOnlBrndCdArrA007231">숨37</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003738"
                name="searchOnlBrndCdArr"
                value="A003738"
                data-attr="카테고리상세^필터_브랜드^스킨1004"
                data-brndnm="스킨1004"
              />
              <label for="searchOnlBrndCdArrA003738">스킨1004</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003070"
                name="searchOnlBrndCdArr"
                value="A003070"
                data-attr="카테고리상세^필터_브랜드^스킨푸드"
                data-brndnm="스킨푸드"
              />
              <label for="searchOnlBrndCdArrA003070">스킨푸드</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001522"
                name="searchOnlBrndCdArr"
                value="A001522"
                data-attr="카테고리상세^필터_브랜드^스트라이덱스"
                data-brndnm="스트라이덱스"
              />
              <label for="searchOnlBrndCdArrA001522">스트라이덱스</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA005751"
                name="searchOnlBrndCdArr"
                value="A005751"
                data-attr="카테고리상세^필터_브랜드^시드물"
                data-brndnm="시드물"
              />
              <label for="searchOnlBrndCdArrA005751">시드물</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000036"
                name="searchOnlBrndCdArr"
                value="A000036"
                data-attr="카테고리상세^필터_브랜드^식물나라"
                data-brndnm="식물나라"
              />
              <label for="searchOnlBrndCdArrA000036">식물나라</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000275"
                name="searchOnlBrndCdArr"
                value="A000275"
                data-attr="카테고리상세^필터_브랜드^싸이닉"
                data-brndnm="싸이닉"
              />
              <label for="searchOnlBrndCdArrA000275">싸이닉</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA005211"
                name="searchOnlBrndCdArr"
                value="A005211"
                data-attr="카테고리상세^필터_브랜드^쓰리"
                data-brndnm="쓰리"
              />
              <label for="searchOnlBrndCdArrA005211">쓰리</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003868"
                name="searchOnlBrndCdArr"
                value="A003868"
                data-attr="카테고리상세^필터_브랜드^씨드비"
                data-brndnm="씨드비"
              />
              <label for="searchOnlBrndCdArrA003868">씨드비</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA007151"
                name="searchOnlBrndCdArr"
                value="A007151"
                data-attr="카테고리상세^필터_브랜드^아떼"
                data-brndnm="아떼"
              />
              <label for="searchOnlBrndCdArrA007151">아떼</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000706"
                name="searchOnlBrndCdArr"
                value="A000706"
                data-attr="카테고리상세^필터_브랜드^아리얼"
                data-brndnm="아리얼"
              />
              <label for="searchOnlBrndCdArrA000706">아리얼</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000003"
                name="searchOnlBrndCdArr"
                value="A000003"
                data-attr="카테고리상세^필터_브랜드^아벤느"
                data-brndnm="아벤느"
              />
              <label for="searchOnlBrndCdArrA000003">아벤느</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001728"
                name="searchOnlBrndCdArr"
                value="A001728"
                data-attr="카테고리상세^필터_브랜드^아비브"
                data-brndnm="아비브"
              />
              <label for="searchOnlBrndCdArrA001728">아비브</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003546"
                name="searchOnlBrndCdArr"
                value="A003546"
                data-attr="카테고리상세^필터_브랜드^아워비건"
                data-brndnm="아워비건"
              />
              <label for="searchOnlBrndCdArrA003546">아워비건</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001643"
                name="searchOnlBrndCdArr"
                value="A001643"
                data-attr="카테고리상세^필터_브랜드^아이디얼포맨"
                data-brndnm="아이디얼포맨"
              />
              <label for="searchOnlBrndCdArrA001643">아이디얼포맨</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000730"
                name="searchOnlBrndCdArr"
                value="A000730"
                data-attr="카테고리상세^필터_브랜드^아이소이"
                data-brndnm="아이소이"
              />
              <label for="searchOnlBrndCdArrA000730">아이소이</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000415"
                name="searchOnlBrndCdArr"
                value="A000415"
                data-attr="카테고리상세^필터_브랜드^아크네스"
                data-brndnm="아크네스"
              />
              <label for="searchOnlBrndCdArrA000415">아크네스</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001661"
                name="searchOnlBrndCdArr"
                value="A001661"
                data-attr="카테고리상세^필터_브랜드^아크웰"
                data-brndnm="아크웰"
              />
              <label for="searchOnlBrndCdArrA001661">아크웰</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA004573"
                name="searchOnlBrndCdArr"
                value="A004573"
                data-attr="카테고리상세^필터_브랜드^아토뮤"
                data-brndnm="아토뮤"
              />
              <label for="searchOnlBrndCdArrA004573">아토뮤</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003748"
                name="searchOnlBrndCdArr"
                value="A003748"
                data-attr="카테고리상세^필터_브랜드^어바웃미"
                data-brndnm="어바웃미"
              />
              <label for="searchOnlBrndCdArrA003748">어바웃미</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000041"
                name="searchOnlBrndCdArr"
                value="A000041"
                data-attr="카테고리상세^필터_브랜드^에뛰드"
                data-brndnm="에뛰드"
              />
              <label for="searchOnlBrndCdArrA000041">에뛰드</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002275"
                name="searchOnlBrndCdArr"
                value="A002275"
                data-attr="카테고리상세^필터_브랜드^에센허브"
                data-brndnm="에센허브"
              />
              <label for="searchOnlBrndCdArrA002275">에센허브</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003493"
                name="searchOnlBrndCdArr"
                value="A003493"
                data-attr="카테고리상세^필터_브랜드^에스네이처"
                data-brndnm="에스네이처"
              />
              <label for="searchOnlBrndCdArrA003493">에스네이처</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002439"
                name="searchOnlBrndCdArr"
                value="A002439"
                data-attr="카테고리상세^필터_브랜드^에스쁘아"
                data-brndnm="에스쁘아"
              />
              <label for="searchOnlBrndCdArrA002439">에스쁘아</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002474"
                name="searchOnlBrndCdArr"
                value="A002474"
                data-attr="카테고리상세^필터_브랜드^에스트라"
                data-brndnm="에스트라"
              />
              <label for="searchOnlBrndCdArrA002474">에스트라</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000887"
                name="searchOnlBrndCdArr"
                value="A000887"
                data-attr="카테고리상세^필터_브랜드^에스티로더"
                data-brndnm="에스티로더"
              />
              <label for="searchOnlBrndCdArrA000887">에스티로더</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002852"
                name="searchOnlBrndCdArr"
                value="A002852"
                data-attr="카테고리상세^필터_브랜드^에이트루"
                data-brndnm="에이트루"
              />
              <label for="searchOnlBrndCdArrA002852">에이트루</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000288"
                name="searchOnlBrndCdArr"
                value="A000288"
                data-attr="카테고리상세^필터_브랜드^엠도씨"
                data-brndnm="엠도씨"
              />
              <label for="searchOnlBrndCdArrA000288">엠도씨</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001642"
                name="searchOnlBrndCdArr"
                value="A001642"
                data-attr="카테고리상세^필터_브랜드^오리진스"
                data-brndnm="오리진스"
              />
              <label for="searchOnlBrndCdArrA001642">오리진스</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003713"
                name="searchOnlBrndCdArr"
                value="A003713"
                data-attr="카테고리상세^필터_브랜드^오브제"
                data-brndnm="오브제"
              />
              <label for="searchOnlBrndCdArrA003713">오브제</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA008771"
                name="searchOnlBrndCdArr"
                value="A008771"
                data-attr="카테고리상세^필터_브랜드^오휘"
                data-brndnm="오휘"
              />
              <label for="searchOnlBrndCdArrA008771">오휘</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003829"
                name="searchOnlBrndCdArr"
                value="A003829"
                data-attr="카테고리상세^필터_브랜드^온그리디언츠"
                data-brndnm="온그리디언츠"
              />
              <label for="searchOnlBrndCdArrA003829">온그리디언츠</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000615"
                name="searchOnlBrndCdArr"
                value="A000615"
                data-attr="카테고리상세^필터_브랜드^온더바디"
                data-brndnm="온더바디"
              />
              <label for="searchOnlBrndCdArrA000615">온더바디</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000828"
                name="searchOnlBrndCdArr"
                value="A000828"
                data-attr="카테고리상세^필터_브랜드^우르오스"
                data-brndnm="우르오스"
              />
              <label for="searchOnlBrndCdArrA000828">우르오스</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003242"
                name="searchOnlBrndCdArr"
                value="A003242"
                data-attr="카테고리상세^필터_브랜드^원데이즈유"
                data-brndnm="원데이즈유"
              />
              <label for="searchOnlBrndCdArrA003242">원데이즈유</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002258"
                name="searchOnlBrndCdArr"
                value="A002258"
                data-attr="카테고리상세^필터_브랜드^웰라쥬"
                data-brndnm="웰라쥬"
              />
              <label for="searchOnlBrndCdArrA002258">웰라쥬</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000419"
                name="searchOnlBrndCdArr"
                value="A000419"
                data-attr="카테고리상세^필터_브랜드^유리아쥬"
                data-brndnm="유리아쥬"
              />
              <label for="searchOnlBrndCdArrA000419">유리아쥬</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003733"
                name="searchOnlBrndCdArr"
                value="A003733"
                data-attr="카테고리상세^필터_브랜드^유리프"
                data-brndnm="유리프"
              />
              <label for="searchOnlBrndCdArrA003733">유리프</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000697"
                name="searchOnlBrndCdArr"
                value="A000697"
                data-attr="카테고리상세^필터_브랜드^유세린"
                data-brndnm="유세린"
              />
              <label for="searchOnlBrndCdArrA000697">유세린</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003681"
                name="searchOnlBrndCdArr"
                value="A003681"
                data-attr="카테고리상세^필터_브랜드^이니스프리"
                data-brndnm="이니스프리"
              />
              <label for="searchOnlBrndCdArrA003681">이니스프리</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000292"
                name="searchOnlBrndCdArr"
                value="A000292"
                data-attr="카테고리상세^필터_브랜드^이아소"
                data-brndnm="이아소"
              />
              <label for="searchOnlBrndCdArrA000292">이아소</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001846"
                name="searchOnlBrndCdArr"
                value="A001846"
                data-attr="카테고리상세^필터_브랜드^이즈앤트리"
                data-brndnm="이즈앤트리"
              />
              <label for="searchOnlBrndCdArrA001846">이즈앤트리</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA008931"
                name="searchOnlBrndCdArr"
                value="A008931"
                data-attr="카테고리상세^필터_브랜드^이지듀"
                data-brndnm="이지듀"
              />
              <label for="searchOnlBrndCdArrA008931">이지듀</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA009336"
                name="searchOnlBrndCdArr"
                value="A009336"
                data-attr="카테고리상세^필터_브랜드^이퀄베리"
                data-brndnm="이퀄베리"
              />
              <label for="searchOnlBrndCdArrA009336">이퀄베리</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000968"
                name="searchOnlBrndCdArr"
                value="A000968"
                data-attr="카테고리상세^필터_브랜드^일리윤"
                data-brndnm="일리윤"
              />
              <label for="searchOnlBrndCdArrA000968">일리윤</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA004935"
                name="searchOnlBrndCdArr"
                value="A004935"
                data-attr="카테고리상세^필터_브랜드^일소"
                data-brndnm="일소"
              />
              <label for="searchOnlBrndCdArrA004935">일소</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003542"
                name="searchOnlBrndCdArr"
                value="A003542"
                data-attr="카테고리상세^필터_브랜드^잇퍼"
                data-brndnm="잇퍼"
              />
              <label for="searchOnlBrndCdArrA003542">잇퍼</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003923"
                name="searchOnlBrndCdArr"
                value="A003923"
                data-attr="카테고리상세^필터_브랜드^조선미녀"
                data-brndnm="조선미녀"
              />
              <label for="searchOnlBrndCdArrA003923">조선미녀</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000074"
                name="searchOnlBrndCdArr"
                value="A000074"
                data-attr="카테고리상세^필터_브랜드^질레트"
                data-brndnm="질레트"
              />
              <label for="searchOnlBrndCdArrA000074">질레트</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000645"
                name="searchOnlBrndCdArr"
                value="A000645"
                data-attr="카테고리상세^필터_브랜드^차앤박"
                data-brndnm="차앤박"
              />
              <label for="searchOnlBrndCdArrA000645">차앤박</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000012"
                name="searchOnlBrndCdArr"
                value="A000012"
                data-attr="카테고리상세^필터_브랜드^참존"
                data-brndnm="참존"
              />
              <label for="searchOnlBrndCdArrA000012">참존</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000279"
                name="searchOnlBrndCdArr"
                value="A000279"
                data-attr="카테고리상세^필터_브랜드^케어존"
                data-brndnm="케어존"
              />
              <label for="searchOnlBrndCdArrA000279">케어존</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001465"
                name="searchOnlBrndCdArr"
                value="A001465"
                data-attr="카테고리상세^필터_브랜드^코스알엑스"
                data-brndnm="코스알엑스"
              />
              <label for="searchOnlBrndCdArrA001465">코스알엑스</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001641"
                name="searchOnlBrndCdArr"
                value="A001641"
                data-attr="카테고리상세^필터_브랜드^크리니크"
                data-brndnm="크리니크"
              />
              <label for="searchOnlBrndCdArrA001641">크리니크</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003096"
                name="searchOnlBrndCdArr"
                value="A003096"
                data-attr="카테고리상세^필터_브랜드^클라뷰"
                data-brndnm="클라뷰"
              />
              <label for="searchOnlBrndCdArrA003096">클라뷰</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002760"
                name="searchOnlBrndCdArr"
                value="A002760"
                data-attr="카테고리상세^필터_브랜드^클레어스"
                data-brndnm="클레어스"
              />
              <label for="searchOnlBrndCdArrA002760">클레어스</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002820"
                name="searchOnlBrndCdArr"
                value="A002820"
                data-attr="카테고리상세^필터_브랜드^토리든"
                data-brndnm="토리든"
              />
              <label for="searchOnlBrndCdArrA002820">토리든</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003243"
                name="searchOnlBrndCdArr"
                value="A003243"
                data-attr="카테고리상세^필터_브랜드^톤28"
                data-brndnm="톤28"
              />
              <label for="searchOnlBrndCdArrA003243">톤28</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA006771"
                name="searchOnlBrndCdArr"
                value="A006771"
                data-attr="카테고리상세^필터_브랜드^투비건"
                data-brndnm="투비건"
              />
              <label for="searchOnlBrndCdArrA006771">투비건</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003561"
                name="searchOnlBrndCdArr"
                value="A003561"
                data-attr="카테고리상세^필터_브랜드^파넬 "
                data-brndnm="파넬"
              />
              <label for="searchOnlBrndCdArrA003561">파넬 </label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003335"
                name="searchOnlBrndCdArr"
                value="A003335"
                data-attr="카테고리상세^필터_브랜드^파티온"
                data-brndnm="파티온"
              />
              <label for="searchOnlBrndCdArrA003335">파티온</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002418"
                name="searchOnlBrndCdArr"
                value="A002418"
                data-attr="카테고리상세^필터_브랜드^포맨트"
                data-brndnm="포맨트"
              />
              <label for="searchOnlBrndCdArrA002418">포맨트</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000060"
                name="searchOnlBrndCdArr"
                value="A000060"
                data-attr="카테고리상세^필터_브랜드^포인트앤"
                data-brndnm="포인트앤"
              />
              <label for="searchOnlBrndCdArrA000060">포인트앤</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000125"
                name="searchOnlBrndCdArr"
                value="A000125"
                data-attr="카테고리상세^필터_브랜드^폰즈"
                data-brndnm="폰즈"
              />
              <label for="searchOnlBrndCdArrA000125">폰즈</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003278"
                name="searchOnlBrndCdArr"
                value="A003278"
                data-attr="카테고리상세^필터_브랜드^폴라초이스"
                data-brndnm="폴라초이스"
              />
              <label for="searchOnlBrndCdArrA003278">폴라초이스</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002993"
                name="searchOnlBrndCdArr"
                value="A002993"
                data-attr="카테고리상세^필터_브랜드^프리메라"
                data-brndnm="프리메라"
              />
              <label for="searchOnlBrndCdArrA002993">프리메라</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA005952"
                name="searchOnlBrndCdArr"
                value="A005952"
                data-attr="카테고리상세^필터_브랜드^플로운"
                data-brndnm="플로운"
              />
              <label for="searchOnlBrndCdArrA005952">플로운</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003340"
                name="searchOnlBrndCdArr"
                value="A003340"
                data-attr="카테고리상세^필터_브랜드^플리프"
                data-brndnm="플리프"
              />
              <label for="searchOnlBrndCdArrA003340">플리프</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000729"
                name="searchOnlBrndCdArr"
                value="A000729"
                data-attr="카테고리상세^필터_브랜드^피지오겔"
                data-brndnm="피지오겔"
              />
              <label for="searchOnlBrndCdArrA000729">피지오겔</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003900"
                name="searchOnlBrndCdArr"
                value="A003900"
                data-attr="카테고리상세^필터_브랜드^피캄"
                data-brndnm="피캄"
              />
              <label for="searchOnlBrndCdArrA003900">피캄</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000517"
                name="searchOnlBrndCdArr"
                value="A000517"
                data-attr="카테고리상세^필터_브랜드^하다라보"
                data-brndnm="하다라보"
              />
              <label for="searchOnlBrndCdArrA000517">하다라보</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000474"
                name="searchOnlBrndCdArr"
                value="A000474"
                data-attr="카테고리상세^필터_브랜드^한율"
                data-brndnm="한율"
              />
              <label for="searchOnlBrndCdArrA000474">한율</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA000065"
                name="searchOnlBrndCdArr"
                value="A000065"
                data-attr="카테고리상세^필터_브랜드^해피바스"
                data-brndnm="해피바스"
              />
              <label for="searchOnlBrndCdArrA000065">해피바스</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002992"
                name="searchOnlBrndCdArr"
                value="A002992"
                data-attr="카테고리상세^필터_브랜드^헤라"
                data-brndnm="헤라"
              />
              <label for="searchOnlBrndCdArrA002992">헤라</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003611"
                name="searchOnlBrndCdArr"
                value="A003611"
                data-attr="카테고리상세^필터_브랜드^헤이네이처"
                data-brndnm="헤이네이처"
              />
              <label for="searchOnlBrndCdArrA003611">헤이네이처</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003298"
                name="searchOnlBrndCdArr"
                value="A003298"
                data-attr="카테고리상세^필터_브랜드^헤이미쉬"
                data-brndnm="헤이미쉬"
              />
              <label for="searchOnlBrndCdArrA003298">헤이미쉬</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA009511"
                name="searchOnlBrndCdArr"
                value="A009511"
                data-attr="카테고리상세^필터_브랜드^후시다인"
                data-brndnm="후시다인"
              />
              <label for="searchOnlBrndCdArrA009511">후시다인</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA003095"
                name="searchOnlBrndCdArr"
                value="A003095"
                data-attr="카테고리상세^필터_브랜드^휘게"
                data-brndnm="휘게"
              />
              <label for="searchOnlBrndCdArrA003095">휘게</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA001094"
                name="searchOnlBrndCdArr"
                value="A001094"
                data-attr="카테고리상세^필터_브랜드^AHC"
                data-brndnm="AHC"
              />
              <label for="searchOnlBrndCdArrA001094">AHC</label>
            </li>

            <li>
              <input
                type="checkbox"
                id="searchOnlBrndCdArrA002921"
                name="searchOnlBrndCdArr"
                value="A002921"
                data-attr="카테고리상세^필터_브랜드^SRB"
                data-brndnm="SRB"
              />
              <label for="searchOnlBrndCdArrA002921">SRB</label>
            </li>
          </ul>

          <button class="btn_more">더보기</button>

          <div class="btn_reset">
            <button id="onlBrndReSet">선택 초기화</button>
          </div>
        </div>

        <!-- 2020.12.01 기획전 개선 -->
        <div class="plan_slider_wrap02">
          <div
            class="paln_slider_ty02 slick_slider slick-initialized slick-slider"
            id="planSlider_ty02"
          >
            <div aria-live="polite" class="slick-list draggable">
              <div
                class="slick-track"
                role="listbox"
                style="
                  opacity: 1;
                  width: 1040px;
                  transform: translate3d(0px, 0px, 0px);
                "
              >
                <div
                  class="slick_slide slick-slide slick-current slick-active"
                  data-slick-index="0"
                  aria-hidden="false"
                  style="width: 500px"
                  tabindex="-1"
                  role="option"
                  aria-describedby="slick-slide00"
                >
                  <a
                    href="javascript:;"
                    data-attr="카테고리상세^연관기획전^클렌징 블프시작^1"
                    data-trk="/Cat100000100100001_Small"
                    data-tracking-param="t_page=카테고리관&amp;t_click=클렌징폼/젤_전체_기획전상세&amp;t_plan_name=클렌징 블랙프라이데이
    BEST 상품만 모아!
    #7일간 혜택&amp;t_number=1"
                    tabindex="0"
                  >
                    <img
                      data-original="https://image.oliveyoung.co.kr/uploads/images//categoryBanner/5933098486848573045.jpg"
                      alt="클렌징 블프시작"
                      data-ref-dispcatno="500000102730094"
                      class="completed-seq-lazyload"
                      src="https://image.oliveyoung.co.kr/uploads/images//categoryBanner/5933098486848573045.jpg"
                    />
                    <div class="text_wrap">
                      <dl style="color: #">
                        <dt>클렌징 블랙프라이데이</dt>
                        <dt>BEST 상품만 모아!</dt>
                        <dd>BEST 상품만 모아!</dd>
                      </dl>
                    </div>
                  </a>
                </div>
                <div
                  class="slick_slide slick-slide slick-active"
                  data-slick-index="1"
                  aria-hidden="false"
                  style="width: 500px"
                  tabindex="-1"
                  role="option"
                  aria-describedby="slick-slide01"
                >
                  <a
                    href="javascript:;"
                    data-attr="카테고리상세^연관기획전^메이크프렘 혜택^2"
                    data-trk="/Cat100000100100001_Small"
                    data-tracking-param="t_page=카테고리관&amp;t_click=클렌징폼/젤_전체_기획전상세&amp;t_plan_name=최모나 P!CK
    순한 클렌징 메이크프렘
    #증정혜택까지&amp;t_number=2"
                    tabindex="0"
                  >
                    <img
                      data-original="https://image.oliveyoung.co.kr/uploads/images//categoryBanner/6955634061284247514.jpg"
                      alt="메이크프렘 혜택"
                      data-ref-dispcatno="500000102730095"
                      class="completed-seq-lazyload"
                      src="https://image.oliveyoung.co.kr/uploads/images//categoryBanner/6955634061284247514.jpg"
                    />
                    <div class="text_wrap">
                      <dl style="color: #">
                        <dt>최모나 P!CK</dt>
                        <dt>순한 클렌징 메이크프렘</dt>
                        <dd>순한 클렌징 메이크프렘</dd>
                      </dl>
                    </div>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <span
            class="slick-prev prev slick-arrow slick-hidden"
            id="plan_prev"
            aria-disabled="true"
            tabindex="-1"
            >prev</span
          >
          <span
            class="slick-next next slick-arrow slick-hidden"
            id="plan_next"
            aria-disabled="true"
            tabindex="-1"
            >next</span
          >
        </div>
        <!-- //2020.12.01 기획전 개선 -->

        <p class="cate_info_tx">
          클렌징폼/젤 카테고리에
          <span> 15 </span>
          개의 상품이 등록되어 있습니다.
        </p>

        <div class="cate_align_box">
          <div class="align_sort">
            <ul>
              <li><a href="javascript:;" data-prdsoting="01">인기순</a></li>
              <li class="on">
                <a href="javascript:;" data-prdsoting="02">신상품순</a>
              </li>
              <li><a href="javascript:;" data-prdsoting="03">판매순</a></li>

              <li>
                <a href="javascript:;" data-prdsoting="05">낮은 가격순</a>
              </li>

              <li><a href="javascript:;" data-prdsoting="09">할인율순</a></li>
            </ul>
          </div>
          <div class="count_sort tx_num">
            <span class="tx_view">VIEW</span>
            <ul>
              <li class="on">
                <a href="javascript:;" title="24개씩 보기">24</a>
              </li>
              <li><a href="javascript:;" title="36개씩 보기">36</a></li>
              <li><a href="javascript:;" title="48개씩 보기">48</a></li>
            </ul>
          </div>
          <div class="type_sort">
            <button class="btn_thumb active" data-view-cnt="4">
              컬럼형식으로 보기
            </button>
            <button class="btn_list" data-view-cnt="1">
              리스트형식으로 보기
            </button>
          </div>
        </div>

        <ul class="cate_prd_list gtm_cate_list">
          <li criteo-goods="A000000185252001" class="flag" data-index="0">
            <div class="prd_info">
              <a
                href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000185252&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=1"
                name="Cat100000100100001_Small"
                class="prd_thumb goodsList"
                data-ref-goodsno="A000000185252"
                data-attr="카테고리상세^검색결과상품_신상품순^닥터디퍼런트 비타아크날 트러블 클렌징 폼 200ml^1"
                data-ref-dispcatno="100000100100001"
                data-ref-itemno="001"
                data-trk="/Cat100000100100001_Small"
                data-impression="A000000185252^카테고리상세_검색결과상품_신상품순^1"
                onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000185252", "", "ee-productClick", "카테고리상세_검색결과상품", "1");'
                data-impression-visibility="1"
                ><img
                  src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018525202ko.jpg?l=ko"
                  alt="닥터디퍼런트 비타아크날 트러블 클렌징 폼 200ml"
                  onerror="common.errorImg(this);"
              /></a>
              <div class="prd_name">
                <a
                  href="javascript:;"
                  name="Cat100000100100001_Small"
                  class="goodsList"
                  data-ref-goodsno="A000000185252"
                  data-attr="카테고리상세^검색결과상품_신상품순^닥터디퍼런트 비타아크날 트러블 클렌징 폼 200ml^1"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                  data-trk="/Cat100000100100001_Small"
                  onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000185252", "", "ee-productClick", "카테고리상세_검색결과상품", "1");'
                  ><span class="tx_brand">닥터디퍼런트</span>
                  <p class="tx_name">
                    닥터디퍼런트 비타아크날 트러블 클렌징 폼 200ml
                  </p></a
                >
              </div>
              <button class="btn_zzim jeem" data-ref-goodsno="A000000185252">
                <span>찜하기전</span>
              </button>
              <p class="prd_price">
                <span class="tx_cur"
                  ><span class="tx_num">23,000</span>원
                </span>
              </p>
              <p class="prd_flag"><span class="icon_flag gift">증정</span></p>
              <p class="prd_point_area tx_num">
                <span class="review_point"
                  ><span class="point" style="width: 92%"
                    >10점만점에 5.5점</span
                  ></span
                >(89)
              </p>
              <p class="prd_btn_area">
                <button
                  class="cartBtn"
                  data-ref-goodsno="A000000185252"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                >
                  장바구니</button
                ><button
                  class="btn_new_pop goodsList"
                  name="Cat100000100100001_Small"
                >
                  새창보기
                </button>
              </p>
            </div>
          </li>

          <!-- 부가정보수집 -->

          <li criteo-goods="A000000184623001" class="" data-index="1">
            <div class="prd_info">
              <a
                href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000184623&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=2"
                name="Cat100000100100001_Small"
                class="prd_thumb goodsList"
                data-ref-goodsno="A000000184623"
                data-attr="카테고리상세^검색결과상품_신상품순^[한정수량]닥터디퍼런트 비타아크날 트러블 클렌징 폼 200ml 1+1 기획^2"
                data-ref-dispcatno="100000100100001"
                data-ref-itemno="001"
                data-trk="/Cat100000100100001_Small"
                data-impression="A000000184623^카테고리상세_검색결과상품_신상품순^2"
                onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000184623", "", "ee-productClick", "카테고리상세_검색결과상품", "2");'
                data-impression-visibility="1"
                ><img
                  src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018462302ko.jpg?l=ko"
                  alt="[한정수량]닥터디퍼런트 비타아크날 트러블 클렌징 폼 200ml 1+1 기획"
                  onerror="common.errorImg(this);"
              /></a>
              <div class="prd_name">
                <a
                  href="javascript:;"
                  name="Cat100000100100001_Small"
                  class="goodsList"
                  data-ref-goodsno="A000000184623"
                  data-attr="카테고리상세^검색결과상품_신상품순^[한정수량]닥터디퍼런트 비타아크날 트러블 클렌징 폼 200ml 1+1 기획^2"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                  data-trk="/Cat100000100100001_Small"
                  onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000184623", "", "ee-productClick", "카테고리상세_검색결과상품", "2");'
                  ><span class="tx_brand">닥터디퍼런트</span>
                  <p class="tx_name">
                    [한정수량]닥터디퍼런트 비타아크날 트러블 클렌징 폼 200ml 1+1
                    기획
                  </p></a
                >
              </div>
              <button class="btn_zzim jeem" data-ref-goodsno="A000000184623">
                <span>찜하기전</span>
              </button>
              <p class="prd_price">
                <span class="tx_cur"
                  ><span class="tx_num">23,000</span>원
                </span>
              </p>
              <p class="prd_flag"><span class="icon_flag gift">증정</span></p>
              <p class="prd_point_area tx_num">
                <span class="review_point"
                  ><span class="point" style="width: 92%"
                    >10점만점에 5.5점</span
                  ></span
                >(94)
              </p>
              <p class="prd_btn_area">
                <button
                  class="cartBtn"
                  data-ref-goodsno="A000000184623"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                >
                  장바구니</button
                ><button
                  class="btn_new_pop goodsList"
                  name="Cat100000100100001_Small"
                >
                  새창보기
                </button>
              </p>
            </div>
          </li>

          <!-- 부가정보수집 -->

          <li criteo-goods="A000000181325001" class="" data-index="2">
            <div class="prd_info">
              <a
                href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000181325&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=3"
                name="Cat100000100100001_Small"
                class="prd_thumb goodsList"
                data-ref-goodsno="A000000181325"
                data-attr="카테고리상세^검색결과상품_신상품순^가히 크림 클렌징 폼 더블 기획 (80ml+80ml)^3"
                data-ref-dispcatno="100000100100001"
                data-ref-itemno="001"
                data-trk="/Cat100000100100001_Small"
                data-impression="A000000181325^카테고리상세_검색결과상품_신상품순^3"
                onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000181325", "", "ee-productClick", "카테고리상세_검색결과상품", "3");'
                data-impression-visibility="1"
                ><img
                  src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0018/A00000018132504ko.jpg?l=ko"
                  alt="가히 크림 클렌징 폼 더블 기획 (80ml+80ml)"
                  onerror="common.errorImg(this);"
              /></a>
              <div class="prd_name">
                <a
                  href="javascript:;"
                  name="Cat100000100100001_Small"
                  class="goodsList"
                  data-ref-goodsno="A000000181325"
                  data-attr="카테고리상세^검색결과상품_신상품순^가히 크림 클렌징 폼 더블 기획 (80ml+80ml)^3"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                  data-trk="/Cat100000100100001_Small"
                  onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000181325", "", "ee-productClick", "카테고리상세_검색결과상품", "3");'
                  ><span class="tx_brand">가히</span>
                  <p class="tx_name">
                    가히 크림 클렌징 폼 더블 기획 (80ml+80ml)
                  </p></a
                >
              </div>
              <button class="btn_zzim jeem" data-ref-goodsno="A000000181325">
                <span>찜하기전</span>
              </button>
              <p class="prd_price">
                <span class="tx_org"><span class="tx_num">24,000</span>원 </span
                ><span class="tx_cur"
                  ><span class="tx_num">18,400</span>원
                </span>
              </p>
              <p class="prd_flag">
                <span class="icon_flag sale">세일</span
                ><span class="icon_flag coupon">쿠폰</span
                ><span class="icon_flag gift">증정</span
                ><span class="icon_flag delivery">오늘드림</span>
              </p>
              <p class="prd_point_area tx_num">
                <span class="review_point"
                  ><span class="point" style="width: 100%"
                    >10점만점에 5.5점</span
                  ></span
                >(10)
              </p>
              <p class="prd_btn_area">
                <button
                  class="cartBtn"
                  data-ref-goodsno="A000000181325"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                >
                  장바구니</button
                ><button
                  class="btn_new_pop goodsList"
                  name="Cat100000100100001_Small"
                >
                  새창보기
                </button>
              </p>
            </div>
          </li>

          <!-- 부가정보수집 -->

          <li criteo-goods="A000000168302001" class="" data-index="3">
            <div class="prd_info">
              <a
                href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168302&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=4"
                name="Cat100000100100001_Small"
                class="prd_thumb goodsList"
                data-ref-goodsno="A000000168302"
                data-attr="카테고리상세^검색결과상품_신상품순^갸스비 피부 순한 딥 클렌징 폼 150ml^4"
                data-ref-dispcatno="100000100100001"
                data-ref-itemno="001"
                data-trk="/Cat100000100100001_Small"
                data-impression="A000000168302^카테고리상세_검색결과상품_신상품순^4"
                onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000168302", "", "ee-productClick", "카테고리상세_검색결과상품", "4");'
                data-impression-visibility="1"
                ><img
                  src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016830201ko.jpg?l=ko"
                  alt="갸스비 피부 순한 딥 클렌징 폼 150ml"
                  onerror="common.errorImg(this);"
                /><span class="status_flag soldout">일시품절</span></a
              >
              <div class="prd_name">
                <a
                  href="javascript:;"
                  name="Cat100000100100001_Small"
                  class="goodsList"
                  data-ref-goodsno="A000000168302"
                  data-attr="카테고리상세^검색결과상품_신상품순^갸스비 피부 순한 딥 클렌징 폼 150ml^4"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                  data-trk="/Cat100000100100001_Small"
                  onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000168302", "", "ee-productClick", "카테고리상세_검색결과상품", "4");'
                  ><span class="tx_brand">갸스비</span>
                  <p class="tx_name">갸스비 피부 순한 딥 클렌징 폼 150ml</p></a
                >
              </div>
              <button class="btn_zzim jeem" data-ref-goodsno="A000000168302">
                <span>찜하기전</span>
              </button>
              <p class="prd_price">
                <span class="tx_org"><span class="tx_num">15,000</span>원 </span
                ><span class="tx_cur"
                  ><span class="tx_num">4,500</span>원
                </span>
              </p>
              <p class="prd_flag">
                <span class="icon_flag sale">세일</span
                ><span class="icon_flag gift">증정</span
                ><span class="icon_flag delivery">오늘드림</span>
              </p>
              <p class="prd_point_area tx_num">
                <span class="review_point"
                  ><span class="point" style="width: 96%"
                    >10점만점에 5.5점</span
                  ></span
                >(28)
              </p>
              <p class="prd_btn_area">
                <button
                  class="cartBtn"
                  data-ref-goodsno="A000000168302"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                >
                  장바구니</button
                ><button
                  class="btn_new_pop goodsList"
                  name="Cat100000100100001_Small"
                >
                  새창보기
                </button>
              </p>
            </div>
          </li>
        </ul>

        <!-- 부가정보수집 -->

        <ul class="cate_prd_list gtm_cate_list">
          <li criteo-goods="A000000162625001" class="flag" data-index="4">
            <div class="prd_info">
              <a
                href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162625&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=5"
                name="Cat100000100100001_Small"
                class="prd_thumb goodsList"
                data-ref-goodsno="A000000162625"
                data-attr="카테고리상세^검색결과상품_신상품순^가히 크림 클렌징 폼 80ml^5"
                data-ref-dispcatno="100000100100001"
                data-ref-itemno="001"
                data-trk="/Cat100000100100001_Small"
                data-impression="A000000162625^카테고리상세_검색결과상품_신상품순^5"
                onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000162625", "", "ee-productClick", "카테고리상세_검색결과상품", "5");'
                data-impression-visibility="1"
                ><img
                  src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016262508ko.jpg?l=ko"
                  alt="가히 크림 클렌징 폼 80ml"
                  onerror="common.errorImg(this);"
              /></a>
              <div class="prd_name">
                <a
                  href="javascript:;"
                  name="Cat100000100100001_Small"
                  class="goodsList"
                  data-ref-goodsno="A000000162625"
                  data-attr="카테고리상세^검색결과상품_신상품순^가히 크림 클렌징 폼 80ml^5"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                  data-trk="/Cat100000100100001_Small"
                  onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000162625", "", "ee-productClick", "카테고리상세_검색결과상품", "5");'
                  ><span class="tx_brand">가히</span>
                  <p class="tx_name">가히 크림 클렌징 폼 80ml</p></a
                >
              </div>
              <button class="btn_zzim jeem" data-ref-goodsno="A000000162625">
                <span>찜하기전</span>
              </button>
              <p class="prd_price">
                <span class="tx_cur"
                  ><span class="tx_num">16,800</span>원
                </span>
              </p>
              <p class="prd_flag">
                <span class="icon_flag gift">증정</span
                ><span class="icon_flag delivery">오늘드림</span>
              </p>
              <p class="prd_point_area tx_num">
                <span class="review_point"
                  ><span class="point" style="width: 94%"
                    >10점만점에 5.5점</span
                  ></span
                >(51)
              </p>
              <p class="prd_btn_area">
                <button
                  class="cartBtn"
                  data-ref-goodsno="A000000162625"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                >
                  장바구니</button
                ><button
                  class="btn_new_pop goodsList"
                  name="Cat100000100100001_Small"
                >
                  새창보기
                </button>
              </p>
            </div>
          </li>

          <!-- 부가정보수집 -->

          <li criteo-goods="A000000156956001" class="" data-index="5">
            <div class="prd_info">
              <a
                href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000156956&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=6"
                name="Cat100000100100001_Small"
                class="prd_thumb goodsList"
                data-ref-goodsno="A000000156956"
                data-attr="카테고리상세^검색결과상품_신상품순^[단독기획] 그라펜 제주해수 버블클렌저 150ml (단품 / 1+1 기획)^6"
                data-ref-dispcatno="100000100100001"
                data-ref-itemno="001"
                data-trk="/Cat100000100100001_Small"
                data-impression="A000000156956^카테고리상세_검색결과상품_신상품순^6"
                onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000156956", "", "ee-productClick", "카테고리상세_검색결과상품", "6");'
                data-impression-visibility="1"
                ><img
                  src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015695605ko.jpg?l=ko"
                  alt="[단독기획] 그라펜 제주해수 버블클렌저 150ml (단품 / 1+1 기획)"
                  onerror="common.errorImg(this);"
              /></a>
              <div class="prd_name">
                <a
                  href="javascript:;"
                  name="Cat100000100100001_Small"
                  class="goodsList"
                  data-ref-goodsno="A000000156956"
                  data-attr="카테고리상세^검색결과상품_신상품순^[단독기획] 그라펜 제주해수 버블클렌저 150ml (단품 / 1+1 기획)^6"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                  data-trk="/Cat100000100100001_Small"
                  onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000156956", "", "ee-productClick", "카테고리상세_검색결과상품", "6");'
                  ><span class="tx_brand">그라펜</span>
                  <p class="tx_name">
                    [단독기획] 그라펜 제주해수 버블클렌저 150ml (단품 / 1+1
                    기획)
                  </p></a
                >
              </div>
              <button class="btn_zzim jeem" data-ref-goodsno="A000000156956">
                <span>찜하기전</span>
              </button>
              <p class="prd_price">
                <span class="tx_org"
                  ><span class="tx_num">15,000</span>원 ~</span
                ><span class="tx_cur"
                  ><span class="tx_num">10,800</span>원 ~</span
                >
              </p>
              <p class="prd_flag">
                <span class="icon_flag sale">세일</span
                ><span class="icon_flag delivery">오늘드림</span>
              </p>
              <p class="prd_point_area tx_num">
                <span class="review_point"
                  ><span class="point" style="width: 96%"
                    >10점만점에 5.5점</span
                  ></span
                >(166)
              </p>
              <p class="prd_btn_area">
                <button
                  class="cartBtn"
                  data-ref-goodsno="A000000156956"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                >
                  장바구니</button
                ><button
                  class="btn_new_pop goodsList"
                  name="Cat100000100100001_Small"
                >
                  새창보기
                </button>
              </p>
            </div>
          </li>

          <!-- 부가정보수집 -->

          <li criteo-goods="A000000145275001" class="" data-index="6">
            <div class="prd_info">
              <a
                href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000145275&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=7"
                name="Cat100000100100001_Small"
                class="prd_thumb goodsList"
                data-ref-goodsno="A000000145275"
                data-attr="카테고리상세^검색결과상품_신상품순^닥터디퍼런트 제로 클렌저 200ml (지성)^7"
                data-ref-dispcatno="100000100100001"
                data-ref-itemno="001"
                data-trk="/Cat100000100100001_Small"
                data-impression="A000000145275^카테고리상세_검색결과상품_신상품순^7"
                onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000145275", "", "ee-productClick", "카테고리상세_검색결과상품", "7");'
                data-impression-visibility="1"
                ><img
                  src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014527506ko.jpg?l=ko"
                  alt="닥터디퍼런트 제로 클렌저 200ml (지성)"
                  onerror="common.errorImg(this);"
              /></a>
              <div class="prd_name">
                <a
                  href="javascript:;"
                  name="Cat100000100100001_Small"
                  class="goodsList"
                  data-ref-goodsno="A000000145275"
                  data-attr="카테고리상세^검색결과상품_신상품순^닥터디퍼런트 제로 클렌저 200ml (지성)^7"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                  data-trk="/Cat100000100100001_Small"
                  onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000145275", "", "ee-productClick", "카테고리상세_검색결과상품", "7");'
                  ><span class="tx_brand">닥터디퍼런트</span>
                  <p class="tx_name">
                    닥터디퍼런트 제로 클렌저 200ml (지성)
                  </p></a
                >
              </div>
              <button class="btn_zzim jeem" data-ref-goodsno="A000000145275">
                <span>찜하기전</span>
              </button>
              <p class="prd_price">
                <span class="tx_cur"
                  ><span class="tx_num">28,000</span>원
                </span>
              </p>
              <p class="prd_flag">
                <span class="icon_flag gift">증정</span
                ><span class="icon_flag delivery">오늘드림</span>
              </p>
              <p class="prd_point_area tx_num">
                <span class="review_point"
                  ><span class="point" style="width: 96%"
                    >10점만점에 5.5점</span
                  ></span
                >(105)
              </p>
              <p class="prd_btn_area">
                <button
                  class="cartBtn"
                  data-ref-goodsno="A000000145275"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                >
                  장바구니</button
                ><button
                  class="btn_new_pop goodsList"
                  name="Cat100000100100001_Small"
                >
                  새창보기
                </button>
              </p>
            </div>
          </li>

          <!-- 부가정보수집 -->

          <li criteo-goods="A000000145274001" class="" data-index="7">
            <div class="prd_info">
              <a
                href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000145274&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=8"
                name="Cat100000100100001_Small"
                class="prd_thumb goodsList"
                data-ref-goodsno="A000000145274"
                data-attr="카테고리상세^검색결과상품_신상품순^닥터디퍼런트 제로 클렌저 200ml (중건성)^8"
                data-ref-dispcatno="100000100100001"
                data-ref-itemno="001"
                data-trk="/Cat100000100100001_Small"
                data-impression="A000000145274^카테고리상세_검색결과상품_신상품순^8"
                onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000145274", "", "ee-productClick", "카테고리상세_검색결과상품", "8");'
                data-impression-visibility="1"
                ><img
                  src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014527404ko.jpg?l=ko"
                  alt="닥터디퍼런트 제로 클렌저 200ml (중건성)"
                  onerror="common.errorImg(this);"
              /></a>
              <div class="prd_name">
                <a
                  href="javascript:;"
                  name="Cat100000100100001_Small"
                  class="goodsList"
                  data-ref-goodsno="A000000145274"
                  data-attr="카테고리상세^검색결과상품_신상품순^닥터디퍼런트 제로 클렌저 200ml (중건성)^8"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                  data-trk="/Cat100000100100001_Small"
                  onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000145274", "", "ee-productClick", "카테고리상세_검색결과상품", "8");'
                  ><span class="tx_brand">닥터디퍼런트</span>
                  <p class="tx_name">
                    닥터디퍼런트 제로 클렌저 200ml (중건성)
                  </p></a
                >
              </div>
              <button class="btn_zzim jeem" data-ref-goodsno="A000000145274">
                <span>찜하기전</span>
              </button>
              <p class="prd_price">
                <span class="tx_org"><span class="tx_num">25,000</span>원 </span
                ><span class="tx_cur"
                  ><span class="tx_num">20,000</span>원
                </span>
              </p>
              <p class="prd_flag">
                <span class="icon_flag sale">세일</span
                ><span class="icon_flag gift">증정</span
                ><span class="icon_flag delivery">오늘드림</span>
              </p>
              <p class="prd_point_area tx_num">
                <span class="review_point"
                  ><span class="point" style="width: 96%"
                    >10점만점에 5.5점</span
                  ></span
                >(101)
              </p>
              <p class="prd_btn_area">
                <button
                  class="cartBtn"
                  data-ref-goodsno="A000000145274"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                >
                  장바구니</button
                ><button
                  class="btn_new_pop goodsList"
                  name="Cat100000100100001_Small"
                >
                  새창보기
                </button>
              </p>
            </div>
          </li>
        </ul>

        <!-- 부가정보수집 -->

        <ul class="cate_prd_list gtm_cate_list">
          <li criteo-goods="A000000145273001" class="flag" data-index="8">
            <div class="prd_info">
              <a
                href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000145273&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=9"
                name="Cat100000100100001_Small"
                class="prd_thumb goodsList"
                data-ref-goodsno="A000000145273"
                data-attr="카테고리상세^검색결과상품_신상품순^닥터디퍼런트 퍼스트클렌저 200ml^9"
                data-ref-dispcatno="100000100100001"
                data-ref-itemno="001"
                data-trk="/Cat100000100100001_Small"
                data-impression="A000000145273^카테고리상세_검색결과상품_신상품순^9"
                onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000145273", "", "ee-productClick", "카테고리상세_검색결과상품", "9");'
                data-impression-visibility="1"
                ><img
                  src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014527304ko.jpg?l=ko"
                  alt="닥터디퍼런트 퍼스트클렌저 200ml"
                  onerror="common.errorImg(this);"
              /></a>
              <div class="prd_name">
                <a
                  href="javascript:;"
                  name="Cat100000100100001_Small"
                  class="goodsList"
                  data-ref-goodsno="A000000145273"
                  data-attr="카테고리상세^검색결과상품_신상품순^닥터디퍼런트 퍼스트클렌저 200ml^9"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                  data-trk="/Cat100000100100001_Small"
                  onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000145273", "", "ee-productClick", "카테고리상세_검색결과상품", "9");'
                  ><span class="tx_brand">닥터디퍼런트</span>
                  <p class="tx_name">닥터디퍼런트 퍼스트클렌저 200ml</p></a
                >
              </div>
              <button class="btn_zzim jeem" data-ref-goodsno="A000000145273">
                <span>찜하기전</span>
              </button>
              <p class="prd_price">
                <span class="tx_org"><span class="tx_num">23,000</span>원 </span
                ><span class="tx_cur"
                  ><span class="tx_num">18,400</span>원
                </span>
              </p>
              <p class="prd_flag">
                <span class="icon_flag sale">세일</span
                ><span class="icon_flag gift">증정</span
                ><span class="icon_flag delivery">오늘드림</span>
              </p>
              <p class="prd_point_area tx_num">
                <span class="review_point"
                  ><span class="point" style="width: 88%"
                    >10점만점에 5.5점</span
                  ></span
                >(27)
              </p>
              <p class="prd_btn_area">
                <button
                  class="cartBtn"
                  data-ref-goodsno="A000000145273"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                >
                  장바구니</button
                ><button
                  class="btn_new_pop goodsList"
                  name="Cat100000100100001_Small"
                >
                  새창보기
                </button>
              </p>
            </div>
          </li>

          <!-- 부가정보수집 -->

          <li criteo-goods="A000000141736001" class="" data-index="9">
            <div class="prd_info">
              <a
                href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000141736&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=10"
                name="Cat100000100100001_Small"
                class="prd_thumb goodsList"
                data-ref-goodsno="A000000141736"
                data-attr="카테고리상세^검색결과상품_신상품순^네오젠 더마로지 카밍시카트리 미셀라 클렌징 폼 200ml^10"
                data-ref-dispcatno="100000100100001"
                data-ref-itemno="001"
                data-trk="/Cat100000100100001_Small"
                data-impression="A000000141736^카테고리상세_검색결과상품_신상품순^10"
                onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000141736", "", "ee-productClick", "카테고리상세_검색결과상품", "10");'
                data-impression-visibility="1"
                ><img
                  src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014173606ko.jpg?l=ko"
                  alt="네오젠 더마로지 카밍시카트리 미셀라 클렌징 폼 200ml"
                  onerror="common.errorImg(this);"
              /></a>
              <div class="prd_name">
                <a
                  href="javascript:;"
                  name="Cat100000100100001_Small"
                  class="goodsList"
                  data-ref-goodsno="A000000141736"
                  data-attr="카테고리상세^검색결과상품_신상품순^네오젠 더마로지 카밍시카트리 미셀라 클렌징 폼 200ml^10"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                  data-trk="/Cat100000100100001_Small"
                  onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000141736", "", "ee-productClick", "카테고리상세_검색결과상품", "10");'
                  ><span class="tx_brand">네오젠</span>
                  <p class="tx_name">
                    네오젠 더마로지 카밍시카트리 미셀라 클렌징 폼 200ml
                  </p></a
                >
              </div>
              <button class="btn_zzim jeem" data-ref-goodsno="A000000141736">
                <span>찜하기전</span>
              </button>
              <p class="prd_price">
                <span class="tx_cur"
                  ><span class="tx_num">14,000</span>원
                </span>
              </p>
              <p class="prd_point_area tx_num">
                <span class="review_point"
                  ><span class="point" style="width: 96%"
                    >10점만점에 5.5점</span
                  ></span
                >(13)
              </p>
              <p class="prd_btn_area">
                <button
                  class="cartBtn"
                  data-ref-goodsno="A000000141736"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                >
                  장바구니</button
                ><button
                  class="btn_new_pop goodsList"
                  name="Cat100000100100001_Small"
                >
                  새창보기
                </button>
              </p>
            </div>
          </li>

          <!-- 부가정보수집 -->

          <li criteo-goods="A000000130399001" class="" data-index="10">
            <div class="prd_info">
              <a
                href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000130399&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=11"
                name="Cat100000100100001_Small"
                class="prd_thumb goodsList"
                data-ref-goodsno="A000000130399"
                data-attr="카테고리상세^검색결과상품_신상품순^그레이멜린 센텔라 크레이지 폼 클렌저 500ml^11"
                data-ref-dispcatno="100000100100001"
                data-ref-itemno="001"
                data-trk="/Cat100000100100001_Small"
                data-impression="A000000130399^카테고리상세_검색결과상품_신상품순^11"
                onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000130399", "", "ee-productClick", "카테고리상세_검색결과상품", "11");'
                data-impression-visibility="1"
                ><img
                  src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0013/A00000013039907ko.jpg?l=ko"
                  alt="그레이멜린 센텔라 크레이지 폼 클렌저 500ml"
                  onerror="common.errorImg(this);"
                /><span class="status_flag soldout">일시품절</span></a
              >
              <div class="prd_name">
                <a
                  href="javascript:;"
                  name="Cat100000100100001_Small"
                  class="goodsList"
                  data-ref-goodsno="A000000130399"
                  data-attr="카테고리상세^검색결과상품_신상품순^그레이멜린 센텔라 크레이지 폼 클렌저 500ml^11"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                  data-trk="/Cat100000100100001_Small"
                  onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000130399", "", "ee-productClick", "카테고리상세_검색결과상품", "11");'
                  ><span class="tx_brand">그레이멜린</span>
                  <p class="tx_name">
                    그레이멜린 센텔라 크레이지 폼 클렌저 500ml
                  </p></a
                >
              </div>
              <button class="btn_zzim jeem" data-ref-goodsno="A000000130399">
                <span>찜하기전</span>
              </button>
              <p class="prd_price">
                <span class="tx_org"><span class="tx_num">15,000</span>원 </span
                ><span class="tx_cur"
                  ><span class="tx_num">10,600</span>원
                </span>
              </p>
              <p class="prd_flag">
                <span class="icon_flag sale">세일</span
                ><span class="icon_flag delivery">오늘드림</span>
              </p>
              <p class="prd_point_area tx_num">
                <span class="review_point"
                  ><span class="point" style="width: 92%"
                    >10점만점에 5.5점</span
                  ></span
                >(144)
              </p>
              <p class="prd_btn_area">
                <button
                  class="cartBtn"
                  data-ref-goodsno="A000000130399"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                >
                  장바구니</button
                ><button
                  class="btn_new_pop goodsList"
                  name="Cat100000100100001_Small"
                >
                  새창보기
                </button>
              </p>
            </div>
          </li>

          <!-- 부가정보수집 -->

          <li criteo-goods="A000000130396001" class="" data-index="11">
            <div class="prd_info">
              <a
                href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000130396&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=12"
                name="Cat100000100100001_Small"
                class="prd_thumb goodsList"
                data-ref-goodsno="A000000130396"
                data-attr="카테고리상세^검색결과상품_신상품순^그레이멜린 아스타잔틴 크레이지 폼 클렌저 500ml^12"
                data-ref-dispcatno="100000100100001"
                data-ref-itemno="001"
                data-trk="/Cat100000100100001_Small"
                data-impression="A000000130396^카테고리상세_검색결과상품_신상품순^12"
                onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000130396", "", "ee-productClick", "카테고리상세_검색결과상품", "12");'
                data-impression-visibility="1"
                ><img
                  src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0013/A00000013039605ko.jpg?l=ko"
                  alt="그레이멜린 아스타잔틴 크레이지 폼 클렌저 500ml"
                  onerror="common.errorImg(this);"
                /><span class="status_flag soldout">일시품절</span></a
              >
              <div class="prd_name">
                <a
                  href="javascript:;"
                  name="Cat100000100100001_Small"
                  class="goodsList"
                  data-ref-goodsno="A000000130396"
                  data-attr="카테고리상세^검색결과상품_신상품순^그레이멜린 아스타잔틴 크레이지 폼 클렌저 500ml^12"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                  data-trk="/Cat100000100100001_Small"
                  onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000130396", "", "ee-productClick", "카테고리상세_검색결과상품", "12");'
                  ><span class="tx_brand">그레이멜린</span>
                  <p class="tx_name">
                    그레이멜린 아스타잔틴 크레이지 폼 클렌저 500ml
                  </p></a
                >
              </div>
              <button class="btn_zzim jeem" data-ref-goodsno="A000000130396">
                <span>찜하기전</span>
              </button>
              <p class="prd_price">
                <span class="tx_cur"
                  ><span class="tx_num">15,000</span>원
                </span>
              </p>
              <p class="prd_flag">
                <span class="icon_flag delivery">오늘드림</span>
              </p>
              <p class="prd_point_area tx_num">
                <span class="review_point"
                  ><span class="point" style="width: 90%"
                    >10점만점에 5.5점</span
                  ></span
                >(218)
              </p>
              <p class="prd_btn_area">
                <button
                  class="cartBtn"
                  data-ref-goodsno="A000000130396"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                >
                  장바구니</button
                ><button
                  class="btn_new_pop goodsList"
                  name="Cat100000100100001_Small"
                >
                  새창보기
                </button>
              </p>
            </div>
          </li>
        </ul>

        <!-- 부가정보수집 -->

        <ul class="cate_prd_list gtm_cate_list">
          <li criteo-goods="A000000130393001" class="flag" data-index="12">
            <div class="prd_info">
              <a
                href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000130393&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=13"
                name="Cat100000100100001_Small"
                class="prd_thumb goodsList"
                data-ref-goodsno="A000000130393"
                data-attr="카테고리상세^검색결과상품_신상품순^그레이멜린 차콜 크레이지폼 클렌저 500ml^13"
                data-ref-dispcatno="100000100100001"
                data-ref-itemno="001"
                data-trk="/Cat100000100100001_Small"
                data-impression="A000000130393^카테고리상세_검색결과상품_신상품순^13"
                onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000130393", "", "ee-productClick", "카테고리상세_검색결과상품", "13");'
                data-impression-visibility="1"
                ><img
                  src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0013/A00000013039306ko.jpg?l=ko"
                  alt="그레이멜린 차콜 크레이지폼 클렌저 500ml"
                  onerror="common.errorImg(this);"
              /></a>
              <div class="prd_name">
                <a
                  href="javascript:;"
                  name="Cat100000100100001_Small"
                  class="goodsList"
                  data-ref-goodsno="A000000130393"
                  data-attr="카테고리상세^검색결과상품_신상품순^그레이멜린 차콜 크레이지폼 클렌저 500ml^13"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                  data-trk="/Cat100000100100001_Small"
                  onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000130393", "", "ee-productClick", "카테고리상세_검색결과상품", "13");'
                  ><span class="tx_brand">그레이멜린</span>
                  <p class="tx_name">
                    그레이멜린 차콜 크레이지폼 클렌저 500ml
                  </p></a
                >
              </div>
              <button class="btn_zzim jeem" data-ref-goodsno="A000000130393">
                <span>찜하기전</span>
              </button>
              <p class="prd_price">
                <span class="tx_org"><span class="tx_num">15,000</span>원 </span
                ><span class="tx_cur"
                  ><span class="tx_num">10,600</span>원
                </span>
              </p>
              <p class="prd_flag">
                <span class="icon_flag sale">세일</span
                ><span class="icon_flag delivery">오늘드림</span>
              </p>
              <p class="prd_point_area tx_num">
                <span class="review_point"
                  ><span class="point" style="width: 88%"
                    >10점만점에 5.5점</span
                  ></span
                >(195)
              </p>
              <p class="prd_btn_area">
                <button
                  class="cartBtn"
                  data-ref-goodsno="A000000130393"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                >
                  장바구니</button
                ><button
                  class="btn_new_pop goodsList"
                  name="Cat100000100100001_Small"
                >
                  새창보기
                </button>
              </p>
            </div>
          </li>

          <!-- 부가정보수집 -->

          <li criteo-goods="A000000130391001" class="" data-index="13">
            <div class="prd_info">
              <a
                href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000130391&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=14"
                name="Cat100000100100001_Small"
                class="prd_thumb goodsList"
                data-ref-goodsno="A000000130391"
                data-attr="카테고리상세^검색결과상품_신상품순^그레이멜린 그린티 크레이지 폼클렌저 500ml^14"
                data-ref-dispcatno="100000100100001"
                data-ref-itemno="001"
                data-trk="/Cat100000100100001_Small"
                data-impression="A000000130391^카테고리상세_검색결과상품_신상품순^14"
                onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000130391", "", "ee-productClick", "카테고리상세_검색결과상품", "14");'
                data-impression-visibility="1"
                ><img
                  src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0013/A00000013039104ko.jpg?l=ko"
                  alt="그레이멜린 그린티 크레이지 폼클렌저 500ml"
                  onerror="common.errorImg(this);"
              /></a>
              <div class="prd_name">
                <a
                  href="javascript:;"
                  name="Cat100000100100001_Small"
                  class="goodsList"
                  data-ref-goodsno="A000000130391"
                  data-attr="카테고리상세^검색결과상품_신상품순^그레이멜린 그린티 크레이지 폼클렌저 500ml^14"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                  data-trk="/Cat100000100100001_Small"
                  onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000130391", "", "ee-productClick", "카테고리상세_검색결과상품", "14");'
                  ><span class="tx_brand">그레이멜린</span>
                  <p class="tx_name">
                    그레이멜린 그린티 크레이지 폼클렌저 500ml
                  </p></a
                >
              </div>
              <button class="btn_zzim jeem" data-ref-goodsno="A000000130391">
                <span>찜하기전</span>
              </button>
              <p class="prd_price">
                <span class="tx_cur"
                  ><span class="tx_num">15,000</span>원
                </span>
              </p>
              <p class="prd_flag">
                <span class="icon_flag delivery">오늘드림</span>
              </p>
              <p class="prd_point_area tx_num">
                <span class="review_point"
                  ><span class="point" style="width: 94%"
                    >10점만점에 5.5점</span
                  ></span
                >(150)
              </p>
              <p class="prd_btn_area">
                <button
                  class="cartBtn"
                  data-ref-goodsno="A000000130391"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                >
                  장바구니</button
                ><button
                  class="btn_new_pop goodsList"
                  name="Cat100000100100001_Small"
                >
                  새창보기
                </button>
              </p>
            </div>
          </li>

          <!-- 부가정보수집 -->

          <li criteo-goods="A000000101991001" class="" data-index="14">
            <div class="prd_info">
              <a
                href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000101991&amp;dispCatNo=100000100100001&amp;trackingCd=Cat100000100100001_Small&amp;t_page=카테고리관&amp;t_click=클렌징폼/젤_소_전체_가히,갸스비,그라펜,그레이멜린,네오젠,닥터디퍼런트_상품상세&amp;t_number=15"
                name="Cat100000100100001_Small"
                class="prd_thumb goodsList"
                data-ref-goodsno="A000000101991"
                data-attr="카테고리상세^검색결과상품_신상품순^네오젠 리얼 프레쉬 폼 그린티 160g^15"
                data-ref-dispcatno="100000100100001"
                data-ref-itemno="001"
                data-trk="/Cat100000100100001_Small"
                data-impression="A000000101991^카테고리상세_검색결과상품_신상품순^15"
                onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000101991", "", "ee-productClick", "카테고리상세_검색결과상품", "15");'
                data-impression-visibility="1"
                ><img
                  src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0010/A00000010199116ko.jpg?l=ko"
                  alt="네오젠 리얼 프레쉬 폼 그린티 160g"
                  onerror="common.errorImg(this);"
                /><span class="status_flag soldout">일시품절</span></a
              >
              <div class="prd_name">
                <a
                  href="javascript:;"
                  name="Cat100000100100001_Small"
                  class="goodsList"
                  data-ref-goodsno="A000000101991"
                  data-attr="카테고리상세^검색결과상품_신상품순^네오젠 리얼 프레쉬 폼 그린티 160g^15"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                  data-trk="/Cat100000100100001_Small"
                  onclick='javascript: gtm.goods.callGoodsGtmInfo("A000000101991", "", "ee-productClick", "카테고리상세_검색결과상품", "15");'
                  ><span class="tx_brand">네오젠</span>
                  <p class="tx_name">네오젠 리얼 프레쉬 폼 그린티 160g</p></a
                >
              </div>
              <button class="btn_zzim jeem" data-ref-goodsno="A000000101991">
                <span>찜하기전</span>
              </button>
              <p class="prd_price">
                <span class="tx_org"><span class="tx_num">15,900</span>원 </span
                ><span class="tx_cur"
                  ><span class="tx_num">11,900</span>원
                </span>
              </p>
              <p class="prd_flag">
                <span class="icon_flag sale">세일</span
                ><span class="icon_flag delivery">오늘드림</span>
              </p>
              <p class="prd_point_area tx_num">
                <span class="review_point"
                  ><span class="point" style="width: 92%"
                    >10점만점에 5.5점</span
                  ></span
                >(595)
              </p>
              <p class="prd_btn_area">
                <button
                  class="cartBtn"
                  data-ref-goodsno="A000000101991"
                  data-ref-dispcatno="100000100100001"
                  data-ref-itemno="001"
                >
                  장바구니</button
                ><button
                  class="btn_new_pop goodsList"
                  name="Cat100000100100001_Small"
                >
                  새창보기
                </button>
              </p>
            </div>
          </li>

          <!-- 부가정보수집 -->
        </ul>
      </div>

      <div class="pageing">
        <strong title="현재 페이지">1</strong>
      </div>
    </div>
<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>