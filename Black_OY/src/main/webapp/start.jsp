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

<style>	
	* {
		box-sizing: border-box;
	}
	
	html, body {
		font-family: fantasy;
		font-size: 25px;
		height: 100%;
		text-align: center;
		vertical-align: middle;
	}
	
	a {
		text-decoration: none;
		color: black;
		opacity: 0.7;
		border: 2px solid;
		border-radius: 10px;
		padding: 10px;
		display: inline-block;
		margin: 5px;
	}
	
	a:hover {
		opacity: 1;
		color: blue;
	}
</style>

</head>
<body>
<div>


<a href="<%=contextPath%>/view/product/pmidlistproduct.do?displNum=00010002&sort=1&currentpage=1&brandId=br_00000108&brandId=br_00000107">Mid,smallproductList</a>
<br>
<a href="<%=contextPath%>/olive/productDetail.do?displNum=00010002">productDetail</a>
<br>
<a href="<%=contextPath%>/olive/review.do">review</a>
<br>
<br>
<a href="<%=contextPath %>/olive/main.do">main page</a>


</div>
</body>
</html>