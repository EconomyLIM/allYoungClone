<%@page import="java.sql.Date"%>
<%@page import="user.domain.OuserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<body>
<%
	String u_name = (String)session.getAttribute("u_name");
	String user_id = (String)session.getAttribute("user_id");
	String u_pwd = (String)session.getAttribute("u_pwd");
	String u_tel = (String)session.getAttribute("u_tel");
	String u_email = (String)session.getAttribute("u_email");
	System.out.println(u_name);
	System.out.println(user_id);
	System.out.println(u_pwd);
	System.out.println(u_tel);
	System.out.println(u_email);
	

%>

	<!--skip navigation-->
	<div class="skipNavi">
		<a href="#contentsWrap">본문으로 바로가기</a>
	</div>
	<div id="bodyWrap">
		<!-- header -->

		<form method="post" id="getCoopForm" name="getCoopForm">
			<input type="hidden" name="get_coopco_cd" id="get_coopco_cd"
				value="7030"> <input type="hidden" name="get_brnd_cd"
				id="get_brnd_cd" value="3000"> <input type="hidden"
				name="get_mcht_no" id="get_mcht_no" value="3000">
		</form>

		<!--header-->
		<div id="part_headerWrap">
			<div class="part_header_wrap">
				<h1 class="cj_logo">	<span class="logo">CJ ONE</span> TRUE LIFESTYLE MEMBERSHIP</h1>
				<div id="coop_header_wrap">
					<p class="part_logo">건강한 아름다움을 제안하는 글로벌 라이프스타일 플랫폼
					<img src="https://www.cjone.com/cjmweb/upfile/20191007_1837101.png" alt="올리브영">
					</p>
				</div>
			</div>
		</div>
		<!-- //header -->

		<!-- contents -->
		<div id="contentsWrap">
			<form name="mobChgForm" id="mobChgForm" method="post" action="">
				<input type="hidden" name="enc_data" value=""> 
				<input 	type="hidden" name="enc_com" value=""> 
				<input type="hidden" name="hg_nm" value=""> 
				<input type="hidden" name="phone_no" value=""> 
				<input type="hidden" name="mob_no_1" value="">
				<input type="hidden" name="mob_no_2" value=""> 
				<input 	type="hidden" name="mob_no_3" value=""> 
				<input 	type="hidden" name="dup_mob_no_init_use" value="N"> 
				<input 	type="hidden" name="coopco_cd" value="7030"> 
				<input 	type="hidden" name="brnd_cd" value="3000"> 
				<input 	type="hidden" name="mcht_no" value="3000">
			</form>
			
			<form name="sform" id="sform" method="post" action="">
				<input type="hidden" name="coopco_cd" id="coopco_cd" value="7030">
				<input type="hidden" name="brnd_cd" id="brnd_cd" value="3000">
				<input type="hidden" name="mcht_no" id="mcht_no" value="3000">
				<input type="hidden" name="coop_return_url" id="coop_return_url"
					value="https://www.oliveyoung.co.kr/store/mypage/getMktReceiptInfo.do?refresh=Y">
			</form>
			<form name="form1" id="form1" method="post" action="">
				<input type="hidden" name="coopco_cd" id="coopco_cd" value="7030">
				<input type="hidden" name="brnd_cd" id="brnd_cd" value="3000">
				<input type="hidden" name="mcht_no" id="mcht_no" value="3000">
				<input type="hidden" name="coop_return_url" id="coop_return_url"
					value="https://www.oliveyoung.co.kr/store/mypage/getMktReceiptInfo.do?refresh=Y">
				<input type="hidden" name="old_clndr_typ_cd" id="old_clndr_typ_cd" value="S">
				<input type="hidden" id="under_14"	name="under_14" value="N">
				<input type="hidden" id="agr30_yn" name="agr30_yn" value=""> 
				<input	type="hidden" id="agrbrnd_yn" name="agr_yn" value="">
				<input 	type="hidden" id="mbr_id" name="mbr_id" value=""> 
				<input 	type="hidden" name="access_token" id="access_token" value="">
				<input type="hidden" name="sns_typ_cd" id="sns_typ_cd" value="">
				<input type="hidden" name="sns_typ_cd_10" id="sns_typ_cd_10" value="">
				<input type="hidden" name="sns_first_yn" id="sns_first_yn" value="Y">
				<input type="hidden" name="noAgr" id="noAgr" value="">

				<!-- 160418 회원정보 변경체크용 파라미터 -->
				<input type="hidden" name="chk_email_acv_change" value="N"
					id="chk_email_acv_change">
				<input type="hidden" name="chk_sms_acv_change" value="N" id="chk_sms_acv_change">
				<input type="hidden" name="chk_tel_acv_change" value="N" id="chk_tel_acv_change"> 
				<input type="hidden" name="chk_birth_change" value="N" id="chk_birth_change"> 
				<input 	type="hidden" name="chk_tel_change" value="N" id="chk_tel_change">
				<input type="hidden" name="chk_email_change" value="N" id="chk_email_change">
				<input type="hidden" name="chk_info_agr_change" value="N" id="chk_info_agr_change">
				<input type="hidden" name="chk_receipts_change" value="N" id="chk_receipts_change">
				<input type="hidden" name="user_info_change" value="N" id="user_info_change">
				<input 	type="hidden" name="chk_info_agr_change2" value="N" 	id="chk_info_agr_change2">

				<div id="contents">
					<!-- location -->
					<div class="location_wrap">
						<div class="location">
							<a href="usermodify.jsp" class="home"><span class="haze">홈</span></a>
							<a href="pwdCheck.jsp" class="now"><span>회원정보 수정</span></a>
						</div>
					</div>
					<!-- //location -->

					<div class="cont_header">
						<h1 class="h1_tit">회원정보 수정</h1>
						<p class="h_desc">회원님의 소중한 정보를 안전하게 관리하세요.</p>
					</div>
					<div class="cont_area">
						<div class="mypage_sec">
							<div class="member_info">
								<!-- 기본정보 -->
								<div class="table_header">
									<h3 class="h3_tit">기본정보</h3>
									<div class="info">

										<a id="auth_btn_area" href="javascript:callAuthLayer()"
											 class="btn btn_sm"><span class="arr">전체 정보 확인 및 수정</span></a>
											 <a href="https://www.cjone.com/cjmweb/member/withdrawal.do?coopco_cd=7030&amp;brnd_cd=3000&amp;mcht_no=3000"
											class="btn btn_sm"><span class="arr">회원탈퇴</span></a>
									</div>
								</div>
								<div class="table_col">
									<table>
										<caption>회원기본정보 입력 표로 회원정보 이름, 아이디, 비밀번호, 비밀번호 확인,
											생년월일, 휴대전화, 이메일을 나타냅니다.</caption>
										<colgroup>
											<col style="width: 25%">
											<col>
										</colgroup>
										<tbody>


											<tr class="input">
												<th scope="row">이름</th>
												<td>
													<div class="input_group">
														<span id="hg_nm_area"></span> <a href="#"
															class="btn btn_sm" id="lnChangeName"><span
															class="arr">변경하기</span></a>
													</div>
													<p class="msg_desc">이름은 "개명"한 경우에만 변경 가능합니다.</p>
												</td>
											</tr>

											<tr>
												<th scope="row">아이디</th>
												<td><span id="mbr_id_area"><%=user_id %></span></td>
											</tr>

											<tr class="input">
												<th scope="row"><label for="birth_yy">생년월일</label></th>
												<td>
													<div class="birthday_select" id="birthday_select"
														style="display: none">
														<span class="select w120 hide" data-skin="form"> <select
															id="birth_yy" name="birth_yy" title="생년월일 중 년 선택">
																[
																<option value="">년</option>,
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
														<div class="select_wrap w120"
															style="background-color: rgb(235, 235, 228)">
															<div class="item_seleced">
																<a href="#1993" title="생년월일 중 년 선택 목록 열기"
																	data-title="생년월일 중 년 선택">1993<span class="haze">선택됨</span></a>
															</div>
															<div class="item_list_wrap ">
																<div class="item_list ui_scrollarea">
																	<ul class="ui_content">
																		<li><a href="#"><span>년</span></a></li>
																		<li><a href="#2023"><span>2023</span></a></li>
																		<li><a href="#2022"><span>2022</span></a></li>
																		<li><a href="#2021"><span>2021</span></a></li>
																		<li><a href="#2020"><span>2020</span></a></li>
																		<li><a href="#2019"><span>2019</span></a></li>
																		<li><a href="#2018"><span>2018</span></a></li>
																		<li><a href="#2017"><span>2017</span></a></li>
																		<li><a href="#2016"><span>2016</span></a></li>
																		<li><a href="#2015"><span>2015</span></a></li>
																		<li><a href="#2014"><span>2014</span></a></li>
																		<li><a href="#2013"><span>2013</span></a></li>
																		<li><a href="#2012"><span>2012</span></a></li>
																		<li><a href="#2011"><span>2011</span></a></li>
																		<li><a href="#2010"><span>2010</span></a></li>
																		<li><a href="#2009"><span>2009</span></a></li>
																		<li><a href="#2008"><span>2008</span></a></li>
																		<li><a href="#2007"><span>2007</span></a></li>
																		<li><a href="#2006"><span>2006</span></a></li>
																		<li><a href="#2005"><span>2005</span></a></li>
																		<li><a href="#2004"><span>2004</span></a></li>
																		<li><a href="#2003"><span>2003</span></a></li>
																		<li><a href="#2002"><span>2002</span></a></li>
																		<li><a href="#2001"><span>2001</span></a></li>
																		<li><a href="#2000"><span>2000</span></a></li>
																		<li><a href="#1999"><span>1999</span></a></li>
																		<li><a href="#1998"><span>1998</span></a></li>
																		<li><a href="#1997"><span>1997</span></a></li>
																		<li><a href="#1996"><span>1996</span></a></li>
																		<li><a href="#1995"><span>1995</span></a></li>
																		<li><a href="#1994"><span>1994</span></a></li>
																		<li><a href="#1993"><span>1993</span></a></li>
																		<li><a href="#1992"><span>1992</span></a></li>
																		<li><a href="#1991"><span>1991</span></a></li>
																		<li><a href="#1990"><span>1990</span></a></li>
																		<li><a href="#1989"><span>1989</span></a></li>
																		<li><a href="#1988"><span>1988</span></a></li>
																		<li><a href="#1987"><span>1987</span></a></li>
																		<li><a href="#1986"><span>1986</span></a></li>
																		<li><a href="#1985"><span>1985</span></a></li>
																		<li><a href="#1984"><span>1984</span></a></li>
																		<li><a href="#1983"><span>1983</span></a></li>
																		<li><a href="#1982"><span>1982</span></a></li>
																		<li><a href="#1981"><span>1981</span></a></li>
																		<li><a href="#1980"><span>1980</span></a></li>
																		<li><a href="#1979"><span>1979</span></a></li>
																		<li><a href="#1978"><span>1978</span></a></li>
																		<li><a href="#1977"><span>1977</span></a></li>
																		<li><a href="#1976"><span>1976</span></a></li>
																		<li><a href="#1975"><span>1975</span></a></li>
																		<li><a href="#1974"><span>1974</span></a></li>
																		<li><a href="#1973"><span>1973</span></a></li>
																		<li><a href="#1972"><span>1972</span></a></li>
																		<li><a href="#1971"><span>1971</span></a></li>
																		<li><a href="#1970"><span>1970</span></a></li>
																		<li><a href="#1969"><span>1969</span></a></li>
																		<li><a href="#1968"><span>1968</span></a></li>
																		<li><a href="#1967"><span>1967</span></a></li>
																		<li><a href="#1966"><span>1966</span></a></li>
																		<li><a href="#1965"><span>1965</span></a></li>
																		<li><a href="#1964"><span>1964</span></a></li>
																		<li><a href="#1963"><span>1963</span></a></li>
																		<li><a href="#1962"><span>1962</span></a></li>
																		<li><a href="#1961"><span>1961</span></a></li>
																		<li><a href="#1960"><span>1960</span></a></li>
																		<li><a href="#1959"><span>1959</span></a></li>
																		<li><a href="#1958"><span>1958</span></a></li>
																		<li><a href="#1957"><span>1957</span></a></li>
																		<li><a href="#1956"><span>1956</span></a></li>
																		<li><a href="#1955"><span>1955</span></a></li>
																		<li><a href="#1954"><span>1954</span></a></li>
																		<li><a href="#1953"><span>1953</span></a></li>
																		<li><a href="#1952"><span>1952</span></a></li>
																		<li><a href="#1951"><span>1951</span></a></li>
																		<li><a href="#1950"><span>1950</span></a></li>
																		<li><a href="#1949"><span>1949</span></a></li>
																		<li><a href="#1948"><span>1948</span></a></li>
																		<li><a href="#1947"><span>1947</span></a></li>
																		<li><a href="#1946"><span>1946</span></a></li>
																		<li><a href="#1945"><span>1945</span></a></li>
																		<li><a href="#1944"><span>1944</span></a></li>
																		<li><a href="#1943"><span>1943</span></a></li>
																		<li><a href="#1942"><span>1942</span></a></li>
																		<li><a href="#1941"><span>1941</span></a></li>
																		<li><a href="#1940"><span>1940</span></a></li>
																		<li><a href="#1939"><span>1939</span></a></li>
																		<li><a href="#1938"><span>1938</span></a></li>
																		<li><a href="#1937"><span>1937</span></a></li>
																		<li><a href="#1936"><span>1936</span></a></li>
																		<li><a href="#1935"><span>1935</span></a></li>
																		<li><a href="#1934"><span>1934</span></a></li>
																		<li><a href="#1933"><span>1933</span></a></li>
																		<li><a href="#1932"><span>1932</span></a></li>
																		<li><a href="#1931"><span>1931</span></a></li>
																		<li><a href="#1930"><span>1930</span></a></li>
																		<li><a href="#1929"><span>1929</span></a></li>
																		<li><a href="#1928"><span>1928</span></a></li>
																		<li><a href="#1927"><span>1927</span></a></li>
																		<li><a href="#1926"><span>1926</span></a></li>
																		<li><a href="#1925"><span>1925</span></a></li>
																		<li><a href="#1924"><span>1924</span></a></li>
																		<li><a href="#1923"><span>1923</span></a></li>
																		<li><a href="#1922"><span>1922</span></a></li>
																		<li><a href="#1921"><span>1921</span></a></li>
																		<li><a href="#1920"><span>1920</span></a></li>
																		<li><a href="#1919"><span>1919</span></a></li>
																		<li><a href="#1918"><span>1918</span></a></li>
																		<li><a href="#1917"><span>1917</span></a></li>
																		<li><a href="#1916"><span>1916</span></a></li>
																		<li><a href="#1915"><span>1915</span></a></li>
																		<li><a href="#1914"><span>1914</span></a></li>
																		<li><a href="#1913"><span>1913</span></a></li>
																		<li><a href="#1912"><span>1912</span></a></li>
																		<li><a href="#1911"><span>1911</span></a></li>
																		<li><a href="#1910"><span>1910</span></a></li>
																		<li><a href="#1909"><span>1909</span></a></li>
																		<li><a href="#1908"><span>1908</span></a></li>
																		<li><a href="#1907"><span>1907</span></a></li>
																		<li><a href="#1906"><span>1906</span></a></li>
																		<li><a href="#1905"><span>1905</span></a></li>
																		<li><a href="#1904"><span>1904</span></a></li>
																		<li><a href="#1903"><span>1903</span></a></li>
																		<li><a href="#1902"><span>1902</span></a></li>
																		<li><a href="#1901"><span>1901</span></a></li>
																		<li><a href="#1900"><span>1900</span></a></li>
																	</ul>
																</div>
																<div class="scroll ui_scrollbar">
																	<span class="bg_top"></span> <span class="bg bg_mid"
																		style="display: none;"></span> <span class="bg_btm"></span>
																</div>
															</div>
														</div>
														<span class="symbol">년</span> <span
															class="select w70 hide" data-skin="form"> <select
															id="birth_mm" name="birth_mm" title="생년월일 중 월 선택"
															class="narrow"> [
																<option value="">월</option>,
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
														<div class="select_wrap w70"
															style="background-color: rgb(235, 235, 228)">
															<div class="item_seleced">
																<a href="#05" title="생년월일 중 월 선택 목록 열기"
																	data-title="생년월일 중 월 선택">05<span class="haze">선택됨</span></a>
															</div>
															<div class="item_list_wrap ">
																<div class="item_list ui_scrollarea">
																	<ul class="ui_content">
																		<li><a href="#"><span>월</span></a></li>
																		<li><a href="#01"><span>01</span></a></li>
																		<li><a href="#02"><span>02</span></a></li>
																		<li><a href="#03"><span>03</span></a></li>
																		<li><a href="#04"><span>04</span></a></li>
																		<li><a href="#05"><span>05</span></a></li>
																		<li><a href="#06"><span>06</span></a></li>
																		<li><a href="#07"><span>07</span></a></li>
																		<li><a href="#08"><span>08</span></a></li>
																		<li><a href="#09"><span>09</span></a></li>
																		<li><a href="#10"><span>10</span></a></li>
																		<li><a href="#11"><span>11</span></a></li>
																		<li><a href="#12"><span>12</span></a></li>
																	</ul>
																</div>
																<div class="scroll ui_scrollbar">
																	<span class="bg_top"></span> <span class="bg bg_mid"
																		style="display: none;"></span> <span class="bg_btm"></span>
																</div>
															</div>
														</div>
														<span class="symbol">월</span> <span
															class="select w70 hide" data-skin="form"> <select
															id="birth_dd" name="birth_dd" title="생년월일 중 일 선택"
															class="narrow"> [
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
																<option value="28">28</option>,
																<option value="29">29</option>,
																<option value="30">30</option>,
																<option value="31">31</option>]
														</select>
														</span>
														<div class="select_wrap w70"
															style="background-color: rgb(235, 235, 228)">
															<div class="item_seleced">
																<a href="#15" title="생년월일 중 일 선택 목록 열기"
																	data-title="생년월일 중 일 선택">15<span class="haze">선택됨</span></a>
															</div>
															<div class="item_list_wrap ">
																<div class="item_list ui_scrollarea">
																	<ul class="ui_content">
																		<li><a href="#"><span>일</span></a></li>
																		<li><a href="#01"><span>01</span></a></li>
																		<li><a href="#02"><span>02</span></a></li>
																		<li><a href="#03"><span>03</span></a></li>
																		<li><a href="#04"><span>04</span></a></li>
																		<li><a href="#05"><span>05</span></a></li>
																		<li><a href="#06"><span>06</span></a></li>
																		<li><a href="#07"><span>07</span></a></li>
																		<li><a href="#08"><span>08</span></a></li>
																		<li><a href="#09"><span>09</span></a></li>
																		<li><a href="#10"><span>10</span></a></li>
																		<li><a href="#11"><span>11</span></a></li>
																		<li><a href="#12"><span>12</span></a></li>
																		<li><a href="#13"><span>13</span></a></li>
																		<li><a href="#14"><span>14</span></a></li>
																		<li><a href="#15"><span>15</span></a></li>
																		<li><a href="#16"><span>16</span></a></li>
																		<li><a href="#17"><span>17</span></a></li>
																		<li><a href="#18"><span>18</span></a></li>
																		<li><a href="#19"><span>19</span></a></li>
																		<li><a href="#20"><span>20</span></a></li>
																		<li><a href="#21"><span>21</span></a></li>
																		<li><a href="#22"><span>22</span></a></li>
																		<li><a href="#23"><span>23</span></a></li>
																		<li><a href="#24"><span>24</span></a></li>
																		<li><a href="#25"><span>25</span></a></li>
																		<li><a href="#26"><span>26</span></a></li>
																		<li><a href="#27"><span>27</span></a></li>
																		<li><a href="#28"><span>28</span></a></li>
																		<li><a href="#29"><span>29</span></a></li>
																		<li><a href="#30"><span>30</span></a></li>
																		<li><a href="#31"><span>31</span></a></li>
																	</ul>
																</div>
																<div class="scroll ui_scrollbar">
																	<span class="bg_top"></span> <span class="bg bg_mid"
																		style="display: none;"></span> <span class="bg_btm"></span>
																</div>
															</div>
														</div>
														<span class="symbol">일</span> <a
															href="https://www.cjone.com/cjmweb/my-one/coupon.do?cpn_type_cd=15"
															class="btn btn_sm"><span class="arr">생일쿠폰 확인하기</span></a>
													</div>
													<div class="birthday_select" id="birthday_default"
														style="display: block">
														****<span class="symbol">년</span> **<span class="symbol">월</span>
														**<span class="symbol">일</span> <a
															href="https://www.cjone.com/cjmweb/my-one/coupon.do?cpn_type_cd=15"
															class="btn btn_sm"><span class="arr">생일쿠폰 확인하기</span></a>
													</div>
													<p class="msg_desc">
														설정하신 생일을 기준으로 <em class="em">15일 전</em> 생일쿠폰이 발행됩니다.<br>
														단, 쿠폰 브랜드별로 기준이 상이할 수 있으니, 'CJ ONE &gt; CJ ONE 소개 &gt;
														생일축하 쿠폰'에서 상세 기준을 확인해주세요.
													</p>
												</td>
											</tr>
											<tr class="input">
												<th scope="row"><label for="mob_no_1">휴대전화번호</label></th>
												<td>
													<div>
														<span class="input_txt w100 phon_write" id="mobileNoInfo"><%=u_tel %></span>
														<input type="hidden" name="mob_no_1"
															id="mob_no_1" value="010" disabled="disabled">
															<input type="hidden" name="mob_no_2" id="mob_no_2" value="****"
															disabled="disabled"> <input type="hidden"
															name="mob_no_3" id="mob_no_3" value=""
															disabled="disabled"> <a
															href="javascript:void(0);"
															onclick="callAuthLayerMobChgAuth();" class="btn btn_sm"><span
															class="arr">변경하기</span></a>
													</div>
													<p class="msg_desc">
														휴대전화번호는 본인 인증된 정보로 자동 적용 됩니다.<br>휴대전화번호로 주문, 배송, 쿠폰,
														이벤트 정보 등을 제공 받으실 수 있습니다.
													</p>
												</td>
											</tr>
											<tr class="input">
												<th scope="row"><label for="email_addr1">이메일</label></th>
												<td>
													<div class="email_write" style="width: 415px">
														<span class="input_txt w110" data-skin="form"> <input
															type="text" class="text small" title="이메일 아이디 입력"
															placeholder="이메일 아이디" data-format="email"
															name="email_addr1" id="email_addr1" value="jy*******"
															disabled="disabled" autocomplete="off">
														</span> <span class="symbol">@</span> <span
															class="input_txt w110"> <input type="text"
															class="text small" title="이메일 도메인 입력"
															placeholder="이메일 도메인" data-format="email"
															name="email_addr2" id="email_addr2" value="gmail.com"
															disabled="disabled" autocomplete="off">
														</span> <span class="select w100 hide" data-skin="form"> <select
															title="이메일 도메인 선택" data-control="emailSelector"
															name="email_addr_opt" id="email_addr_opt"
															disabled="disabled">

																<option value="0">직접입력</option>

																<option value="naver.com">네이버</option>

																<option value="hanmail.net">한메일</option>

																<option value="nate.com">네이트</option>

																<option value="gmail.com" selected="selected">지메일</option>

														</select>
														</span>
														<div class="select_wrap w100"
															style="background-color: rgb(235, 235, 228)">
															<div class="item_seleced">
																<a href="#gmail.com" title="이메일 도메인 선택 목록 열기"
																	data-title="이메일 도메인 선택">지메일<span class="haze">선택됨</span></a>
															</div>
															<div class="item_list_wrap ">
																<div class="item_list ui_scrollarea">
																	<ul class="ui_content">
																		<li><a href="#0"><span>직접입력</span></a></li>
																		<li><a href="#naver.com"><span>네이버</span></a></li>
																		<li><a href="#hanmail.net"><span>한메일</span></a></li>
																		<li><a href="#nate.com"><span>네이트</span></a></li>
																		<li><a href="#gmail.com" data-selected="true"><span>지메일</span></a></li>
																	</ul>
																</div>
																<div class="scroll ui_scrollbar">
																	<span class="bg_top"></span> <span class="bg bg_mid"
																		style="display: none;"></span> <span class="bg_btm"></span>
																</div>
															</div>
														</div>
													</div>
													<p class="msg_desc">이메일 주소 입력 시 사용 가능 특수 문자 : - . _</p>
												</td>
											</tr>

				<script>
				$("#email_addr2").val( $("#email_addr_opt").val() );
				$("#email_addr_opt").change(function () {
					$("#email_addr2").val( $("#email_addr_opt").val() );
				});
				</script>
				<%-- <script>
				let tel = "<%=u_tel%>";
				let strAll = "010" + str1.replace(str1, '****') +str2;
				$("#mob_no").val(strAll);
				</script> --%>



											<tr>
												<th scope="row">카카오 로그인</th>
												<td><label class="switch"> <input
														type="checkbox" onclick="getKakaoToken();" id="kakaosync"
														name="kakaosync" value="N"> <span
														class="slider round"></span>
												</label>
													<p class="msg_desc">카카오 로그인의 사용 여부를 설정할 수 있으며, 카카오 로그인
														사용 여부는 바로 반영됩니다.</p></td>
											</tr>

											<tr class="input">
												<th scope="row"><label for="pwd">비밀번호</label></th>
												<td>
													<div>
														<div class="input_group hide" data-handler="trPwdCheck">
															<span class="input_txt w250"><input
																type="password" class="text" placeholder="비밀번호를 입력해주세요."
																maxlength="50" name="pwd" id="pwd"></span> <span
																class="msg_desc" id="alert_pwd_strength"></span>
															<p id="msg_pwd" class="msg_info em hide">비밀번호는 영문자,
																숫자,특수문자 모두 최소 1가지 이상 조합한 8~12자리이어야 합니다.</p>
														</div>
														<div class="btn_wrap change_pw" id="btn_chg_pw"
															data-handler="trPwdCheck">
															<button type="button" class="btn btn_sm"
																data-control="toggle" data-handler-target="trPwdCheck">
																<span class="arr">변경하기</span>
															</button>
														</div>
														<div class="msg_desc hide" data-handler="trPwdCheck">
															<ul class="bul_list sub_txt">
																<li class="dot_arr">영문자, 숫자, 특수문자 조합하여 8~12자리어야
																	합니다.</li>
																<li class="dot_arr">아이디와 4자리 이상 동일하거나, 4자리 이상 반복되는
																	문자와 숫자는 사용이 불가합니다.</li>
																<li class="dot_arr">사용 가능 특수문자:
																	!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[]^_`{|}~</li>
																<!-- 사용 가능 특수문자 -->
															</ul>
														</div>
													</div>
												</td>
											</tr>
											<tr class="input new_pw hide" id="trPwdCheck"
												data-handler="trPwdCheck">
												<th scope="row"><label for="pwd_check">비밀번호 확인</label>
												</th>
												<td>
													<div class="input_group">
														<span class="input_txt w250"><input type="password"
															class="text" placeholder="비밀번호를 재입력해주세요." maxlength="50"
															name="pwd_check" id="pwd_check"></span>
														<p id="msg_pwd_check" class="msg_info em hide">비밀번호와
															비밀번호 확인이 일치하지 않습니다.</p>
													</div>
												</td>
											</tr>

										</tbody>
									</table>
								</div>
								<!-- //기본정보 -->

								<!-- 선택정보 -->
								<div class="table_header choice">
									<h3 class="h3_tit">선택정보</h3>
								</div>
								<div class="table_col">
									<table>
										<caption>회원선택정보 입력 표로 CJ ONE 마케팅 정보 수신 동의, 제휴 브랜드
											마케팅 정보수신 동의, 현금영수증 발행 정보 입력 내용의 입력을 나타냅니다.</caption>
										<colgroup>
											<col style="width: 25%">
											<col>
										</colgroup>
										<tbody>
											<!-- CJ ONE 마케팅 동의-->
											<tr>
												<th scope="row">CJ ONE 마케팅<br>정보 수신 동의
												</th>
												<input type="hidden" name="rcvr_coopco" value="7000|0000">
												<td data-handler="checkAll">
													<p class="mkt_tx">
														포인트/이벤트/문화공연/상품 소식을 전해드립니다. (공지목적의 발송되는 메일은 제외)<br>
														아래 채널을 선택하실 경우 해당 채널을 통한 마케팅 수신에 동의하신 것으로 봅니다.
													</p>
													<div class="chk_group" id="cj_agree">

														<!-- 전체동의 -->
														<span class="check_box" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">전체 동의<span>미선택됨</span></span>
														</a><span class="hide"><span class="haze">전체 동의<span>선택불가</span></span></span>
															<input type="checkbox"
															data-check-all="[data-handler='checkAll']" value="Y"
															id="mkt_rcv_all" name="mkt_rcv" class="chk"> <label
															class="label_check" for="mkt_rcv_all"><span
																class="ico"></span>전체 동의</label>
														</span>

														<!-- Email -->
														<span class="check_box" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">이메일<span>미선택됨</span></span>
														</a><span class="hide"><span class="haze">이메일<span>선택불가</span></span></span>
															<input type="checkbox" class="chk"
															name="email_rcv_70000000" id="email_rcv_70000000"
															value="Y"> <label class="label_check"
															for="email_rcv_70000000"><span class="ico"></span>이메일</label>
														</span>

														<!-- SMS -->
														<span class="check_box" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">SMS<span>미선택됨</span></span>
														</a><span class="hide"><span class="haze">SMS<span>선택불가</span></span></span>
															<input type="checkbox" class="chk"
															name="sms_rcv_70000000" id="sms_rcv_70000000" value="Y">
															<label class="label_check" for="sms_rcv_70000000"><span
																class="ico"></span>SMS</label>
														</span>

														<!-- Phone -->
														<span class="check_box" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">휴대전화<span>미선택됨</span></span>
														</a><span class="hide"><span class="haze">휴대전화<span>선택불가</span></span></span>
															<input type="checkbox" class="chk" name="tm_rcv_70000000"
															id="tm_rcv_70000000" value="Y"> <label
															class="label_check" for="tm_rcv_70000000"><span
																class="ico"></span>휴대전화</label>
														</span>

														<!-- Push -->

													</div>
													<p class="mkt_agree_tx">※ 회원은 본 서비스 이용 동의 대한 거부를 할 수
														있으며, 미 동의 시 본 서비스에 대한 혜택을 받으실 수 없습니다.</p>
													<div id="cj_marketing_agree" class="msg_desc hide"
														style="margin-top: 0;">
														<p>※ CJ ONE 마케팅정보 수신동의는 CJ ONE 개인정보 수집 및 활용동의(선택) 동의 시
															가능합니다.</p>
														<a href="#" class="link_txt uline"
															data-control="cj_gatherAgree" style="margin-top: 15px;"><span
															class="arr" style="padding-right: 11px;">개인정보 수집 및
																활용동의 설정</span></a>
													</div>
												</td>
											</tr>

											<!-- 제휴 브랜드 마케팅 동의 -->


											<!-- 현금영수증 발행 -->

										</tbody>
									</table>
								</div>
								<!-- //선택정보 -->

								<!-- 정보제공 동의여부 -->
								<div class="table_header choice">
									<h3 class="h3_tit">정보제공 동의여부</h3>
								</div>
								<div class="list_accordion faq_list agreement_sec">
									<ul data-control="accordion">





										<!-- CJ ONE 개인정보 수집 및 활용 동의 -->

										<li>
											<p class="question_wrap">
												<button type="button" data-handler-target="cj_gatherAgree">
													<span class="title">홍보 및 마케팅을 위한 개인정보 수집 및 활용 동의
														(선택)</span> <span class="btn" data-handler="toggleText">열기</span>
												</button>
											</p>
											<div class="answer_wrap">
												<div class="item_box first">
													<div class="cont">
														<div class="polViewnew">
															<table border="1" cellspacing="0" cellpadding="0"
																style="width: 100%">
																<caption>개인정보 수집 및 활용 동의(선택)의 설명을 알려주는 표로써, 수집
																	목적, 수집 항목, 보유 기간으로 구성되어 있습니다.</caption>
																<thead>
																	<tr>
																		<th style="width: 40%">수집 목적</th>
																		<th style="width: 30%">수집 항목</th>
																		<th style="width: 30%">보유 기간</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>
																			<ul>
																				<li
																					style="font-size: 17px; font-weight: bold; text-decoration: underline;">상품
																					또는 서비스의 홍보 및 마케팅 활동(사은/판촉행사 등 각종 이벤트 및 행사 관련 정보안내,
																					제반 이벤트/프로모션 활동, 당사 및 제휴사 상품/서비스 안내 및 권유)</li>
																			</ul>
																		</td>
																		<td>
																			<ul>
																				<li>- 이메일주소, 휴대전화번호, 단말식별번호(단말기 아이디), PUSH 토큰</li>
																			</ul>
																		</td>
																		<td
																			style="text-align: center; font-size: 17px; font-weight: bold; text-decoration: underline;">회원
																			탈퇴 후 30일까지</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>

													<div class="agreement_choose">
														<span class="radio_btn" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<!-- 선택 시 on클래스 추가 --> <a href="#"> <span
																class="haze">미동의<span>미선택됨</span></span>
															<!-- input이 checked상태면 선택됨, 아니면 미선택됨 -->
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" id="agr30_N" name="agr30" value="N"
															class="chk"> <label for="agr30_N">미동의</label>
														</span> <span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의<span>선택됨</span></span>
															<!-- input이 checked상태면 선택됨, 아니면 미선택됨 -->
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" id="agr30_Y" name="agr30" value="Y"
															class="chk" checked="checked"> <label
															for="agr30_Y">동의</label>
														</span>
													</div>
												</div>
											</div>
										</li>

										<li>
											<p class="question_wrap">
												<button type="button">
													<span class="title">스탬프 서비스 이용을 위한 개인정보 수집 및 활용 동의
														(선택)</span> <span class="btn" data-handler="toggleText">열기</span>
												</button>
											</p>
											<div class="answer_wrap">
												<div class="item_box first">
													<div class="cont">
														<div class="polViewnew">
															<table border="1" cellspacing="0" cellpadding="0"
																style="width: 100%">
																<caption>스탬프 이용을 위한 개인정보 수집 및 활용 동의로 수집주체, 수집
																	목적, 수집 항목, 보유기간을 나타내는 표입니다.</caption>
																<thead>
																	<tr>
																		<th scope="col">수집주체</th>
																		<th scope="col">수집 목적</th>
																		<th scope="col">수집 항목</th>
																		<th scope="col">보유기간</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td
																			style="font-size: 17px; font-weight: bold; text-decoration: underline;">CJ
																			ONE및 스템프 서비스가 제휴된 제휴사</td>
																		<td
																			style="font-size: 17px; font-weight: bold; text-decoration: underline;">e-스탬프
																			서비스 제공 및 혜택 제공</td>
																		<td>상품명(서비스명), 상품분류명, 구매/이용 수량, 구매/이용일시</td>
																		<td
																			style="font-size: 17px; font-weight: bold; text-decoration: underline;">회원
																			탈퇴 후 30일 까지 또는 해당 서비스 동의 철회시까지</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>

													<div class="agreement_choose">
														<span class="radio_btn" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<!-- 선택 시 on클래스 추가 --> <a href="#"> <span
																class="haze">미동의<span>미선택됨</span></span>
															<!-- input이 checked상태면 선택됨, 아니면 미선택됨 -->
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" id="agr40_N" name="agr40" value="N"
															class="chk"> <label for="agr40_N">미동의</label>
														</span> <span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의<span>선택됨</span></span>
															<!-- input이 checked상태면 선택됨, 아니면 미선택됨 -->
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" id="agr40_Y" name="agr40" value="Y"
															class="chk" checked="checked"> <label
															for="agr40_Y">동의</label>
														</span>
													</div>
												</div>
											</div>
										</li>


										<!-- CJ ONE 제 3자 정보제공 동의 -->

										<li>
											<p class="question_wrap">
												<button type="button">
													<span class="title">CJ ONE 제 3자 정보제공 동의(선택)</span> <span
														class="btn" data-handler="toggleText">열기</span>
												</button>
											</p>
											<div class="answer_wrap">



												<div class="item_box first">




													<h4 class="h5_tit">CJ 기프트카드 서비스 이용약관</h4>


													<div class="cont clause_box" tabindex="0">
														<div id="polView">
															<div class="polViewnew">
																<p>
																	<strong>제1조(목적)</strong><br> 이 약관은 CJ올리브네트웍스(이하
																	"발행사" 라 함)가 발행하는 "전자상품권", "모바일상품권" 및 "쿠폰"(이하 "상품권")의 구매
																	및 이용과 관련하여, "발행사", "구매자" 및 "사용자"의 권리, 의무 등에 관한 사항을 정함을
																	목적으로 한다.
																</p>
																<br>
																<p>
																	<strong>제2조(용어의 정의)<a name="pol02"></a></strong>
																</p>
																<ol class="polviewol">
																	<li><span class="space">①</span>"상품권": "발행사"가
																		전자금융거래법을 근거로 하여 발행하는 선불전자지급수단으로서, 이전 가능한 금전적 가치가 전자적
																		방법으로 저장되어 발행된 증표 또는 그 증표에 관한 정보이며, 재화 또는 용역을 구입하고 그
																		대가를 지급하는데 사용되는 것을 말한다.</li>
																	<li><span class="space">②</span>"전자상품권": 금액 등이 전자적
																		장치(전자카드 등)에 저장된 "상품권"을 말한다.</li>
																	<li><span class="space">③</span>"모바일상품권": 금액 등이 전자
																		정보로 기록되어 있음이 기재된 증표가 모바일기기에 저장되고 제시함으로서 사용 가능한 "상품권"을
																		말한다.</li>
																	<li><span class="space">④</span>"쿠폰": 사용처에서 판매하는
																		일정한 상품을 교환권 형태로 사용자에게 선물하고, 이 교환권을 사용자가 해당 사용처에서 연계된
																		상품으로 교환할 수 있는 "상품권"을 말한다.</li>
																	<li><span class="space">⑤</span>"구매자": "발행사"에서
																		발행하는 "상품권"을 구매하는 고객을 말한다.</li>
																	<li><span class="space">⑥</span>"사용자": 직접 구매하거나 양도
																		받은 "상품권"을 물품대금 결제수단으로 사용하는 고객을 말한다.</li>
																	<li><span class="space">⑦</span>"가맹점": "발행사"와
																		가맹계약을 맺고 "사용자"가 "상품권" 사용시 원장에 표시된 금액에 해당하는 재화 또는 용역을
																		제공할 의무를 가진 자를 말한다.</li>
																	<li><span class="space">⑧</span>"제휴 위탁사": "발행사"와
																		계약을 맺고, "발행사"의 의무를 대신하여 환불, 판매, 회수를 대행하는 자를 말한다.</li>
																	<li><span class="space">⑨</span>"판매처": "발행사"와 계약을
																		맺고, "발행사"의 의무를 대신하여 판매를 대행하는 자를 말한다.</li>
																	<li><span class="space">⑩</span>"단말기": 전자적 장치로서
																		"상품권"을 전자적 방법으로 저장하거나, 전자정보를 기록하는 장치를 말한다.</li>
																</ol>
																<p>&nbsp;</p>
																<br>
																<p>
																	<strong>제3조(구매 및 인증)<a name="pol03"></a></strong>
																</p>
																<ol class="polviewol">
																	<li><span class="space">①</span>"상품권"은 "발행사" 또는
																		"제휴 위탁사"가 판매를 위탁한 "판매처"에서 구입할 수 있다.</li>
																	<li><span class="space">②</span>"상품권"은 "제휴 위탁사"와
																		합의하여 현금, 직불카드, 신용카드 등으로 선택적으로 구매할 수 있다. 다만, 신용카드 및
																		직불카드 구매한도는 여신전문금융업법 시행규칙에서 정하는 범위 내로 제한될 수 있다.</li>
																	<li><span class="space">③</span>"상품권"의 최초 "구매자"는
																		구매 시 "상품권" 활성화(Activation)를 위한 인증을 받아야 한다.</li>
																	<li><span class="space">④</span>"발행사" 또는 "제휴 위탁사"는
																		상품권 시스템을 통하여 "상품권" 원장 데이터의 유효성을 검증하고, 인증에 대한 결과를
																		"구매자"에게 고지(인증번호 부여 또는 영수증 제공)하여야 한다.</li>
																</ol>
																<p>&nbsp;</p>
																<br>
																<p>
																	<strong>제4조(권종 및 충전)<a name="pol04"></a></strong>
																</p>
																<ol class="polviewol">
																	<li><span class="space">①</span>"상품권"은 아래 각호의 유형으로
																		구분한다.<br> &nbsp;1."충전형" : "상품권" 내에 금전적 가치를 충전하여
																		사용하는 방식을 의미한다.<br> &nbsp;2."권종형" : "상품권"의 금전적 가치가
																		발행 시점부터 기재되어 정해진 것을 말한다. "권종형"은 권면금액을 구분하여 발행한다.<br>
																		&nbsp;3."물품교환권" : "상품권"을 특정 재화와 교환하는 방식으로 사용되는 것을 말한다.</li>
																	<li><span class="space">②</span>"충전형"은 권면 금액에 관계
																		없이, "구매자"가 자유롭게 금액을 추가하여 구매 할 수 있으며, "기명식"은 200만원,
																		"무기명식"은 50만원으로 한도를 제한 한다. 다만, 전자금융거래법 제23조에 근거 및 구매자
																		편의를 고려하여 충전한도를 하향하여 변경 할 수 있다.</li>
																	<li><span class="space">③</span>"발행사" 또는 "제휴 위탁사"는
																		"단말기"을 통하여 "상품권"의 충전금액 및 데이터의 유효성을 검증하고, 충전에 대한 결과를
																		구매자에게 고지(인증번호 부여 또는 영수증 제공)하여야 한다.</li>
																</ol>
																<p>&nbsp;</p>
																<br>
																<p>
																	<strong>제5조(사용 및 양도)<a name="pol05"></a></strong>
																</p>
																<ol class="polviewol">
																	<li><span class="space">①</span>"상품권"은 "충전형",
																		"권종형"은 잔액의 범위 내에서 이용횟수의 제한 없이 일시불 구매방법으로 "발행사"와
																		"가맹점"에서 사용할 수 있다.</li>
																	<li><span class="space">②</span>"상품권"의 "구매자"는 이를
																		타인에게 양도할 수 있으며, 이를 양수 받아 사용하는 사용자도 가맹점에서 전항의 방법으로 이용할
																		수 있으며, 재 양도할 수 있다. 단, "모바일상품권"의 경우 수신자 변경 후 양도 할 수 있다.</li>
																</ol>
																<p>&nbsp;</p>
																<br>
																<p>
																	<strong>제6조(사용의 제한)<a name="pol06"></a></strong>
																</p>
																<ol class="polviewol">
																	<li><span class="space">①</span>"상품권"은 다음의 경우에 사용이
																		제한 될 수 있다.<br> &nbsp;1."상품권" 구매 시 인증(Activation)을
																		받지 않은 경우<br> &nbsp;2.해당 "상품권"의 잔액이 이용하고자 하는 금액보다
																		적은 경우<br> &nbsp;3."상품권"이 사용중지 상태인 경우<br>
																		&nbsp;4.전산시스템의 오류, 통신 불능, 단말기의 고장 등 "상품권"의 사용을 위한 유효성을
																		검증 할 수 없는 경우</li>
																	<li><span class="space">②</span>"상품권"이 위, 변조 또는 기타
																		부정하게 발행된 경우, 잔액에 관계없이 "발행사"는 "사용자"의 "상품권"의 사용을 제한 할 수
																		있다.</li>
																	<li><span class="space">③</span>"상품권"을 불법할인, 현금융통
																		등의 방법으로 사용하여서는 안되며, 그러한 경우 "사용자"는 그 책임의 전부 또는 일부를 부담할
																		수 있다.</li>
																</ol>
																<p>&nbsp;</p>
																<br>
																<p>
																	<strong>제7조 (거래내용의 확인)<a name="pol07"></a></strong>
																</p>
																<ol class="polviewol">
																	<li><span class="space">①</span>"발행사"는 "사용자"의 요청이
																		있는 경우, 관련법령에서 정한 보존기간(전자금융거래법 시행령 제12조 제1항 참조) 내의 거래에
																		대해서는 거래내용을 확인해주어야 하며, 서면(전자문서를 제외한다.)으로 제공할 것을 요청하는
																		경우에는 그 요청을 받은 날부터 2주 이내에 거래내용에 관한 서면을 교부하여야 한다. 다만,
																		전자적 장치의 운영장애, 그 밖의 사유로 거래내용을 확인하게 할 수 없는 때에는 인터넷 등을
																		이용하여 즉시 그 사유를 알리고, 그 사유가 종료된 때부터 "사용자"가 거래내용을 확인할 수
																		있도록 하여야 한다.</li>
																	<li><span class="space">②</span>"발행사"는 "사용자"에게
																		거래내용을 서면으로 제공할 것을 요청 받은 경우 전자적 장치의 운영장애, 그 밖의 사유로
																		거래내용을 제공할 수 없는 때에는 그 "사용자"에게 즉시 이를 알려야 한다. 이 경우 법
																		제7조제2항의 거래내용에 관한 서면의 교부기간을 산정함에 있어서 전자적 장치의 운영장애, 그 밖의
																		사유로 거래내용을 제공할 수 없는 기간은 산입하지 아니한다.</li>
																	<li><span class="space">③</span>"사용자"는 거래내용을 서면으로
																		제공받고자 하는 경우에는 발행사의 고객센터(전화번호:1577-8888)로 신청하여야 한다.</li>
																</ol>
																<br>
																<p>
																	<strong>제8조 (오류의 정정 등)<a name="pol08"></a></strong>
																</p>
																<ol class="polviewol">
																	<li><span class="space">①</span>"사용자"는 전자금융거래에 오류가
																		있음을 안 때에는 그 발행자에게 이에 대한 정정을 요구할 수 있다.</li>
																	<li><span class="space">②</span>"발행사"는 제1항의 규정에 따른
																		오류의 정정요구를 받은 때에는 이를 즉시 조사하여 처리한 후 정정요구를 받은 날부터 2주 이내에
																		오류의 원인과 처리 결과를 문서로 알려야 하며, 다만, "사용자"가 요청하면 전화 또는 전자우편
																		등의 방법으로 알릴 수 있다.</li>
																	<li><span class="space">③</span>"발행사"는 스스로 전자금융거래에
																		오류가 있음을 안 때에는 이를 즉시 조사하여 처리한 후 오류가 있음을 안 날부터 2주 이내에
																		오류의 원인과 처리 결과를 전항과 같은 방법으로 "사용자"에게 알려야 한다.</li>
																</ol>
																<p>&nbsp;</p>
																<br>
																<p>
																	<strong>제9조(유효기간)<a name="pol09"></a></strong>
																</p>
																<ol class="polviewol">
																	<li><span class="space">①</span>"상품권"의 유효기간은
																		구매시점("권종형"은 최초구매일자, "충전형"은 최종충전일)으로부터 5년이며, 유효기간이 경과한
																		카드로 결제 및 환불, 교환은 할 수 없다. 단, 이벤트 및 행사를 통하여 무상 제공된
																		"상품권"은 별도 표기된 유효기간으로 정한다.</li>
																	<li><span class="space">②</span>"사용자"는 유효기간 내에는
																		연장을 요청할 수 있으며 특별한 사유가 없는 경우 유효기간이 연장된다. 단, 이벤트, 행사 등을
																		통해 무상으로 양도받은 "상품권"은 연장 할 수 없다.</li>
																	<li><span class="space">③</span>"발행사"는 "사용자"에게
																		"상품권"의 유효기간 만료 30일 전 통지를 포함하여 3회 이상 유효기간 도래에 대해 알려야
																		한다.</li>
																</ol>
																<p>&nbsp;</p>
																<br>
																<p>
																	<strong>제10조(구매 취소의 방법)<a name="pol10"></a></strong>
																</p>
																<ol class="polviewol">
																	<li><span class="space">①</span>"구매자"는 전자금융거래법
																		제13조제1항 각 호의 규정에 따라 지급의 효력이 발생하기 전까지 거래지시를 철회할 수 있으나,
																		대량으로 처리하는 거래 또는 예약에 따른 거래 등의 경우에는 사전 고지를 통하여 거래지시의
																		철회시기를 달리 정할 수 있다.</li>
																	<li><span class="space">②</span>구매한 "상품권"은 현금으로
																		반환되지 않는다. 다만, "구매자"가 "상품권"을 사용하지 않거나, 포장 등의 상태가 양호한
																		경우에는 "발행사"가 정한 일정 기간 내에서 판매 취소 할 수 있다. 다만, "발행사"는 취소
																		기한을 구매시점에 "구매자"에게 "판매처"에서 사전에 고지하여야 한다.</li>
																	<li><span class="space">③</span>"충전권" "상품권"의 재충전
																		취소 요청 시 취소요청 금액이 잔액보다 적을 경우, 취소 요청을 제한 한다.</li>
																</ol>
																<p>&nbsp;</p>
																<br>
																<p>
																	<strong>제11조("상품권"의 환급)<a name="pol11"></a></strong><br>
																	다음 각 호의 어느 하나에 해당하는 경우에는 "상품권"에 기록된 잔액의 전부를 현금으로 환급 받을
																	수 있다.
																</p>
																<ol class="polviewol">
																	<li><span class="space">①</span>"구매자" 또는 "사용자"는 다음
																		각 호의 어느 하나에 해당하는 경우에는 "상품권"에 기록된 잔액의 전부를 현금으로 환급 받을 수
																		있다.<br> &nbsp;1.천재지변 등의 사유로 가맹점이 재화 또는 용역을 제공하기
																		곤란하여 "상품권"을 사용하지 못하게 된 경우<br> &nbsp;2."상품권"의 결함으로
																		"가맹점"이 재화 또는 용역을 제공하지 못하는 경우<br> &nbsp;3."상품권"의
																		금액("권종형"의 경우 권면금액, "충전형"의 경우 최종충전시점에 기재된 금액)의
																		60%이상(1만원 이하 "상품권"의 경우 80%이상) 소진 시 그 잔액에 대해서는 현금으로 환불
																		받을 수 있다. 단 환불 금액은 구매액을 기준으로 사용 비율에 따라 계산하여 남은 비율의 금액을
																		환불한다. 단, 이벤트, 행사 등을 통해 무상제공(무료, 이벤트 등)받은 "상품권"의 경우에는
																		환불을 받을 수 없다.<br> &nbsp;4.기타 "발행사"가 본 서비스를 중단하는 것을
																		사전에 통지한 경우</li>
																	<li><span class="space">②</span>계좌이체의 방식으로 환불을 요청
																		받은 경우 환불금액은 제반 비용을(계좌이체 실비) 공제한 후 입금된다.</li>
																</ol>
																<p>&nbsp;</p>
																<br>
																<p>
																	<strong>제12조("상품권"의 분실과 도난 책임)<a name="pol12"></a></strong>
																</p>
																<ol class="polviewol">
																	<li><span class="space">①</span>"상품권"의 소유자가 "상품권"
																		관리소홀로 인한 분실 혹은 도용 시 충전 금액에 대한 책임은 "사용자"에게 있다.</li>
																	<li><span class="space">②</span>"발행사"가 전항의 소유자로부터
																		"상품권"의 분실이나 도난 등의 통지를 받았으며 해당 "상품권" 번호 및 현재 소지자의 신분이
																		확인될 경우, "발행사"는 해당 "상품권"의 사용을 정지 할 수 있다. 다만, 그 때부터 제3자가
																		그 "상품권"을 사용함으로 인하여 전항의 소유자에게 발생한 손해를 배상할 책임을 진다.</li>
																	<li><span class="space">③</span>"발행사"는 정지된 "상품권"에
																		대하여 "상품권" 소유자의 요청에 따라 해당금액만큼 잔액을 환불해주거나 다른 "상품권"으로
																		대체하여 제공한다. 이 경우, "발행사"는 이에 따라 발생하는 수수료를 요청자에게 부담하게 할 수
																		있다.</li>
																</ol>
																<p>&nbsp;</p>
																<br>
																<p>
																	<strong>제13조(위조나 변조 시 책임)<a name="pol13"></a></strong>
																</p>
																<ol class="polviewol">
																	<li><span class="space">①</span>"발행사"는 "상품권"의 위조나
																		변조로 발생한 사고, 계약체결 또는 거래지시의 전자적 전송이나 처리과정에서 발생한 사고로 인하여
																		"사용자"에게 손해가 발생한 경우에는 그 손해를 배상할 책임을 진다.</li>
																	<li><span class="space">②</span>"사용자"는 다음 각호의 사유가
																		발생하는 경우 제1항의 규정에 불구하고 금융기관 또는 전자금융업자가 그 책임의 전부 또는 일부를
																		"사용자"가 부담하도록 할 수 있음을 확인한다.<br> &nbsp;1.사고 발생에 있어서
																		"사용자"의 전자금융거래법 시행령 제8조에서 규정 한 고의나 중대한 과실이 있는 경우로서 그
																		책임의 전부 또는 일부를 "사용자"의 부담으로 할 수 있다는 취지의 약정을 미리 이용자와 체결한
																		경우<br> &nbsp;2.법인(「중소기업기본법」제2조 제2항에 의한 소기업을
																		제외한다)인 "사용자"에게 손해가 발생한 경우로 "발행사"가 사고를 방지하기 위하여 보안절차를
																		수립하고 이를 철저히 준수하는 등 합리적으로 요구되는 충분한 주의의무를 다한 경우</li>
																</ol>
																<p>&nbsp;</p>
																<br>
																<p>
																	<strong>제14조 (약관의 명시와 변경통지 등)<a name="pol14"></a></strong>
																</p>
																<ol class="polviewol">
																	<li><span class="space">①</span>"발행사"는 "사용자"와
																		전자금융거래의 계약을 체결함에 있어서 약관을 명시하여야 하고, 이용자의 요청이 있는 경우에는
																		금융위원회가 정하는 방법에 따라 그 약관의 사본을 교부하고 그 약관의 내용을 설명하여야 한다.</li>
																	<li><span class="space">②</span>"발행사"는 제1항의 규정을
																		위반하여 계약을 체결한 때에는 당해 약관의 내용을 계약의 내용으로 주장할 수 없다.</li>
																	<li><span class="space">③</span>"발행사"는 약관을 변경하는
																		때에는 변경되는 약관의 시행일 1월 전에 금융위원회가 정하는 방법에 따라 이를 게시하고
																		"사용자"에게 통지하여야 한다. 다만, 법령의 개정으로 인하여 긴급하게 약관을 변경하는 때에는
																		금융위원회가 정하는 방법에 따라 이를 즉시 게시하고 이용자에게 통지하여야 한다.</li>
																	<li><span class="space">④</span>"사용자"는 제3항의 규정에 따른
																		약관의 변경내용이 게시되거나 통지된 후부터 변경되는 약관의 시행일 전까지 전자금융거래의 계약을
																		해지할 수 있다. 전단의 기간 안에 "사용자"가 약관의 변경내용에 대하여 이의를 제기하지 아니하는
																		경우에는 약관의 변경을 승인한 것으로 본다.</li>
																</ol>
																<p>&nbsp;</p>
																<br>
																<p>
																	<strong>제15조(신용정보의 제공/이용 등)<a name="pol15"></a></strong>
																</p>
																<ol class="polviewol">
																	<li><span class="space">①</span>"발행사"는 이 계약과 관련하여
																		취득한 회원의 신용정보를 관련 법률에 정한 바에 따라 엄격히 관리해야 하며 회원이 제공/활용에
																		동의한 경우에는 회원이 동의한 범위 내에서 신용정보집중기관, 신용정보업자, 신용정보제공, 이용자,
																		제휴업체와 정보를 교환하여 이용할 수 있다. 다만, 회원이 해지한 이후에는 관련 법령이 정하는 바
																		이외에는 이용하지 않는다.</li>
																	<li><span class="space">②</span>"가맹점"과 "사용자" 간에
																		"상품권"거래로 인하여 분쟁이 발생하였을 경우, "발행사"는 "사용자"의 정보를 "가맹점"에게
																		제공할 수 있으며, "사용자"는 "가맹점"의 정보를 요구할 수 있다.</li>
																</ol>
																<p>&nbsp;</p>
																<br>
																<p>
																	<strong>제16조(위반시의 책임)<a name="pol16"></a></strong><br>
																	&nbsp;"발행사"와 "사용자"는 이 약관을 위반함으로써 발생하는 책임을 각자가 부담하며, 이로
																	인하여 상대방에게 손해를 입힌 경우에는 이를 배상하여야 한다.
																</p>
																<br>
																<p>
																	<strong>제17조(이 약관에서 정하지 아니한 사항)<a name="pol17"></a></strong><br>
																	&nbsp;이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 관계법령 또는 일반 상
																	관례에 따른다.
																</p>
																<br>
																<p>
																	<strong>제18조(지급보증)<a name="pol18"></a></strong><br>
																</p>
																<ol class="polviewol">
																	<li><span class="space">①</span>"발행사"에서 발행하는
																		"상품권"은 충전 금액 전액에 대하여 전자상거래(결제수단) 보증보험증권에 가입되어 있다.('23년
																		2분기 마감기준 12,549,621,280원*110%) "발행사"에서 발행하는 "상품권"은
																		전자금융업법의 적용을 받으며 지급보증 또는 피해보상보험계약에 대하여 책임과 의무가 있고,
																		지급보증은 전자적으로 등록된 금액에 등록된 바에 따른다.</li>
																	<li><span class="space">②</span>"발행사"는 전월말 기준
																		"상품권"의 전체 충전 금액 중 10분의 1에 해당하는 금액을 제외하고 직접 운용(이하 "운용대상
																		선불충전금")할 수 있다.</li>
																	<li><span class="space">③</span>"발행사"는 "운용대상
																		선불충전금"을 다음 각 호의 자산("안전자산")으로만 운용할 수 있다.<br>
																		&nbsp;1. 국채, 지방채<br> &nbsp;2. 정부, 지방자치단체,
																		금융회사(예금자보호법 제2조 제1호의 부보금융회사)가 지급보증한 채무증권<br>
																		&nbsp;3. 우체국 예치<br> &nbsp;4. 은행의 예금 또는 양도성 예금증서<br>
																		&nbsp;5. 은행이 발행한 채권 중 후순위채권 및 주식관련채권 이외의 채권<br>
																		&nbsp;6. 한국주택금융공사가 채권유동화계획에 따라 발행한 주택저당증권<br>
																		&nbsp;7. 특수채증권(법률에 의해 직접 설립된 법인이 발행한 채권)<br>
																		&nbsp;8. 환매조건부 채권(다만, 대상증권은 국채, 지방채 등 안전자산(1종)에 속한 채권에
																		한함)<br> &nbsp;9. 당해 신탁업자에 대한 대출채권(다만, 금액의 규모 또는
																		시간의 제약으로 인하여 다른 방법으로 운용할 수 없는 경우에 한함)<br>
																		&nbsp;10. 복수의 기업신용평가기관에 의해 AAA등급으로 분류된 회사채(다만, 집중투자로
																		인한 위험을 방지하기 위하여 전체 운용금액 중 ①동일 법인이 발행한 회사채에 대해서는 100분의
																		5를, ②동일 계열기업군(「독점규제 및 공정거래에 관한 법률」제2조제2호의 규정에 의한
																		기업집단)에 속하는 기업이 발행한 회사채에 대해서는 100분의 10을 초과하여 투자할 수 없음)<br>
																		&nbsp;11. 자본시장과 금융투자업에 관한 법률(제229조제5호)에 따른 단기금융집합투자기구의
																		집합투자증권(MMF)</li>
																</ol>
																<p>&nbsp;</p>
																<br>
																<p>
																	<strong>제19조(착오송금)<a name="pol19"></a></strong><br>
																</p>
																<ol class="polviewol">
																	<li><span class="space">①</span>"구매자"가 착오로 연락처 또는
																		전화번호 등을 잘못 기재하거나 입력하여 수취인에게 선물하기를 이용하여 선불전자지급수단 등의 자금이
																		이동(이하 "착오송금"이라 함) 된 경우, "발행사"에 통지하여 "발행사"를 통해 수취인에게
																		연락하여 착오 송금액 반환을 요청할 수 있다.</li>
																	<li><span class="space">②</span>"발행사"는 수취인에 대한 연락
																		사실, 수취인의 반환의사 유무, 수취인이 반환의사가 없는 경우 그 사유 등 "구매자" 요청사항에
																		대한 처리결과 또는 관련 처리 진행상황을 "구매자"가 전항의 "착오송금" 발생사실을 회사에 통지한
																		날로부터 15일 이내에 "구매자"에게 알려야 한다.</li>
																	<li><span class="space">③</span>"발행사"를 통한 착오송금 반환
																		요청에도 수취인이 반환하지 않는 경우, "구매자"는 「예금자보호법」 제5장(착오송금 반환지원)에
																		따라 예금보험공사에 착오송금 반환지원 제도 이용을 신청할 수 있다.(개정 「예금자보호법」 시행일인
																		’21.7.6. 이후 발생한 착오송금에 대해 신청 가능) 단, 연락처를 통한 송금, SNS회원간
																		송금 거래 등 예금보험공사가 수취인의 실지명의를 취득할 수 없는 거래는 반환지원 신청이 제한된다.</li>
																	<li><span class="space">④</span>"발행사"는 예금보험공사가
																		착오송금 반환지원 업무의 원활한 수행을 위해 "발행사"에 착오송금 수취인의 반환불가 사유,
																		연락처, 착오송금 발생 현황 등의 자료를 요청하는 경우 정당한 사유가 없으면 이에 따라야 한다.</li>
																	<li><span class="space">⑤</span>"구매자"가 예금보험공사를 통해
																		착오송금 반환지원을 신청한 내역이 다음 각 호에 해당하는 경우 관련 법령에 따라 예금보험공사의
																		지원 절차가 중단될 수 있다.<br> &nbsp;1. "구매자"가 거짓이나 부정한
																		방법으로 반환지원을 신청한 경우<br> &nbsp;2. 착오송금이 아님이 객관적인 자료로
																		확인되는 경우<br> &nbsp;3. 신청일 이전 반환 지원을 신청한 착오송금과 관련된
																		소송 등이 진행 중이거나 완료된 경우<br> &nbsp;4. 그 밖에 예금보험위원회가
																		인정하는 경우</li>
																</ol>
																<p>&nbsp;</p>
																<br>
																<p>
																	<strong>제20조(관할법원)<a name="pol20"></a></strong><br>
																	&nbsp;이 약관에 따른 거래에 관하여 분쟁이 발생한 경우에는 민사소송법상의 관할법원의 규정에
																	따른다.
																</p>
																<br>
																<p>
																	<strong>※ 최종개정일자 : 2023. 07. 14</strong><br>
																	&nbsp;
																</p>
															</div>
														</div>
													</div>




													<!--20200903 기프트 카드 이용 약관 수정-->

													<p style="padding-top: 8px;">※ 이용자는 기프트카드 서비스 이용약관에 대한
														동의를 거부할 권리가 있으나, 미 동의시 서비스 이용이 불가능합니다.</p>

													<!--//20200903 기프트 카드 이용 약관 수정-->
													<div class="agreement_choose">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<!-- 선택 시 on클래스 추가 --> <a href="#"> <span
																class="haze">미동의<span>선택됨</span></span>
															<!-- input이 checked상태면 선택됨, 아니면 미선택됨 -->
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" id="agr38_N" name="agr38" value="N"
															class="chk" checked="checked"> <label
															for="agr38_N">미동의</label>
														</span> <span class="radio_btn" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의<span>미선택됨</span></span>
															<!-- input이 checked상태면 선택됨, 아니면 미선택됨 -->
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" id="agr38_Y" name="agr38" value="Y"
															class="chk"> <label for="agr38_Y">동의</label>
														</span>
													</div>
												</div>




												<div class="item_box">



													<h4 class="h5_tit">멤버십 연동을 위한 제3자 정보제공 동의</h4>



													<div class="clause_box">
														<table border="1" cellspacing="0" cellpadding="0"
															style="width: 100%">
															<caption
																style="position: absolute; top: 0; left: 0; color: #fff; font-size: 0px; line-height: 0;">멤버십
																연동을 위한 제3자 개인정보 제공 동의로 제공받는 자, 제공 목적, 제공하는 항목, 보유 및
																이용기간에 대한 안내입니다.</caption>
															<colgroup>
																<col style="width: 20%">
																<col style="width: 25%">
																<col style="width: 25%">
																<col style="width: 30%">
															</colgroup>
															<thead>
																<tr>
																	<th scope="col" style="background-color: #fff">제공받는
																		자</th>
																	<th scope="col" style="background-color: #fff">제공
																		목적</th>
																	<th scope="col" style="background-color: #fff">제공하는
																		항목</th>
																	<th scope="col" style="background-color: #fff">보유
																		및 이용기간</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<th scope="row"
																		style="font-weight: bold; border-collapse: collapse; font-size: 17px; text-decoration: underline; background-color: #fff">NICE정보통신(주)</th>
																	<td
																		style="font-weight: bold; border-collapse: collapse; font-size: 17px; text-decoration: underline; background-color: #fff">기프트카드
																		정산 및 고객 안내/CS 처리</td>
																	<td
																		style="border-collapse: collapse; background-color: #fff">회원번호
																	</td>
																	<td
																		style="font-weight: bold; border-collapse: collapse; font-size: 17px; text-decoration: underline; background-color: #fff">CJ
																		ONE 회원 탈퇴 또는 제 3자 제공 동의 철회 시 까지</td>
																</tr>
															</tbody>
														</table>
													</div>



													<!--20200903 기프트 카드 이용 약관 수정-->

													<!--//20200903 기프트 카드 이용 약관 수정-->
													<div class="agreement_choose">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<!-- 선택 시 on클래스 추가 --> <a href="#"> <span
																class="haze">미동의<span>선택됨</span></span>
															<!-- input이 checked상태면 선택됨, 아니면 미선택됨 -->
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" id="agr39_N" name="agr39" value="N"
															class="chk" checked="checked"> <label
															for="agr39_N">미동의</label>
														</span> <span class="radio_btn" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의<span>미선택됨</span></span>
															<!-- input이 checked상태면 선택됨, 아니면 미선택됨 -->
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" id="agr39_Y" name="agr39" value="Y"
															class="chk"> <label for="agr39_Y">동의</label>
														</span>
													</div>
												</div>

											</div>
										</li>


										<!-- CJ ONE 서비스 이용을 위한 정보제공 및 활용동의 -->
										<li>
											<p class="question_wrap">
												<button type="button">
													<span class="title">CJ ONE 서비스 이용을 위한 정보제공 및 활용동의</span> <span
														class="btn" data-handler="toggleText">열기</span>
												</button>
												<!-- 클릭 시 열기 텍스트를 닫기로 변경 -->
											</p>
											<div class="answer_wrap agreement_clause">


												<div class="item_box">
													<h4 class="h5_tit">CGV 정보 제공 동의</h4>
													<div class="cont clause_box">
														<!-- // 해당 브랜드 URL 가져오는 부분 -->
														<a href="http://www.cgv.co.kr/" target="_blank"
															class="btn btn_sm view_all">CGV 바로가기</a>


														<div class="iframe_sec">



															<!-- iframe id="coopcoFrm" src="/cjmweb/agreement/coop_7010_1000.html" frameborder="0" scrolling="no" class="agr_register2" style="width: 97%; height: 480px" title="약관 페이지입니다."></iframe -->
															<iframe id="coopcoFrm"
																src="/cjmweb/common/getBrndAgrCnts.do?coopco_cd=7010&amp;brnd_cd=1000&amp;agr_typ_cd=98"
																frameborder="0" scrolling="no" class="agr_register2"
																style="width: 97%; height: 480px" title="약관 페이지입니다."></iframe>


														</div>



													</div>
												</div>

												<div class="item_box">
													<h4 class="h5_tit">올리브영 정보 제공 동의</h4>
													<div class="cont clause_box">
														<!-- // 해당 브랜드 URL 가져오는 부분 -->
														<a href="http://www.oliveyoung.co.kr" target="_blank"
															class="btn btn_sm view_all">올리브영 바로가기</a>


														<div class="iframe_sec">



															<!-- iframe id="coopcoFrm" src="/cjmweb/agreement/coop_7030_3000.html" frameborder="0" scrolling="no" class="agr_register2" style="width: 97%; height: 480px" title="약관 페이지입니다."></iframe -->
															<iframe id="coopcoFrm"
																src="/cjmweb/common/getBrndAgrCnts.do?coopco_cd=7030&amp;brnd_cd=3000&amp;agr_typ_cd=98"
																frameborder="0" scrolling="no" class="agr_register2"
																style="width: 97%; height: 480px" title="약관 페이지입니다."></iframe>


														</div>



													</div>
												</div>

												<div class="item_box">
													<h4 class="h5_tit">CJ온스타일 정보 제공 동의</h4>
													<div class="cont clause_box">
														<!-- // 해당 브랜드 URL 가져오는 부분 -->
														<a href="http://www.cjoshopping.com/" target="_blank"
															class="btn btn_sm view_all">CJ온스타일 바로가기</a>


														<div class="iframe_sec">



															<!-- iframe id="coopcoFrm" src="/cjmweb/agreement/coop_7050_5000.html" frameborder="0" scrolling="no" class="agr_register2" style="width: 97%; height: 480px" title="약관 페이지입니다."></iframe -->
															<iframe id="coopcoFrm"
																src="/cjmweb/common/getBrndAgrCnts.do?coopco_cd=7050&amp;brnd_cd=5000&amp;agr_typ_cd=98"
																frameborder="0" scrolling="no" class="agr_register2"
																style="width: 97%; height: 480px" title="약관 페이지입니다."></iframe>


														</div>



													</div>
												</div>

												<div class="item_box">
													<h4 class="h5_tit">TVING 정보 제공 동의</h4>
													<div class="cont clause_box">
														<!-- // 해당 브랜드 URL 가져오는 부분 -->
														<a href="http://www.tving.com" target="_blank"
															class="btn btn_sm view_all">TVING 바로가기</a>


														<div class="iframe_sec">



															<!-- iframe id="coopcoFrm" src="/cjmweb/agreement/coop_7190_1900.html" frameborder="0" scrolling="no" class="agr_register2" style="width: 97%; height: 480px" title="약관 페이지입니다."></iframe -->
															<iframe id="coopcoFrm"
																src="/cjmweb/common/getBrndAgrCnts.do?coopco_cd=7190&amp;brnd_cd=1900&amp;agr_typ_cd=98"
																frameborder="0" scrolling="no" class="agr_register2"
																style="width: 97%; height: 480px" title="약관 페이지입니다."></iframe>


														</div>



													</div>
												</div>

											</div>
											<div class="answer_wrap">
												<ul class="bul_list">
													<li class="dot_arr">제휴 브랜드에 대한 정보 제공 동의는 제휴 브랜드 이용 및
														통합 회원정보 관리와 관계되어 있습니다. 따라서 정보 제공 동의 철회는 해당 제휴 브랜드의 이용약관 동의
														철회와 함께 이루어집니다.</li>
													<li class="dot_arr">제휴 브랜드에 대한 정보 제공 철회(제휴 브랜드 이용약관 동의
														철회)를 원하시는 경우 각 제휴 브랜드에 방문하시어 직접 이용약관 철회 및 정보 제공 동의 철회를 진행해
														주셔야 합니다.</li>
												</ul>
											</div>
										</li>

										<!-- 옴니 서비스 약관 -->
										<li>
											<p class="question_wrap">
												<button type="button" class="">
													<span class="title">CJ 옴니서비스 이용약관</span> <span class="btn"
														data-handler="toggleText">열기</span>
												</button>
												<!-- 클릭 시 열기 텍스트를 닫기로 변경 -->
											</p>
											<div class="answer_wrap agreement_clause">
												<!-- 안내문 -->
												<div class="cont clause_box"
													style="margin-top: 40px; padding: 20px; border: 1px solid #ddd;">
													<p>본인은 CJ 옴니서비스 이용을 위하여 아래와 같이 본인의 정보를 제3자에게 제공하는 것에
														동의합니다.</p>
													<p style="margin-top: 10px;">씨제이제일제당㈜, 씨제이대한통운㈜,
														씨제이이엔엠㈜, 씨제이올리브영㈜, 씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, ㈜티빙(이하,
														총칭하여 “CJ” 또는 "CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해
														다양한 고객 맞춤 서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이
														CJ 계열사에게 회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께
														CJ가 제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
													<p style="margin-top: 10px; font-weight: bold;">[제공 목적]</p>
													<ul>
														<li>1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
															상품/서비스 개발</li>
														<li>2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을 통한 다양한 서비스 개발,
															제공, 유지, 개선, 고도화 및 최적화</li>
														<li>3) 상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을
															기반으로 한 이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및
															제공</li>
														<li>4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상</li>
														<li>5) 상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰,
															할인 및 우대 혜택 제공 등 마케팅 및 프로모션 목적</li>
														<li>6) 고객 정보 보호 강화를 위한 외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제
															등 감지, 예방 및 대응책 수립</li>
														<li>7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동,
															결합, 조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
															통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발</li>
													</ul>
													<p style="margin-top: 10px; font-weight: bold;">[제공 및
														활용기간]</p>
													<p>제공에 동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상
														특정 항목 보유기간이 제한된 경우에는 그에 따릅니다.</p>
													<p style="margin-top: 10px; font-weight: bold;">[동의거부]</p>
													<p>
														모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한
														동의를 거부할 수 있습니다.<br>거부하시는 경우 관련 이벤트 및 프로모션 등 참여가 제한될 수
														있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.
													</p>
													<p style="margin-top: 10px;">본 서비스는 만14세 이상의 CJ ONE회원에
														한하여 이용이 가능합니다.</p>
													<p style="margin-top: 10px;">아래 제공에 동의하신 경우, 본인이 가입한 각
														서비스의 가입 시점부터 본 동의 시점까지의 정보도 제공항목에 포함됩니다.</p>
													<p style="margin-top: 10px;">CJ올리브네트웍스는 아래 각
														정보제공회사(CJ계열사)로부터 아래 개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.</p>
												</div>
												<!--// 안내문 -->







												<div class="item_box">
													<h4 class="h5_tit">CJ제일제당㈜의 개인정보 제공 동의 (선택)</h4>
													<div class="cont clause_box"
														style="padding: 20px; border: 1px solid #ddd;">
														<a href="javascript:void(0);" class="btn btn_sm view_all"
															data-control="modal"
															onclick="omniTerms('10', '7060', '6040');">전문보기</a>
														<div id="polView">
															<p>본인은 아래 본인의 정보를 다음과 같이 제3자에게 제공함에 동의합니다.</p>
															<p>씨제이제일제당㈜, 씨제이대한통운㈜, 씨제이이엔엠㈜, 씨제이올리브영㈜,
																씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, ㈜티빙(이하, 총칭하여 “CJ” 또는
																"CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해 다양한 고객 맞춤
																서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이 CJ 계열사에게
																회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께 CJ가
																제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
															<!-- 20230112 수정 -->
															<table border="1" cellspacing="0" cellpadding="0"
																style="margin-top: 10px; width: 100%">
																<caption>CJ제일제당의 개인정보제공 동의로 제공자, 제공받는자, 제공 항목,
																	제공 목적, 제공 및 활용기간을 나타내는 표입니다.</caption>
																<colgroup>
																	<col style="width: 20%">
																	<col>
																</colgroup>
																<tbody>
																	<tr>
																		<th scope="row">제공자</th>
																		<td style="font-size: 14px;">CJ제일제당㈜</td>
																	</tr>
																	<tr>
																		<th scope="row">제공받는자</th>
																		<td style="font-size: 17px; font-weight: bold">CJ대한통운㈜,
																			CJ이엔엠㈜, CJ올리브영㈜, CJ올리브네트웍스㈜, CJ씨지브이㈜, CJ푸드빌㈜, ㈜티빙</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 항목</th>
																		<td style="font-size: 14px;">인적정보[성명, 생년월일, 성별,
																			CI, CI연계값, DI], 기록정보[푸시토큰, 마케팅수신동의 정보], 서비스
																			이용내용[구매정보(상품정보, 결제금액, 구매일자), 배송주소, 프로모션/이벤트 이용정보] 및 위
																			정보와 CJ계열사 항목 정보를 결합, 분석, 추출하여 생성된 정보</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 목적</th>
																		<td style="font-size: 17px; font-weight: bold">
																			1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																			상품/서비스 개발<br> 2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을
																			통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화<br> 3)
																			상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한
																			이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
																			4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br> 5)
																			상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및
																			우대 혜택 제공 등 마케팅 및 프로모션 목적<br> 6) 고객 정보 보호 강화를 위한
																			외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립<br>
																			7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합,
																			조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
																			통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발
																		</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 및 활용기간</th>
																		<td style="font-size: 17px; font-weight: bold">제공에
																			동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상 특정 항목
																			보유기간이 제한된 경우에는 그에 따릅니다.</td>
																	</tr>
																	<tr>
																		<th scope="row">동의거부</th>
																		<td style="font-size: 14px;">모든 동의는 옴니서비스 제공 및 고객
																			만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있습니다.<br>거부하시는
																			경우 옴니서비스 등 목적에 명시된 일부 서비스 이용이 제한될 수 있으나 그 외 서비스에 대한
																			회원가입 등 기타 서비스 이용은 가능합니다.
																		</td>
																	</tr>
																</tbody>
															</table>
															<p style="margin-top: 10px;">
																본 서비스는 만14세 이상의 CJ ONE회원에 한하여 이용이 가능합니다.<br> <span
																	style="font-weight: bold; font-size: 17px">본 정보
																	제공에 동의하신 경우, 본인이 가입한 각 서비스의 가입 시점부터 본 동의 시점까지의 정보도
																	제공항목에 포함됩니다.</span><br> CJ올리브네트웍스는 정보제공회사(CJ계열사)로부터 본
																개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.
															</p>
														</div>
													</div>
													<ul class="bul_list">
														<li class="dot_arr">모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택
															동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있으며, 거부하시는 경우 관련 이벤트 및
															프로모션 등 참여가 제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.</li>
													</ul>
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의<span>선택됨</span></span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="omniagreeN1070606040"
															name="omniagree1070606040" checked="checked" value="">
															<label for="omniagreeN1070606040"><span
																class="ico"></span>미동의</label>
														</span> <span class="radio_btn case" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의<span>미선택됨</span></span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="omniagreeY1070606040"
															name="omniagree1070606040" value="10|7060|6040">
															<label for="omniagreeY1070606040"><span
																class="ico"></span>동의</label>
														</span>
													</div>
												</div>







												<div class="item_box">
													<h4 class="h5_tit">CJ대한통운㈜의 개인정보 제공 동의 (선택)</h4>
													<div class="cont clause_box"
														style="padding: 20px; border: 1px solid #ddd;">
														<a href="javascript:void(0);" class="btn btn_sm view_all"
															data-control="modal"
															onclick="omniTerms('10', '7130', '1301');">전문보기</a>
														<div id="polView">
															<p>본인은 아래 본인의 정보를 다음과 같이 제3자에게 제공함에 동의합니다.</p>
															<p>씨제이제일제당㈜, 씨제이대한통운㈜, 씨제이이엔엠㈜, 씨제이올리브영㈜,
																씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, ㈜티빙(이하, 총칭하여 “CJ” 또는
																"CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해 다양한 고객 맞춤
																서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이 CJ 계열사에게
																회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께 CJ가
																제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
															<!-- 20230112 수정 -->
															<table border="1" cellspacing="0" cellpadding="0"
																style="margin-top: 10px; width: 100%">
																<caption>CJ대한통운㈜의 개인정보제공 동의로 제공자, 제공받는자, 제공
																	항목, 제공 목적, 제공 및 활용기간을 나타내는 표입니다.</caption>
																<colgroup>
																	<col style="width: 20%">
																	<col>
																</colgroup>
																<tbody>
																	<tr>
																		<th scope="row">제공자</th>
																		<td style="font-size: 14px;">CJ대한통운㈜</td>
																	</tr>
																	<tr>
																		<th scope="row">제공받는자</th>
																		<td style="font-size: 17px; font-weight: bold">CJ제일제당㈜,
																			CJ이엔엠㈜, CJ올리브영㈜, CJ올리브네트웍스㈜, CJ씨지브이㈜, CJ푸드빌㈜, ㈜티빙</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 항목</th>
																		<td style="font-size: 14px;">발송고객번호, 송하인 정보(귀하가
																			송하인인 경우; 송하인명, 송하인휴대폰번호), 수하인 정보(귀하가 수하인인 경우; 수하인주소,
																			수하인명, 수하인휴대폰번호), 운송장번호, 집하일자, 배송일자, 품목명</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 목적</th>
																		<td style="font-size: 17px; font-weight: bold">
																			1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																			상품/서비스 개발<br> 2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을
																			통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화 <br> 3)
																			상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한
																			이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
																			4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br> 5)
																			상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및
																			우대 혜택 제공 등 마케팅 및 프로모션 목적<br> 6) 고객 정보 보호 강화를 위한
																			외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립<br>
																			7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합,
																			조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
																			통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발
																		</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 및 활용기간</th>
																		<td style="font-size: 17px; font-weight: bold">제공에
																			동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상 특정 항목
																			보유기간이 제한된 경우에는 그에 따릅니다.</td>
																	</tr>
																	<tr>
																		<th scope="row">동의거부</th>
																		<td style="font-size: 14px;">모든 동의는 옴니서비스 제공 및 고객
																			만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있습니다.<br>거부하시는
																			경우 옴니서비스 등 목적에 명시된 일부 서비스 이용이 제한될 수 있으나 그 외 서비스에 대한
																			회원가입 등 기타 서비스 이용은 가능합니다.
																		</td>
																	</tr>
																</tbody>
															</table>
															<p style="margin-top: 10px;">
																본 서비스는 만14세 이상의 CJ ONE회원에 한하여 이용이 가능합니다.<br> <span
																	style="font-weight: bold; font-size: 17px">본 정보
																	제공에 동의하신 경우, 본인이 가입한 각 서비스의 가입 시점부터 본 동의 시점까지의 정보도
																	제공항목에 포함됩니다.</span><br> CJ올리브네트웍스는 정보제공회사(CJ계열사)로부터 본
																개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.
															</p>
														</div>
													</div>
													<ul class="bul_list">
														<li class="dot_arr">모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택
															동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있으며, 거부하시는 경우 관련 이벤트 및
															프로모션 등 참여가 제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.</li>
													</ul>
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의<span>선택됨</span></span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="omniagreeN1071301301"
															name="omniagree1071301301" checked="checked" value="">
															<label for="omniagreeN1071301301"><span
																class="ico"></span>미동의</label>
														</span> <span class="radio_btn case" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의<span>미선택됨</span></span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="omniagreeY1071301301"
															name="omniagree1071301301" value="10|7130|1301">
															<label for="omniagreeY1071301301"><span
																class="ico"></span>동의</label>
														</span>
													</div>
												</div>







												<div class="item_box">
													<h4 class="h5_tit">CJ이엔엠㈜의 개인정보 제공 동의 (선택)</h4>
													<div class="cont clause_box"
														style="padding: 20px; border: 1px solid #ddd;">
														<a href="javascript:void(0);" class="btn btn_sm view_all"
															data-control="modal"
															onclick="omniTerms('10', '7040', '4070');">전문보기</a>
														<div id="polView">
															<p>본인은 아래 본인의 정보를 다음과 같이 제3자에게 제공함에 동의합니다.</p>
															<p>씨제이제일제당㈜, 씨제이대한통운㈜, 씨제이이엔엠㈜, 씨제이올리브영㈜,
																씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, ㈜티빙(이하, 총칭하여 “CJ” 또는
																"CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해 다양한 고객 맞춤
																서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이 CJ 계열사에게
																회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께 CJ가
																제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
															<!-- 20230112 수정 -->
															<table border="1" cellspacing="0" cellpadding="0"
																style="margin-top: 10px; width: 100%">
																<caption>CJ이엔엠㈜의 개인정보제공 동의로 제공자, 제공받는자, 제공 항목,
																	제공 목적, 제공 및 활용기간을 나타내는 표입니다.</caption>
																<colgroup>
																	<col style="width: 20%">
																	<col>
																</colgroup>
																<tbody>
																	<tr>
																		<th scope="row">제공자</th>
																		<td style="font-size: 14px;">CJ이엔엠㈜</td>
																	</tr>
																	<tr>
																		<th scope="row">제공받는자</th>
																		<td style="font-size: 17px; font-weight: bold">CJ제일제당㈜,
																			CJ대한통운㈜, CJ올리브영㈜, CJ올리브네트웍스㈜, CJ씨지브이㈜, CJ푸드빌㈜, ㈜티빙</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 항목</th>
																		<td style="font-size: 14px;">인적정보[성명, 생년월일, 성별,
																			연계정보(CI, CI연계값, DI), 주소, 이동전화번호, 이메일 , 아이디],
																			단말정보(모델명, 기기번호, OS 등), 기록정보[접속로그(IP 포함), 쿠키,
																			서비스이용기록(로그인, 동의 여부, 조회 이력 등)], 서비스 이용 내용[구매내역(상품명,
																			금액, 방송편성정보 등), 결제정보(수단, 내역, 사용처 등), 배송정보, 상담정보, 광고
																			전송·반응 정보, 프로모션/이벤트 이용 정보, 이용자 입력 정보] 및 위 정보와 CJ계열사 항목
																			정보를 결합, 분석, 추출하여 생성된 정보</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 목적</th>
																		<td style="font-size: 17px; font-weight: bold">
																			1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																			상품/서비스 개발<br> 2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을
																			통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화<br> 3)
																			상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한
																			이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
																			4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br> 5)
																			상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및
																			우대 혜택 제공 등 마케팅 및 프로모션 목적<br> 6) 고객 정보 보호 강화를 위한
																			외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립 <br>
																			7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합,
																			조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
																			통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발
																		</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 및 활용기간</th>
																		<td style="font-size: 17px; font-weight: bold">제공에
																			동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상 특정 항목
																			보유기간이 제한된 경우에는 그에 따릅니다.</td>
																	</tr>
																	<tr>
																		<th scope="row">동의거부</th>
																		<td style="font-size: 14px;">모든 동의는 옴니서비스 제공 및 고객
																			만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있습니다.<br>거부하시는
																			경우 옴니서비스 등 목적에 명시된 일부 서비스 이용이 제한될 수 있으나 그 외 서비스에 대한
																			회원가입 등 기타 서비스 이용은 가능합니다.
																		</td>
																	</tr>
																</tbody>
															</table>
															<p style="margin-top: 10px;">
																본 서비스는 만14세 이상의 CJ ONE회원에 한하여 이용이 가능합니다.<br> <span
																	style="font-weight: bold; font-size: 17px">본 정보
																	제공에 동의하신 경우, 본인이 가입한 각 서비스의 가입 시점부터 본 동의 시점까지의 정보도
																	제공항목에 포함됩니다.</span><br> CJ올리브네트웍스는 정보제공회사(CJ계열사)로부터 본
																개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.
															</p>
														</div>
													</div>
													<ul class="bul_list">
														<li class="dot_arr">모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택
															동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있으며, 거부하시는 경우 관련 이벤트 및
															프로모션 등 참여가 제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.</li>
													</ul>
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의<span>선택됨</span></span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="omniagreeN1070404070"
															name="omniagree1070404070" checked="checked" value="">
															<label for="omniagreeN1070404070"><span
																class="ico"></span>미동의</label>
														</span> <span class="radio_btn case" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의<span>미선택됨</span></span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="omniagreeY1070404070"
															name="omniagree1070404070" value="10|7040|4070">
															<label for="omniagreeY1070404070"><span
																class="ico"></span>동의</label>
														</span>
													</div>
												</div>







												<div class="item_box">
													<h4 class="h5_tit">CJ올리브영㈜의 개인정보 제공 동의 (선택)</h4>
													<div class="cont clause_box"
														style="padding: 20px; border: 1px solid #ddd;">
														<a href="javascript:void(0);" class="btn btn_sm view_all"
															data-control="modal"
															onclick="omniTerms('10', '7030', '3000');">전문보기</a>
														<div id="polView">
															<p>본인은 아래 본인의 정보를 다음과 같이 제3자에게 제공함에 동의합니다.</p>
															<p>씨제이제일제당㈜, 씨제이대한통운㈜, 씨제이이엔엠㈜, 씨제이올리브영㈜,
																씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, ㈜티빙(이하, 총칭하여 “CJ” 또는
																"CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해 다양한 고객 맞춤
																서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이 CJ 계열사에게
																회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께 CJ가
																제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
															<!-- 20230112 수정 -->
															<table border="1" cellspacing="0" cellpadding="0"
																style="margin-top: 10px; width: 100%">
																<caption>CJ올리브영㈜의 개인정보제공 동의로 제공자, 제공받는자, 제공
																	항목, 제공 목적, 제공 및 활용기간을 나타내는 표입니다.</caption>
																<colgroup>
																	<col style="width: 20%">
																	<col>
																</colgroup>
																<tbody>
																	<tr>
																		<th scope="row">제공자</th>
																		<td style="font-size: 14px;">CJ올리브영㈜</td>
																	</tr>
																	<tr>
																		<th scope="row">제공받는자</th>
																		<td style="font-size: 17px; font-weight: bold">CJ제일제당㈜,
																			CJ대한통운㈜, CJ이엔엠㈜, CJ올리브네트웍스㈜, CJ씨지브이㈜, CJ푸드빌㈜, ㈜티빙</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 항목</th>
																		<td style="font-size: 14px;">인적정보[이름 , 생년월일, 성별,
																			연계정보(CI연계값), 휴대전화번호, 이메일, 아이디, 회원등급, 가입일시, 마케팅수신동의],
																			서비스 이용 내용[상품 또는 서비스 구매내역(상품카테고리, 상품ID, 상품명, 구매수량,
																			구매금액, 구매일자, 매장정보), 상품구매내역(기준년월, 기준일자, 상품코드/명, 매장코드/명,
																			브랜드코드/명, 상품대/중/소분류, 매출수량, 매출금액, 구매취소일시), 결제정보(기준일자,
																			매장코드, 결제수단, 결제구분, 결제시간대, 상품수량, 결제금액, 제휴카드할인금액,
																			포인트부여금액) 및 위 정보와 CJ계열사 항목 정보를 결합, 분석, 추출하여 생성된 정보</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 목적</th>
																		<td style="font-size: 17px; font-weight: bold">
																			1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																			상품/서비스 개발<br> 2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을
																			통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화<br> 3)
																			상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한
																			이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
																			4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br> 5)
																			상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및
																			우대 혜택 제공 등 마케팅 및 프로모션 목적<br> 6) 고객 정보 보호 강화를 위한
																			외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립<br>
																			7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합,
																			조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
																			통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발
																		</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 및 활용기간</th>
																		<td style="font-size: 17px; font-weight: bold">제공에
																			동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상 특정 항목
																			보유기간이 제한된 경우에는 그에 따릅니다.</td>
																	</tr>
																	<tr>
																		<th scope="row">동의거부</th>
																		<td style="font-size: 14px;">모든 동의는 옴니서비스 제공 및 고객
																			만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있습니다.<br>거부하시는
																			경우 옴니서비스 등 목적에 명시된 일부 서비스 이용이 제한될 수 있으나 그 외 서비스에 대한
																			회원가입 등 기타 서비스 이용은 가능합니다.
																		</td>
																	</tr>
																</tbody>
															</table>
															<p style="margin-top: 10px;">
																본 서비스는 만14세 이상의 CJ ONE회원에 한하여 이용이 가능합니다.<br> <span
																	style="font-weight: bold; font-size: 17px">본 정보
																	제공에 동의하신 경우, 본인이 가입한 각 서비스의 가입 시점부터 본 동의 시점까지의 정보도
																	제공항목에 포함됩니다.</span><br> CJ올리브네트웍스는 정보제공회사(CJ계열사)로부터 본
																개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.
															</p>
														</div>
													</div>
													<ul class="bul_list">
														<li class="dot_arr">모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택
															동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있으며, 거부하시는 경우 관련 이벤트 및
															프로모션 등 참여가 제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.</li>
													</ul>
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의<span>선택됨</span></span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="omniagreeN1070303000"
															name="omniagree1070303000" checked="checked" value="">
															<label for="omniagreeN1070303000"><span
																class="ico"></span>미동의</label>
														</span> <span class="radio_btn case" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의<span>미선택됨</span></span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="omniagreeY1070303000"
															name="omniagree1070303000" value="10|7030|3000">
															<label for="omniagreeY1070303000"><span
																class="ico"></span>동의</label>
														</span>
													</div>
												</div>







												<div class="item_box">
													<h4 class="h5_tit">CJ올리브네트웍스㈜의 개인정보 제공 동의 (선택)</h4>
													<div class="cont clause_box"
														style="padding: 20px; border: 1px solid #ddd;">
														<a href="javascript:void(0);" class="btn btn_sm view_all"
															data-control="modal"
															onclick="omniTerms('10', '7240', '2401');">전문보기</a>
														<div id="polView">
															<p>본인은 아래 본인의 정보를 다음과 같이 제3자에게 제공함에 동의합니다.</p>
															<p>씨제이제일제당㈜, 씨제이대한통운㈜, 씨제이이엔엠㈜, 씨제이올리브영㈜,
																씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, ㈜티빙(이하, 총칭하여 “CJ” 또는
																"CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해 다양한 고객 맞춤
																서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이 CJ 계열사에게
																회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께 CJ가
																제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
															<!-- 20230112 수정 -->
															<table border="1" cellspacing="0" cellpadding="0"
																style="margin-top: 10px; width: 100%">
																<caption>CJ올리브네트웍스㈜의 개인정보제공 동의로 제공자, 제공받는자, 제공
																	항목, 제공 목적, 제공 및 활용기간을 나타내는 표입니다.</caption>
																<colgroup>
																	<col style="width: 20%">
																	<col>
																</colgroup>
																<tbody>
																	<tr>
																		<th scope="row">제공자</th>
																		<td style="font-size: 14px;">CJ올리브네트웍스㈜</td>
																	</tr>
																	<tr>
																		<th scope="row">제공받는자</th>
																		<td style="font-size: 17px; font-weight: bold">CJ제일제당㈜,
																			CJ대한통운㈜, CJ이엔엠㈜, CJ올리브영㈜, CJ씨지브이㈜, CJ푸드빌㈜, ㈜티빙</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 항목</th>
																		<td style="font-size: 14px;">인적정보[성명, 생년월일, 성별,
																			CI, 전화번호, 이메일주소, 아이디, CJONE회원 카드번호], 가입정보[가입일시, 가입채널,
																			마케팅수신동의], 서비스이용내용[포인트 적립/이용기록, 이벤트 정보(이벤트 응모 및 당첨내역),
																			광고전송/반응정보, 매장방문정보 등] 및 위 정보와 CJ계열사 항목 정보를 결합, 분석,
																			추출하여 생성된 정보</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 목적</th>
																		<td style="font-size: 17px; font-weight: bold">
																			1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																			상품/서비스 개발<br> 2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을
																			통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화<br> 3)
																			상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한
																			이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
																			4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br> 5)
																			상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및
																			우대 혜택 제공 등 마케팅 및 프로모션 목적<br> 6) 고객 정보 보호 강화를 위한
																			외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립<br>
																			7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합,
																			조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
																			통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발
																		</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 및 활용기간</th>
																		<td style="font-size: 17px; font-weight: bold">제공에
																			동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상 특정 항목
																			보유기간이 제한된 경우에는 그에 따릅니다.</td>
																	</tr>
																	<tr>
																		<th scope="row">동의거부</th>
																		<td style="font-size: 14px;">모든 동의는 옴니서비스 제공 및 고객
																			만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있습니다.<br>거부하시는
																			경우 옴니서비스 등 목적에 명시된 일부 서비스 이용이 제한될 수 있으나 그 외 서비스에 대한
																			회원가입 등 기타 서비스 이용은 가능합니다.
																		</td>
																	</tr>
																</tbody>
															</table>
															<p style="margin-top: 10px;">
																본 서비스는 만14세 이상의 CJ ONE회원에 한하여 이용이 가능합니다.<br> <span
																	style="font-weight: bold; font-size: 17px">본 정보
																	제공에 동의하신 경우, 본인이 가입한 각 서비스의 가입 시점부터 본 동의 시점까지의 정보도
																	제공항목에 포함됩니다.</span><br> CJ올리브네트웍스는 정보제공회사(CJ계열사)로부터 본
																개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.
															</p>
														</div>
													</div>
													<ul class="bul_list">
														<li class="dot_arr">모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택
															동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있으며, 거부하시는 경우 관련 이벤트 및
															프로모션 등 참여가 제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.</li>
													</ul>
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의<span>선택됨</span></span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="omniagreeN1072402401"
															name="omniagree1072402401" checked="checked" value="">
															<label for="omniagreeN1072402401"><span
																class="ico"></span>미동의</label>
														</span> <span class="radio_btn case" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의<span>미선택됨</span></span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="omniagreeY1072402401"
															name="omniagree1072402401" value="10|7240|2401">
															<label for="omniagreeY1072402401"><span
																class="ico"></span>동의</label>
														</span>
													</div>
												</div>







												<div class="item_box">
													<h4 class="h5_tit">CJ씨지브이㈜의 개인정보 제공 동의 (선택)</h4>
													<div class="cont clause_box"
														style="padding: 20px; border: 1px solid #ddd;">
														<a href="javascript:void(0);" class="btn btn_sm view_all"
															data-control="modal"
															onclick="omniTerms('10', '7010', '1000');">전문보기</a>
														<div id="polView">
															<p>본인은 아래 본인의 정보를 다음과 같이 제3자에게 제공함에 동의합니다.</p>
															<p>씨제이제일제당㈜, 씨제이대한통운㈜, 씨제이이엔엠㈜, 씨제이올리브영㈜,
																씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, ㈜티빙(이하, 총칭하여 “CJ” 또는
																"CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해 다양한 고객 맞춤
																서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이 CJ 계열사에게
																회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께 CJ가
																제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
															<!-- 20230112 수정 -->
															<table border="1" cellspacing="0" cellpadding="0"
																style="margin-top: 10px; width: 100%">
																<caption>CJ씨지브이㈜의 개인정보제공 동의로 제공자, 제공받는자, 제공
																	항목, 제공 목적, 제공 및 활용기간을 나타내는 표입니다.</caption>
																<colgroup>
																	<col style="width: 20%">
																	<col>
																</colgroup>
																<tbody>
																	<tr>
																		<th scope="row">제공자</th>
																		<td style="font-size: 14px;">CJ씨지브이㈜</td>
																	</tr>
																	<tr>
																		<th scope="row">제공받는자</th>
																		<td style="font-size: 17px; font-weight: bold;">CJ제일제당㈜,
																			CJ대한통운㈜, CJ이엔엠㈜, CJ올리브영㈜, CJ올리브네트웍스㈜, CJ푸드빌㈜, ㈜티빙</td>
																		<!-- 20230629 개인정보보호법 반영 수정, 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 항목</th>
																		<td style="font-size: 14px;">인적정보[성명, 생년월일, 성별,
																			연계정보(CI), 주소, 이동전화번호, 이메일, 아이디], 기록정보[접속로그(IP 포함),
																			쿠키, 서비스이용기록(로그인, 동의 여부, 조회 이력 등)], 서비스 이용
																			내용[구매내역(상품명, 금액 등), 결제정보(수단, 내역, 사용처 등), 상담정보,
																			프로모션/이벤트 이용 정보, 이용자 입력 정보] 및 위 정보와 CJ계열사 항목 정보를 결합,
																			분석, 추출하여 생성된 정보</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 목적</th>
																		<td style="font-size: 17px; font-weight: bold;">
																			1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																			상품/서비스 개발<br> 2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을
																			통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화<br> 3)
																			상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한
																			이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
																			4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br> 5)
																			상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및
																			우대 혜택 제공 등 마케팅 및 프로모션 목적<br> 6) 고객 정보 보호 강화를 위한
																			외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립<br>
																			7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합,
																			조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
																			통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발
																		</td>
																		<!-- 20230629 개인정보보호법 반영 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 및 활용기간</th>
																		<td style="font-size: 17px; font-weight: bold;">제공에
																			동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상 특정 항목
																			보유기간이 제한된 경우에는 그에 따릅니다.</td>
																		<!-- 20230629 개인정보보호법 반영 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">동의거부</th>
																		<td style="font-size: 14px;">모든 동의는 옴니서비스 제공 및 고객
																			만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있습니다.<br>거부하시는
																			경우 옴니서비스 등 목적에 명시된 일부 서비스 이용이 제한될 수 있으나 그 외 서비스에 대한
																			회원가입 등 기타 서비스 이용은 가능합니다.
																		</td>
																	</tr>
																</tbody>
															</table>
															<p style="margin-top: 10px;">
																본 서비스는 만14세 이상의 CJ ONE회원에 한하여 이용이 가능합니다.<br> <span
																	style="font-weight: bold; font-size: 17px">본 정보
																	제공에 동의하신 경우, 본인이 가입한 각 서비스의 가입 시점부터 본 동의 시점까지의 정보도
																	제공항목에 포함됩니다.</span><br> CJ올리브네트웍스는 정보제공회사(CJ계열사)로부터 본
																개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.
															</p>
														</div>
													</div>
													<ul class="bul_list">
														<li class="dot_arr">모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택
															동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있으며, 거부하시는 경우 관련 이벤트 및
															프로모션 등 참여가 제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.</li>
													</ul>
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의<span>선택됨</span></span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="omniagreeN1070101000"
															name="omniagree1070101000" checked="checked" value="">
															<label for="omniagreeN1070101000"><span
																class="ico"></span>미동의</label>
														</span> <span class="radio_btn case" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의<span>미선택됨</span></span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="omniagreeY1070101000"
															name="omniagree1070101000" value="10|7010|1000">
															<label for="omniagreeY1070101000"><span
																class="ico"></span>동의</label>
														</span>
													</div>
												</div>







												<div class="item_box">
													<h4 class="h5_tit">CJ푸드빌㈜의 개인정보 제공 동의 (선택)</h4>
													<div class="cont clause_box"
														style="padding: 20px; border: 1px solid #ddd;">
														<a href="javascript:void(0);" class="btn btn_sm view_all"
															data-control="modal"
															onclick="omniTerms('10', '7020', '2000');">전문보기</a>
														<div id="polView">
															<p>본인은 아래 본인의 정보를 다음과 같이 제3자에게 제공함에 동의합니다.</p>
															<p>씨제이제일제당㈜, 씨제이대한통운㈜, 씨제이이엔엠㈜, 씨제이올리브영㈜,
																씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, ㈜티빙(이하, 총칭하여 “CJ” 또는
																"CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해 다양한 고객 맞춤
																서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이 CJ 계열사에게
																회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께 CJ가
																제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
															<!-- 20230112 수정 -->
															<table border="1" cellspacing="0" cellpadding="0"
																style="margin-top: 10px; width: 100%">
																<caption>CJ푸드빌㈜의 개인정보제공 동의로 제공자, 제공받는자, 제공 항목,
																	제공 목적, 제공 및 활용기간을 나타내는 표입니다.</caption>
																<colgroup>
																	<col style="width: 20%">
																	<col>
																</colgroup>
																<tbody>
																	<tr>
																		<th scope="row">제공자</th>
																		<td style="font-size: 14px;">CJ푸드빌㈜</td>
																	</tr>
																	<tr>
																		<th scope="row">제공받는자</th>
																		<td style="font-size: 17px; font-weight: bold">CJ제일제당㈜,
																			CJ대한통운㈜, CJ이엔엠㈜, CJ올리브영㈜, CJ올리브네트웍스㈜, CJ씨지브이㈜, ㈜티빙</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공 항목</th>
																		<td style="font-size: 14px;">인적정보[성명, 생년월일, 성별,
																			연계정보(CI, CI연계값, DI), 주소, 이동전화번호, 이메일, 아이디],
																			기록정보[접속로그(IP 포함), 쿠키, 서비스이용기록(로그인, 동의 여부, 조회 이력 등)],
																			서비스 이용 내용[구매내역(상품명, 금액, 쿠폰사용 등), 결제정보(수단, 내역, 사용처 등),
																			배송정보, 상담정보, 광고 전송·반응 정보, 프로모션/이벤트 이용 정보, 이용자 입력 정보] 및
																			위 정보와 CJ계열사 항목 정보를 결합, 분석, 추출하여 생성된 정보</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 목적</th>
																		<td style="font-size: 17px; font-weight: bold">
																			1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																			상품/서비스 개발<br> 2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을
																			통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화<br> 3)
																			상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한
																			이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
																			4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br> 5)
																			상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및
																			우대 혜택 제공 등 마케팅 및 프로모션 목적<br> 6) 고객 정보 보호 강화를 위한
																			외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립<br>
																			7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합,
																			조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
																			통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발
																		</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 및 활용기간</th>
																		<td style="font-size: 17px; font-weight: bold">제공에
																			동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상 특정 항목
																			보유기간이 제한된 경우에는 그에 따릅니다.</td>
																	</tr>
																	<tr>
																		<th scope="row">동의거부</th>
																		<td style="font-size: 14px;">모든 동의는 옴니서비스 제공 및 고객
																			만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있습니다.<br>거부하시는
																			경우 옴니서비스 등 목적에 명시된 일부 서비스 이용이 제한될 수 있으나 그 외 서비스에 대한
																			회원가입 등 기타 서비스 이용은 가능합니다.
																		</td>
																	</tr>
																</tbody>
															</table>
															<p style="margin-top: 10px;">
																본 서비스는 만14세 이상의 CJ ONE회원에 한하여 이용이 가능합니다.<br> <span
																	style="font-weight: bold; font-size: 17px">본 정보
																	제공에 동의하신 경우, 본인이 가입한 각 서비스의 가입 시점부터 본 동의 시점까지의 정보도
																	제공항목에 포함됩니다.</span><br> CJ올리브네트웍스는 정보제공회사(CJ계열사)로부터 본
																개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.
															</p>
														</div>
													</div>
													<ul class="bul_list">
														<li class="dot_arr">모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택
															동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있으며, 거부하시는 경우 관련 이벤트 및
															프로모션 등 참여가 제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.</li>
													</ul>
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의<span>선택됨</span></span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="omniagreeN1070202000"
															name="omniagree1070202000" checked="checked" value="">
															<label for="omniagreeN1070202000"><span
																class="ico"></span>미동의</label>
														</span> <span class="radio_btn case" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의<span>미선택됨</span></span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="omniagreeY1070202000"
															name="omniagree1070202000" value="10|7020|2000">
															<label for="omniagreeY1070202000"><span
																class="ico"></span>동의</label>
														</span>
													</div>
												</div>







												<div class="item_box">
													<h4 class="h5_tit">㈜티빙의 개인정보 제공 동의 (선택)</h4>
													<div class="cont clause_box"
														style="padding: 20px; border: 1px solid #ddd;">
														<a href="javascript:void(0);" class="btn btn_sm view_all"
															data-control="modal"
															onclick="omniTerms('10', '7190', '1900');">전문보기</a>
														<div id="polView">
															<p>본인은 아래 본인의 정보를 다음과 같이 제3자에게 제공함에 동의합니다.</p>
															<p>씨제이제일제당㈜, 씨제이대한통운㈜, 씨제이이엔엠㈜, 씨제이올리브영㈜,
																씨제이올리브네트웍스㈜, 씨제이씨지브이㈜, 씨제이푸드빌㈜, 씨제이프레시웨이㈜, ㈜티빙(이하, 총칭하여
																“CJ” 또는 "CJ계열사")는 CJ가 보유한 다양한 온-오프라인 채널간 유기적 연계를 통해 다양한
																고객 맞춤 서비스를 제공하고 CJ 고객의 서비스 만족도를 보다 더 향상시키기 위하여 다음과 같이 CJ
																계열사에게 회원의 개인정보를 상호 제공(공유)ㆍ활용하고자 합니다. 동의하시는 경우 옴니서비스와 함께
																CJ가 제공하는 상품/서비스에 대하여 보다 더 만족스러운 경험을 느끼실 수 있습니다.</p>
															<table border="1" cellspacing="0" cellpadding="0"
																style="margin-top: 10px; width: 100%">
																<caption>㈜티빙의 개인정보제공 동의로 제공자, 제공받는자, 제공 항목, 제공
																	목적, 제공 및 활용기간을 나타내는 표입니다.</caption>
																<!-- 20230112 수정 -->
																<colgroup>
																	<col style="width: 20%">
																	<col>
																</colgroup>
																<tbody>
																	<tr>
																		<th scope="row">제공자</th>
																		<td style="font-size: 14px;">㈜티빙</td>
																		<!-- 20230112 수정 -->
																	</tr>
																	<tr>
																		<th scope="row">제공받는자</th>
																		<td style="font-size: 17px; font-weight: bold">CJ제일제당㈜,
																			CJ대한통운㈜, CJ이엔엠㈜, CJ올리브영㈜, CJ올리브네트웍스㈜, CJ씨지브이㈜,
																			CJ프레시웨이㈜, CJ푸드빌㈜</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 항목</th>
																		<td style="font-size: 14px;">인적정보[성명, 성별, 이동전화번호,
																			이메일, 아이디], 서비스 이용 내용[구매내역(상품금액, 과금유형), 시청로그(이용시각,
																			콘텐츠명, 콘텐츠유형, 콘텐츠메타정보, 채널명, 구맹상품명)] 및 위 정보와 CJ계열사 항목
																			정보를 결합, 분석, 추출하여 생성된 정보</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 목적</th>
																		<td style="font-size: 17px; font-weight: bold">
																			1) 각 CJ계열사의 고유 상품/서비스 제공, 유지, 개선, 고도화, 최적화 및 신규
																			상품/서비스 개발<br> 2) 각 CJ계열사 보유 온-오프라인 채널 간 연계 및 통합을
																			통한 다양한 서비스 개발, 제공, 유지, 개선, 고도화 및 최적화<br> 3)
																			상품/서비스 이용실적 통계/분석, 시장조사, 인구통계학적 분석, 데이터 분석을 기반으로 한
																			이용자 간 관계 형성, 고객 성향 분석 및 이를 통한 고객별 맞춤 상품/서비스 개발 및 제공<br>
																			4) 고객만족서비스(CS)개선 및 고객과의 커뮤니케이션 능력 향상<br> 5)
																			상품/서비스 정보 제공 및 홍보, 경품/사은행사 등 이벤트 참여 기회 제공, 쿠폰, 할인 및
																			우대 혜택 제공 등 마케팅 및 프로모션 목적<br> 6) 고객 정보 보호 강화를 위한
																			외부 침입, 해킹, 악용사례, 보안위험, 기술적 문제 등 감지, 예방 및 대응책 수립<br>
																			7) 위 각 호의 목적을 위한 CJ계열사의 보유 데이터의 수집, 저장, 연계, 연동, 결합,
																			조합, 분해, 분석, 가공, 편집, 추출, 가명화, 비식별화, 기타 다양한 방법의 처리 및 이를
																			통한 새로운 데이터 생성, 인공지능 및 빅데이터 기술 개발
																		</td>
																	</tr>
																	<tr>
																		<th scope="row">제공 및 활용기간</th>
																		<td style="font-size: 17px; font-weight: bold">제공에
																			동의하신 정보는 동의를 철회하거나 서비스이용 종료 시 파기합니다. 다만, 관련 법령상 특정 항목
																			보유기간이 제한된 경우에는 그에 따릅니다.</td>
																	</tr>
																	<tr>
																		<th scope="row">동의거부</th>
																		<td style="font-size: 14px;">모든 동의는 옴니서비스 제공 및 고객
																			만족 향상을 위한 선택 동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있습니다.<br>거부하시는
																			경우 옴니서비스 등 목적에 명시된 일부 서비스 이용이 제한될 수 있으나 그 외 서비스에 대한
																			회원가입 등 기타 서비스 이용은 가능합니다.
																		</td>
																	</tr>
																</tbody>
															</table>
															<p style="margin-top: 10px;">
																본 서비스는 만14세 이상의 CJ ONE회원에 한하여 이용이 가능합니다.<br> <span
																	style="font-weight: bold; font-size: 17px">본 정보
																	제공에 동의하신 경우, 본인이 가입한 각 서비스의 가입 시점부터 본 동의 시점까지의 정보도
																	제공항목에 포함됩니다.</span><br> CJ올리브네트웍스는 정보제공회사(CJ계열사)로부터 본
																개인정보 제공 관련 동의 수령/철회/관리업무를 위탁처리합니다.
															</p>
														</div>
													</div>
													<ul class="bul_list">
														<li class="dot_arr">모든 동의는 옴니서비스 제공 및 고객 만족 향상을 위한 선택
															동의 사항으로 회원은 개인정보의 제공에 대한 동의를 거부할 수 있으며, 거부하시는 경우 관련 이벤트 및
															프로모션 등 참여가 제한될 수 있으나 CJ ONE 멤버십 서비스 이용에는 영향을 미치지 않습니다.</li>
													</ul>
													<div class="radio_agreement">
														<span class="radio_btn on" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">미동의<span>선택됨</span></span>
														</a><span class="hide"><span class="haze">미동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="omniagreeN1071901900"
															name="omniagree1071901900" checked="checked" value="">
															<label for="omniagreeN1071901900"><span
																class="ico"></span>미동의</label>
														</span> <span class="radio_btn case" data-skin="accept"
															data-checked-text="선택됨" data-unchecked-text="미선택됨">
															<a href="#"> <span class="haze">동의<span>미선택됨</span></span>
														</a><span class="hide"><span class="haze">동의<span>선택불가</span></span></span>
															<input type="radio" class="chk" id="omniagreeY1071901900"
															name="omniagree1071901900" value="10|7190|1900">
															<label for="omniagreeY1071901900"><span
																class="ico"></span>동의</label>
														</span>
													</div>
												</div>

											</div>
										</li>
										<input type="hidden" name="omni_agr_list" id="omni_agr_list"
											value="">
										<!--// 옴니 서비스 약관 -->

									</ul>
								</div>
								<!-- 정보제공 동의여부 -->

								<div class="btn_sec btn_center">
									<button type="button" class="btn" id="btn_cancel">취소</button>
									<button type="button" class="btn btn_em" id="btn_submit">수정</button>
								</div>

								<div id="guideArea">
									<h2 class="haze">고객센터 이용 안내</h2>
									<div class="box_btm box_gray cs_banner col2">
										<div class="banner_cs faq">
											<a href="https://www.cjone.com/cjmweb/customer/faq.do">
												<dl class="box_info">
													<dt>자주찾는 질문</dt>
													<dd>
														<p>
															CJ ONE에 관한 궁금하신 사항을 확인하세요.<br>질문에 빠르고 정확한 답변을 제공합니다.
														</p>
													</dd>
												</dl> <span class="bg faq"></span>
											</a>
										</div>
										<div class="banner_cs call_center">
											<a href="javascript:goCounseling();">
												<dl class="box_info">
													<dt>1:1상담</dt>
													<dd>
														<ul class="bul_list">
															<li class="dot_arr">평일 : 다음 날 답변 완료</li>
															<li class="dot_arr">토·일·공휴일 : 휴일 이후 답변 완료</li>
														</ul>
													</dd>
												</dl> <span class="bg"></span>
											</a>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</form>
		</div>
		<!-- //contents -->

		<form method="post" name="action_frm" id="action_frm" action="">
			<input type="hidden" name="coopco_cd" id="ajax_coopco_cd" value="">
			<input type="hidden" name="brnd_cd" id="ajax_brnd_cd" value="">
			<input type="hidden" name="mcht_no" id="ajax_mcht_no" value="">
			<input type="hidden" name="coop_return_url" id="ajax_coop_return_url"
				value=""> <input type="hidden" name="return_func"
				id="ajax_return_func" value=""> <input type="hidden"
				name="sub_type" id="ajax_sub_type" value=""> <input
				type="hidden" name="ipin_use_yn" id="ajax_ipin_use_yn" value="">
			<input type="hidden" name="hg_nm" id="ajax_hg_nm" value=""> <input
				type="hidden" name="vno" id="ajax_vno" value=""> <input
				type="hidden" name="ssn1" id="ajax_ssn1" value=""> <input
				type="hidden" name="ssn2" id="ajax_ssn2" value=""> <input
				type="hidden" name="ipin_ci" id="ajax_ipin_ci" value=""> <input
				type="hidden" name="ipin_di" id="ajax_ipin_di" value=""> <input
				type="hidden" name="gender" id="ajax_gender" value=""> <input
				type="hidden" name="legl_birth_dy" id="ajax_legl_birth_dy" value="">
			<input type="hidden" name="frgnr_yn" id="ajax_frgnr_yn" value="">
			<input type="hidden" name="under_14" id="ajax_under_14" value="">
			<input type="hidden" name="id_validate" id="ajax_id_validate"
				value=""> <input type="hidden" name="agr_dy"
				id="ajax_agr_dy" value=""> <input type="hidden"
				name="agr_tm" id="ajax_agr_tm" value=""> <input
				type="hidden" name="agr_yn" id="ajax_agr_yn" value=""> <input
				type="hidden" name="mod_rcvr_list" id="ajax_mod_rcvr_list" value="">
		</form>

		<!-- footer -->
		<div id="footer">







			<!-- script type="text/javascript">if(typeof _satellite !== "undefined" && _satellite) {_satellite.pageBottom();}</script -->
			<script type="text/javascript">
// footer 이벤트 선택 함수(1=이용약관,2=이전이용약관, 3=ARS 본인인증,4=법적고지, 5=이메일무단수집거부, 6=사이트맵, 그이외 개인정보취급)
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
			<!-- 로그인여부 여부 체크 -->

			<!-- 로그인여부 여부 체크 -->

			<!--20191021 CJ ONE APP 사업자 정보 노출 전체 영역-->
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
						src="/cjmweb/images/common/logo_cjolivenetworks_footer.png"
						alt="CJ 올리브넥트웍스"></span> Copyright (c)2016 CJ OLIVENETWORKS. All
					Rights Reserved
				</p>

				<div class="fixedTop" data-control="goTop" style="bottom: 50px;">
					<a href="#headerWrap" title="페이지 처음으로 이동"><span class="haze">TOP</span></a>
				</div>

			</div>
			<!--// 20191021 CJ ONE APP 사업자 정보 노출 전체 영역 -->
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
	<script type="text/javascript" src="/cjmweb/js/assl/assl.js"></script>
	<script type="text/javascript"
		src="https://www.cjone.com/cjmweb/js/assl/lib/jsbn/jsbn.js"></script>
	<script type="text/javascript"
		src="https://www.cjone.com/cjmweb/js/assl/lib/jsbn/prng4.js"></script>
	<script type="text/javascript"
		src="https://www.cjone.com/cjmweb/js/assl/lib/jsbn/rng.js"></script>
	<script type="text/javascript"
		src="https://www.cjone.com/cjmweb/js/assl/lib/jsbn/rsa.js"></script>
	<script type="text/javascript"
		src="https://www.cjone.com/cjmweb/js/assl/lib/aes.js"></script>
	<script type="text/javascript"
		src="https://www.cjone.com/cjmweb/js/assl/assl_.js"></script>
	<script type="text/javascript" src="/cjmweb/js/password_ck.js"></script>
	<script src="/cjmweb/js/modules/cjoneCore.js"></script>
	<script src="/cjmweb/js/modules/commonUi.js"></script>
	<script src="/cjmweb/js/frontUi.js"></script>
	<script src="/cjmweb/js/modules/jquery.bxslider.js"></script>
	<script type="text/javascript" src="/cjmweb/js/crypto-js/crypto-js.js"></script>
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

	<!--[if lte IE 9]><script src="/cjmweb/js/jquery.placeholder.js"></script>[![endif]]<!--jQuery--->

	<!-- 160203 수정 -->
	<script>
		var tm_rcv_checkbox = new Array();
		var sms_rcv_checkbox = new Array();
		var email_rcv_checkbox = new Array();
		var isMaskYn = "Y";
        $(function () {
        	//제휴브랜드 마케팅 정보수신 동의 초기값
        	$('#coop_agree input:checkbox[id^="tm_rcv_"]').each(function(){
        		tm_rcv_checkbox.push($(this).is(":checked")?"Y":"N")
         	});
        	
        	$('#coop_agree input:checkbox[id^="sms_rcv_"]').each(function(){
        		sms_rcv_checkbox.push($(this).is(":checked")?"Y":"N")
         	});
        	
        	$('#coop_agree input:checkbox[id^="email_rcv_"]').each(function(){
        		email_rcv_checkbox.push($(this).is(":checked")?"Y":"N")
         	});
        	
            //CJ ONE + 제휴사 마케팅 전체 동의
            $('[data-check-all]').checkboxAllChecker();
            
            //정보제공 동의여부
            $('[data-control="accordion"]').accordion();
            
            //이메일 선택
            $('[data-control="emailSelector"]').on('change', function () {       
              var $this = $(this);
              $this.prev().val($this.val());
            });  
            
            
            //선택정보 > 현금영수증 발행 선택
            $('#select_way').off('change').on('change', function () {
                var $this = $(this),
                      $next = $this.parent().children('span'),
                      selectedIndex = $this.children().filter(':selected').index();
                $next.not($next.eq(selectedIndex).removeClass('hide')).addClass('hide');  
            });
            
          	//현금영수증 발행정보 세팅
          	
            
            //휴대전화번호 초기화 회원이 휴대전화인증후 새로고침 한 경우(masking 해제)
            
        });
    </script>
	<!-- //160203 수정 -->

	<script type="text/javascript">
	
	var isPwdChange = false;
    $(document).ready(function(){
	    	
	
	    setUserInfo();  // 오프라인 회원의 경우 값 셋팅
	    
	 	var coopco_cd = "7030";
	 	var brnd_cd = "3000";
	
	    $('#mbr_id').change(function() { 
	    	$('#id_validate').val('N');
	    	alertMsg("alert_mbr_id", "아이디 중복확인을 해주세요.");
	    }); // 아이디(ID)중복확인
	    
	    $('#pwd').keyup(checkPassword);      // 강도  체크(비밀번호)
	
	    $('#email_addr_opt').change(setEmail);  // 이메일 직접 입력등 선택
	    $('#email_addr_opt').change(chkEmail);  // 이메일 직접입력
	    $('#email_addr2').blur(chkEmailDomain); // 직접입력 이메일 도메인 유효성 체크

	    $("#btn_cancel").click(goCancel);
	    $("#btn_submit").click(goSubmit);
	    
	    $(".item_seleced a").click(chkCertification);
	    $(".phon_write").click(chkCertification);
	    $(".email_write").click(chkCertification);
		
	    if (navigator.userAgent.indexOf('MSIE') > -1) {
	    	$('.ie8Lbls').hide();
		}	    
	    
	    // 카카오 로그인 사용 여부
        if($('#under_14').val() == 'N'){
            if($('#sns_typ_cd_10').val() != null && $('#sns_typ_cd_10').val() != ''){
                if($('#sns_typ_cd_10').val() == 'Y'){
                    $('#kakaosync').val('Y');
                    $('input:checkbox[id="kakaosync"]').attr("checked", true);
                    $('#kakaosync').prop("checked", true);
                }else{
                    $('#kakaosync').val('N');
                    $('input:checkbox[id="kakaosync"]').attr("checked", false);
                }
            }
        }
	    	
	    $("#lnChangeName").click(changeName);

	    $("#birth_yy").change(function(){
	    	date_change();
	    });
	    $("#birth_mm").change(function(){
	    	date_change();
	    });

	    var cj_marketing_agree = "Y";
	    if(cj_marketing_agree != "Y"){
	    	cjMarketingAgreeControl(false);
	    }
	    
	    var coop_marketing_agree = "";
	    if(coop_marketing_agree != "Y"){
	    	coopMarketingAgreeControl(false);
	    } 

        //--160802_수정: 비밀번호 변경 - 시작
        $('[data-control="toggle"]').toggle().on({
            'toggle:end': function (e, dataSet) {
                var isOpen = dataSet.isOpen,
                      $handlerTarget = $('[data-handler="'+dataSet.data.$el.attr('data-handler-target')+'"]');
                $handlerTarget.toggleClass('hide');
                $handlerTarget.last().children().toggleClass('hide');
                isPwdChange = !isPwdChange;
                
                //20220829 수정 : 비밀번호 변경하기 버튼 클릭 시, 버튼 숨김 처리
                $('#btn_chg_pw').hide();
            }
        });
        //--160802_수정: 비밀번호 변경 - 끝	  

	    var cj_marketting_code = '30';
	    var coop_marketting_code = 'coop';
	    var cootoo_code = ['35','36'];
	    var precard_code = ['38','39'];
	    var interpark_code = ['44','45','46'];
	    
	    $('input:radio').change(function(e){
	    	//CJ 마케팅코드 동의/미동의 시 마케팅정보수신동의 disabled (true,false)처리.
	    	if(e.currentTarget.name == 'agr'+cj_marketting_code){
	    		if(confirm('개인정보 수집 및 활용 동의를 변경 하시겠습니까?')){
					$('#agr'+cj_marketting_code+'_Y').focus();
	    			if($(e.currentTarget).attr('value') == "Y"){
						cjMarketingAgreeControl(true);
	    			}else{
	    				cjMarketingAgreeControl(false);
	    			}
				}
	    	//제휴사 마케팅코드 동의/미동의 시 제휴사 마케팅정보수신동의 disabled (true,false)처리.
	    	}else if(e.currentTarget.name == 'agr'+coop_marketting_code){
	    		if(confirm('개인정보 수집 및 활용 동의를 변경 하시겠습니까?')){
	    			$('#agr'+coop_marketting_code+'_Y').focus();
	    			if($(e.currentTarget).attr('value') == "Y"){
	    				coopMarketingAgreeControl(true);
	    				
	    			}else{
	    				coopMarketingAgreeControl(false);
	    			}
				}
	    	}
	    	
	    	//쿠투 약관코드중 하나가 미동의 되면 나머지 쿠투약관코드 미동의 처리 
	    	for(var i=0; i < cootoo_code.length; i++ ){
	    		if(e.currentTarget.name == 'agr'+cootoo_code[i]){
	    			if($(e.currentTarget).attr('value') == "N"){
						alert('쿠투 상품 구매를 위해서는 쿠투 상품 구매를 위한 제3자 정보제공과 쿠투 이용약관에 모두 동의하셔야 합니다.');	    				
	    				for(var j=0; j < cootoo_code.length; j++){
	    					if(e.currentTarget.name != 'agr'+cootoo_code[j] && $('#agr'+cootoo_code[j]+'_Y').prop('checked')){
	    						$('#agr'+cootoo_code[j]+'_N').prop('checked', true).formSkin('addSkin');
	    					}
	    				}
	    				return;
	    			}
	    		}
	    	}
	    	
	    	//선불카드 약관코드중 하나가 미동의 되면 나머지 쿠투약관코드 미동의 처리 
	    	for(var i=0; i < precard_code.length; i++ ){
	    		if(e.currentTarget.name == 'agr'+precard_code[i]){
	    			if($(e.currentTarget).attr('value') == "N"){
	    				alert('기프트카드서비스 이용을 위해서는 CJ 기프트카드 서비스 이용약관과 멤버쉽연동을 위한 제3자 정보제공동의에 모두 동의하셔야합니다.');
	    				for(var j=0; j < precard_code.length; j++){
	    					if(e.currentTarget.name != 'agr'+precard_code[j] && $('#agr'+precard_code[j]+'_Y').prop('checked')){
	    						$('#agr'+precard_code[j]+'_N').prop('checked', true).formSkin('addSkin');
	    					}
	    				}
	    				return;
	    			}
	    		}
	    	}
	    	
	    	//선불카드 약관코드중 하나가 미동의 되면 나머지 쿠투약관코드 미동의 처리 
	    	for(var i=0; i < precard_code.length; i++ ){
	    		if(e.currentTarget.name == 'agr'+precard_code[i]){
	    			if($(e.currentTarget).attr('value') == "N"){
	    				alert('기프트카드서비스 이용을 위해서는 CJ 기프트카드 서비스 이용약관과 멤버쉽연동을 위한 제3자 정보제공동의에 모두 동의하셔야합니다.');
	    				for(var j=0; j < precard_code.length; j++){
	    					if(e.currentTarget.name != 'agr'+precard_code[j] && $('#agr'+precard_code[j]+'_Y').prop('checked')){
	    						$('#agr'+precard_code[j]+'_N').prop('checked', true).formSkin('addSkin');
	    					}
	    				}
	    				return;
	    			}
	    		}
	    	}
	    	
	    	//인터파크 약관코드중 하나가 미동의 되면 나머지 인터파크 약관코드 미동의 처리 
	    	for(var i=0; i < interpark_code.length ; i++ ){
	    		if(e.currentTarget.name == 'agr'+interpark_code[i]){
	    			if($(e.currentTarget).attr('value') == "N"){
	    				alert('인터파크 상품 구매를 위해서는 인터파크 상품 구매를 위한 제3자 정보제공과 인터파크 이용약관에 모두 동의하셔야 합니다.');  	
	    				for(var j=0; j < interpark_code.length; j++){
	    					if(e.currentTarget.name != 'agr'+interpark_code[j] && $('#agr'+interpark_code[j]+'_Y').prop('checked')){
	    						$('#agr'+interpark_code[j]+'_N').prop('checked', true).formSkin('addSkin');
	    					}
	    				}
	    				return;
	    			}
	    		}
	    	}
	    	
	    });	
		
	    $('[data-control="cj_gatherAgree"]').click(function (e) {
	        e.preventDefault();
	        var $this = $(this);
	        $handler = $('[data-handler-target="'+($this.attr('data-control'))+'"]');
	        if($handler.closest('li').hasClass('on') == true){
	        	cjone.util.scrollToElement($handler, {offset: 10});
	        }else{
	        	$handler.trigger('click');
	        	cjone.util.scrollToElement($handler, {offset: 10});
	        }
	    });	
	    $('[data-control="coop_gatherAgree"]').click(function (e) {
	        e.preventDefault();
	        var $this = $(this);
	        $handler = $('[data-handler-target="'+($this.attr('data-control'))+'"]');
	        if($handler.closest('li').hasClass('on') == true){
	        	cjone.util.scrollToElement($handler, {offset: 10});
	        }else{
	        	$handler.trigger('click');
	        	cjone.util.scrollToElement($handler, {offset: 10});
	        }	        
	    });	
	    
	    // 회원정보 Masking 처리 
	    if ( isMaskYn == "Y" ) {
	    	$("#mob_no_1").attr("disabled",true);
	    	$("#mob_no_2").attr("disabled",true);
	    	$("#mob_no_3").attr("disabled",true);
	    	$("#email_addr1").attr("disabled",true);
	    	$("#email_addr2").attr("disabled",true);
	    	$("#email_addr_opt").attr("disabled",true);
	    	$("#select_way").attr("disabled",true);
	    	$("#option02_val_1").attr("disabled",true);
	    	$("#option02_val_2").attr("disabled",true);
	    	$("#option02_val_3").attr("disabled",true);
	    	$("#option01_val_1").attr("disabled",true);
	    	$("#option01_val_2").attr("disabled",true);
	    	$("#option01_val_3").attr("disabled",true);
	    	$("#option01_val_4").attr("disabled",true);
	    	$("#option03_val_1").attr("disabled",true);
	    	$("#option03_val_2").attr("disabled",true);
	    	$("#option03_val_3").attr("disabled",true);
	    	$("#option03_val_4").attr("disabled",true);
	    	$("#option04_val_1").attr("disabled",true);
	    	$("#option05_val_1").attr("disabled",true);
	    	$(".select_wrap").attr("style","background-color:rgb(235,235,228)");
	    }
   });
   
    function omniTerms(typCd, coopcoCd, brndCd) {
        cjone.openModal('/cjmweb/layer/omni-terms.do?agr_typ_cd='+typCd+'&coopco_cd='+coopcoCd+'&brnd_cd='+brndCd);
    }
 
    function chkCertification() {
    	//alert("보호된 정보 확인 클릭");
    	if (isMaskYn == 'Y') {
	        if(!confirm('보호된 정보를 표시하기 위해 본인인증이 필요합니다.')) {
	            return false;
	        } else {
	        	cjone.openModal('/cjmweb/member/verify-account-mem-info.do');
	        }   
    	}
    }
    //cjMarketingAgree 제어 function
    function cjMarketingAgreeControl(isAgree){
    	if(!isAgree){
    		$('#mkt_rcv_all').prop('checked', 'true');
    		$('#mkt_rcv_all').trigger('click');
    		$('#cj_marketing_agree').show();
    		var listCount = $('#cj_agree input[type="checkbox"]').length;
    		
    		for(var i=0; i <= listCount ; i++){
    			$($('#cj_agree input[type="checkbox"]')[i]).attr("disabled", true).trigger('change');
    		}
    	}else{
    		$('#cj_marketing_agree').hide();
    		
    		var listCount = $('#cj_agree input[type="checkbox"]').length;
    		
    		for(var i=0; i <= listCount ; i++){
    			$($('#cj_agree input[type="checkbox"]')[i]).attr("disabled", false).trigger('change');
    		}
    		
    		$('#mkt_rcv_all').prop('checked', 'true').trigger('click');
    	}
    }
    
    //coopMarketingAgree 제어 function
    function coopMarketingAgreeControl(isAgree){
    	if(!isAgree){
    		$('#coop_marketing_agree').show();
    		
    		$('#coop_agree input[type="checkbox"]').prop("disabled", true).trigger('change');

    		// 위에 checkbox disabled에 대한 스킨만 입히는 로직이 없어서, 아래에서 체크된 애들을 다시 풀어주고 있다.
    		$('#email_all').prop('checked', false).trigger('change');
    		$('#sms_all').prop('checked', false).trigger('change');
    		$('#tm_all').prop('checked', false).trigger('change');
    		$('input[name^="all_rcv"]').prop('checked', false).trigger('change');
    	}else{
    		$('#coop_marketing_agree').hide();
    		$('#coop_agree input[type="checkbox"]').prop("disabled", false).trigger('change');
    		
    		$('#mkt_rcv_all2').prop('checked', 'true').trigger('click');
    	}
    } 
    
    
    
    // 오프라인 회원정보
    function setUserInfo() {
    	$('#email_addr_opt').val('gmail.com');

        // 이메일 직접입력일때
        if($('#email_addr2').val() != '' && ($('#email_addr_opt').val() != $('#email_addr2').val())) {
            $('#email_addr_opt').val('0');
        }

        $('#home_tel_no_1').val('');
		

        // 14세 미만은 패스
        if($('#under_14').val() != 'Y') {
            // 우편물 수령지
            if('' != '20') {
                $('#mail_rcvr_fg_1').attr('checked',true);
            } else {
                $('#mail_rcvr_fg_2').attr('checked',true);
            }

            $('#off_tel_no_1').val('');
			

            // 기타 기념일 구분
            $('#etc_memory_fg').val('');

            // 선호브랜드
            $('#prfr_brnd_cd').val('|');
        }
    }
    
    // 이메일 셋팅
    function setEmail(){
        // 직접입력일때
        if($('#email_addr_opt').val() == '0') {
            $('#email_addr2').attr('readonly', false);
        } else if ($('#email_addr_opt').val() != '') {
            $('#email_addr2').attr('readonly', true);
            $('#email_addr2').val($('#email_addr_opt').val());
        } else {
            $('#email_addr2').attr('readonly', true);
        }
    }
    
    // 이메일 직접입력일때 추가필드 초기화
    function chkEmail(){
        // 직접입력일때
        if($('#email_addr_opt').val() == '0') {
            $('#email_addr2').val('');
        }
    }
    
    // cabs lock 체크
    var msgStr  = "";
    function cabsCheck() {
        var id = this.id;
        if(checkCapsLock()) {
            msgStr = "Cabs lock가 켜져 있습니다.";
        } else {
            $("#msg_"+id).hide();
            msgStr  = "";
        }
    }
    
    // 패스워드 강도 체크  2012.1.5
    var pwStrength = false;
    function checkPassword() {
        pwStrength = false;
        var special_chars1 = "~!@#$%&*";

        var pw = new Password(document.getElementById('pwd').value, special_chars1);
        var verdict = pw.getStrength();

        var hint = msgStr;
        if (pw.lcase_count  == 0)   hint += "";
        if (pw.ucase_count  == 0)   hint += "";
        if (pw.num_count    == 0)   hint += "";
        if (pw.schar_count  == 0)   hint += "";
        if (pw.run_score    <= 1)   hint += "";

        alertMsg("alert_pwd_strength", "<em>"+verdict+" "+hint+"</em>");

        if(pw.strength >= 38){ pwStrength=true;}
    }
    
	function checkPasswordRule() {
		var parameter = {};
		/*var ki = {
				k : CryptoJS.enc.Hex.parse(transHEX('1234567890123456')),
				i : CryptoJS.enc.Hex.parse(transHEX('0987654321123456,'))
		};
		parameter.p = CryptoJS.AES.encrypt($('#pwd').val(), ki.k, {iv: ki.i});*/
		
		parameter.p = BASE64.encode($('#pwd').val());
    	parameter.m = BASE64.encode($('#mbr_id').val());   
        if($('#pwd').val() == ""){
            alert("msg_pwd", "비밀번호를 입력해 주세요.");
            return false;
        } else {
			$.ajax({
		        url     : '/cjmweb/common/check-pwd-rule.do',
		        dataType  : 'json',
		        data	: 'mbr_id='+parameter.m+'&pwd=' + parameter.p,
		        async   : false,
		        type    : 'POST',
		        error   : function(err) { alert(err); },
		        success   : function(response, statusText) {
		        	if (response.resultCode != "0000") {
		        		alertMsg("alert_pwd_strength","<em>"+response.result_msg+"</em>");
			        	return false;
		        	} else {
		        		return true;
		        	}
		        }
			});
		    
        }
	}
    
	function chkEmailDomain() {
        if($('#email_addr_opt').val() == '0' && $('#email_addr2').val()) {
			$.ajax({
		        url     : '/cjmweb/common/check-email-available.do',
		        dataType  : 'json',
		        data	: 'domain=' + $('#email_addr2').val(),
		        async   : false,
		        type    : 'POST',
		        error   : function(err) { alert(err); },
		        success   : function(response, statusText) {
		        	if (response.resultCode != '00000') {
			        	alertMsg('alert_email_addr', "메일 도메인주소를 정확하게 입력하셨나요? 다시 한 번 확인해 주세요.");
		        	} else $('#alert_email_addr').hide();
		        }
			});
        }
	}
    
    // 취소
    function goCancel() {
        if(!confirm('수정하신 정보는 저장되지 않습니다.\n수정을 취소하시겠습니까?')) return;
        location.href='https://www.cjone.com/cjmweb/main.do';
    }
    
    // 회원정보 수정
    function goSubmit() {
        if( beforeSubmit() )
        {
        	submitAction();
        }
    }
    
    function submitAction() {
    	userInfoChangeChk();
    	
    	// action url 처리
    	if($("#pwd").val()){
	    	$("#pwd_check").val('');
	    	$('#pwd').val(BASE64.encode($('#pwd').val()));
    	}
    	
    	var omniAgrChkList = '';
        $.each($('input[id^="omniagreeY"]:checked'), function() {
            omniAgrChkList += ',' + $(this).val();
        });
        $('#omni_agr_list').val(omniAgrChkList.substr(1));
        
		var params = $('#form1').serialize();
		
		$.ajax({
	 		url: "/cjmweb/member/member-modify.do",
	 		data: params,
	 		dataType: "json",
	 		type:"post",
	 		async: false,
	 		success: function(data) {
	 			var result = data.reqBox;
	 			if(result.coopco_cd != "undefined" && result.coopco_cd != null && result.coopco_cd != '' )$("#action_frm #ajax_coopco_cd").val(result.coopco_cd);
	 			if(result.brnd_cd != "undefined" && result.brnd_cd != null && result.brnd_cd != '' )$("#action_frm #ajax_brnd_cd").val(result.brnd_cd);
	 			if(result.mcht_no != "undefined" && result.mcht_no != null && result.mcht_no != '' )$("#action_frm #ajax_mcht_no").val(result.mcht_no);
	 			if(result.coop_return_url != "undefined" && result.coop_return_url != null && result.coop_return_url != '' )$("#action_frm #ajax_coop_return_url").val(result.coop_return_url);
	 			if(result.return_func != "undefined" && result.return_func != null && result.return_func != '' )$("#action_frm #ajax_return_func").val(result.return_func);
	 			if(result.sub_type != "undefined" && result.sub_type != null && result.sub_type != '' )$("#action_frm #ajax_sub_type").val(result.sub_type);
	 			if(result.ipin_use_yn != "undefined" && result.ipin_use_yn != null && result.ipin_use_yn != '' )$("#action_frm #ajax_ipin_use_yn").val(result.ipin_use_yn);
	 			if(result.hg_nm != "undefined" && result.hg_nm != null && result.hg_nm != '' )$("#action_frm #ajax_hg_nm").val(result.hg_nm);
	 			if(result.vno != "undefined" && result.vno != null && result.vno != '' )$("#action_frm #ajax_hg_nm").val(result.vno);
	 			if(result.ssn1 != "undefined" && result.ssn1 != null && result.ssn1 != '' )$("#action_frm #ajax_ssn1").val(result.ssn1);
	 			if(result.ssn2 != "undefined" && result.ssn2 != null && result.ssn2 != '' )$("#action_frm #ajax_ssn2").val(result.ssn2);
	 			if(result.ipin_ci != "undefined" && result.ipin_ci != null && result.ipin_ci != '' )$("#action_frm #ajax_ipin_ci").val(result.ipin_ci);
	 			if(result.ipin_di != "undefined" && result.ipin_di != null && result.ipin_di != '' )$("#action_frm #ajax_ipin_di").val(result.ipin_di);
	 			if(result.gender != "undefined" && result.gender != null && result.gender != '' )$("#action_frm #ajax_gender").val(result.gender);
	 			if(result.legl_birth_dy != "undefined" && result.legl_birth_dy != null && result.legl_birth_dy != '' )$("#action_frm #ajax_legl_birth_dy").val(result.legl_birth_dy);
	 			if(result.frgnr_yn != "undefined" && result.frgnr_yn != null && result.frgnr_yn != '' )$("#action_frm #ajax_frgnr_yn").val(result.frgnr_yn);
	 			if(result.under_14 != "undefined" && result.under_14 != null && result.under_14 != '' )$("#action_frm #ajax_under_14").val(result.under_14);
	 			if(result.id_validate != "undefined" && result.id_validate != null && result.id_validate != '' )$("#action_frm #ajax_id_validate").val(result.id_validate);
	 			if(result.agr_dy != "undefined" && result.agr_dy != null && result.agr_dy != '' )$("#action_frm #ajax_agr_dy").val(result.agr_dy);
	 			if(result.agr_tm != "undefined" && result.agr_tm != null && result.agr_tm != '' )$("#action_frm #ajax_agr_tm").val(result.agr_tm);
	 			if(result.agr_yn != "undefined" && result.agr_yn != null && result.agr_yn != '' )$("#action_frm #ajax_agr_yn").val(result.agr_yn);
	 			if(result.mod_rcvr_list != "undefined" && result.mod_rcvr_list != null && result.mod_rcvr_list != '' )$("#action_frm #ajax_mod_rcvr_list").val(result.mod_rcvr_list);
	 			
	 			var str_msg ="" + data.reqBox.str_msg;
 				if( str_msg != "undefined" && str_msg != null && str_msg != '' ){
 					str_msg = str_msg.replace(/\\n/g, '\n');
		    		$("#pwd").val('');
 					alert(str_msg);
 					window.location.reload(true);
 					return false;
 				}
 				
 				$("#action_frm").attr("action", "https://www.cjone.com/cjmweb/member/modification/finish.do");
 				$("#action_frm").submit();
	 		}, 
	 		error: function(xhr) {
	    		$("#pwd").val('');
				alert('xhr (' + xhr.status + ':'+ xhr.statusText + ':' + xhr.responseText + ')');
	 	    }
	 	});
    	
    }
    
    // 본인인증 callback function
    function certificationCallBack() {
    	submitAction();
    }    
    
    function beforeSubmit() {
        // 이메일 셋팅
        if($('#email_addr_opt').val() != "0"){
            $('#email_addr2').val($('#email_addr_opt').val());
        }

        if(!checkInput()) return false;

        if (isPwdChange && isMaskYn == 'Y') {
            if(!confirm('비밀번호 변경 시 본인인증이 필요하며, 본인인증 완료 후\n소중한 고객님의 정보는 CJ ONE 제휴 브랜드와 함께 변경 적용됩니다.\n이대로 입력하시겠습니까?')) {
                return false;
            } else {
            	cjone.openModal('/cjmweb/member/verify-account-passwd.do');
            }        	
        } else {
	        if(!confirm('소중한 고객님의 정보는 CJ ONE 제휴 브랜드와 함께 변경 적용됩니다.\n이대로 입력하시겠습니까?')) {
	            return false;
	        } else {
	        	if ( !isPwdChange ) {
		        	$('#pwd').val('');
		        	$('#pwd_check').val('');
	        	}
	            return true;
	        }
        }
    }
    
    function callAuthLayer(){
    	cjone.openModal('/cjmweb/member/verify-account-mem-info.do');
    }
    
    function certificationModCallBack() {
    	
    	if($(".ui_modal_ajax").length > 0) cjone.closeModal();
    	$("#auth_btn_area").attr("style","display:none;");
		var params = $('#form1').serialize();
		
		$.ajax({
	 		url: "/cjmweb/member/get-member-info.do",
	 		data: params,
	 		dataType: "json",
	 		type:"post",
	 		async: false,
	 		success: function(data) {
	 			
	 			if ( data.retCode == "success" ) {
	 				
		 			isMaskYn = "N";
					var user_map = data.user_map;
					tel2Be = user_map.mob_no_2;
					email1Be = user_map.email_addr1;
					$("#hg_nm_area").html(user_map.hg_nm);
		 			$("#mbr_id_area").html(user_map.mbr_id);
					$("#mob_no_2").val(user_map.mob_no_2);
					$("#mobileNoInfo").text($("#mob_no_1").val()+" - "+user_map.mob_no_2+" - "+$("#mob_no_3").val());
					$("#email_addr1").val(user_map.email_addr1);
					$("#birthday_default").hide();
					$("#birthday_select").show();
			    	$("#mob_no_1").attr("disabled",false);
			    	$("#mob_no_2").attr("disabled",false);
			    	$("#mob_no_3").attr("disabled",false);
			    	$("#email_addr1").attr("disabled",false);
			    	$("#email_addr2").attr("disabled",false);
			    	$("#email_addr_opt").attr("disabled",false);
			    	$("#select_way").attr("disabled",false);
			    	
			    	var receiptBox = data.receiptBox;
			    	var issuWayCd = receiptBox.issu_way_cd;
			    	
					var cardChk = receiptBox.issu_way_val_4;
					//01:현금영수증카드, 02:휴대전화, 03:신용카드, 04:현금영수증카드, 05:기타 
					if(issuWayCd == '01') { 
				        if(cardChk == "undefined" || cardChk == undefined) {
				        	issuWayCd = '04';
				        } else if(cardChk.length == 4) {
				        	issuWayCd = '03';
				        } else if(cardChk.length == 6) {
				        	issuWayCd = '01';
				        } else if(cardChk.length == 7) {
				        	issuWayCd = '05';
				        }
				    }
					
					for(var i=0; i < $("#select_way option").length; i++){
						if($($("#select_way option")[i]).attr('value') == 'option'+issuWayCd){
							$($("#select_way option")[i]).attr('selected', 'selected');
						}
					}
					$('[data-skin="form"] select#select_way').formSkin('addSkin');
					//----------
					
					selectOptDisp($("#select_way").val());
					receiptsBe = "option" + issuWayCd;
					switch($("#select_way").val()) {
						case "option02":
							$('#option02_val_1').val(receiptBox.issu_way_val_1);
							$('#option02_val_2').val(receiptBox.issu_way_val_2);
							$('#option02_val_3').val(receiptBox.issu_way_val_3);
							val1Be = receiptBox.issu_way_val_1;
							val2Be = receiptBox.issu_way_val_2;
							val3Be = receiptBox.issu_way_val_3;
							//changeText("02_val_3", "");
							break;
						case "option01":
							$('#option01_val_1').val(receiptBox.issu_way_val_1);
							$('#option01_val_2').val(receiptBox.issu_way_val_2);
							$('#option01_val_3').val(receiptBox.issu_way_val_3);
							$('#option01_val_4').val(receiptBox.issu_way_val_4);
							val1Be = receiptBox.issu_way_val_1;
							val2Be = receiptBox.issu_way_val_2;
							val3Be = receiptBox.issu_way_val_3;							
							val4Be = receiptBox.issu_way_val_4;							
							//changeText("01_val_4", "");
							break;
						case "option03":
							$('#option03_val_1').val(receiptBox.issu_way_val_1);
							$('#option03_val_2').val(receiptBox.issu_way_val_2);
							$('#option03_val_3').val(receiptBox.issu_way_val_3);
							$('#option03_val_4').val(receiptBox.issu_way_val_4);
							val1Be = receiptBox.issu_way_val_1;
							val2Be = receiptBox.issu_way_val_2;
							val3Be = receiptBox.issu_way_val_3;							
							val4Be = receiptBox.issu_way_val_4;									
							//changeText("03_val_4", "");
							break;
						case "option04":
							$('#option04_val_1').val(receiptBox.issu_way_val_1+""+receiptBox.issu_way_val_2+""+receiptBox.issu_way_val_3);
							val1Be = receiptBox.issu_way_val_1+""+receiptBox.issu_way_val_2+""+receiptBox.issu_way_val_3;
							//changeText("04_val_1", "");
							break;
						case "option05":
							$('#option05_val_1').val(receiptBox.issu_way_val_1+""+receiptBox.issu_way_val_2+""+receiptBox.issu_way_val_3+""+receiptBox.issu_way_val_4);
							val1Be = receiptBox.issu_way_val_1+""+receiptBox.issu_way_val_2+""+receiptBox.issu_way_val_3+""+receiptBox.issu_way_val_4;
							//changeText("05_val_1", "");
							break;
					}    	
			    	
			    	$("#option02_val_1").attr("disabled",false);
			    	$("#option02_val_2").attr("disabled",false);
			    	$("#option02_val_3").attr("disabled",false);
			    	$("#option01_val_1").attr("disabled",false);
			    	$("#option01_val_2").attr("disabled",false);
			    	$("#option01_val_3").attr("disabled",false);
			    	$("#option01_val_4").attr("disabled",false);
			    	$("#option03_val_1").attr("disabled",false);
			    	$("#option03_val_2").attr("disabled",false);
			    	$("#option03_val_3").attr("disabled",false);
			    	$("#option03_val_4").attr("disabled",false);
			    	$("#option04_val_1").attr("disabled",false);
			    	$("#option05_val_1").attr("disabled",false);	 	
			    	$(".select_wrap").attr("style","");
	 			} else {
	 				alert("잘못된 경로로 접근하셨습니다.");
	 				callAuthLayer();
	 			}
	 		}, 
	 		error: function(xhr) {
	 			alert("error");
	 	    }
	 	});    	
    }
    
    var tel2Be = "";
    var email1Be = "";
    var receiptsBe = "";
    var val1Be = "";
    var val2Be = "";
    var val3Be = "";
    var val4Be = "";
    // 160418 회원정보 변경체크
    function userInfoChangeChk(){
    	var infoChange = "N";
    	var emailAvcChange = 0;
    	var smsAvcChange = 0;
    	var telAvcChange = 0;
    	var birthChange = 0;
    	var telChange = 0;
    	var emailChange = 0;
    	var agreeYn = 0;
    	var receiptsChange = 0;
    	
    	// 이메일 수신 변경체크
    	var emailAvcBe = "N";
    	var emailAvcAft = $("input:checkbox[id='email_rcv_70000000']").is(":checked")?"Y":"N";
    	//console.log("email Avc change log before : " + emailAvcBe +"\tafter : "+ emailAvcAft);
    	if(emailAvcBe != emailAvcAft){
    		emailAvcChange = 1;
    		$("#chk_email_acv_change").val("Y"+emailAvcAft);
    	}
    	// sms 수신 변경체크
    	var smsAvcBe = "N";
    	var smsAvcAft = $("input:checkbox[id='sms_rcv_70000000']").is(":checked")?"Y":"N";
    	//console.log("sms Avc change log before : " + smsAvcBe +"\tafter : "+ smsAvcAft);
    	if(smsAvcBe != smsAvcAft){
    		smsAvcChange = 1;
    		$("#chk_sms_acv_change").val("Y"+smsAvcAft);
    	}
    	// 전화 수신 변경체크
    	var telAvcBe = "N";
    	var telAvcAft = $("input:checkbox[id='tm_rcv_70000000']").is(":checked")?"Y":"N";
    	//console.log("tel Avc avc change log before : " + telAvcBe +"\tafter : "+ telAvcAft);
    	if(telAvcBe != telAvcAft){
    		telAvcChange = 1;
    		$("#chk_tel_acv_change").val("Y"+telAvcAft);
    	}
    	
    	// 참여사 변경 체크
    	$('#coop_agree input:checkbox[id^="tm_rcv_"]').each(function(idx){
      		var checked = $(this).is(":checked")?"Y":"N";
      		if (tm_rcv_checkbox[idx] != checked) {
      			telAvcChange = 1;
      			$("#chk_tel_acv_change").val("Y"+checked);
      			return false;
      		}
       	});
      	
      	$('#coop_agree input:checkbox[id^="sms_rcv_"]').each(function(idx){
      		var checked = $(this).is(":checked")?"Y":"N";
      		if (sms_rcv_checkbox[idx] != checked) {
      			smsAvcChange = 1;
      			$("#chk_sms_acv_change").val("Y"+checked);
      			return false;
      		}
       	});
      	
      	$('#coop_agree input:checkbox[id^="email_rcv_"]').each(function(idx){
      		var checked = $(this).is(":checked")?"Y":"N";
      		if (email_rcv_checkbox[idx] != checked) {
      			emailAvcChange = 1;
      			$("#chk_email_acv_change").val("Y"+checked);
      			return false;
      		}
       	});
      	
    	// 생년월일 변경체크
    	var birthYYBe = "1993"*1;
    	var birthMMBe = "05"*1;
    	var birthDDBe = "15"*1;
    	var birthYYAft = $("#birth_yy option:selected").val()*1;
    	var birthMMAft = $("#birth_mm option:selected").val()*1;
    	var birthDDAft = $("#birth_dd option:selected").val()*1;
    	//console.log("birth change log before : " + birthYYBe+birthMMBe+birthDDBe +"\tafter : "+ birthYYAft+birthMMAft+birthDDAft);
    	if( (birthYYBe != birthYYAft) || (birthMMBe != birthMMAft) || (birthDDBe != birthDDAft) ){
    		birthChange = 1;
    		$("#chk_birth_change").val("Y");
    	}
    	if ( isMaskYn == 'N' ) {
	    	// 휴대전화번호 변경체크
	    	var tel1Be = "010";
	    	//tel2Be = "****";
	    	var tel3Be = "8785";
	    	var tel1Aft = $("#mob_no_1").val();
	    	var tel2Aft = $("#mob_no_2").val();
	    	var tel3Aft = $("#mob_no_3").val();
	    	//console.log("tel change log before : " + tel1Be+tel2Be+tel3Be +"\tafter : "+ tel1Aft+tel2Aft+tel3Aft);
	    	if( (tel1Be != tel1Aft) || (tel2Be != tel2Aft) || (tel3Be != tel3Aft) ){
	    		telChange = 1;
	    		$("#chk_tel_change").val("Y");
	    	}
	    	// 이메일 주소 변경체크
	    	//email1Be = "jy*******";
	    	var email2Be = "gmail.com";
	    	var email1Aft = $("#email_addr1").val();
	    	var email2Aft = $("#email_addr2").val();
	    	//console.log("email change log before : " + email1Be+email2Be+"\tafter : "+ email1Aft+email2Aft);
	    	if( (email1Be != email1Aft) || (email2Be != email2Aft)  ){
	    		emailChange = 1;
	    		$("#chk_email_change").val("Y");
	    	}
	    	
			//현금 영수증 발행 정보변경
				    	
	    	
    	}
    	
    	// 정보제공 동의 변경체크 
    	
			
			
			var lengthTmap = "2"*1;
			var tAgrBe =new Array(lengthTmap);
			var tAgrAft =new Array(lengthTmap);
			var i = 0;
			
				i = "0"*1;
				tAgrBe[i] = "N";
				tAgrAft[i] = $(':radio[name="agr38"]:checked').val();
				//console.log("tAgr change before : " + tAgrBe[i] + "\tafter : "+ tAgrAft[i]);
				if( tAgrBe[i] != tAgrAft[i] ){
					agreeYn = 1;
					$("#chk_info_agr_change").val("Y");
				}
			
				i = "1"*1;
				tAgrBe[i] = "N";
				tAgrAft[i] = $(':radio[name="agr39"]:checked').val();
				//console.log("tAgr change before : " + tAgrBe[i] + "\tafter : "+ tAgrAft[i]);
				if( tAgrBe[i] != tAgrAft[i] ){
					agreeYn = 1;
					$("#chk_info_agr_change").val("Y");
				}
			
		

		

		//console.log("after param emailAvcChange : " + emailAvcChange +"\tsmsAvcChange :" + smsAvcChange +"\ttelAvcChange : " +telAvcChange +"\tbirthChange : "+ birthChange + "\ttelChange : " +telChange +"\temailChange : "+emailChange +"\tagreeYn: " +agreeYn +"\treceiptsChange : "+receiptsChange);
		//alert("after param emailAvcChange : " + emailAvcChange +"\tsmsAvcChange :" + smsAvcChange +"\ttelAvcChange : " +telAvcChange +"\tbirthChange : "+ birthChange + "\ttelChange : " +telChange +"\temailChange : "+emailChange +"\tagreeYn: " +agreeYn +"\treceiptsChange : "+receiptsChange);
		if(emailAvcChange || smsAvcChange || telAvcChange || birthChange || telChange || emailChange || agreeYn || receiptsChange){
			infoChange = "Y";
		}
    	//console.log("infoChange : " + infoChange);
		$("#user_info_change").val(infoChange);
    	
    }
    // 160418 회원정보 변경체크 종료
    
	function alertMsg(objId, ErrMsg){
		$("#"+objId).html(ErrMsg);
		$("#"+objId).show();
	}
    
	function showErrorMsg(occur_loc, occur_msg){
		$("#msg_pwd").addClass("hide");
		$("#msg_pwd_chedk").addClass("hide");
		$("#alert_mob_no").addClass("hide");
		$("#alert_email_addr").addClass("hide");
		
		$("#mbr_id").removeClass("error");
		$("#pwd").removeClass("error");
		$("#pwd_chedk").removeClass("error");
		$("#mob_no_1").removeClass("error");
		$("#email_addr1").removeClass("error");
		
		$("#" + occur_loc).addClass("error");
		if(occur_msg.length < 1){
			$("#msg_" + occur_loc).removeClass("hide");
		} else {
			$("#msg_" + occur_msg)
			$("#msg_" + occur_msg).removeClass("hide");
		}
	}
    
    var flag = "invalid";
    function checkPasswordValid() {
    	flag ="invalid";
    	$('#pwd').val($('#pwd_check').val()); 
    	var parameter = {};
    	function transHEX(a){
    		
    		var result = "";
    		for(var i = 0; i < a.length; ++i){
    			var code = a.charCodeAt(i).toString(16);
    			result += ''+code;
    		}
    		return result;
    	}
    	/*
		var ki = {
			//k : CryptoJS.enc.Hex.parse(transHEX('qawsedrftgyhujik')),
			//i : CryptoJS.enc.Hex.parse(transHEX('azsxdcfvgbhnjmkm'))
			//k : CryptoJS.SHA256('1234567890abcdef'),
			k : CryptoJS.enc.Hex.parse(transHEX('1234567890abcdef')),
			i : CryptoJS.enc.Hex.parse(transHEX('1234567890abcdef'))
			//k : CryptoJS.enc.Hex.parse('01010101010101010101010101010101'),
			//i : CryptoJS.enc.Hex.parse('01010101010101010101010101010101')
		};
		parameter.p = CryptoJS.AES.encrypt($('#pwd').val(), ki.k, {iv: ki.i, mode: CryptoJS.mode.CBC, padding: CryptoJS.pad.Pkcs7});
		parameter.m = CryptoJS.AES.encrypt($('#mbr_id').val(), ki.k, {iv: ki.i, mode : CryptoJS.mode.CBC, padding: CryptoJS.pad.Pkcs7});
		//alert(parameter.p);
    	*/
    	
    	parameter.p = BASE64.encode($('#pwd').val());
    	parameter.m = BASE64.encode($('#mbr_id').val());    	
    	
    	$.ajax({
	        url     : '/cjmweb/common/check-pwd-rule.do',
	        dataType  : 'json',
	        data :  'mbr_id='+parameter.m+'&pwd=' + parameter.p,
	        async   : false,
	        type    : 'POST',
	        error   : function(err) {
	        	alertMsg("msg_pwd","<em>"+err+"</em>");
	        },
	        success   : function(response, statusText) {
	        	if (response.result_code != "0000") {
	        		alertMsg("msg_pwd","<em>"+response.result_msg+"</em>");
	        		$('#pwd').focus();
	        		flag = "invalid";
	        	} else {
	        		flag = "valid";
	        	}
	        }
		}); 
    }		
    
    // 회원수정 체크
    function checkInput() {
    	
    	if ( isMaskYn == 'Y') {
    		
        	if(isPwdChange){
                if($('#pwd').val().length < 6){
                	showErrorMsg("pwd", "");
                    $('#pwd').focus();
                    return false;
                }
        		$("#msg_pwd").hide();
        		
                if($('#pwd_check').val() == ""){
                	showErrorMsg("pwd_check", "");
                    $('#pwd_check').focus();
                    return false;
                }

                if( $("#pwd").val() != $("#pwd_check").val() ){
                	alertMsg('msg_pwd_check',"입력하신 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.")
                    $('#pwd_check').focus();
                    return false;
        	    } else{
        	        $("#msg_pwd_check").hide();
        	    }
                
    			checkPasswordValid();
    			if ( flag == "invalid") {
    				return false;
    			} 		
        	}
        	
    	    //cj one 마케팅약관을 동의하면 정보수신동의에서 최소1개이상 동의받아야 한다.
    	    /* if($('#coopco_cd').val() == '' || $('#coopco_cd').val() == null || $('#coopco_cd').val() == '7000'){
    	    	if($('#agr30_Y').is(':checked')){
    	            if($('#cj_agree input[type="checkbox"]').filter(':checked').size() <= 0){
    	                alert('마케팅정보 수신동의하면, CJ ONE의 쿠폰 이벤트 등의 다양한 혜택 정보를 알려줍니다.');
    	                $('#mkt_rcv_all').focus();
    	                return false;
    	            }
    	        }
    	    }  */
    	    
    	    return true;
        	
    	} else {
	    	
	    	if(isPwdChange){
	            if($('#pwd').val().length < 6){
	            	showErrorMsg("pwd", "");
	                $('#pwd').focus();
	                return false;
	            }
	    		$("#msg_pwd").hide();
	    		
	            if($('#pwd_check').val() == ""){
	            	showErrorMsg("pwd_check", "");
	                $('#pwd_check').focus();
	                return false;
	            }
	
	            if( $("#pwd").val() != $("#pwd_check").val() ){
	            	alertMsg('msg_pwd_check',"입력하신 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.")
	                $('#pwd_check').focus();
	                return false;
	    	    } else{
	    	        $("#msg_pwd_check").hide();
	    	    }
	            
				checkPasswordValid();
				if ( flag == "invalid") {
					return false;
				} 		
	    	}
	    	
	        if($('input[name=clndr_typ_cd]:checked').val() == "L"){
	        	alert("생년월일은 양력으로만 운영됩니다. 개인정보> 생년월일 영역에서 양력으로 변경 후 확인 버튼을 클릭해주세요.");
	            $('#clndr_typ_cd').focus();
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
			} else if (!$('#birth_dd').val() || $('#birth_dd').val() == "" ) {
	            alert("생년월일을 선택하세요.");
	            $('#birth_dd').focus();
	            return false;
			}
	
	        if($('#email_addr1').val() == ""){
	            alert("이메일 주소를 입력하세요.");
	            alertMsg('msg_email_addr', "이메일 주소를 입력하세요.");
	            $('#email_addr1').focus();
	            return false;
	        }
	
	        if($('#email_addr_opt').val() == ""){
	            alert("이메일 도메인을 선택 하세요.");
	            alertMsg('msg_email_addr', "이메일 도메인을 선택 하세요.");
	            $('#email_addr_opt').focus();
	            return false;
	        }
	
	        if($('#email_addr_opt').val() == "0" && $('#email_addr2').val() == ""){
	            alert("이메일 도메인 직접입력시 이메일 도메인을 입력하셔야 합니다.");
	            alertMsg('msg_email_addr', "이메일 도메인 직접입력시 이메일 도메인을 입력하셔야 합니다.");
	            $('#email_addr2').focus();
	            return false;
	        }
	
	        // 이메일 유효성 체크
	        if(!CheckMailFormat($('#email_addr1').val()+'@'+$('#email_addr2').val())) {
	            alert("유효하지 않는 이메일 주소 입니다.");
	            alertMsg('msg_email_addr', "유효하지 않는 이메일 주소 입니다.");
	            $('#email_addr2').focus();
	            return false;
	        }
	        $('#msg_email_addr').hide();
	
	        if(!setFocusMobileTel("1")||!setFocusMobileTel("2")||!setFocusMobileTel("3")) return false;
	        
	        
		    
		    //cj one 마케팅약관을 동의하면 정보수신동의에서 최소1개이상 동의받아야 한다.
		    /* if($('#coopco_cd').val() == '' || $('#coopco_cd').val() == null || $('#coopco_cd').val() == '7000'){
		    	if($('#agr30_Y').is(':checked')){
		            if($('#cj_agree input[type="checkbox"]').filter(':checked').size() <= 0){
		                alert('마케팅정보 수신동의하면, CJ ONE의 쿠폰 이벤트 등의 다양한 혜택 정보를 알려줍니다.');
		                $('#mkt_rcv_all').focus();
		                return false;
		            }
		        }
		    }  */
		    return true;
    	}
    }
    
    /* 2012.02.01 휴대전화번호가 양식에 틀리면 focus를 준다. */
    function setFocusMobileTel(id) {
        /* 휴대전화 검사 */
        var objMp   = $('#mob_no_'+id);
        var chkVal  = "";
        
        //현금영수증의 휴대전화 validation 체크
        if($("#select_way").val() == "option02") {
            var objMp   = $('#option02_val_'+id);
        }
        
        if(objMp.val() == "")   chkVal  = "*";
        if(objMp.val() != "" && ((id == "2" && objMp.val().length < 3) || (id == "3" && objMp.val().length < 4)))   chkVal  = "*";

        if(chkVal != "") {
        	alert('휴대 전화번호를  정확히 입력해 주세요.');
            alertMsg("alert_mob_no", "휴대 전화번호를  정확히 입력해 주세요.");
            objMp.focus();

            return false;
        }
        else return true;
    }
    
    function selectOptTest(optId){
        for(var i=0;i<6;i++) $('#option0'+i).hide();
        $('#'+optId).show();
    }
    
    function isValid_mbrId(str) {
        var patten = new Array();
        var msg = new Array();
        var p;
        var ret_msg = new Array();
        patten["not_eng_num"] =/^[a-z0-9]+$/g;  //a-z와 0-9 이외의 문자가 있는지 확인    
        msg["not_eng_num"] = "영문 소문자/숫자만 사용가능합니다.";
        patten["len"] = /^\w{6,12}$/;	// 문자열 길이
        msg["len"] = "6~12자리로 사용가능합니다.";
        patten["only_num"] = /[a-zA-Z]/;// 숫자만
        msg["only_num"] = "영문 소문자/숫자의 혼용으로 사용가능합니다(숫자만으로는 사용불가).";
    	 var retVal = checkSpace( str );
    	 if( retVal ) {
    		 alert("아이디는 빈 공간 없이 연속된 영문 소문자와 숫자만 사용할 수 있습니다.");
    		 alertMsg('msg_id', "아이디는 빈 공간 없이 연속된 영문 소문자와 숫자만 사용할 수 있습니다.");
    		 return false;
    	 }
    	var i=0;
    	for (x in patten)
    	{
    		p = eval(patten[x]);
    		if(!p.test(str))
    		{
    			ret_msg[i] = msg[x];
    			i++;
    		} 
    	}
    	if(i>0) {
    		alertMsg("alert_mbr_id", "영문자, 숫자 조합하여 6~12자리 아이디를 입력해 주세요.");
    		return false;
    	}
    	else return true;
    }
    
    // 아이디 체크 팝업창
    // 탈퇴회원 재가입은 안띄움
    function idCheck()  {
        if ( $('#id_validate').val() != 'Y' ) {
        	$('#mbr_id').val($('#mbr_id').val().replace(' ',''));
        	if ( isValid_mbrId($('#mbr_id').val()) ) {
                if ( $('#mbr_id').val().length > 5 ) {
    				$.ajax({
    			        url     : '/cjmweb/join/check-iddup.do',
    			        dataType  : 'json',
    			        data	: 'mbr_id='+$('#mbr_id').val()+'&ipin_ci='+encodeURIComponent($('#ipin_ci').val())+'&coopco_cd='+$('#coopco_cd').val()+'&brnd_cd='+$('#brnd_cd').val(),
    			        async   : false,
    					cache   : false,
    			        type    : 'POST',
    			        error   : function(err) { alert(err); },
    			        success   : function(resp) {
    			        	if (resp.resultCode == '00') $('#id_validate').val('Y');
    			        	else $('#id_validate').val('N');
    			        	alertMsg("alert_mbr_id", resp.resultMessage);
    			        }
    				});
                } else {
                	alertMsg("alert_mbr_id", "영문자, 숫자 조합하여 6~12자리 아이디를 입력해 주세요.");
                    $('#mbr_id').focus();
                }
        	}
        }
    }
    
    // 이름변경(개명)
	function changeName() {
		$('#sform').attr('target', '_self');
        $('#sform').attr('action', 'https://www.cjone.com/cjmweb/member/name-change.do');
        $('#sform').submit();
	}
    
	function agrBrndPopup(brnd_nm, oId) {
/* 		if ( $('#'+oId).is(':checked') && $('#agrbrnd_yn').val() != 'Y' && "" != "" ) {
    		alert(brnd_nm+" 선택 개인정보 수집 및 활용 동의에 거부한 회원님은 "+brnd_nm+" 마케팅 정보 수신을 받으실 수 없습니다. "+brnd_nm+" 선택 개인정보 수집 및 활용에 동의해 주세요.");
    		$('#'+oId).attr('checked', false);
    		chkBrndAgree();
		}			 */
	}
	
	//현금영수증 발행정보 세팅
    function init_receipt_info() {
    	var issuWayCd = '02';
		var cardChk = '';
		
		//01:현금영수증카드, 02:휴대전화, 03:신용카드, 04:현금영수증카드, 05:기타 
		if(issuWayCd == '01') { 
	        if(cardChk.length < 4) {
	        	issuWayCd = '04';
	        } else if(cardChk.length == 4) {
	        	issuWayCd = '03';
	        } else if(cardChk.length == 6) {
	        	issuWayCd = '01';
	        } else if(cardChk.length == 7) {
	        	issuWayCd = '05';
	        }
	    }
		
		//발행정보 selected 처리 - 20160810
		for(var i=0; i < $("#select_way option").length; i++){
			if($($("#select_way option")[i]).attr('value') == 'option'+issuWayCd){
				$($("#select_way option")[i]).attr('selected', 'selected');
			}
		}
		$('[data-skin="form"] select#select_way').formSkin('addSkin');
		//----------
		
		selectOptDisp($("#select_way").val());

		switch($("#select_way").val()) {
			case "option02":
				$('#option02_val_1').val('');
				$('#option02_val_2').val('');
				$('#option02_val_3').val('');
				//changeText("02_val_3", "");
				break;
			case "option01":
				$('#option01_val_1').val('');
				$('#option01_val_2').val('');
				$('#option01_val_3').val('');
				$('#option01_val_4').val('');
				//changeText("01_val_4", "");
				break;
			case "option03":
				$('#option03_val_1').val('');
				$('#option03_val_2').val('');
				$('#option03_val_3').val('');
				$('#option03_val_4').val('');
				//changeText("03_val_4", "");
				break;
			case "option04":
				$('#option04_val_1').val('');
				//changeText("04_val_1", "");
				break;
			case "option05":
				$('#option05_val_1').val('');
				//changeText("05_val_1", "");
				break;
		}
    }
	
    //현금영수증 선택 show/hide
  	function selectOptDisp(optId){
		for(var i=0;i<6;i++){
			$('#option0'+i).addClass('hide');
		}
		$('#'+optId).removeClass('hide');
	}
  
    //현금영수증 발행번호 뒷자리 Masking 처리
	function changeText(id, value){
		var length = value.length;
		var chgVal = "";
		for(var i=0; i< length; i++){
			chgVal += "*";
		}
		$('#option'+id).val(chgVal);
	}
    
	//input size 검사
	function chkInputDigit(id_list, length_list, receiptType) {
		var check_ok = true;
		
		for(var i=0; i < id_list.length; i++){
			var id = id_list[i];
			
			var $objMp = $('#'+id);
			var index = i+1;
			if($objMp.val().length != length_list[i]){
				check_ok = false;
				
				if(receiptType != ""){
					switch (receiptType) {
					case "option01":
						if($objMp.val().length <= length_list[i]){
							alert("현금영수증 발행을 위한 "+ index +"번째 현금영수증카드" + ' ' + '번호' + ' ' + length_list[i] + '자리를 입력해주세요.');
						}else{
							alert("현금영수증 발행을 위한 현금영수증카드" + ' ' + '번호를 정확히 입력해 주세요.');
						}
						$objMp.focus();		
						break;
					case "option02":
						if($objMp.val().length <= length_list[i]){
							alert("현금영수증 발행을 위한 "+ index +"번째 휴대전화" + ' ' + '번호' + ' ' + length_list[i] + '자리를 입력해주세요.');
						}else{
							alert("현금영수증 발행을 위한 휴대전화" + ' ' + '번호를 정확히 입력해 주세요.');
						}						
						$objMp.focus();
						break;
					case "option03":
						if($objMp.val().length <= length_list[i]){
							alert("현금영수증 발행을 위한 "+ index +"번째 신용카드" + ' ' + '번호' + ' ' + length_list[i] + '자리를 입력해주세요.');
						}else{
							alert("현금영수증 발행을 위한 신용카드" + ' ' + '번호를 정확히 입력해 주세요.');
						}							
						$objMp.focus();
						break;
					case "option04":
						if($objMp.val().length <= length_list[i]){
							alert("현금영수증 발행을 위한 "+ index +"번째 M현금영수증카드" + ' ' + '번호' + ' ' + length_list[i] + '자리를 입력해주세요.');
						}else{
							alert("현금영수증 발행을 위한 M현금영수증카드" + ' ' + '번호를 정확히 입력해 주세요.');
						}						
						$objMp.focus();
						break;
					case "option05":
						if($objMp.val().length <= length_list[i]){
							alert("현금영수증 발행을 위한 "+ index +"번째 카드" + ' ' + '번호' + ' ' + length_list[i] + '자리를 입력해주세요.');
						}else{
							alert("현금영수증 발행을 위한 카드" + ' ' + '번호를 정확히 입력해 주세요.');
						}						
						$objMp.focus();
						break;					
					default:
						alert('존재하지 않는 현금영수증 항목입니다.');
					}		
				}
				break;
				
			}else{
				check_ok = true;
			}
		}
		return check_ok;
	}	
	
	function placeHolder(){
		  $('[placeholder][type="password"]').each(function(){
	          $(this).wrap('<div style="position: relative;"></div>');
	          $('<span class="ie8Lbls">'+$(this).attr('placeholder')+'</span>').insertAfter($(this));
	          if($(this).val() == "") {$(this).parent().find('.ie8Lbls').show();}
	          $(this).attr('placeholder','');
	      }).on('focus',function(){
	          $(this).parent().find('.ie8Lbls').hide();
	      }).on('blur',function(){
	          if($(this).val() == "") {$(this).parent().find('.ie8Lbls').show();}
	      });
	      $(document).on('click','.ie8Lbls',function(){
	          $(this).parent().find('input').focus();
	      });
	}

	/* ie8 이하버전에서 placeholder 처리하기 위한 기능 */
    if (navigator.userAgent.indexOf('MSIE') > -1) {
    	placeHolder();
	}
	
	function date_change(){
		$('#birth_dd').empty();
		var dt = new Date($('#birth_yy').val(), $('#birth_mm').val(), 0);
	    $('#birth_dd').append($('<option value="">일</option>'));
		for(var i=1; i<=dt.getDate(); i++){
			if(i<10){
				if(i == 1){
					$('#birth_dd').append($('<option value="0'+i+'" selected="selected" >0' + i + '</option>'));
				}else{
					$('#birth_dd').append($('<option value="0'+i+'">0' + i + '</option>'));
				}
			}else{
				$('#birth_dd').append($('<option value="'+i+'">' + i + '</option>'));
			}
		}
		$('[data-skin="form"] select#birth_dd').formSkin('addSkin');
	}
	
	Kakao.init(KAKAO_API_KEY);
	function getKakaoToken(){
	    var token = '';
	    var noAgr = $("#noAgr").val();
	    var sns_first_yn = $("#sns_first_yn").val();
	    //카카오 로그인 연결 토글시 처음일 경우만 카카오 로그인 처리
	    if(sns_first_yn == "N"){
	        setKakaoToggle();
	        return false;
	    }
	 Kakao.Auth.login({
	     serviceTerms: noAgr,
	     success: function(authObj) {
	         $("#access_token").val( authObj.access_token );
	         setKakaoToggle();
	     },
	     fail: function(err) {
	         alert('카카오와 연결상태가 원활하지 않습니다.\n잠시 후 다시 시도해 주세요.');
	     }
	 });
	}
	
	//카카오 로그인 연결 ON/OFF 처리
	function setKakaoToggle(){
	    if($('#sns_first_yn').val() == "Y" && $('#access_token').val().trim() == ""){
	        alert('연결상태가 원활하지 않습니다.\n잠시 후 다시 시도해 주세요.');
	        return false;
	    }
	    
	    var sns_use_yn = "";
	    var sns_typ_cd = "";
	    if($('#kakaosync').prop("checked")){
	    	$('#kakaosync').val('Y');            
	        sns_use_yn = "Y";
	        sns_typ_cd = "10";
	    }else{
	    	$('#kakaosync').val('N');
	        sns_use_yn = "N";
	        sns_typ_cd = "10";	        
	    }
	    
	    $.ajax({
	        url : '/cjmweb/member/snsLoginYnUpdate.do',
	        dataType:'json',
	        async: false,
	        type: 'POST',
	        data: {	            
	            access_token : $("#access_token").val(),
	            sns_use_yn : sns_use_yn,
	            sns_typ_cd : sns_typ_cd,
	            mbr_no : "9990011335167"
	        },
	        success: function(data) {
	        	var resBox = data.retMap;
	        	
	            if(resBox.result == "0"){
	                $('#sns_first_yn').val(resBox.sns_first_yn);  //카카오 싱크 처음 여부값	                
	            } else {
	                alert(resBox.msg);
	                //오류 발생시 이전 설정값으로 되돌리기
	                if($('#kakaosync').prop("checked")){
	                    $('#kakaosync').prop("checked", false)
	                    sns_use_yn = "N";
	                } else {
	                    $('#kakaosync').prop("checked", true)
	                    sns_use_yn = "Y";
	                }
	            }
	        },
	        error: function(res){
	            alert('오류가 발생했습니다.\n잠시 후 다시 시도해 주세요.');
	        },
	        complete: function() {
	        	$('#access_token').val("");    //토큰값 삭제
            }
	    });
	}

	/* ie8 이하버전에서 placeholder 처리하기 위한 기능 */
	//$('input[type=text], input[type=password], textarea', $('#native-example')).placeholder();
	
	
	function callAuthLayerMobChgAuth(){
        cjone.openModal('/cjmweb/member/mobile-change-auth.do');
    }
	
	function mobChangeAuthCallBack(enc_data, enc_com){
        console.log("mobChangeAuthCallBack called");
        $("#mobChgForm>input[name=enc_data]").val(enc_data);
        $("#mobChgForm>input[name=enc_com]").val(enc_com);

	    cjone.closeModal();
	    
		actionAjax();
    }
    
    function actionAjax(){
        var param = $("#mobChgForm").serialize();
        $.ajax({
            url: '/cjmweb/member/mobile-change-process.do'
            ,dataType:'json'
            ,async: false
            ,type: 'POST'
            ,data: param
            ,success: function(data) {
            	if(data.reqBox.resultcode == "00000"){
            		if(data.reqBox.dup_mob_no_init_use != "Y"){
                        if(data.reqBox.hg_nm != "undefined" && data.reqBox.hg_nm != null && data.reqBox.hg_nm != '' )$("#mobChgForm>input[name=hg_nm]").val(data.reqBox.hg_nm);
                        if(data.reqBox.phone_no != "undefined" && data.reqBox.phone_no != null && data.reqBox.phone_no != '' )$("#mobChgForm>input[name=phone_no]").val(data.reqBox.phone_no);
                        if(data.reqBox.mob_no_1 != "undefined" && data.reqBox.mob_no_1 != null && data.reqBox.mob_no_1 != '' )$("#mobChgForm>input[name=mob_no_1]").val(data.reqBox.mob_no_1);
                        if(data.reqBox.mob_no_2 != "undefined" && data.reqBox.mob_no_2 != null && data.reqBox.mob_no_2 != '' )$("#mobChgForm>input[name=mob_no_2]").val(data.reqBox.mob_no_2);
                        if(data.reqBox.mob_no_3 != "undefined" && data.reqBox.mob_no_3 != null && data.reqBox.mob_no_3 != '' )$("#mobChgForm>input[name=mob_no_3]").val(data.reqBox.mob_no_3);
                        
                        $('#mobChgForm').attr('action', '/cjmweb'+data.reqBox.action_url);
                        $('#mobChgForm').submit();	
            		} else {
            			//휴대전화번호 초기화 고객이 휴대전화번호를 업데이트 한 경우, 회원정보수정 새로고침
            			window.location.reload();
            		}
            	} else {
                    if(data.reqBox.str_msg !='' && data.reqBox.str_msg != null &&  data.reqBox.str_msg != 'undefined'){
                        var str_msg ="" + data.reqBox.str_msg;
                        str_msg = str_msg.replace(/\\n/g, '\n');
                        alert(str_msg);
                    }
            	}
            }
        });
    }
</script>
	<style>
.ie8Lbls {
	font-size: 10px;
	position: absolute;
	top: 5px;
	left: 14px;
}
</style>
	<!--//script 영역-->


	<script type="text/javascript" data-import="true"
		src="/cjmweb/js/modules/placeholder.js"></script>
	<script type="text/javascript" data-import="true"
		src="/cjmweb/js/modules/formatter.js"></script>
</body>
</html>