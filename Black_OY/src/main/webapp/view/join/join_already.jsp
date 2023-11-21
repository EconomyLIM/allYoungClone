<%@page import="user.domain.OuserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/CJbase.css" />
<link rel="stylesheet" href="../css/CJparticipate.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<body>
<body>
<!--skip navigation-->
<div class="skipNavi">
	<a href="#contentsWrap">본문으로 바로가기</a>
</div>
<!--//skip navigation-->
<div id="bodyWrap">
    <!--header-->
        <div id="part_headerWrap">
            <div class="part_header_wrap">
                <h1 class="cj_logo"><span class="logo">CJ ONE</span> TRUE LIFESTYLE MEMBERSHIP</h1>
                    <div id="coop_header_wrap"><p class="part_logo">건강한 아름다움을 제안하는 글로벌 라이프스타일 플랫폼<img src="https://www.cjone.com/cjmweb/upfile/20191007_1837101.png" alt="올리브영"></p></div>
            </div>
        </div>
	<!--//header-->
	<%
		OuserDTO dto = (OuserDTO)request.getAttribute("dto");
	%>	
	
	<!--contents-->
	<div id="contentsWrap">
		<form method="post" id="form1" name="form1" action="">
			<input type="hidden" name="coopco_cd" id="coopco_cd" value="7030">
			<input type="hidden" name="brnd_cd" id="brnd_cd" value="3000">
			<input type="hidden" name="mcht_no" id="mcht_no" value="3000">
			<input type="hidden" name="evt_typ" id="evt_typ" value="">
			<div id="contents">
				<!--title-->
				
				<div class="location_wrap">
					<div class="location">회원가입</span></a></div>
				</div>
				
				<div class="cont_header">
					<h1 class="h1_tit">회원가입</h1>
					<p class="h_desc">라이프스타일 멤버십 CJ ONE! 외식, 쇼핑, 엔터테인먼트 서비스를 한 장의 카드로 즐기세요~</p>
				</div>
				<!--title-->
				<div class="cont_area">
					<div class="member_join">
						<!--step-->
						<div class="step_join">
							<ul class="col4">
								<li class="step1 on">본인인증 <span class="haze">진행 중</span><span class="line"></span></li>
								<li class="step2">약관동의 <span class="haze">진행 전</span><span class="line"></span></li>
								<li class="step3">회원정보 입력 <span class="haze">진행 전</span><span class="line"></span></li>
								<li class="step4">가입완료 <span class="haze">진행 전</span></li>
							</ul>
						</div>
						<!--//step-->
						<div class="certification_sec">
							<div class="box_member">
								<h2 class="haze">본인인증</h2>
								<div class="certi_txt check">
									<span class="ico" style="background-image: url('/view/join/alreadymember.PNG'); background-size: 100px 100px;"></span>

									<p class="b_txt"><strong class="em"><%=dto.getU_name() %></strong>님! 이미 CJ ONE 회원으로 등록되어 있습니다.</p>			
									<p class="s_txt">회원 아이디<em>(<%=dto.getUser_id() %>)</em>로 로그인 하시거나 아이디 찾기를 진행해 주세요.</p>								
								</div>
								<div class="btn_sec">
									<!-- 간편인증 시  -->		
						                <!-- <a href="#" class="btn">아이디 찾기</a>    -->
									<a href="/Black_OY/olive/LogOn.do" class="btn btn_em">로그인</a>
								</div>		
							</div>
							
							<!-- 고객센터 Start -->
							<div class="customer_sec" id="guideArea"><h2 class="haze">고객센터 이용 안내</h2><div class="box_btm box_gray cs_banner col2">	<div class="banner_cs faq">		<a href="https://www.cjone.com/cjmweb/customer/faq.do">			<dl class="box_info">				<dt>자주찾는 질문</dt>				<dd>					<p>CJ ONE에 관한 궁금하신 사항을 확인하세요.<br>질문에 빠르고 정확한 답변을 제공합니다.</p>				</dd>			</dl>			<span class="bg faq"></span>		</a>	</div>	<div class="banner_cs call_center">		<a href="javascript:goCounseling();">			<dl class="box_info">				<dt> 1:1상담</dt>				<dd>					<ul class="bul_list">						<li class="dot_arr">평일 : 다음 날 답변 완료</li>						<li class="dot_arr">토·일·공휴일 : 휴일 이후 답변 완료</li>					</ul>				</dd>			</dl>			<span class="bg"></span>		</a>	</div></div></div>
					        <!-- 고객센터 End -->
					        
					        <!--banner type a-->
							<div class="banner_sec">
							</div>
							<!--banner type a-->
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!--//contents-->

	<!-- footer -->
	<div id="footer">

<script type="text/javascript">
function goFooterMenu(type){
	var pageUrl="";
	if("1"==type){
		pageUrl="https://www.cjone.com/cjmweb/terms.do?type="+type;
		location.href=pageUrl;
	}
	else if("2"==type){
		pageUrl="https://www.cjone.com/cjmweb/previous-terms.do?type="+type;
		location.href=pageUrl;
	}
	else if("3"==type){
		pageUrl="/cjmweb/layer/verify-account.do?type="+type;	
		cjone.openModal(pageUrl);
	}
	else if("4"==type){
		pageUrl="/cjmweb/layer/legal-notices.do?type="+type;	
		cjone.openModal(pageUrl);
	}
	else if("5"==type){
		pageUrl="/cjmweb/layer/email-security.do?type="+type;	
		cjone.openModal(pageUrl);
	}
	else if("6"==type){
		pageUrl="https://www.cjone.com/cjmweb/sitemap.do?type="+type;
		location.href=pageUrl;
	}
	else if("7"==type){
		pageUrl="/cjmweb/layer/isms-p.do?type="+type;	
		cjone.openModal(pageUrl);
	}
	// 등록일 format(yyyymmdd)
	else{
		if(""==type){
			pageUrl="https://www.cjone.com/cjmweb/privacy.do?privacyDate="+type+"&recent_yn=Y";

			location.href=pageUrl;
		}
		else{
			pageUrl="https://www.cjone.com/cjmweb/privacy.do?privacyDate="+type+"&recent_yn=N";
			location.href=pageUrl;
		}
	}
}
</script>

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
	
	<div class="fixedTop hide" data-control="goTop" style="bottom: 50px;"><a href="#headerWrap" title="페이지 처음으로 이동"><span class="haze">TOP</span></a></div>
	
</div>

    </div>
    <!-- //footer -->

</div>
</body>
</body>
</html>