<%@page import="basket.domain.BasketDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<%@ include file="/WEB-INF/inc/session_auth.jspf"%>
<%
	ArrayList<BasketDTO> basketList = (ArrayList) request.getAttribute("list");
	String quickyn = request.getParameter("quickyn");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<title>블랙올리브영 온라인몰</title>
<style>
	#basketOption{
	position: fixed;
top: 50%;
left: 65%;
-webkit-transform: translate(-50%, -50%);
-moz-transform: translate(-50%, -50%);
-ms-transform: translate(-50%, -50%);
-o-transform: translate(-50%, -50%);
transform: translate(-50%, -50%);

	}
	
</style>
</head>
<body>

	<div class="layer_pop_wrap w490" id="basketOption" style="z-index: 999; display: block;">

   

	<div class="layer_cont2">
	
	
		<h2 class="layer_title2">옵션선택</h2>
	

		<div class="prd_option_box cate_list_basket">

	
			<a href="javascript:;" class="sel_option" id="mainCartSelect">옵션을 선택해주세요</a>
			<ul class="sel_option_list selectItem new">
		
							
			
				<!--//오늘드림에서 option 을 보여주는 경우 오늘드림이 아닌 상품은 품절인것 처럼 선택하지 못하게 처리//-->
				<!--[START 오늘드림 옵션상품 개선:jwkim]-->
				
				<!-- 혜택 아이콘 li 분기 시작 -->
				<c:forEach items="${itemlist }" var="item">
				<li class=" okQuick">
				<!-- 혜택 아이콘 li 분기 끝 -->
				
				<!--[END 오늘드림 옵션상품 개선:jwkim]-->
					<a href="javascript:;" data-ref-goodsno="${item.pro_id }" data-ref-itemno="001" promkndcd="" buycnt="" promno="" getitemautoaddyn="" getitemgoodsno="" getitemitemno="">
			
						<div class="set">
						<!-- 오늘드림 아이콘 추가 시작 -->
						
							
							
								<span class="option_value">
									${item.pro_name }
									<span class="option_price">
										<span class="tx_num">${item.pro_price }원</span>
									</span>
								</span>
									
								<!-- 
									<span class="icon">
										<span class="icon_flag delivery">오늘드림</span>
									</span> -->
								
								
							
						
						<!-- 오늘드림 아이콘 추가 끝 -->
						</div>
					</a>
				</li>
			</c:forEach>
		
			</ul>
	

		</div>
		
		<div class="area2sButton">
			<button class="btnGray closepopup" "><span>취소</span></button>
			<button class="btnGreen" id="goodsSelCart"><span>장바구니</span></button>			
		</div>
		
		<button class="layer_close type2 closepopup">창 닫기</button>
	</div>
	
	<input type="hidden" name="cartGoodsNo" id="cartGoodsNo" value="">
	<input type="hidden" name="cartItemNo" id="cartItemNo" value="">
	<input type="hidden" name="paramGoodsNo" id="paramGoodsNo" value="A000000184129">
	<input type="hidden" name="paramItemNo" id="paramItemNo" value="001">
	<input type="hidden" name="dupYn" id="dupYn" value="Y">
	<input type="hidden" name="goodsSctCd" id="goodsSctCd" value="">
	<input type="hidden" name="promKndCd" id="promKndCd" value="">
	<input type="hidden" name="promNo" id="promNo" value="">
	<input type="hidden" name="buyCnt" id="buyCnt" value="">
	<input type="hidden" name="getItemAutoAddYn" id="getItemAutoAddYn" value="">
	<input type="hidden" name="getItemGoodsNo" id="getItemGoodsNo" value="">
	<input type="hidden" name="getItemItemNo" id="getItemItemNo" value="">
	<input type="hidden" name="pkgGoodsYn" id="pkgGoodsYn" value="N">
	<!-- 오늘드림 전문관 리스트에서 오늘드림 장바구니에 넣기위해 값 추가 -->
	<input type="hidden" name="quickYn" id="quickYn" value="">
	<!-- 레코벨 상품 장바구니 담기 구분을 위해 추가 -->
	<input type="hidden" name="regCartRecoBellGoodsInCartYn" id="regCartRecoBellGoodsInCartYn" value="">
	<input type="hidden" name="ordQty" id="ordQty" value="0">
	<input type="hidden" name="recoRcCode" id="recoRcCode" value="">
	<input type="hidden" name="ordPsbMinQty" id="ordPsbMinQty" value="1"> <!-- 최수구매가능수량 -->
	
</div>

 <!-- 장바구니 추가 버튼클릭시  -->
<div class="layer_pop_wrap w490 test" id="basketOption" style="z-index: 999; display: none;" data-quick-yn="N">


	<div class="layer_cont2">
		<h2 class="layer_title2">선택완료</h2>
		<div class="basket_add_txt">장바구니에 추가되었습니다.</div>
		
		
			
				<div class="area2sButton">
					<button class="btnGreen closepopup"><span>쇼핑 계속하기</span></button>
					<button class="btnGray basket"><span>장바구니 확인</span></button>						
				</div>
				<button class="layer_close type2 closepopup">창 닫기</button>
			
			
		
	</div>	
	
</div>

		
<script>
$(function(){
	$("#mainCartSelect").click(function(){
		$(".prd_option_box.cate_list_basket").addClass("open");
	})
	
	$(".okQuick a").click(function(event){
		event.preventDefault();
		 var optionValue = $(this).find(".option_value").html();
		 var productid = $(this).attr("data-ref-goodsno");
		 $("#paramGoodsNo").attr("value", productid);
	      $("#mainCartSelect").html(optionValue);
	      $(".prd_option_box.cate_list_basket").removeClass("open");
	})
	
	$(".closepopup").click(function(){
		 $(".modal-backdrop").remove();
		$("#displItem").empty();
	})
	
	$("#goodsSelCart").click(function(){
		
		let productID = $("input#paramGoodsNo").attr("value");
		alert(productID);
		
		let data = {
				productID: productID
			}
		
		$.ajax({
			
			url: "<%=contextPath%>/olive/itemadd.do",
			data:data,
			cache: false,
			success:function( response ) {
				$("#basketOption").css("display","none");
				$(".layer_pop_wrap.w490.test").css("display","block");
	          }
	        , error		: function() {
	            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
	        }
		})
		
	})
	
	
	$(".btnGray.basket").click(function(){
		window.location.href = "<%=contextPath%>/olive/basket.do";
	})
	
	
})
</script>
</body>
</html>