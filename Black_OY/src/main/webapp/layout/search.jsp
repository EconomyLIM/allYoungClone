<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


<div class="brand_area" id="ark_brand" style="display: block;">
	
	<c:if test="${not empty brandSearch }">
	<a href="<%=contextPath %>/brand/product.do?brandId=${brandSearch.brand_id}"
		onclick="moveBrandShopForSearch('A003585', '통합검색결과페이지', '연관브랜드관', '가히');"
		class="brand_box high" data-attr="공통^통합검색_브랜드관바로가기^가히"
		style="background-image: url(${brandSearch.brand_img_src});">
		<strong><span class="keyword">${brandSearch.brand_name }</span></strong> <span>브랜드관 바로가기</span>
	</a>
	</c:if>
	
</div>
<div class="auto_list" id="ark_w" display="none">
	<ul>
		<c:forEach items="${list}" var="item" varStatus="loop">
			<li id="bg${loop.index}"
				onclick="onClickKeywordSearch('${item.prodisplid}','${loop.index}');"
				onmouseover="onMouseOverKeyword(${loop.index});"
				style="background-color: rgb(255, 255, 255); cursor: pointer;">
				<a href="/Black_OY/olive/productDetail.do?goodsNo=${item.prodisplid }&displNum=${item.lid}${item.mid}" data-attr="통합^통합검색_자동완성키워드^${item.prodisplid}">${item.displProName}</a>
			</li>

		</c:forEach>
	</ul>
</div>
