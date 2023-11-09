<%@page import="user.domain.OuserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/inc/include.jspf" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../css/CJbase.css" />
<link rel="stylesheet" href="../css/CJparticipate.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src = "https://www.cjone.com/cjmweb/js/modules/cjoneCore.js"></script>

</head>
<body>

<%
	String u_name = (String)session.getAttribute("u_name");
	String u_birth = (String)session.getAttribute("u_birth");
	String tel = (String)session.getAttribute("tel");

    String telstr1 =tel.substring(0,4);
    String telstr2 =tel.substring(4);

    String birthstr1 = u_birth.substring(0, 4);
    String birthstr2 = u_birth.substring(4, 6);
    String birthstr3 = u_birth.substring(6);
%>

		<form id="headerFrm" method="get">
			<input type="hidden" name="h_search_keyword" id="h_search_keyword">
		</form>

		<!--header-->
		<div id="part_headerWrap">
			<div class="part_header_wrap">
				<h1 class="cj_logo">
					<span class="logo">CJ ONE</span> TRUE LIFESTYLE MEMBERSHIP
				</h1>
				<div id="coop_header_wrap">
					<p class="part_logo">
						건강한 아름다움을 제안하는 글로벌 라이프스타일 플랫폼<img
							src="https://www.cjone.com/cjmweb/upfile/20191007_1837101.png"
							alt="올리브영">
					</p>
				</div>
			</div>
		</div>
		<!--//header-->

		<!--contents-->
		<div id="contentsWrap">
			<div id="contents">
				<!--title-->

				<div class="location_wrap">
					<div class="location">
						<a href="https://www.cjone.com/cjmweb/main.do" class="home"><span class="haze">홈</span></a>
						<a href="https://www.cjone.com/cjmweb/join.do" class="now"><span>회원가입</span></a>
					</div>
				</div>

				<div class="cont_header">
					<h1 class="h1_tit">회원가입</h1>
					<p class="h_desc">라이프스타일 멤버십 CJ ONE! 외식, 쇼핑, 엔터테인먼트 서비스를 한 장의 카드로 즐기세요~</p>
				</div>
				
				<!--title-->
				<div class="cont_area">
					<div class="member_join uni">
						<!--step-->
						<div class="step_join">
							<ul class="col4">
								<li class="step1">본인인증 <span class="haze">진행 완료</span><span
									class="line"></span></li>
								<li class="step2">약관동의 <span class="haze">진행 완료</span><span
									class="line"></span></li>
								<li class="step3 on">회원정보 입력 <span class="haze">진행 중</span><span
									class="line"></span></li>
								<li class="step4">가입완료 <span class="haze">진행 전</span></li>
							</ul>
						</div>

						<!--//step-->
						<div class="member_data">
							<h2 class="haze">회원정보 입력</h2>
							<div class="member_info">
								<form id="formJoin" name="formJoin" method="post" action="<%=contextPath %>/user/join.do">
									<input type="hidden" id="coopco_cd" name="coopco_cd"
										value="7030"> <input type="hidden" id="brnd_cd"
										name="brnd_cd" value="3000"> <input type="hidden"
										id="mcht_no" name="mcht_no" value="3000"> <input
										type="hidden" name="coop_return_url" id="coop_return_url"
										value=""> <input type="hidden" id="sub_type"
										name="sub_type" value="1"> <input type="hidden"
										id="ipin_use_yn" name="ipin_use_yn" value=""> <input
										type="hidden" id="hg_nm" name="hg_nm" value=""> <input
										type="hidden" id="vno" name="vno" value="">
									<input type="hidden" id="ipin_ci" name="ipin_ci"
										value="BbsvNWk1mdc5XVc15zRkJnUtVGjsQhgH/yb1b1CyDeRgEROBXbgIYB+4GXnADTnpcfHRkc4n9FRRtqWaNV0NaA==">
									<input type="hidden" id="ssn1" name="ssn1" value=""> <input
										type="hidden" id="ssn2" name="ssn2" value=""> <input
										type="hidden" id="ipin_di" name="ipin_di" value=""> <input
										type="hidden" id="gender" name="gender" value="M"> <input
										type="hidden" id="legl_birth_dy" name="legl_birth_dy"
										value=""> <input type="hidden" id="frgnr_yn"
										name="frgnr_yn" value="N"> <input type="hidden"
										id="under_14" name="under_14" value="N"> <input
										type="hidden" id="id_validate" name="id_validate" value="">
									<input type="hidden" id="agr_dy" name="agr_dy" value="20231106">
									<input type="hidden" id="agr_tm" name="agr_tm" value="175010">
									<input type="hidden" id="agr_yn" name="agr_yn" value="Y">
									<input type="hidden" name="svcuse_agr_typ_cd"
										value="10,11,30,40,"> <input type="hidden"
										name="agr_sub_yn99" id="agr_sub_yn99" value="Y">
									<!-- 3자 동의파라메터   -->
									<input type="hidden" id="mbr_no" name="mbr_no" value="">
									<input type="hidden" id="mbr_typ_cd" name="mbr_typ_cd"
										value="11"> <input type="hidden" id="legl_rep_nm"
										name="legl_rep_nm" value=""> <input type="hidden"
										id="legl_birth_day" name="legl_birth_day" value=""> <input
										type="hidden" id="legl_ipin_ci" name="legl_ipin_ci" value="">
									<input type="hidden" id="legl_cert" name="legl_cert" value="">
									<input type="hidden" id="legl_typ_cd" name="legl_typ_cd"
										value=""> <input type="hidden" id="legl_rep_agr_yn"
										name="legl_rep_agr_yn" value=""> <input type="hidden"
										id="join_coopco_list" name="join_coopco_list" value="">
									<input type="hidden" id="rejoin_yn" name="rejoin_yn" value="N">
									<input type="hidden" id="actionUrl" name="actionUrl" value="">
									<input type="hidden" id="nm_cnfm_yn" name="nm_cnfm_yn" value="">
									<input type="hidden" id="coopco_hg_nm" name="coopco_hg_nm"
										value="올리브영"> <input type="hidden" name="agr_typ_onln"
										value="10,20,"> <input type="hidden" id="card_chk"
										name="card_chk" value="N"> <input type="hidden"
										name="evt_typ" id="evt_typ" value=""> <input
										type="hidden" id="clndr_typ_cd" name="clndr_typ_cd" value="S">
									<input type="hidden" id="upd_coopco_id" name="upd_coopco_id"
										value=""> <input type="hidden" id="sns_yn"
										name="sns_yn" value=""> <input type="hidden"
										name="omni_agr_list" id="omni_agr_list"
										value="10|7060|6040,10|7130|1301,10|7040|4070,10|7030|3000,10|7240|2401,10|7010|1000,10|7020|2000,10|7190|1900">
								
									<div class="table_header">
										<h3 class="h3_tit">기본정보</h3>
										<div class="info">
											<p class="msg_mandatory"
												style="background-image: url('https://www.cjone.com/cjmweb/images/common/ico_mandatory.png'); background-repeat: no-repeat; background-position: 20px 29px;">
												<span class="haze">"필수"</span>표시는 필수 입력 항목입니다.
											</p>
										</div>
									</div>
									<div class="table_col">
										<table>
											<caption>회원기본정보 입력 표로 회원정보 이름, 아이디, 비밀번호, 비밀번호 확인,
												생년월일, 휴대전화, 이메일을 나타냅니다.</caption>
											<colgroup>
												<col class="title">
												<col class="body">
											</colgroup>
											<tbody>
												<tr class="input">
													<th scope="row" class="mandatory"
														style="background-image: url('https://www.cjone.com/cjmweb/images/common/ico_mandatory.png'); background-repeat: no-repeat; background-position: 20px 29px;">
														<label for="input_member_name"><span class="haze">"필수"</span>
															이름</label>
													</th>
													<td><span class="input_txt"><input type="text"
															readonly="" value="<%=u_name %>" class="text readonly member_name"
															id="input_member_name"></span>
													<!-- 에러시 .error 클래스 추가 --></td>
												</tr>
												<tr class="input">
													<th scope="row" class="mandatory"
														style="background-image: url('https://www.cjone.com/cjmweb/images/common/ico_mandatory.png'); background-repeat: no-repeat; background-position: 20px 29px;">
														<label for="mbr_id"><span class="haze">"필수"</span>
															아이디</label>
													</th>
													<td>
														<div class="input_group">
															<span class="input_txt w250"><input type="text"
																class="text" title="사용 할 영문 아이디 명 입력"
																placeholder="아이디를 입력해주세요." name="mbr_id" id="mbr_id"
																maxlength="12" value=""></span>

															<button type="button" class="btn btn_search"
																id="btnIdCheck">중복확인</button>
															<p class="msg_info em hide" id="alert_mbr_id"></p>
														</div>
														<p class="msg_desc">CGV,CJ온스타일 등 기존의 CJ ONE 제휴 브랜드
															회원님의 경우는 기존에 사용하고 계신 아이디가 새롭게 생성하신 통합 아이디로 변경됩니다.</p>
													</td>
												</tr>
												<tr class="input">
													<th scope="row" class="mandatory" 	style="background-image: url('https://www.cjone.com/cjmweb/images/common/ico_mandatory.png'); background-repeat: no-repeat; background-position: 20px 29px;"><label for="pwd"><span
															class="haze">"필수"</span> 비밀번호</label></th>
													<td>
														<div class="input_group">
															<span class="input_txt w250"><input
																type="password" class="text" placeholder="비밀번호를 입력해주세요."
																name="pwd" id="pwd" maxlength="50"></span> <span
																class="pwd_lv" id="alert_pwd_strength"></span>
															<p class="msg_info em hide" id="msg_pwd">비밀번호는 영문자,
																숫자, 특수문자 모두 최소 1가지 이상 조합한 8~12자리이어야 합니다.</p>
														</div>
														<p class="msg_desc">
															영문자, 숫자,특수문자 조합하여 8~12자리, 아이디와 4자리이상 동일,반복 문자숫자 불가<br>사용
															가능 특수 문자 : !"#$%&amp;'()*+,-./:;&lt;=&gt;?@[]^_`{|}~
														</p>
													</td>
												</tr>
												<tr class="input">
													<th scope="row" class="mandatory"
														style="background-image: url('https://www.cjone.com/cjmweb/images/common/ico_mandatory.png'); background-repeat: no-repeat; background-position: 20px 29px;">
														<label for="pwd_check"><span class="haze">"필수"</span>
															비밀번호 확인</label>
													</th>
													<td>
														<div class="input_group">
															<span class="input_txt"><input type="password"
																class="text" placeholder="비밀번호를 재입력해주세요."
																name="pwd_check" id="pwd_check" maxlength="50"></span>
															<p class="msg_info em hide" id="msg_pwd_check">비밀번호와 비밀번호 확인이 일치하지 않습니다.</p>
														</div>
													</td>
												</tr>
												<tr class="input">
													<th scope="row" class="mandatory"
														style="background-image: url('https://www.cjone.com/cjmweb/images/common/ico_mandatory.png'); background-repeat: no-repeat; background-position: 20px 29px;">
														<label for="birth_yy"> <span class="haze">"필수"</span>생년월일</label>
													</th>
													<td>
														<div class="birthday_select">
															<span class="select w120 " data-skin="form"> <select
																title="생년월일 중 년 선택" id="birth_yy" name="birth_yy" value ="<%=birthstr1%>">
																	[<option value="">년</option>,
																	<option value="2023">2023</option>,
																	<option value="2022">2022</option>,
																	<option value="2021">2021</option>,
																	<option value="2020">2020</option>,
																	<option value="2019">2019</option>,
																	<option value="2018">2018</option>,
																	<option value="2017">2017</option>,
																	<option value="2016">2016</option>,
																	<option value="2015">2015</option>,
																	<option value="2014">2014</option>,
																	<option value="2013">2013</option>,
																	<option value="2012">2012</option>,
																	<option value="2011">2011</option>,
																	<option value="2010">2010</option>,
																	<option value="2009">2009</option>,
																	<option value="2008">2008</option>,
																	<option value="2007">2007</option>,
																	<option value="2006">2006</option>,
																	<option value="2005">2005</option>,
																	<option value="2004">2004</option>,
																	<option value="2003">2003</option>,
																	<option value="2002">2002</option>,
																	<option value="2001">2001</option>,
																	<option value="2000">2000</option>,
																	<option value="1999">1999</option>,
																	<option value="1998">1998</option>,
																	<option value="1997">1997</option>,
																	<option value="1996">1996</option>,
																	<option value="1995">1995</option>,
																	<option value="1994">1994</option>,
																	<option value="1993">1993</option>,
																	<option value="1992">1992</option>,
																	<option value="1991">1991</option>,
																	<option value="1990">1990</option>,
																	<option value="1989">1989</option>,
																	<option value="1988">1988</option>,
																	<option value="1987">1987</option>,
																	<option value="1986">1986</option>,
																	<option value="1985">1985</option>,
																	<option value="1984">1984</option>,
																	<option value="1983">1983</option>,
																	<option value="1982">1982</option>,
																	<option value="1981">1981</option>,
																	<option value="1980">1980</option>,
																	<option value="1979">1979</option>,
																	<option value="1978">1978</option>,
																	<option value="1977">1977</option>,
																	<option value="1976">1976</option>,
																	<option value="1975">1975</option>,
																	<option value="1974">1974</option>,
																	<option value="1973">1973</option>,
																	<option value="1972">1972</option>,
																	<option value="1971">1971</option>,
																	<option value="1970">1970</option>,
																	<option value="1969">1969</option>,
																	<option value="1968">1968</option>,
																	<option value="1967">1967</option>,
																	<option value="1966">1966</option>,
																	<option value="1965">1965</option>,
																	<option value="1964">1964</option>,
																	<option value="1963">1963</option>,
																	<option value="1962">1962</option>,
																	<option value="1961">1961</option>,
																	<option value="1960">1960</option>,
																	<option value="1959">1959</option>,
																	<option value="1958">1958</option>,
																	<option value="1957">1957</option>,
																	<option value="1956">1956</option>,
																	<option value="1955">1955</option>,
																	<option value="1954">1954</option>,
																	<option value="1953">1953</option>,
																	<option value="1952">1952</option>,
																	<option value="1951">1951</option>,
																	<option value="1950">1950</option>,
																	<option value="1949">1949</option>,
																	<option value="1948">1948</option>,
																	<option value="1947">1947</option>,
																	<option value="1946">1946</option>,
																	<option value="1945">1945</option>,
																	<option value="1944">1944</option>,
																	<option value="1943">1943</option>,
																	<option value="1942">1942</option>,
																	<option value="1941">1941</option>,
																	<option value="1940">1940</option>,
																	<option value="1939">1939</option>,
																	<option value="1938">1938</option>,
																	<option value="1937">1937</option>,
																	<option value="1936">1936</option>,
																	<option value="1935">1935</option>,
																	<option value="1934">1934</option>,
																	<option value="1933">1933</option>,
																	<option value="1932">1932</option>,
																	<option value="1931">1931</option>,
																	<option value="1930">1930</option>,
																	<option value="1929">1929</option>,
																	<option value="1928">1928</option>,
																	<option value="1927">1927</option>,
																	<option value="1926">1926</option>,
																	<option value="1925">1925</option>,
																	<option value="1924">1924</option>,
																	<option value="1923">1923</option>,
																	<option value="1922">1922</option>,
																	<option value="1921">1921</option>,
																	<option value="1920">1920</option>,
																	<option value="1919">1919</option>,
																	<option value="1918">1918</option>,
																	<option value="1917">1917</option>,
																	<option value="1916">1916</option>,
																	<option value="1915">1915</option>,
																	<option value="1914">1914</option>,
																	<option value="1913">1913</option>,
																	<option value="1912">1912</option>,
																	<option value="1911">1911</option>,
																	<option value="1910">1910</option>,
																	<option value="1909">1909</option>,
																	<option value="1908">1908</option>,
																	<option value="1907">1907</option>,
																	<option value="1906">1906</option>,
																	<option value="1905">1905</option>,
																	<option value="1904">1904</option>,
																	<option value="1903">1903</option>,
																	<option value="1902">1902</option>,
																	<option value="1901">1901</option>,
																	<option value="1900">1900</option>]
															</select>
															</span>
															<span class="symbol">년</span> <span
																class="select w70 " data-skin="form"> <select
																title="생년월일 중 월 선택" class="narrow" id="birth_mm"
																name="birth_mm" value ="<%=birthstr2%>">
																	[<option value="">월</option>,
																	<option value="01">01</option>,
																	<option value="02">02</option>,
																	<option value="03">03</option>,
																	<option value="04">04</option>,
																	<option value="05">05</option>,
																	<option value="06">06</option>,
																	<option value="07">07</option>,
																	<option value="08">08</option>,
																	<option value="09">09</option>,
																	<option value="10">10</option>,
																	<option value="11">11</option>,
																	<option value="12">12</option>]
															</select>
															</span>
															<span class="symbol">월</span> <span
																class="select w70 " data-skin="form"> <select
																title="생년월일 중 일 선택" class="narrow" id="birth_dd"
																name="birth_dd" value = "<%=birthstr3%>">
																	<option value="">일</option>,
																	<option value="01">01</option>,
																	<option value="02">02</option>,
																	<option value="03">03</option>,
																	<option value="04">04</option>,
																	<option value="05">05</option>,
																	<option value="06">06</option>,
																	<option value="07">07</option>,
																	<option value="08">08</option>,
																	<option value="09">09</option>,
																	<option value="10">10</option>,
																	<option value="11">11</option>,
																	<option value="12">12</option>,
																	<option value="13">13</option>,
																	<option value="14">14</option>,
																	<option value="15">15</option>,
																	<option value="16">16</option>,
																	<option value="17">17</option>,
																	<option value="18">18</option>,
																	<option value="19">19</option>,
																	<option value="20">20</option>,
																	<option value="21">21</option>,
																	<option value="22">22</option>,
																	<option value="23">23</option>,
																	<option value="24">24</option>,
																	<option value="25">25</option>,
																	<option value="26">26</option>,
																	<option value="27">27</option>,
																	<option value="28">28</option>]
															</select>
															</span>
															<span class="symbol">일</span>
														</div>
														<p class="msg_desc">
															설정하신 생일을 기준으로 <em>15일 전</em> 생일쿠폰이 발행됩니다.
														</p>
													</td>
				
				<script>
				
				var sel;
				
				sel = $("#birth_yy");
				var selYYvalue ="<%=birthstr1%>";
				
				sel.find("option[value='" + selYYvalue + "']").prop("selected", true);
				
				
				sel = $("#birth_mm");
				var selMMvalue ="<%=birthstr2%>";
				
				sel.find("option[value='" + selMMvalue + "']").prop("selected", true);
				
				sel = $("#birth_dd");
				var selDDvalue ="<%=birthstr3%>";
				
				sel.find("option[value='" + selDDvalue + "']").prop("selected", true);
				</script>
												</tr>
												<tr class="input">
													<th scope="row" class="mandatory"
														style="background-image: url('https://www.cjone.com/cjmweb/images/common/ico_mandatory.png'); background-repeat: no-repeat; background-position: 20px 29px;">
														<label for="mob_no_1"><span class="haze">"필수"</span>
															휴대전화번호</label>
													</th>
													<td><span class="input_txt mob_no">
															 <input type="text" name="mob_no"id="mob_no" value="">
													</span>
														<p class="msg_desc">주문 및 배송, 쿠폰, 이벤트 정보 등을 제공 받으실 수
															있습니다.</p></td>
												</tr>
												<tr class="input">
													<th scope="row" class="mandatory"
														style="background-image: url('https://www.cjone.com/cjmweb/images/common/ico_mandatory.png'); background-repeat: no-repeat; background-position: 20px 29px;">
														<label for="email_addr1"><span class="haze">"필수"</span>이메일</label>
													</th>
													<td>
														<div class="email_write">
															<span class="input_txt w110" data-skin="form"> 
															<input type="text" class="text small" title="이메일 아이디 입력"
																name="email_addr1" id="email_addr1" value=""
																placeholder="이메일 아이디" data-format="email"
																autocomplete="off">
															</span> 
															<span class="symbol">@</span>
															<span class="input_txt w110"> <input type="text"
																class="text small" title="이메일 도메인 입력" name="email_addr2"
																id="email_addr2" value="" placeholder="이메일 도메인"
																data-format="email" readonly="readonly"
																autocomplete="off">
															</span> 
															
															<span class="select w100" data-skin="form">
																<select title="이메일 도메인 선택" name="email_addr_opt"
																id="email_addr_opt" data-control="emailSelector" > 
																	<option value="0">직접입력</option>
																	<option value="naver.com" selected="selected">네이버</option>
																	<option value="hanmail.net">한메일</option>
																	<option value="nate.com">네이트</option>
																	<option value="gmail.com">지메일</option>
															</select>
															</span>
															<p class="msg_info em hide" id="alert_email_addr">이메일주소를 다시 확인해주세요.</p>		
														</div>
														<p class="msg_desc">이메일 주소 입력 시 사용 가능 특수 문자 : - . _</p>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="table_header choice">
									</tbody>
									</table>
									</div>
				<script>
				let str1 = "<%=telstr1%>";
				let str2 = "<%=telstr2%>";
				let strAll = "010" + str1.replace(str1, '****') +str2;
				alert(strAll);
				$("#mob_no").val(strAll);
				</script>					

									<div class="btn_sec">
										<button type="button" class="btn">취소</button>
										<button type="button" class="btn btn_em" id="btnok">등록</button>
									</div>
									<div class="box_gray box_btm">
										<dl class="box_info">
											<dt>이용안내</dt>
											<dd>
												<ul class="bul_list">
													<li class="dot_arr">CJ ONE 회원가입 후에도 각 제휴 브랜드 웹사이트에서 통합
														아이디를 사용하여 로그인 하시려면, 각 브랜드 웹사이트의 이용약관에 대한 동의를 거친 후에 이용
														가능합니다.</li>
													<li class="dot_arr">개인정보 수집 및 활용 동의 (선택)에 거부한 회원님은 마케팅
														정보 수신을 받으실 수 없습니다.</li>
												</ul>
											</dd>
										</dl>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--//contents-->

		<!-- footer -->
		<div id="footer">
			<script type="text/javascript">
				// footer 이벤트 선택 함수(1=이용약관,2=이전이용약관, 3=ARS 본인인증,4=법적고지, 5=이메일무단수집거부, 6=사이트맵, 그이외 개인정보취급)
				function goFooterMenu(type) {
					var pageUrl = "";
					if ("1" == type) {
						pageUrl = "https://www.cjone.com/cjmweb/terms.do?type="
								+ type;
						location.href = pageUrl;
					} else if ("2" == type) {
						pageUrl = "https://www.cjone.com/cjmweb/previous-terms.do?type="
								+ type;
						location.href = pageUrl;
					} else if ("3" == type) {
						pageUrl = "/cjmweb/layer/verify-account.do?type="
								+ type;
						cjone.openModal(pageUrl);
					} else if ("4" == type) {
						pageUrl = "/cjmweb/layer/legal-notices.do?type=" + type;
						cjone.openModal(pageUrl);
					} else if ("5" == type) {
						pageUrl = "/cjmweb/layer/email-security.do?type="
								+ type;
						cjone.openModal(pageUrl);
					} else if ("6" == type) {
						pageUrl = "https://www.cjone.com/cjmweb/sitemap.do?type="
								+ type;
						location.href = pageUrl;
					} else if ("7" == type) {
						pageUrl = "/cjmweb/layer/isms-p.do?type=" + type;
						cjone.openModal(pageUrl);
					}
					// 등록일 format(yyyymmdd)
					else {
						if ("" == type) {
							pageUrl = "https://www.cjone.com/cjmweb/privacy.do?privacyDate="
									+ type + "&recent_yn=Y";

							location.href = pageUrl;
						} else {
							pageUrl = "https://www.cjone.com/cjmweb/privacy.do?privacyDate="
									+ type + "&recent_yn=N";
							location.href = pageUrl;
						}
					}
				}
			</script>
			

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
					<span class="img"><img
						src="https://www.cjone.com/cjmweb/images/common/logo_cjolivenetworks_footer.png"
						alt="CJ 올리브넥트웍스"></span> Copyright (c)2016 CJ OLIVENETWORKS. All Rights Reserved</p>
				<div class="fixedTop hide" data-control="goTop">
					<a href="#headerWrap" title="페이지 처음으로 이동"><span class="haze">TOP</span></a>
				</div>
			</div>
			<!--// CJ ONE APP 사업자 정보 노출 전체 영역 -->
			<!-- 레이어 팝업(confirm) 내용 -->
			<div id="div_confirm" style="display: none;">
				<div class="ui_modal"
					style="position: fixed; background-color: rgb(255, 255, 255); outline: none; background-clip: padding-box; top: 50%; left: 50%; margin-left: -200px; margin-top: -160px; width: 400px; z-index: 9101;"
					tabindex="0">

					<div id="layerWrap" class="custom">
						<h1 id="h_confirm_title">알림</h1>

						<div class="inner" tabindex="0">
							<p id="p_confirm_text"></p>
						</div>


						<div class="btn_center">
							<a href="javascript:closeLayerConfirm();" id="a_confirm_y"
								class="btn"><span id="span_confirm_y">확인</span></a>
							<button id="a_confirm_n" type="button"
								onclick="closeLayerConfirm();" class="btn cancel">
								<span id="span_confirm_n">취소</span>
							</button>
						</div>

						<button id="btn_confirm_close" type="button"
							onclick="closeLayerConfirm();" class="close">닫기</button>
					</div>

				</div>
				<div class="ui_modal_overlay"
					style="position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; z-index: 9100;"></div>
			</div>
			<!-- //레이어 팝업(confirm) 내용 -->
			<!-- 레이어 팝업(alert) 내용 -->
			<div id="div_alert" style="display: none;">
				<div class="ui_modal"
					style="position: fixed; background-color: rgb(255, 255, 255); outline: none; background-clip: padding-box; top: 50%; left: 50%; margin-left: -200px; margin-top: -160px; width: 400px; z-index: 9101;"
					tabindex="0">

					<div id="layerWrap" class="custom">

						<div class="inner" tabindex="0">
							<p id="p_alert_text"></p>
						</div>

						<div class="btn_center">
							<a href="javascript:closeLayerAlert();" id="a_alert"
								class="btn close"><span id="span_alert">확인</span></a>
						</div>
					</div>

				</div>
				<div class="ui_modal_overlay"
					style="position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; z-index: 9100;"></div>
			</div>
			<!-- //레이어 팝업(alert) 내용 -->
		</div>
		<!-- //footer -->
	</div>

	<!--script 영역-->

	<script type="text/javascript">
		$(document).ready(
				function() {

					if ($('#upd_coopco_id').val() == '') {
						$("#crdHead").hide();
						$("#crdBody").hide();

					} else {
						$("#crdHead").show();
						$("#crdBody").show();
					}

					setUserInfo(); // 오프라인 회원의 경우 값 셋팅

					$("#crdNo01").keyup(goNext); // 카드번호이동       
					$("#crdNo02").keyup(goNext); // 카드번호이동       
					$("#crdNo03").keyup(goNext); // 카드번호이동
					$("#crdNo04").keyup(goNext); // 카드번호이동       
					$("#re_crdNo07").keyup(goNext); // 카드번호이동
					$("#crdNo04").blur(reInput);

					$("#crd_pwd").blur(checkPwd3);
					$("#re_crd_pwd").blur(checkPwd4);

					var coopco_cd = "7030";
					var brnd_cd = "3000";

					if (coopco_cd == "7000" && brnd_cd == "0000") {
						//추천인 이벤트 여부 확인
						setRcmEvt();
					}

					$('#rcm_id').change(function() {
						if ($('#rcm_id').val().length > 0) {
							rcmCheck = false;
						} else {
							rcmCheck = true;
						}

					});

					function setRcmEvt() {

						$.ajax({
							url : "/cjmweb/join/getRcmSeq.do",
							dataType : "json",
							async : false,
							type : "POST",
							success : function(data) {
								if (data.rcm_conf_seq != "") {
									$('#recommender_tr').removeClass("hide");
									$('#rcm_conf_seq').val(data.rcm_conf_seq);
								}

							},
							error : function(data) {
								alert(data.msg);
							}
						});
					}

					$('#mbr_id').change(function() {
						$('#id_validate').val('N');
						//showErrorMsg("mbr_id", "mbr_id_dupcheck");
						alertMsg("alert_mbr_id", "아이디 중복확인을 해주세요.");
					}); // 아이디(ID)중복확인

					//	    $("#email_addr_opt").val("naver.com").change();
					$('#pwd').keyup(checkPassword); // 강도  체크(비밀번호)

					$('#email_addr_opt').change(setEmail); // 이메일 직접 입력등 선택
					$('#email_addr_opt').change(chkEmail); // 이메일 직접입력
					$('#email_addr2').blur(chkEmailDomain); // 직접입력 이메일 도메인 유효성 체크

					$('#crdNo01').keypress(onlyNumber);
					$('#crdNo02').keypress(onlyNumber);
					$('#crdNo03').keypress(onlyNumber);
					$('#crdNo04').keypress(onlyNumber);
					/*
					$('#mkt_rcv_all').click(radioAll);              // 마케팅 수신동의
					
					
					
						$('#mkt_rcv_all2').click(radioAll2);              // 푸드빌 마케팅 수신동의
					
					 */

					$("#birth_yy").change(function() {
						date_change();
					});
					$("#birth_mm").change(function() {
						date_change();
					});

					var cj_marketing_agree = "Y";
					if (cj_marketing_agree != "Y") {
						$('#cj_agree input').attr("disabled", true).trigger(
								'change');
					}

					var coop_marketing_agree = "";
					if (coop_marketing_agree != "Y") {
						$('#coop_agree input').attr("disabled", true).trigger(
								'change');
					}
					if (coop_marketing_agree != "Y") {
						//3자제공동의를 하지 않았더라도 마케팅수신동의 값이 N으로 저장되어야 하므로 해당 값은
						//가입시 넘겨주어야함
						$('#coop_agree input[name=rcvr_coopco]').attr(
								"disabled", false).trigger('change');
					}
				});

		// 오프라인 회원정보
		function setUserInfo() {
			// 기본정보 hidden
			if ('' != '') {
				$('#legl_rep_nm').val('')
			}
			;
			if ('' != '') {
				$('#legl_rep_ssn1').val('')
			}
			;
			if ('' != '') {
				$('#legl_rep_ssn2').val('')
			}
			;
			if ('' != '') {
				$('#legl_rep_mob_no1').val('')
			}
			;
			if ('' != '') {
				$('#legl_rep_mob_no2').val('')
			}
			;
			if ('' != '') {
				$('#legl_rep_mob_no3').val('')
			}
			;
			if ('' != '') {
				$('#legl_rep_email_addr1').val('')
			}
			;
			if ('' != '') {
				$('#legl_rep_email_addr2').val('')
			}
			;
			if ('' != '') {
				$('#legl_rep_rel_cnts').val('')
			}
			;
			if ('' != '') {
				$('#legl_rep_agr_dy').val('')
			}
			;
			if ('' != '') {
				$('#legl_rep_agr_yn').val('')
			}
			;

			if ('' != '') {
				$('#email_addr1').val('')
			}
			;
			if ('' != '') {
				$('#email_addr_opt').val('')
			}
			;
			if ('' != '') {
				$('#email_addr2').val('')
			}
			;

			// 이메일 직접입력일때
			if ($('#email_addr2').val() != ''
					&& ($('#email_addr_opt').val() != $('#email_addr2').val())) {
				$('#email_addr_opt').val('0');
			}

			// 휴대폰
			if ('' != '') {
				$('#mob_no_1').val('')
			}
			;
			if ('' != '') {
				$('#mob_no_2').val('')
			}
			;
			if ('' != '') {
				$('#mob_no_3').val('')
			}
			;

			// 생일
			if ('' != '') {
				$('#birth_yy').val('');
				$('#birth_mm').val('');
				$('#birth_dd').val('');
			}

		}

		// 이메일 셋팅
		function setEmail() {
			// 직접입력일때
			if ($('#email_addr_opt').val() == '0') {
				$('#email_addr2').attr('readonly', false);
			} else if ($('#email_addr_opt').val() != '') {
				$('#email_addr2').attr('readonly', true);
				$('#email_addr2').val($('#email_addr_opt').val());
			} else {
				$('#email_addr2').attr('readonly', true);
			}
		}

		// 이메일 직접입력일때 추가필드 초기화
		function chkEmail() {
			// 직접입력일때
			if ($('#email_addr_opt').val() == '0') {
				$('#email_addr2').val('');
			}
		}

		// cabs lock 체크
		var msgStr = "";
		function cabsCheck() {
			var id = this.id;
			if (checkCapsLock()) {
				msgStr = "Cabs lock가 켜져 있습니다.";
			} else {
				$("#msg_" + id).hide();
				msgStr = "";
			}
		}

		// 패스워드 강도 체크  2012.1.5
		var pwStrength = false;
		function checkPassword() {
			pwStrength = false;
			var special_chars1 = "~!@#$%&*";

			var pw = new Password(document.getElementById('pwd').value,
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

			alertMsg("alert_pwd_strength", "<em>" + verdict + " " + hint
					+ "</em>");

			if (pw.strength >= 38) {
				pwStrength = true;
			}
		}

		function checkPasswordRule() {
			if ($('#pwd').val() == "") {
				alert("msg_pwd", "비밀번호를 입력해 주세요.");
				alert("비밀번호를 입력해 주세요.");
				return false;
			} else {

				var parameter = {};
				parameter.p = BASE64.encode($('#pwd').val());
				if ($('#mbr_id').val() != undefined) {
					parameter.m = BASE64.encode($('#mbr_id').val());
				}

				$.ajax({
					url : '/cjmweb/common/check-pwd-rule.do',
					dataType : 'json',
					data : 'mbr_id=' + parameter.m + '&pwd=' + parameter.p,
					async : false,
					type : 'POST',
					error : function(err) {
						alert(err);
					},
					success : function(response, statusText) {
						if (response.resultCode != "0000") {
							alertMsg("alert_pwd_strength", "<em>"
									+ response.result_msg + "</em>");
							return false;
						} else {
							return true;
						}
					}
				});

			}
		}

		function checkPwd2() {
			if ($("#pwd").val() != $("#pwd_check").val()) {
				alertMsg('msg_pwd_check', "입력하신 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.")
			} else {
				$("#msg_pwd_check").hide();
			}
		}

		function chkEmailDomain() {
			if ($('#email_addr_opt').val() == '0' && $('#email_addr2').val()) {
				$.ajax({
					url : '/cjmweb/common/check-email-available.do',
					dataType : 'json',
					data : 'domain=' + $('#email_addr2').val(),
					async : false,
					type : 'POST',
					error : function(err) {
						alert(err);
					},
					success : function(response, statusText) {
						if (response.result_code != '00000') {
							alertMsg('alert_email_addr',
									"메일 도메인주소를 정확하게 입력하셨나요? 다시 한 번 확인해 주세요.");
						} else
							$('#alert_email_addr').hide();
					}
				});
			}
		}

		function showCupoon() {
			alert("생일쿠폰 보기!!");
		}

		function showMemory() {
			alert("기념일서비스보기 보기!!");
		}

		// 취소
		function goCancel() {
			if (!confirm('회원가입을 취소하시겠습니까?'))
				return;

			if ('' == '') {
				location.href = 'https://www.cjone.com/cjmweb/main.do';
			} else {
				location.href = 'https://www.cjone.com/cjmweb/join.do?coopco_cd=7030&brnd_cd=3000&mcht_no=3000&upd_coopco_id=';
			}
		}

		// 회원가입 완료
		function goSubmit() {

			if (beforeSubmit()) {
				var actionUrl = $('#form2').attr('action');

				if (actionUrl.indexOf('/join.do') > -1) {
					location.href = actionUrl;
				} else {
					$('#form2').submit();
				}
			}
		}

		function beforeSubmit() {
			// 이메일 셋팅
			if ($('#email_addr_opt').val() != "0") {
				$('#email_addr2').val($('#email_addr_opt').val());
			}

			if (!checkInput())
				return false;

			if (!confirm('소중한 고객님의 정보는 CJ ONE 제휴 브랜드와 함께 변경 적용됩니다.\n이대로 입력하시겠습니까?')) {
				return false;
			} else {

				ajaxRegister();
				return true;
			}
		}

		//매장가입pc
		function submitOk() {
			// 이메일 셋팅
			if ($('#email_addr_opt').val() != "0") {
				$('#email_addr2').val($('#email_addr_opt').val());
			}

			ajaxRegister();

			var actionUrl = $('#form2').attr('action');

			if (actionUrl.indexOf('/join.do') > -1) {
				location.href = actionUrl;
			} else {
				$('#form2').submit();
			}
		}

		function ajaxRegister() {
			$("#pwd").val(BASE64.encode($("#pwd").val()));
			$("#pwd_check").val('');
			var params = $("#form1").serialize();

			$
					.ajax({
						url : '/cjmweb/join/member-register.do',
						dataType : 'json',
						async : false,
						type : 'POST',
						data : params,
						success : function(data) {
							$("#pwd").val('');

							if (data.reqBox.str_msg != ''
									&& data.reqBox.str_msg != null
									&& data.reqBox.str_msg != 'undefined') {
								var str_msg = "" + data.reqBox.str_msg;
								str_msg = str_msg.replace(/\\n/g, '\n');
								alert(str_msg);
							}

							if (data.reqBox.sns_yn != "undefined"
									&& data.reqBox.sns_yn != null
									&& data.reqBox.sns_yn != '')
								$("#form2 #sns_yn").val(data.reqBox.sns_yn);
							if (data.reqBox.coopco_cd != "undefined"
									&& data.reqBox.coopco_cd != null
									&& data.reqBox.coopco_cd != '')
								$("#form2 #coopco_cd").val(
										data.reqBox.coopco_cd);
							if (data.reqBox.brnd_cd != "undefined"
									&& data.reqBox.brnd_cd != null
									&& data.reqBox.brnd_cd != '')
								$("#form2 #brnd_cd").val(data.reqBox.brnd_cd);
							if (data.reqBox.mcht_no != "undefined"
									&& data.reqBox.mcht_no != null
									&& data.reqBox.mcht_no != '')
								$("#form2 #mcht_no").val(data.reqBox.mcht_no);
							if (data.reqBox.upd_coopco_id != "undefined"
									&& data.reqBox.upd_coopco_id != null
									&& data.reqBox.upd_coopco_id != '')
								$("#form2 #upd_coopco_id").val(
										data.reqBox.upd_coopco_id);
							if (data.reqBox.coop_return_url != "undefined"
									&& data.reqBox.coop_return_url != null
									&& data.reqBox.coop_return_url != '')
								$("#form2 #coop_return_url").val(
										data.reqBox.coop_return_url);
							if (data.reqBox.return_func != "undefined"
									&& data.reqBox.return_func != null
									&& data.reqBox.return_func != '')
								$("#form2 #return_func").val(
										data.reqBox.return_func);
							if (data.reqBox.mbr_id != "undefined"
									&& data.reqBox.mbr_id != null
									&& data.reqBox.mbr_id != '')
								$("#form2 #mbr_id").val(data.reqBox.mbr_id);
							if (data.reqBox.sub_type != "undefined"
									&& data.reqBox.sub_type != null
									&& data.reqBox.sub_type != '')
								$("#form2 #sub_type").val(data.reqBox.sub_type);
							if (data.reqBox.ipin_use_yn != "undefined"
									&& data.reqBox.ipin_use_yn != null
									&& data.reqBox.ipin_use_yn != '')
								$("#form2 #ipin_use_yn").val(
										data.reqBox.ipin_use_yn);
							if (data.reqBox.hg_nm != "undefined"
									&& data.reqBox.hg_nm != null
									&& data.reqBox.hg_nm != '')
								$("#form2 #hg_nm").val(data.reqBox.hg_nm);
							if (data.reqBox.vno != "undefined"
									&& data.reqBox.vno != null
									&& data.reqBox.vno != '')
								$("#form2 #vno").val(data.reqBox.vno);
							if (data.reqBox.ssn1 != "undefined"
									&& data.reqBox.ssn1 != null
									&& data.reqBox.ssn1 != '')
								$("#form2 #ssn1").val(data.reqBox.ssn1);
							if (data.reqBox.ssn2 != "undefined"
									&& data.reqBox.ssn2 != null
									&& data.reqBox.ssn2 != '')
								$("#form2 #ssn2").val(data.reqBox.ssn2);
							if (data.reqBox.ipin_ci != "undefined"
									&& data.reqBox.ipin_ci != null
									&& data.reqBox.ipin_ci != '')
								$("#form2 #ipin_ci").val(data.reqBox.ipin_ci);
							if (data.reqBox.ipin_di != "undefined"
									&& data.reqBox.ipin_di != null
									&& data.reqBox.ipin_di != '')
								$("#form2 #ipin_di").val(data.reqBox.ipin_di);
							if (data.reqBox.gender != "undefined"
									&& data.reqBox.gender != null
									&& data.reqBox.gender != '')
								$("#form2 #gender").val(data.reqBox.gender);
							if (data.reqBox.frgnr_yn != "undefined"
									&& data.reqBox.frgnr_yn != null
									&& data.reqBox.frgnr_yn != '')
								$("#form2 #frgnr_yn").val(data.reqBox.frgnr_yn);
							if (data.reqBox.under_14 != "undefined"
									&& data.reqBox.under_14 != null
									&& data.reqBox.under_14 != '')
								$("#form2 #under_14").val(data.reqBox.under_14);
							if (data.reqBox.id_validate != "undefined"
									&& data.reqBox.id_validate != null
									&& data.reqBox.id_validate != '')
								$("#form2 #id_validate").val(
										data.reqBox.id_validate);
							if (data.reqBox.agr_dy != "undefined"
									&& data.reqBox.agr_dy != null
									&& data.reqBox.agr_dy != '')
								$("#form2 #agr_dy").val(data.reqBox.agr_dy);
							if (data.reqBox.agr_tm != "undefined"
									&& data.reqBox.agr_tm != null
									&& data.reqBox.agr_tm != '')
								$("#form2 #agr_tm").val(data.reqBox.agr_tm);
							if (data.reqBox.agr_yn != "undefined"
									&& data.reqBox.agr_yn != null
									&& data.reqBox.agr_yn != '')
								$("#form2 #agr_yn").val(data.reqBox.agr_yn);
							if (data.reqBox.agr_sub_yn99 != "undefined"
									&& data.reqBox.agr_sub_yn99 != null
									&& data.reqBox.agr_sub_yn99 != '')
								$("#form2 #agr_sub_yn99").val(
										data.reqBox.agr_sub_yn99);
							if (data.reqBox.mbr_no != "undefined"
									&& data.reqBox.mbr_no != null
									&& data.reqBox.mbr_no != '')
								$("#form2 #mbr_no").val(data.reqBox.mbr_no);
							if (data.reqBox.mbr_typ_cd != "undefined"
									&& data.reqBox.mbr_typ_cd != null
									&& data.reqBox.mbr_typ_cd != '')
								$("#form2 #mbr_typ_cd").val(
										data.reqBox.mbr_typ_cd);
							if (data.reqBox.legl_rep_nm != "undefined"
									&& data.reqBox.legl_rep_nm != null
									&& data.reqBox.legl_rep_nm != '')
								$("#form2 #legl_rep_nm").val(
										data.reqBox.legl_rep_nm);
							if (data.reqBox.legl_birth_day != "undefined"
									&& data.reqBox.legl_birth_day != null
									&& data.reqBox.legl_birth_day != '')
								$("#form2 #legl_birth_day").val(
										data.reqBox.legl_birth_day);
							if (data.reqBox.legl_ipin_ci != "undefined"
									&& data.reqBox.legl_ipin_ci != null
									&& data.reqBox.legl_ipin_ci != '')
								$("#form2 #legl_ipin_ci").val(
										data.reqBox.legl_ipin_ci);
							if (data.reqBox.legl_cert != "undefined"
									&& data.reqBox.legl_cert != null
									&& data.reqBox.legl_cert != '')
								$("#form2 #legl_cert").val(
										data.reqBox.legl_cert);
							if (data.reqBox.legl_typ_cd != "undefined"
									&& data.reqBox.legl_typ_cd != null
									&& data.reqBox.legl_typ_cd != '')
								$("#form2 #legl_typ_cd").val(
										data.reqBox.legl_typ_cd);
							if (data.reqBox.legl_rep_agr_yn != "undefined"
									&& data.reqBox.legl_rep_agr_yn != null
									&& data.reqBox.legl_rep_agr_yn != '')
								$("#form2 #legl_rep_agr_yn").val(
										data.reqBox.legl_rep_agr_yn);
							if (data.reqBox.join_coopco_list != "undefined"
									&& data.reqBox.join_coopco_list != null
									&& data.reqBox.join_coopco_list != '')
								$("#form2 #join_coopco_list").val(
										data.reqBox.join_coopco_list);
							if (data.reqBox.rejoin_yn != "undefined"
									&& data.reqBox.rejoin_yn != null
									&& data.reqBox.rejoin_yn != '')
								$("#form2 #rejoin_yn").val(
										data.reqBox.rejoin_yn);
							if (data.reqBox.action_url != "undefined"
									&& data.reqBox.action_url != null
									&& data.reqBox.action_url != '')
								$("#form2 #action_url").val(
										data.reqBox.action_url);
							if (data.reqBox.evt_typ != "undefined"
									&& data.reqBox.evt_typ != null
									&& data.reqBox.evt_typ != '')
								$("#form2 #evt_typ").val(data.reqBox.evt_typ);
							if (data.reqBox.strEvtCode != "undefined"
									&& data.reqBox.strEvtCode != null
									&& data.reqBox.strEvtCode != '')
								$("#form2 #strEvtCode").val(
										data.reqBox.strEvtCode);
							if (data.reqBox.evt_coopco_cd != "undefined"
									&& data.reqBox.evt_coopco_cd != null
									&& data.reqBox.evt_coopco_cd != '')
								$("#form2 #evt_coopco_cd").val(
										data.reqBox.evt_coopco_cd);
							if (data.reqBox.evt_brnd_cd != "undefined"
									&& data.reqBox.evt_brnd_cd != null
									&& data.reqBox.evt_brnd_cd != '')
								$("#form2 #evt_brnd_cd").val(
										data.reqBox.evt_brnd_cd);
							if (data.reqBox.evt_mcht_no != "undefined"
									&& data.reqBox.evt_mcht_no != null
									&& data.reqBox.evt_mcht_no != '')
								$("#form2 #evt_mcht_no").val(
										data.reqBox.evt_mcht_no);
							if (data.reqBox.evt_mbr_no != "undefined"
									&& data.reqBox.evt_mbr_no != null
									&& data.reqBox.evt_mbr_no != '')
								$("#form2 #evt_mbr_no").val(
										data.reqBox.evt_mbr_no);
							if (data.reqBox.card_register_error != "undefined"
									&& data.reqBox.card_register_error != null
									&& data.reqBox.card_register_error != '')
								$("#form2 #card_register_error").val(
										data.reqBox.card_register_error);

							var html = ""

							if (data.reqBox.svcuse_agr_typ != "undefined"
									&& data.reqBox.svcuse_agr_typ != null
									&& data.reqBox.svcuse_agr_typ != '') {
								var obj01 = data.reqBox.svcuse_agr_typ;
								$
										.each(
												obj01,
												function(index, item) {
													html += "<input type='hidden' name='svcuse_agr_typ_cd' id='svcuse_agr_typ_cd' value='"+item+"' />";
												});
							}

							if (data.reqBox.agr_onln != "undefined"
									&& data.reqBox.agr_onln != null
									&& data.reqBox.agr_onln != '') {
								var obj02 = data.reqBox.agr_onln;
								$
										.each(
												obj02,
												function(index, item) {
													html += "<input type='hidden' name='agr_typ_onln' id='agr_typ_onln' value='"+item+"' />";
												});
							}

							if (data.reqBox.etc_map != "undefined"
									&& data.reqBox.etc_map != null
									&& data.reqBox.etc_map != '') {
								var obj03 = data.etc_map;
								$
										.each(
												obj03,
												function(index, item) {
													html += "<input type='hidden' name='etc"+index+"' id='etc"+index+"' value='"+item+"' />";
												});
							}
							$("#form2").append(html);

							$('#form2').attr('action',
									'/cjmweb' + data.reqBox.action_url);
						},
						error : function(data) {
							var str_msg = "test" + data.reqBox.str_msg;
							str_msg = str_msg.replace(/\\n/g, '\n');
							alert(str_msg);
						}
					});
		}

		function alertMsg(objId, ErrMsg) {
			$("#" + objId).html(ErrMsg);
			$("#" + objId).show();
		}

		function showErrorMsg(occur_loc, occur_msg) {
			$("#msg_pwd").addClass("hide");
			$("#msg_pwd_chedk").addClass("hide");
			$("#alert_mob_no").addClass("hide");
			$("#alert_email_addr").addClass("hide");
			$("#alert_rcm_id").addClass("hide");

			$("#mbr_id").removeClass("error");
			$("#pwd").removeClass("error");
			$("#pwd_chedk").removeClass("error");
			$("#mob_no_1").removeClass("error");
			$("#email_addr1").removeClass("error");
			$("#rcm_id").removeClass("error");

			$("#" + occur_loc).addClass("error");
			if (occur_msg.length < 1) {
				$("#msg_" + occur_loc).removeClass("hide");
			} else {
				$("#msg_" + occur_msg)
				$("#msg_" + occur_msg).removeClass("hide");
			}
		}

		var flag = "invalid";
		function checkPasswordValid() {
			flag = "invalid";
			$('#pwd').val($('#pwd_check').val());

			var parameter = {};
			function transHEX(a) {
				var result = "";
				for (var i = 0; i < a.length; ++i) {
					var code = a.charCodeAt(i).toString(16);
					result += '' + code;
				}
				return result;
			}
			
			parameter.p = BASE64.encode($('#pwd').val());

			if ($('#mbr_id').val() != undefined) {
				parameter.m = BASE64.encode($('#mbr_id').val());
			}

			$.ajax({
				url : '/cjmweb/common/check-pwd-rule.do',
				dataType : 'json',
				data : 'mbr_id=' + parameter.m + '&pwd=' + parameter.p,
				async : false,
				type : 'POST',
				error : function(err) {
					alertMsg("msg_pwd", "<em>" + err + "</em>");
				},
				success : function(response, statusText) {
					if (response.result_code != "0000") {
						alertMsg("msg_pwd", "<em>" + response.result_msg
								+ "</em>");
						alert(response.result_msg);
						$('#pwd').focus();
						flag = "invalid";
					} else {
						flag = "valid";
					}
				}
			});
		}
/* 
		// 회원가입 체크
		function checkInput() {
			if ($('#mbr_id').val().length < 6) {
				alertMsg("alert_mbr_id",
						"6~12자리의 영문 소문자 또는 영문 소문자+숫자 아이디를 입력해 주세요.");
				alert("6~12자리의 영문 소문자 또는 영문 소문자+숫자 아이디를 입력해 주세요.");
				$('#mbr_id').focus();
				return false;
			}

			if ($('#id_validate').val() != "Y") {
				alertMsg("alert_mbr_id", "아이디 중복확인을 해주세요.");
				alert("아이디 중복확인을 해주세요.");
				$('#mbr_id').focus();
				return false;
			}

			if ($('#pwd').val().length < 6) {
				showErrorMsg("pwd", "");
				alert("비밀번호를 입력해 주세요.");
				$('#pwd').focus();
				return false;
			}
			$("#msg_pwd").hide();

			if ($('#pwd_check').val() == "") {
				showErrorMsg("pwd_check", "");
				alert("입력하신 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.");
				$('#pwd_check').focus();
				return false;
			}

			if ($("#pwd").val() != $("#pwd_check").val()) {
				alertMsg('msg_pwd_check', "입력하신 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.")
				alert("입력하신 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.");
				$('#pwd_check').focus();
				return false;
			} else {
				$("#msg_pwd_check").hide();
			}

			checkPasswordValid();
			if (flag == "invalid") {
				return false;
			}

			if (!$('#birth_yy').val()) {
				alert("생년월일을 선택하세요.");
				$('#birth_yy').focus();
				return false;
			} else if (!$('#birth_mm').val()) {
				alert("생년월일을 선택하세요.");
				$('#birth_mm').focus();
				return false;
			} else if (!$('#birth_dd').val()) {
				alert("생년월일을 선택하세요.");
				$('#birth_dd').focus();
				return false;
			}

			if (!setFocusMobileTel("1") || !setFocusMobileTel("2")
					|| !setFocusMobileTel("3"))
				return false;
			$('#alert_mob_no').hide();

			if ($('#email_addr1').val() == "") {
				alertMsg("alert_email_addr", "이메일 주소를 다시 확인해주세요.");
				alert("이메일 주소를 다시 확인해주세요.");
				$('#email_addr1').focus();
				return false;
			}

			if ($('#email_addr_opt').val() == "") {
				alertMsg("alert_email_addr", "이메일 도메인을 선택 하세요.");
				alert("이메일 도메인을 선택 하세요.");
				$('#email_addr_opt').focus();
				return false;
			}

			if ($('#email_addr_opt').val() == "0"
					&& $('#email_addr2').val() == "") {
				alertMsg('alert_email_addr',
						"이메일 도메인 직접입력시 이메일 도메인을 입력하셔야 합니다.");
				alert("이메일 도메인 직접입력시 이메일 도메인을 입력하셔야 합니다.");
				$('#email_addr2').focus();
				return false;
			}

			// 이메일 유효성 체크
			if (!CheckMailFormat($('#email_addr1').val() + '@'
					+ $('#email_addr2').val())) {
				alertMsg('alert_email_addr', "유효하지 않는 이메일 주소 입니다.");
				alert("유효하지 않는 이메일 주소 입니다.");
				$('#email_addr2').focus();
				return false;
			}
			$('#alert_email_addr').hide();
		} */

		
		function isValid_mbrId(str) {
			var patten = new Array();
			var msg = new Array();
			var p;
			var ret_msg = new Array();
			patten["not_eng_num"] = /^[a-z0-9]+$/g; //a-z와 0-9 이외의 문자가 있는지 확인    
			msg["not_eng_num"] = "영문 소문자/숫자만 사용가능합니다.";
			patten["len"] = /^\w{6,12}$/; // 문자열 길이
			msg["len"] = "6~12자리로 사용가능합니다.";
			patten["only_num"] = /[a-zA-Z]/;// 숫자만
			msg["only_num"] = "영문 소문자/숫자의 혼용으로 사용가능합니다(숫자만으로는 사용불가).";
			var retVal = checkSpace(str);
			if (retVal) {
				alertMsg('msg_id', "아이디는 빈 공간 없이 연속된 영문 소문자와 숫자만 사용할 수 있습니다.");
				alert("아이디는 빈 공간 없이 연속된 영문 소문자와 숫자만 사용할 수 있습니다.");
				return false;
			}
			var i = 0;
			for (x in patten) {
				p = eval(patten[x]);
				if (!p.test(str)) {
					ret_msg[i] = msg[x];
					i++;
				}
			}
			if (i > 0) {
				alertMsg("alert_mbr_id",
						"6~12자리의 영문 소문자 또는 영문 소문자+숫자 아이디를 입력해 주세요.");
				alert("6~12자리의 영문 소문자 또는 영문 소문자+숫자 아이디를 입력해 주세요.");
				return false;
			} else
				return true;
		}

	</script>
	<script>
        $(function () {
            $('[data-check-all]').checkboxAllChecker();             //CJONE마케팅 전체동의
            
            //input type 설정
            cjone.importJs(['/cjmweb/js/modules/formatter'], function () {
                $('[data-format]').formatter();
            });
            
            if('' == '') {
	            $("#email_addr_opt").val("naver.com").change();
            }
        });
    </script>

	<!--//script 영역-->
	<form method="post" name="form2" id="form2">
		<input type="hidden" id="sns_yn" name="sns_yn" value=""> <input
			type="hidden" id="coopco_cd" name="coopco_cd" value=""> <input
			type="hidden" id="brnd_cd" name="brnd_cd" value=""> <input
			type="hidden" id="mcht_no" name="mcht_no" value=""> <input
			type="hidden" name="coop_return_url" id="coop_return_url" value="">
		<input type="hidden" id="return_func" name="return_func" value="">
		<input type="hidden" id="mbr_id" name="mbr_id" value=""> <input
			type="hidden" id="sub_type" name="sub_type" value=""> <input
			type="hidden" id="ipin_use_yn" name="ipin_use_yn" value=""> <input
			type="hidden" id="hg_nm" name="hg_nm" value=""> <input
			type="hidden" id="vno" name="vno" value=""> <input
			type="hidden" id="ssn1" name="ssn1" value=""> <input
			type="hidden" id="ssn2" name="ssn2" value=""> <input
			type="hidden" id="ipin_ci" name="ipin_ci" value=""> <input
			type="hidden" id="ipin_di" name="ipin_di" value=""> <input
			type="hidden" id="gender" name="gender" value=""> <input
			type="hidden" id="frgnr_yn" name="frgnr_yn" value=""> <input
			type="hidden" id="under_14" name="under_14" value=""> <input
			type="hidden" id="id_validate" name="id_validate" value=""> <input
			type="hidden" id="agr_dy" name="agr_dy" value=""> <input
			type="hidden" id="agr_tm" name="agr_tm" value=""> <input
			type="hidden" id="agr_yn" name="agr_yn" value=""> <input
			type="hidden" name="agr_sub_yn99" id="agr_sub_yn99" value="">
		<!-- 3자 동의파라메터   -->
		<input type="hidden" id="mbr_no" name="mbr_no" value=""> <input
			type="hidden" id="mbr_typ_cd" name="mbr_typ_cd" value=""> <input
			type="hidden" id="legl_rep_nm" name="legl_rep_nm" value=""> <input
			type="hidden" id="legl_birth_day" name="legl_birth_day" value="">
		<input type="hidden" id="legl_ipin_ci" name="legl_ipin_ci" value="">
		<input type="hidden" id="legl_cert" name="legl_cert" value="">
		<input type="hidden" id="legl_typ_cd" name="legl_typ_cd" value="">
		<input type="hidden" id="legl_rep_agr_yn" name="legl_rep_agr_yn"
			value=""> <input type="hidden" id="join_coopco_list"
			name="join_coopco_list" value=""> <input type="hidden"
			id="rejoin_yn" name="rejoin_yn" value=""> <input
			type="hidden" id="action_url" name="action_url" value=""> <input
			type="hidden" name="evt_typ" id="evt_typ" value=""> <input
			type="hidden" name="strEvtCode" id="strEvtCode" value=""> <input
			type="hidden" name="evt_coopco_cd" id="evt_coopco_cd" value="">
		<input type="hidden" name="evt_brnd_cd" id="evt_brnd_cd" value="">
		<input type="hidden" name="evt_mcht_no" id="evt_mcht_no" value="">
		<input type="hidden" name="evt_mbr_no" id="evt_mbr_no" value="">
		<input type="hidden" name="card_register_error"
			id="card_register_error" value=""> <input type="hidden"
			name="upd_coopco_id" id="upd_coopco_id" value=""> <input
			type="hidden" name="card_chk" id="card_chk" value="">
	</form>


	<script type="text/javascript" data-import="true"
		src="/cjmweb/js/modules/formatter.js"></script>
	<script type="text/javascript" data-import="true"
		src="/cjmweb/js/modules/placeholder.js"></script>
</body>

<script>
	//아이디 중복체크
	$(function () {
		$("#btnIdCheck").on("click", function () {
			let user_id = $("#mbr_id").val();
			$.ajax({
				url: "idCheck.jsp"
				, dataType: "text"
				, type:"POST"
				, data: {user_id:user_id}
				, cache: false
				
				, success: function (data) {
					//alert(data);
					if (data == "1") {
						alert("이미 사용중인 아이디입니다. 다른 아이디를 입력해주세요.");
						$("#alert_mbr_id").text("이미 사용중인 아이디입니다. 다른 아이디를 입력해주세요.");
					} else{
						$("#alert_mbr_id").text("사용가능한 아이디입니다.");
					
					}//if	
				}
				, error: function () {
					alert("이미 사용중인 아이디입니다. 다른 아이디를 입력해주세요.");
				}
			});
		});
	});
</script>
<script>
	
	function chkPwd() {
		var userpwd = $("#pwd").val();
		var userckpwd = $("#pwd_check").val();
		var userid = $("#mbr_id").val();
		var pwdPattern = /^(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&*])[a-zA-Z\d!@#$%^&*]{8,12}$/;
		var num = userpwd.search(/[0-9]/g);
		var eng = userpwd.search(/[a-z]/ig);
		var spe = userpwd.search(/[!"#$%&'()*+,-./:;<=>?@[]^_`{|}~]/gi);
		if (userpwd === "") {
			alert("비밀번호를 입력해 주세요.");
			$("#pwd").focus();
			return false;
		} else if (userpwd.length<8 || userpwd.length>12) {
			alert("영문자, 숫자, 특수문자 모두 최소 1가지 이상 조합하여 8~12자리로 설정 가능합니다.");
			$("#pwd").focus();
			return false;
		} else if ((num < 0 && eng < 0) || (eng < 0 && spe < 0)
				|| (spe < 0 && num < 0)) {
			alert("영문자, 숫자, 특수문자 모두 최소 1가지 이상 조합하여 8~12자리로 설정 가능합니다.");
			$("#pwd").focus();
			return false;
		} else if (/(\w)\1\1\1/.test(userpwd)) {
			alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
			$("#pwd").focus();
			return false;
		} else if (userpwd.search(userid) > -1) {
			alert("비밀번호 설정 시 아이디와 4자리 이상 동일한 문자 또는 숫자를 사용할 수 없습니다.");
			$("#pwd").focus();
			return false;
		} else if ( userpwd !=userckpwd){
			alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
			$("#pwd").focus();
			return false;
		}
		return true;
	}
	$("#btnok").on("click", function () {
		chkPwd();
	});
</script>

<script>
// 이메일 직접입력
        if($('#email_addr_opt').val() == "0" && $('#email_addr2').val() == ""){
            alertMsg('alert_email_addr', "이메일 도메인 직접입력시 이메일 도메인을 입력하셔야 합니다.");
            alert("이메일 도메인 직접입력시 이메일 도메인을 입력하셔야 합니다.");
            $('#email_addr2').focus();
            return false;
        }

</script>

<%
	session.removeAttribute("u_name");
	session.removeAttribute("u_birth");
	session.removeAttribute("tel");
%>
</body>
</html>

