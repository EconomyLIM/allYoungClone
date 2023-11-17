<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
	<c:forEach items="${list}" var="item" varStatus="loop">
    <li id="bg${loop.index}" onclick="onClickKeywordSearch('${item}','${loop.index}');"
        onmouseover="onMouseOverKeyword(${loop.index});"
        style="background-color: rgb(255, 255, 255); cursor: pointer;">
        <a href="#" data-attr="통합^통합검색_자동완성키워드^${item}">${item}</a>
    </li>
</c:forEach>

</body>
</html>