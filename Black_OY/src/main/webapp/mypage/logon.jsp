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

<div id="Container" class="bgf6">
	<div id="Contents">
		
		
			
			<div class="loginArea new login">
				
				
				
					
					
						<div class="loginTit">
							<h2>로그인</h2>
							<p>올리브영의 다양한 서비스와 혜택을 누리세요.</p>
						</div>
					
				
				<form id="formLogin" name="formLogin">
					<input type="hidden" id="bSId" name="bSId" value="">	<!-- 아이디 저장 -->
					<input type="hidden" id="captchaYn" name="captchaYn" value="N"><!-- captcha 자동입력 방지 정보 -->
					
					<div class="loginForm">
						<ul>
							<li>
								<label for="loginId" class="ir">아이디를 입력해 주세요.</label>
								<input type="text" id="loginId" placeholder="CJ ONE 통합회원 아이디 입력" name="loginId" width="100" value="" autocomplete="off" title="아이디를 입력해 주세요.">
							</li>
							<li>
								<label for="password" class="ir">비밀번호를 입력해 주세요.</label>
								<input type="password" value="" id="password" placeholder="비밀번호 (8-12자 영문자+숫자+특수문자)" name="password" width="100" onkeyup="javascript:login.tryLogin(event);" autocomplete="off" title="비밀번호를 입력해 주세요.">
							</li>
						</ul>
						<div class="loginError" style="display:none;">
							<p>정보보호를 위해 아이디, 비밀번호와 함께 자동입력 방지문자를 입력하셔야 합니다.</p>
							<div class="errorBox">
								<!-- <div id="catpcha"></div> -->
								<div id="audiocatpch" style="display:none;"></div>
								<span class="imgArea" id="captcha">
							</span>
								<button type="button" id="reLoad" class="btnRefresh">새로고침</button>
								<button type="button" id="soundOnHna" class="btnSound">음성듣기</button>
							</div>
							<div class="placeholder_area middle"><label for="autoBlockText">자동 입력 방지 문자</label><input type="text" id="autoBlockText" name="answer" autocomplete="off" value="" title="자동 입력 방지 문자를 입력해 주세요." class="inp_placeholder inp_mid" data-placeholder="자동 입력 방지 문자"></div>
						</div>
						<div class="linkChk">
							<div class="save">
								<input type="checkbox" id="chk01" name="saveLoginIdYn" title="아이디 저장 선택" value="Y" checked="checked"><label for="chk01">아이디 저장</label>
								<input type="hidden" name="loginFormYn" value="Y">
							</div>
							<div class="link">
								<a href="javascript:;" onclick="javascirpt:login.findId();">아이디 찾기</a>
								<a href="javascript:;" onclick="javascirpt:login.findPasswd();">비밀번호 찾기</a>
							</div>
						</div>
						<div class="btnArea">
							<button type="button" class="btnGreen" onclick="javascript:login.doLogin();" data-attr="로그인^로그인^로그인">로그인</button>
							<!-- 로그인 버튼 클릭시 로그인 시도 스크립트 실행 -->
						</div>
						
							<div class="fast_login clrfix">
								<p class="txt">카카오로 올리브영 간편하게 시작하기</p>
								<div class="area">
									<a href="javascript:loginWithKakao();" class="btnlogin kakao" data-attr="로그인^카카오로그인^카카오 로그인"><span class="icon">카카오로 시작하기</span></a>
								</div>
							</div>
						
						<div class="info renew-info">
							<div class="info-box">
								<div class="logo-box">
									<img src="https://static.oliveyoung.co.kr/pc-static-root/image/login/ico_cjone_230828.png" alt="CJ ONE 로고 이미지">
								</div>
								<p>CJ ONE 통합회원으로 가입하시면 올리브영의<br>다양한 서비스를 이용하실 수 있습니다.</p>
							</div>
							
							
								
								
									<a href="javascript:login.memberJoin('N', '');" class="btnCjone" id="memberJoin" data-attr="로그인^회원가입^cjone통합회원가입">CJ ONE 통합 가입</a>
								
							
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>