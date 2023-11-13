<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/CJbase.css" />
<link rel="stylesheet" href="../../css/CJparticipate.css" />
</head>
<body style="">
<!--skip navigation-->
<div class="skipNavi">
	<a href="#contentsWrap" class="">본문으로 바로가기</a>
</div>
<!--//skip navigation-->
<div id="bodyWrap" class="wide">
    <!--header-->
        <div id="part_headerWrap">
            <div class="part_header_wrap">
                <h1 class="cj_logo"><span class="logo">CJ ONE</span> TRUE LIFESTYLE MEMBERSHIP</h1>
                    <div id="coop_header_wrap"><p class="part_logo">건강한 아름다움을 제안하는 글로벌 라이프스타일 플랫폼<img src="https://www.cjone.com/cjmweb/upfile/20191007_1837101.png" alt="올리브영"></p></div>
            </div>
        </div>
	<!--//header-->

	<!--contents-->
	<div id="contentsWrap">
		<div id="contents">
			<form method="post" id="form1" name="form1" action="/join.do">
				<input type="hidden" name="coopco_cd" id="coopco_cd" value="7030">
				<input type="hidden" name="brnd_cd" id="brnd_cd" value="3000">
				<input type="hidden" name="mcht_no" id="mcht_no" value="3000">
				<input type="hidden" name="upd_coopco_id" id="upd_coopco_id" value="">
				<input type="hidden" name="coop_return_url" id="coop_return_url" value="">
				<input type="hidden" name="evt_typ" id="evt_typ" value="">
				<input type="hidden" name="sub_type" id="sub_type" value="">
				<input type="hidden" name="tester_yn" id="tester_yn" value="">
				<input type="hidden" name="hg_nm" id="hg_nm" value="">
				<input type="hidden" name="mbr_id" id="mbr_id" value="">
				<input type="hidden" name="mask_mbr_id" id="mask_mbr_id" value="">
				<input type="hidden" name="ci" id="ci" value="">
				<input type="hidden" name="str_msg" id="str_msg" value="">

				<div class="cont_header">
					<h1 class="h1_tit">올리브영+CJ ONE 통합회원 가입</h1>
					<p class="h_desc">통합 아이디로 CJ ONE 브랜드 혜택도 받고! 포인트도 쌓고!</p>
				</div>
				
				<!-- inner -->
				<div class="check_member">
					<div class="box_member">
						<h2 class="haze">가입 여부 확인</h2>
						<!--가입여부확인-->
						<div class="check_member_box">
							<dl class="check_member_txt">
								<dt>회원가입 여부 안내</dt>
								<dd>
									<ul class="bul_list">
										<li class="dot_arr">기존 회원가입 정보와 일치하는 정보를 입력하셔야 회원가입 여부를 정확하게 확인하실 수 있습니다. <em class="em">입력하신 정보는 회원가입 여부에만 사용되며 저장되지 않습니다.</em></li>
										<li class="dot_arr">올리브영, CJ더마켓, CJ온스타일, COOKIT, CJ문화재단, ONEiVERSE 에서는 전자상거래에 의거하여 만 14세 미만의 어린이/학생의 회원가입을 제한합니다.</li>
									</ul>
								</dd>
							</dl>
							
							<div class="check_member_form">
								<span class="input_txt w450"><input type="text" class="text" id="user_nm" name="user_nm" placeholder="이름을 입력해주세요." title="이름을 입력해주세요." data-format="engkor" autocomplete="off"></span>
								<p class="msg_info hide" id="msg_user_nm">이름을 입력하세요.</p>
								<span class="input_txt w450"><input type="text" class="text" id="legl_birth_dy" name="legl_birth_dy" placeholder="법정생년월일 8자리를 입력해주세요." title="법정생년월일 8자리를 입력해주세요." data-format="num" maxlength="8" autocomplete="off"></span>
								<p class="msg_info hide" id="msg_legl_birth_dy">법정생년월일을 정확히 입력해 주세요.</p>
								<span class="input_txt w450"><input type="text" class="text" id="mob_no" name="mob_no" placeholder="휴대전화번호 뒤 7~8자리를 입력해주세요. (01X 제외)" title="휴대전화번호 뒤 7~8자리를 입력해주세요. (01X 제외)" data-format="num" maxlength="8" autocomplete="off"></span>
								<p class="msg_info hide" id="msg_mob_no">국번제외한 휴대폰번호를 입력해주세요. (ex.010-123-5678 &gt; 1235678)</p>
								<div class="btn_sec">
									<a href="/Black_OY/olive/joinCheck.do" class="btn btn_em" id="btnCheRegister">가입여부 확인</a>
								</div> 
							</div>
						</div>
						<!--//가입여부확인-->
					</div>
					<div class="box_gray box_btm">
						<dl class="box_info">
							<dt>이용안내</dt>
							<dd>
								<ul class="bul_list">
									<li class="dot_arr">회원이 되시면 <em class="em">하나의 통합된 회원 ID와 비밀번호로 CJ ONE 및 각 브랜드 웹 사이트의 다양한 서비스(포인트 조회, 카드등록, 정보변경 서비스 등)를 이용하실 수 있습니다.</em></li>
									<li class="dot_arr">CJ ONE에 가입하더라도 <em class="em">약관 동의되지 않은 CJ ONE 제휴 브랜드에는 개인정보가 제공되지 않습니다.</em></li>
									<li class="dot_arr">CJ ONE은 CJ ONE 제휴 브랜드의 통합 멤버십 서비스입니다.</li>
									<li class="dot_arr">하나의 아이디(ID)로 CJ ONE 제휴 브랜드 사이트를 안전하고 편리하게 이용할 수 있습니다.</li>
									<li class="dot_arr">기존의 각 CJ ONE 제휴 브랜드 사이트에 1개 이상 가입되어 있는 회원님은 새로운 CJ ONE 통합 아이디(ID)를 생성하신 후 가입하실 수 있습니다.</li>
								</ul>
							</dd>
						</dl>
					</div>
	
					<!-- //이용안내 -->
				</div>
				<!-- //inner -->
			</form>
		</div>
	</div>
	<!--//contents-->

	<!-- footer -->
