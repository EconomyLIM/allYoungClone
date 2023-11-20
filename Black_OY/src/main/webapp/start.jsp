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
<title>블랙올리브영 온라인몰</title>

<style>	
	* {
		box-sizing: border-box;
	}
	
	html, body {
		font-family: fantasy;
		font-size: 20px;
		height: 100%;
		margin: 20px;
	}
	
	a {
		text-decoration: none;
		color: #1a0dab;
		padding: 10px;
		display: inline-block;
		margin: 5px;
	}
	
	a:hover {
		text-decoration: underline;
	}
	
	input {
		padding: 15px;
		border: none;
		box-shadow: 1px 1px 5px black;
		width: 500px;
		border-radius: 20px;
		outline: none;
		top: 50%;
	}
	
	img {
		display: inline-block;
		width: 150px;
		height: 100px;
	}
</style>

</head>
<body>
<div>
<div class="container">
	<img src="/Black_OY/images/black_olive.png" alt="">
	<input type="text" placeholder="검색어를 입력해주세요.">
</div>
<br>
<a href="<%=contextPath%>/view/product/pmidlistproduct.do?displNum=00010002&sort=1&currentpage=1&brandId=br_00000108&brandId=br_00000107">Mid,smallproductList</a>
<br>
<br>
<a href="<%=contextPath%>/olive/productDetail.do?displNum=00010002">productDetail</a>
<br>
<br>
<a href="<%=contextPath%>/olive/review.do">review</a>
<br>
<br>
<a href="<%=contextPath %>/olive/main.do">main page</a>
<br>
<br>


</div>
</body>
</html>