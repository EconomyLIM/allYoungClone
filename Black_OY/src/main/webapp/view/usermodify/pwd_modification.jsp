<%@page import="user.domain.OuserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/inc/include.jspf" %>
<%@ include file="/WEB-INF/inc/session_auth.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/CJbase.css" />
<link rel="stylesheet" href="../../css/CJparticipate.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<body style="height: 914px;">

	<!-- skip navigation -->
	<div class="skipNavi">
		<a href="#contentsWrap">본문으로 바로가기</a>
	</div>

	<div id="bodyWrap">

		<!--header-->
		<div id="part_headerWrap">
			<div class="part_header_wrap">
				<h1 class="cj_logo">
					<span class="logo">CJ ONE</span> TRUE LIFESTYLE MEMBERSHIP
				</h1>
				<div id="coop_header_wrap">
					<p class="part_logo">건강한 아름다움을 제안하는 글로벌 라이프스타일 플랫폼
					<img src="https://www.cjone.com/cjmweb/upfile/20191007_1837101.png" alt="올리브영">
					</p>
				</div>
			</div>
		</div>
		<!--//header-->

		<!-- contents -->
		<div id="contentsWrap">
			<form id="form1" name="form1" method="post" action="<%=contextPath %>/olive/pwdUpdate.do">
				<input type="hidden" name="return_url" id="return_url" value="">
				<input type="hidden" name="pwd" id="pwd" value=""> <input
					type="hidden" name="coopco_cd" id="coopco_cd" value="7030">
				<input type="hidden" name="brnd_cd" id="brnd_cd" value="3000">
				<input type="hidden" name="coop_return_url" id="coop_return_url"
					value="">
				<div id="contents">
					<div class="location_wrap">
						<div class="location">
							<a href="usermodify.jsp" class="home"><span class="haze">홈</span></a>
							<a href="pwdCheck.jsp" class="now"><span>비밀번호 변경</span></a>
						</div>
					</div>
					<div class="cont_header">
						<h1 class="h1_tit">비밀번호 변경</h1>
						<p class="h_desc">고객님의 소중한 정보를 보호하기 위하여 새로운 비밀번호로 변경 후 서비스를 이용해 주세요.</p>
					</div>
					<div class="cont_area">
						<div class="login_sec">
							<!-- 비밀번호 입력 홈 -->
							<div class="member_info change_password">
								<div class="table_col">
									<table>
										<caption>비밀번호 변경을 위한 새 비밀번호, 새 비밀번호 확인 입력을 나타냅니다.</caption>
										<colgroup>
											<col class="title">
											<col class="body">
										</colgroup>
										<tbody>
											<tr class="input">
												<th scope="row"><label for="bef_pwd">현재 비밀번호</label></th>
												<td>
													<div class="input_group">
														<span class="input_txt w250">
														 <input type="password" id="bef_pwd" name="bef_pwd" class="text"
															placeholder="비밀번호를 입력해주세요.">
														</span>
													</div>
												</td>
											</tr>
											<tr class="input">
												<th scope="row"><label for="new_pwd">새 비밀번호</label></th>
												<td>
													<div class="input_group">
														<!-- 160616_수정 -->
														<span class="input_txt w250">
														<input type="password" id="new_pwd" name="new_pwd" class="text"
															placeholder="새 비밀번호를 입력해주세요."></span>
															<span class="pwd_lv"><em id="msg_pwd">강도 : 약함</em></span>
													</div>
												</td>
											</tr>
											<tr class="input">
												<th scope="row"><label for="new_pwd_check">새 비밀번호 확인</label></th>
												<td>
													<div class="input_group">
														<span class="input_txt w250"><input type="password"
															id="new_pwd_check" name="new_pwd_check" class="text"
															placeholder="새 비밀번호를 재입력해주세요."></span>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- // 비밀번호 입력 홈 -->
							<!-- 이용안내 -->
							<div class="box_gray box_btm">
								<dl class="box_info">
									<dt>비밀번호 변경 시 유의사항</dt>
									<dd>
										<ul class="bul_list">
											<li class="dot_arr">영문자, 숫자, 특수문자 조합하여 8~12자리어야 합니다.</li>
											<li class="dot_arr">아이디와 4자리 이상 동일하거나, 4자리 이상 반복되는 문자와
												숫자는 사용이 불가합니다.</li>
											<li class="dot_arr">사용 가능 특수문자:
												!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[]^_`{|}~</li>
											<!-- 사용 가능 특수문자 -->
										</ul>
									</dd>
								</dl>
							</div>
							<!-- // 이용안내 -->
							<div class="btn_sec">
								<button type="button" class="btn" id="btnCancel">나중에</button>
								<button type="button" class="btn btn_em" id="btnChange">비밀번호 변경</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
		<!-- //contents -->

		<!-- footer -->
		<div id="footer">
	
			<div class="footer_wrap">
				<div class="site_info">
					<span class="ceo_info">대표이사 유인상</span>
					<address>주소 04323 서울시 용산구 한강대로 366 트윈시티 10층</address>
					<!--20191021 CJ ONE APP 사업자 정보 주소 변경-->
					<span class="customer_info">CJ ONE 고객센터 1577-8888</span> <span
						class="license_num">사업자 등록번호 104-81-36565</span>
				</div>
				<!--20191112 CJONE APP 사업자 정보 노출 추가-->
				<div class="site_info pd0">
					<span class="ceo_info">호스팅사업자 CJ올리브네트웍스</span> <span
						class="license_num">통신판매업신고번호 2017-서울용산-0451</span>
				</div>
				<!--//20191112 CJONE APP 사업자 정보 노출 추가-->
				<p class="copyright">
					<span class="img">
					<img src="https://www.cjone.com/cjmweb/images/common/logo_cjolivenetworks_footer.png"
						alt="CJ 올리브넥트웍스"></span> Copyright (c)2016 CJ OLIVENETWORKS. All Rights Reserved</p>
				<div class="fixedTop hide" data-control="goTop">
					<a href="#headerWrap" title="페이지 처음으로 이동"><span class="haze">TOP</span></a>
				</div>

			</div>
			<!--//CJ ONE APP 사업자 정보 노출 전체 영역 -->
		</div>
		<!-- //footer -->
	</div>

<script type="text/javascript">

		var pwStrength = false;
		function checkPassword() {
			pwStrength = false;
			var special_chars1 = "\!\"\#$\%\&\'\(\)\*\+\,\-\.\/\:\;\<\=\>\?\@\[\]\^\_\`\{\|\}\~";
			var pw = new Password(document.getElementById('new_pwd').value,
					special_chars1);
			var verdict = pw.getStrength();
			var hint = msgStr;
			if (pw.lcase_count == 0)
				hint += "";
			if (pw.ucase_count == 0)
				hint += "";
			if (pw.num_count == 0)
				hint += "";
			if (pw.schar_count == 0)
				hint += "";
			if (pw.run_score <= 1)
				hint += "";

			alertMsg2("msg_pwd", verdict + " " + hint);
			if (pw.strength >= 38) {
				pwStrength = true;
			}
		}

		function checkPwd1() {

			// 비밀번호 유효성 체크 
			if ($('#new_pwd').val() == "") {
				alertMsg2("msg_pwd", "비밀번호를 입력해 주세요.");
			} else {
				if (!chkPasswordValid()) {
					$('#new_pwd').next().focus();
					setTimeout(function() {
						$('#new_pwd').focus();
					}, 0);
					return false;
				}
				if (!isValid_passwd_with_id($('#new_pwd').val(), '')) {
					$('#new_pwd').next().focus();
					setTimeout(function() {
						$('#new_pwd').focus();
					}, 0);
					return false;
				} else {
					return true;
				}

			}//end else                   
		}
	</script>
<script>
$("#btnCancel").on("click", function () {
	alert('비밀번호 변경을 취소하시겠습니까?');
	location.href = "<%=contextPath%>/olive/usermodify.do";
});
$('#new_pwd_check').keydown(function(event) {
	if (event.keyCode == 13) chkPwd();
});

	//비밀번호 체크
	function chkPwd() {
		var befpwd = $("#bef_pwd").val();
		var userpwd = $("#new_pwd").val();
		var userckpwd = $("#new_pwd_check").val();
		var userid = "${logOn.user_id}";
		var pwdPattern = /^(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&*])[a-zA-Z\d!@#$%^&*]{8,12}$/;
		var num = userpwd.search(/[0-9]/g);
		var eng = userpwd.search(/[a-z]/ig);
		var spe = userpwd.search(/[!"#$%&'()*+,-./:;<=>?@[]^_`{|}~]/gi);
		
		if (befpwd == userpwd) {
			alert("현재 비밀번호와 동일한 비밀번호는 사용할 수 없습니다.");
			$("#new_pwd").focus();
			return false;
		} else if (userpwd.length<8 || userpwd.length>12) {
			alert("영문자, 숫자, 특수문자 모두 최소 1가지 이상 조합하여 8~12자리로 설정 가능합니다.");
			$("#msg_pwd").removeClass("hide");
			$("#new_pwd").focus();
			return false;
		} else if ((num < 0 && eng < 0) || (eng < 0 && spe < 0)
				|| (spe < 0 && num < 0)) {
			alert("영문자, 숫자, 특수문자 모두 최소 1가지 이상 조합하여 8~12자리로 설정 가능합니다.");
			$("#msg_pwd").removeClass("hide");
			$("#new_pwd").focus();
			return false;
		} else if (/(\w)\1\1\1/.test(userpwd)) {
			alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
			$("#msg_pwd").removeClass("hide");
			$("#new_pwd").focus();
			return false;
		} else if (userpwd.search(userid) > -1) {
			alert("비밀번호 설정 시 아이디와 4자리 이상 동일한 문자 또는 숫자를 사용할 수 없습니다.");
			$("#msg_pwd").removeClass("hide");
			$("#new_pwd").focus();
			return false;
		} else if ( userpwd !=userckpwd){
			alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
			$("#msg_pwd_check").removeClass("hide");
			$("#new_pwd").focus();
			return false;
		}
		return true;
	}
	// 패스워드 강도 체크  

		$("#new_pwd").on("change", function () {
			//alert("event");		
		var inputVal = $("#new_pwd").val();	
		var length = inputVal.length;
			if ( length >15) {
				$("#msg_pwd").text("강도 : 강함");
			} else if ( length >13) {
				$("#msg_pwd").text("강도 : 적정");
			}  else if (length >9) {
				$("#msg_pwd").text('강도 : 약함'); 
			}  else{
		       	$("#msg_pwd").text("강도 : 매우약함");
		   }
	});
	
		$(function () {
		     $('#new_pwd_check').keydown(function(event) {
		     	if ( event.which == 13 ){
		     		$("#btnChange").click();	
		     	}
		     });	
		});
		
		$("#btnChange").on("click", function () {
			if (chkPwd() ) {
				$("#form1").submit();
			}
		});

	

</script> 

	<form method="post" name="form2" id="form2">
		<input type="hidden" id="coopco_cd" name="coopco_cd" value="7030">
		<input type="hidden" id="brnd_cd" name="brnd_cd" value="3000">
		<input type="hidden" id="mcht_no" name="mcht_no" value="">
		<input 	type="hidden" id="coop_return_url" name="coop_return_url"
			value="">
	</form>
</body>
</html>