<div id="footer">
<div class="footer_wrap">			
	  
	<div class="site_info">
		<span class="ceo_info">대표이사 유인상</span>
		<address>주소 04323 서울시 용산구 한강대로 366 트윈시티 10층</address><!--20191021 CJ ONE APP 사업자 정보 주소 변경-->
		<span class="customer_info">CJ ONE 고객센터 1577-8888</span>
		<span class="license_num">사업자 등록번호 104-81-36565</span>
	</div>
	<!--20191112 CJONE APP 사업자 정보 노출 추가-->
    <div class="site_info pd0">
        <span class="ceo_info">호스팅사업자 CJ올리브네트웍스</span>
        <span class="license_num">통신판매업신고번호 2017-서울용산-0451</span>
    </div>
    <!--//20191112 CJONE APP 사업자 정보 노출 추가-->
	<p class="copyright">
		<span class="img"><img src="https://www.cjone.com/cjmweb/images/common/logo_cjolivenetworks_footer.png" alt="CJ 올리브넥트웍스"></span>
		Copyright (c)2016 CJ OLIVENETWORKS. All Rights Reserved
	</p>
	<div class="fixedTop" data-control="goTop" style="bottom: 50px;"><a href="#headerWrap" title="페이지 처음으로 이동"><span class="haze">TOP</span></a></div>
	
</div>
    </div>
    <!-- //footer -->
</div>

<script>
// 가입여부 확인 입력오류 메세지 출력
document.getElementById("user_nm").addEventListener("input", checkField);
document.getElementById("legl_birth_dy").addEventListener("input", checkField);
document.getElementById("mob_no").addEventListener("input", checkField);

function checkField(event) {
    var inputField = event.target; // 변경된 입력 필드
    var msgElement = document.getElementById("msg_" + inputField.id); // 해당 메시지 태그

    if (inputField.textContent == "") {
        msgElement.classList.remove("hide");
        msgElement.classList.add("show");
    } else {
        msgElement.classList.remove("show");
        msgElement.classList.add("hide");
    }
}
</script>
<script>
	document.getElementById("btnCheRegister").onclick = function () {
		this.href = this.href+"?tel="+document.getElementById("mob_no").value+"&u_name="+document.getElementById("user_nm").value 
				+"&u_birth="+document.getElementById("legl_birth_dy").value;
	}
</script>
</body>
</html>