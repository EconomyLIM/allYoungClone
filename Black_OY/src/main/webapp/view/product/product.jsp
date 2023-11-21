<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="productDetail.domain.ProductInfo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/inc/include.jspf"%>
<%@ include file="/WEB-INF/inc/session_auth.jspf"%>
<%
String productId = request.getParameter("goodsNo"); // 상품 식별자

// 현재 상품 페이지에 대한 세션 Set을 가져옴
Set<String> usersOnPage = (Set<String>) application.getAttribute(productId);

// 새로운 사용자 세션 ID를 현재 페이지 세션 Set에 추가
HttpSession session2 = request.getSession();
if (usersOnPage == null) {
	usersOnPage = new HashSet<>();
	application.setAttribute(productId, usersOnPage);
}
usersOnPage.add(session2.getId());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- <script src="/Black_OY/js/head.js"></script> -->
<link rel="stylesheet" href="/Black_OY/css/style.css">
<title>블랙올리브영 온라인몰</title>

<!-- <script text="text/javascript" src="/Black_OY/js/slick.min.js"></script> -->

<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script type="text/javascript"
	src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

</head>
<body>
	<script>
$(function () {
	// console.log(window.location.href);
	$(".loc_history>li").mouseover(function () {
		$(this).addClass("active");
		$("history_cate_box").css("display","block");
	})
	$(".loc_history>li").mouseleave(function () {
		$(".loc_history>li").removeClass("active");
	})
	/*  */
	$('#btnSaleOpen').on('click', function() {
		if ($(this).hasClass('is-active')) {
	        // 이미 클래스가 추가되어 있으면 제거
	        $(this).removeClass('is-active');
	        $('#saleLayer').css('display','none');
	    } else {
	        // 클래스가 추가되어 있지 않으면 추가
	        $(this).addClass('is-active');
	        $('#saleLayer').css('display','block');
	    }
		
	})
	/*  */
	$('#btnSaleClose').on('click', function () {
		$(this).parent().css('display','none');
		$('#btnSaleOpen').removeClass('is-active');
	})
	/*  */
	/	
	
	
	
	/* */
	
	$('.btnCalc.plus').on('click', function(event) {
		var totalPrice = $('#totalPrcTxt').text();
		totalPrice = parseInt(totalPrice.replace(/,/g, ''), 10);
		
		event.preventDefault();
		var inputElement = $(this).prev();
		var currentValue = parseInt(inputElement.val());
		if (currentValue < 10) {
	        inputElement.val(currentValue + 1);
	        
	        var div = $(this).closest('.prd_cnt_box');
	        var price = $(div).find('.option_price > .tx_num').text();
	        price = parseInt(price.replace(/,/g, ''), 10);
	        if (isNaN(price)) {
	        	price = ${pLists[0].afterPrice};	
			}
	        
	        totalPrice += price*1;
	        
	        console.log(totalPrice)
	        $('.tx_cont > .tx_num').text(totalPrice);
	    } else {
	        alert("총 10개까지만 구매할 수 있습니다.");
	        // 이벤트를 취소하여 값이 변경되지 않도록 함
	        event.preventDefault();
	    }
	})
		/* */
	$('.btnCalc.minus').on('click', function(event) {
		
		var totalPrice = $('#totalPrcTxt').text();
		totalPrice = parseInt(totalPrice.replace(/,/g, ''), 10);
		event.preventDefault();
		var inputElement =  $(this).next();
	    var currentValue = parseInt(inputElement.val());
	    if (currentValue > 1) {
	        inputElement.val(currentValue - 1);
	        var div = $(this).closest('.prd_cnt_box');
	        var price = $(div).find('.option_price > .tx_num').text();
	        price = parseInt(price.replace(/,/g, ''), 10);
	        
	        if (isNaN(price)) {
	        	price = ${pLists[0].afterPrice};	
			}
	        
	        totalPrice -= price*1;
	        
			
	        $('.tx_cont > .tx_num').text(totalPrice);
	    } else {
	        alert("1개 이상부터 구매할 수 있는 상품입니다.");
	        // 이벤트를 취소하여 값이 변경되지 않도록 함
	        event.preventDefault();
	    }
	})
	/* */

}) ; 

// 팝업창 띄우는 함수들
function popUp() {
	event.preventDefault();
	
    var topPosition = Math.max(0, (window.innerHeight - $('#layer_pop_wrap').offsetHeight) / 2);
    var leftPosition = Math.max(0, (window.innerWidth - $('#layer_pop_wrap').offsetWidth) / 2);
    
    
	$('#layer_pop_wrap').css({
		top: topPosition + 'px',
        left: leftPosition + 'px',
		display: 'block'});
	
	$('.dimm').css('display','block');

} // popUp

function popDown() {
	event.preventDefault();
	$('#layer_pop_wrap').css('display','none');
	$('.dimm').css('display','none');
} // popDown

function todayDeliveryPop() {
	event.preventDefault();
	
	 var topPosition = Math.max(0, (window.innerHeight - $('#infoTodayDeliveryQuestion').offsetHeight) / 2);
	 var leftPosition = Math.max(0, (window.innerWidth - $('#infoTodayDeliveryQuestion').offsetWidth) / 2);
	    
	$('#infoTodayDeliveryQuestion').css({
		top: topPosition + 'px',
        left: leftPosition + 'px',
		display: 'block'});
	$('.dimm').css('display','block');
} // todayDeliveryPop

function todayDeliveryPopDown() {
	event.preventDefault();
	$('#infoTodayDeliveryQuestion').css('display','none');
	$('.dimm').css('display','none');
} // todayDeliveryPopDown

function cjone_pointPop() {
	event.preventDefault();
	
	 var topPosition = Math.max(0, (window.innerHeight - $('#layerWrap534').offsetHeight) / 2);
	 var leftPosition = Math.max(0, (window.innerWidth - $('#layerWrap534').offsetWidth) / 2);
	 
	 $('#layerWrap534').css({
			top: topPosition + 'px',
	        left: leftPosition + 'px',
			display: 'block'});
		$('.dimm').css('display','block');
	
} // cjone_pointPop

function cjone_pointPopDown() {
	
	event.preventDefault();
	
	$('#layerWrap534').css('display','none');
	$('.dimm').css('display','none');
	
} // cjone_pointPopDown

function card_infoPop() {
	event.preventDefault();
	
	var topPosition = Math.max(0, (window.innerHeight - $('#layer_pop_wrap2').offsetHeight) / 2);
	 var leftPosition = Math.max(0, (window.innerWidth - $('#layer_pop_wrap2').offsetWidth) / 2);
	 
	 $('#layer_pop_wrap2').css({
			top: topPosition + 'px',
	        left: leftPosition + 'px',
			display: 'block'});
		$('.dimm').css('display','block');
	
} // card_infoPop

function card_infoPopDown() {
	event.preventDefault();
	
	$('#layer_pop_wrap2').css('display','none');
	$('.dimm').css('display','none');
	
} // card_infoPopDown

/* ----------------------------*/

function Test2() {
	if ($('#buy_option_box').hasClass('open')) {
		 $('#buy_option_box').removeClass('open');
	} else {
		 $('#buy_option_box').addClass('open');
	}
} // Test2

</script>

	<script>
// 상품 리스트 불러오는 함수
	$(function() {
		$('#buyOpt').on('click', function() {
			if ($('#buy_option_box').hasClass('open')) {
				 $('#buy_option_box').removeClass('open');
			} else {
				 $('#buy_option_box').addClass('open');
				 $('.option_add_area.pkg_goods_n').css('display','block');
			}
		})
		
		$('.option_price > a${proId}').on('click', function(event) {
	        event.preventDefault();
	        var proId = '${proId}';
	        deleteDiv(event, proId);
		}) 
		
		$('#LinkId${proId}').on('click', function(event) {
	        event.preventDefault();
	        var proId = '${proId}';
	        displayDiv(event, proId);
	    });
		
		/* */
		
		$('.btn_opt_del').on('click', function(event) {
			 event.preventDefault(); 
			 
			 var totalPrice = $('#totalPrcTxt').text();
			 totalPrice = parseInt(totalPrice.replace(/,/g, ''), 10);
			 
			var price = $(this).closest('.prd_cnt_box').find('.option_price .tx_num').text();
			 price = parseInt(price.replace(/,/g, ''), 10);
			
			var cnt = $(this).closest('.prd_cnt_box').find('.tx_num').val();
			
			var sumPrice = price * cnt
			
			totalPrice -= sumPrice*1;
	        
	        $('.tx_cont > .tx_num').text(totalPrice);
			
			$(this).closest('.prd_cnt_box').find('.tx_num').val(0);
	        $(this).closest('.prd_cnt_box').css('display','none');
	    });
		
	}); // function

	function displayDiv(Id) {
		 event.preventDefault();

		 var totalPrice = $('#totalPrcTxt').text();
		 totalPrice = parseInt(totalPrice.replace(/,/g, ''), 10);
		 
		 
		 $('div #'+Id).css('display', 'block');
		 
		 var inputElement =  $('#input_'+Id);
		 var currentValue = parseInt(inputElement.val());
		    if (currentValue < 10) {
		    	console.log('+버튼이 아닌 선택으로 1증가 ');
		        inputElement.val(currentValue + 1);
		        
		        // 총합 금액 업데이트문 
		        var div = $('.prd_cnt_box');
		        var price = $('div #'+ Id +' .cont_area .option_price > .tx_num').text();
		        price = parseInt(price.replace(/,/g, ''), 10);
		        totalPrice += price*1;
		        
		        $('.tx_cont > .tx_num').text(totalPrice);
		       
		    } else {
		        alert("총 10개까지만 구매할 수 있습니다.");
		        // 이벤트를 취소하여 값이 변경되지 않도록 함
		        event.preventDefault();
		    } // if else
		
	} // displayDiv
	
	function deleteDiv(event, Id) {
		alert('123');
		 var totalPrice = $('#totalPrcTxt').text();
		 totalPrice = parseInt(totalPrice.replace(/,/g, ''), 10);
		 alert(totalPrice);
		 $('div #'+Id).css('display', 'none');
		
		 var inputElement =  $('#input_'+Id);
		 var currentValue = parseInt(inputElement.val());

		 console.log('닫기버튼 누름');
		 inputElement.val(currentValue + 1);
		        
		        // 총합 금액 업데이트문 
		 var div = $('.prd_cnt_box');
		 var price = $('div #'+ Id +' .cont_area .option_price > .tx_num').text();
		 price = parseInt(price.replace(/,/g, ''), 10);
		  totalPrice -= price*inputElement;
		        
		 $('.tx_cont > .tx_num').text(totalPrice);
		 $('#input_'+Id).val(0);
		 
	} // displayDiv

</script>
	<script>
$(function() {
	$('#deliveDay').on('click', function() {
		$('.option_add_area.pkg_goods_n').css('display','none');
		$('.prd_cnt_box.no_prom').css('display','none');
		$('.option_cnt_box input').val(0);
		$('.tx_cont > .tx_num').text(0);
	})// deliveDay
}) // function

</script>

	<script>
// 리뷰 스크립트
 $(function(){
	 
	 $(".prd_option_box.box_select").click(function(){
		 $(this).addClass("open")
	 })
	 
	 $("#gdasSort li a").on("click",function(){
		 $("#gdasSort li").removeClass("on")
		 $(this).closest("li").addClass("on")
		 let type = $(this).attr("data-value")
		 let pro_id = $(".prd_option_box.box_select > a").attr("id");
		 let displ = "<%=request.getParameter("goodsNo")%>"
		 //alert(displ)
		 
		 let data = {
			 pro_id: pro_id,
			 type: type,
			 displ: displ
		    };
		 $.ajax({
				url: "<%=contextPath%>/olive/reviewajax.do",
				data:data,
				cache: false,
				success:function( response ) {
		              $("#gdasList").empty();
		              $("#gdasList").append( response );
		          }
		        , error		: function() {
		            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
		        }
			})
			
			
			$.ajax({
				url: "<%=contextPath%>/olive/reviewpage.do",
				data:data,
				cache: false,
				success:function( response ) {
		              $(".pageing").empty();
		              $(".pageing").append( response );
			           		              
		          }
		        , error		: function() {
		            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
		        }
			})
		 
	 })
	 
	 $(".sel_option_list.scrbar  a.item").on("click",function(){
		 let pro_id = $(this).find("input[name=gdasItemNo]").val()
		 //let type = $("#gdasSort li.on > a").attr("data-value")
		 let displ = "<%=request.getParameter("goodsNo")%>"
		 let txt = $(this).attr("title");
		 let data = {
			 pro_id: pro_id,
			 
			 displ: displ
		    };
		 $.ajax({
				url: "<%=contextPath%>/olive/reviewajax.do",
				data:data,
				cache: false,
				success:function( response ) {
					$(".prd_option_box.box_select > a").attr("id",pro_id)
					$(".prd_option_box.box_select > a > span.txt").text(txt);
					$(".prd_option_box.box_select").removeClass("open");
		              $("#gdasList").empty();
		              $("#gdasList").append( response );
		          }
		        , error		: function() {
		            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
		        }
			})
			
			
			
			$.ajax({
				url: "<%=contextPath%>/olive/reviewScoreajax.do",
				data:data,
				cache: false,
				success:function( response ) {
		              $("#ajax").empty();
		              $("#ajax").append( response );
		          }
		        , error		: function() {
		            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
		        }
			})
			
			$.ajax({
				url: "<%=contextPath%>/olive/reviewpage.do",
				data:data,
				cache: false,
				success:function( response ) {
		              $(".pageing").empty();
		              $(".pageing").append( response );
			           		              
		          }
		        , error		: function() {
		            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
		        }
			})
	 })
	 
	 $(".pageing a").on("click",function(){
		 event.preventDefault(); // 앵커의 기본 동작을 막습니다.
		
		 let currentpage = $(this).text()
		 let pro_id = $(".prd_option_box.box_select > a").attr("id");
		 let displ = "<%=request.getParameter("goodsNo")%>"
		 let type = $("#gdasSort li.on > a").attr("data-value")
		 //alert(currentpage+"/"+pro_id+"/"+displ+"/"+type)
		 
		 let data = {
			 currentpage: currentpage,
			 pro_id: pro_id,
			 type: type,
			 displ: displ
		    };
		 
		 $.ajax({
				url: "<%=contextPath%>/olive/reviewajax.do",
				data:data,
				cache: false,
				success:function( response ) {
		              $("#gdasList").empty();
		              $("#gdasList").append( response );
			           		              
		          }
		        , error		: function() {
		            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
		        }
			})
			
			$.ajax({
				url: "<%=contextPath%>/olive/reviewpage.do",
				data:data,
				cache: false,
				success:function( response ) {
		              $(".pageing").empty();
		              $(".pageing").append( response );
			           		              
		          }
		        , error		: function() {
		            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
		        }
			})
			
		 
	 })
	 
	 
	 
 })
 
 
</script>

	<script>
	$(function() {
		// 주문하기 버튼 클릭 처리
		$("#cartBtn").on("click", function() {
			let flag = false;
			
			/*
				패키지가 여러개가 아닐 때는 처리 해야겠디.
			*/
			
			let params = ""; 
			
			let sm = $(".option_add_area.pkg_goods_n").length; // 상품이 싱글인지 다중인지
			
			if(sm == 1) {
				let products = $(".option_add_area > div");
				
				for (var i = 0; i < products.length; i++) {
					if($(products[i]).css("display") == "block") {
						let product_id = $(products[i]).attr("id");
						let cnt = $("#input_" + product_id).val();
						params += "products=" + product_id + "-" + cnt + "&" ;
						flag = true;
					}
				}
				
				params = params.substr(0, params.length-1);
				
				if(!flag) {
					alert("상품을 선택해주세요.");
					return;
				}
			} else {
				params = "products=" + $("#pro_id").val() + "-" + $("#cartCnt_A000000175060001").val();
			}
			
			if($("#deliveDay").prop("checked")) {
				params += "&quickYN=Y";
			} else {
				params += "&quickYN=N";
			}
			
			location.href = "<%=contextPath%>/olive/orderForm.do?" + params + "&click=바로구매";
		});
		
		// 선물하기 눌렀을 때
		$(".btnGift.goods_gift").on("click", function() {
			let flag = false;
			
			/*
				패키지가 여러개가 아닐 때는 처리 해야겠디.
			*/
			
			let params = ""; 
			
			let sm = $(".option_add_area.pkg_goods_n").length; // 상품이 싱글인지 다중인지
			
			if(sm == 1) {
				let products = $(".option_add_area > div");
				
				for (var i = 0; i < products.length; i++) {
					if($(products[i]).css("display") == "block") {
						let product_id = $(products[i]).attr("id");
						let cnt = $("#input_" + product_id).val();
						params += "products=" + product_id + "-" + cnt + "&" ;
						flag = true;
					}
				}
				
				params = params.substr(0, params.length-1);
				
				if(!flag) {
					alert("상품을 선택해주세요.");
					return;
				}
			} else {
				params = "products=" + $("#pro_id").val() + "-" + $("#cartCnt_A000000175060001").val();
			}
			
			if($("#deliveDay").prop("checked")) {
				params += "&quickYN=Y";
			} else {
				params += "&quickYN=N";
			}
			
			location.href = "<%=contextPath%>/olive/orderForm.do?" + params + "&click=선물하기";
		})
	});
</script>

	<script>
// 장바구니 추가
	$(function() {
		// 장바구니 추가 버튼 클릭 처리
		$("#btnBasket").on("click", function() {
			let flag = false;
			/*
				패키지가 여러개가 아닐 때는 처리 해야겠디.
			*/

			let params = ""; 
			let products = $(".option_add_area > div");
			
			for (var i = 0; i < products.length; i++) {
				if($(products[i]).css("display") == "block") {
					let product_id = $(products[i]).attr("id");
					let cnt = $("#input_" + product_id).val();
					params += "products=" + product_id + "-" + cnt + "&" ;
					flag = true;
				}
			}
			
			params = params.substr(0, params.length-1);
			
			if(!flag) {
				alert("상품을 선택해주세요.");
				return;
			}
			
			if($("#deliveDay").prop("checked")) {
				params += "&quickYN=Y";
			} else {
				params += "&quickYN=N";
			}
			let url = window.location.href;
			params += '&url='+url;
			$.ajax({
				url:"<%=contextPath%>/olive/basketitemadd.do",
				method:"GET",
				beforeSend: function(xmlHttpRequest) {
			        xmlHttpRequest.setRequestHeader("AJAX", "true");
			    },
				cache:false,
				dataType : 'text',
				data:params,
				success: function (result) {
					$("#basketOption").show(); 		
			         
				} , error		: function(xhr, textStatus, error) {
		        	if (xhr.status == 500) {
		                alert("Login Session Expired");
		                window.location.href = "/Black_OY/view/logon/logon.jsp";
		            }else {
		            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
		            }
		        }
	            
			}) // ajax
			
		});
		
		$(".btnlG01.pdzero.w130").click(function(){
			$("#basketOption").hide();
		})
		$(".ButtonClose").click(function(){
			$("#basketOption").hide();
		})
		$("#basketgo").click(function(){
			location.href = "<%=contextPath%>/olive/basket.do";
		})
	});
</script>

	<script>
// 브랜드 좋아요 체크 처리(ajax)

$(function () {
	
	 checkLikeStatus();
	 checkLikeItemStatus();

     // 좋아요 버튼 클릭 이벤트 처리
     $("#brnd_wish").click(function () {
    	 /* alert('brnd_wish'); */
         toggleLikeStatus();
     });
     // 상품 좋아요 클릭 이벤트
     $(".btnZzim.goods_wish").click(function () {
    	 /* alert('brnd_wish'); */
         toggleLikeItemStatus();
     });
     	
}) // function

	function checkLikeStatus() {
	
		$.ajax({
			url:"<%=contextPath%>/GetDBLAjax",
			method:"GET",
			cache:false,
			dataType : 'text',
			data:{brandId:"${detailBrandDTO.brandId}"},
			success: function (result) {
				console.log(result);
				if (result === "true") {
					 	
		               $("#brnd_wish").addClass("on");
		         } else {
		               $("#brnd_wish").removeClass("on");
		           }
			} , error : function (data, textStatus) {
				console.log('error');
            } // success , error
            
		}) // ajax
	} // checkLikeStatus
	
    function toggleLikeStatus() {
    let url = window.location.href;
	$.ajax({
		url: "<%=contextPath%>/GetDBLAjax",
		method:"POST",
		cache:false,
		dataType : 'text',
		data:{brandId:"${detailBrandDTO.brandId}"
			, url: url},
		beforeSend: function(xmlHttpRequest) {
		        xmlHttpRequest.setRequestHeader("AJAX", "true");
		    },
		success: function (result) {

			if (result === "true" ) {
				console.log('toggleLikeStatus:');
				$("#brandOn").show();
				$("#brandOn").fadeOut(2000);   
				
                $("#brnd_wish").addClass("on");
            } else {
            	console.log('toggleLikeStatus: ' + result);
            	$("#brandOff").show();
            	$("#brandOff").fadeOut(2000);
                $("#brnd_wish").removeClass("on");
            } //if
		}, error : function (xhr, data, textStatus) {
			if (xhr.status == 500) {
                alert("로그인후 사용 가능합니다.");
                window.location.href = "/Black_OY/view/logon/logon.jsp";
            }else {
            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
            }
        } // success , error
	}) // ajax
	} // toggleLikeStatus
	
	
	// 상품 좋아요
	
	function checkLikeItemStatus() {
		let proid = "<%=request.getParameter("goodsNo")%>"
		let url = window.location.href
		let data = {
				proid: proid,
				url: url
		}
		$.ajax({
			url:"<%=contextPath%>/GetDILAjax",
			method:"GET",
			cache:false,
			data: data,
			success: function (result) {
				console.log(result);
				if (result === "true") {
					 	
		               $(".btnZzim.goods_wish").addClass("zzimOn");
		         } else {
		               $(".btnZzim.goods_wish").removeClass("zzimOn");
		           }
			} , error : function (data, textStatus) {
				console.log('error');
            } // success , error
            
		}) // ajax
	} // checkLikeItemStatus
	
	function toggleLikeItemStatus() {
		let url = window.location.href;
		$.ajax({
			url: "<%=contextPath%>/GetDILAjax",
			method:"POST",
			cache:false,
			dataType : 'text',
			data:{proid:"<%=request.getParameter("goodsNo")%>"
				, url: url},
				beforeSend: function(xmlHttpRequest) {
			        xmlHttpRequest.setRequestHeader("AJAX", "true");
			    },
			success: function (result) {

				if (result === "true" ) {
					console.log('toggleLikeStatus:');
					$(".layerAlim.zzimOn.wishPrd").show();
					$(".layerAlim.zzimOn.wishPrd").fadeOut(2000);   
					
	                $(".btnZzim.goods_wish").addClass("zzimOn");
	            } else {
	            	console.log('toggleLikeStatus: ' + result);
	            	$(".layerAlim.zzimOff.wishPrd").show();
	            	$(".layerAlim.zzimOff.wishPrd").fadeOut(2000);
	                $(".btnZzim.goods_wish").removeClass("zzimOn");
	            } //if
			}, error : function (xhr, data, textStatus) {
				if (xhr.status == 500) {
	                alert("로그인 후 이용가능 합니다.");
	                window.location.href = "/Black_OY/view/logon/logon.jsp";
	            }else {
	            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
	            }
	        } // success , error
		}) // ajax
		} // toggleLikeItemStatus
	
</script>
	<script>
    /* 페이지에 나갈때 세션 삭제 */
        $('[data-deleteSession]').on('click', function(e) {
                e.preventDefault();  // 기본 동작 막기
            // 페이지를 떠날 때 서버로 요청을 보냄
            var sessionName = '<%=session.getAttribute(request.getParameter("goodsNo"))%>';
            $.ajax({
                url: '<%=contextPath%>RemoveSessionServlet?sessionName='+ sessionName,
										cache : false,
										type : 'GET',
										async : false, // 동기식 요청
										success : function(response) {
											console.log("요청 성공"); // 성공 시 로그 출력
											console.log(url); // 성공 시 로그 출력
										},
										error : function(jqXHR, textStatus,
												errorThrown) {
											console.error("요청 실패:", textStatus,
													errorThrown); // 실패 시 에러 로그 출력
										}
									});
						});
	</script>
	<script>
		// 상품설명/리뷰 등 탭클릭 액션
		$(function() {
			$("#tabList li").click(function() {
				let id = $(this).attr("id");

				$("#tabList li").removeClass("on");
				$(this).addClass("on")
				if (id == "productInfo") {
					showDiv(1)
				}
				if (id == "buyInfo") {
					showDiv(2)
				}
				if (id == "reviewInfo") {
					showDiv(3)
				}
				if (id == "qnaInfo") {
					showDiv(4)
				}
			})
		})


	
	</script>
	<script>
	// 리뷰 팝업창
	$(function(){
		$(document).on("click", ".review_thum > .inner.clrfix li:not(.more)", function() {
		 let rev_id = $(this).find("img").data("value")
		 var index = $(".review_thum > .inner.clrfix li").index($(this));
		 console.log(index)
		 
		 let data = {
				 rev_id: rev_id,
				 index: index
			    };
			 
				
				$.ajax({
					url: "<%=contextPath%>/olive/reviewimg.do",
					data:data,
					cache: false,
					success:function( response ) {
			              $(".info_area.scrbar").empty();
			              $(".info_area.scrbar").append( response );
			              $("#layerWrap850:not(.photo)").show()
			     		 slide(index);
			              console.log("t: "+index)  		              
			          }
			        , error		: function() {
			            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
			        }
				})
		 //alert(value)
		 
	 })
	 
	 $(".ButtonClose").click(function(){
		 $("#layerWrap850").hide()
	 })
	 
	 
	 
		$(".more").click(function(){
			$("#layerWrap850.photo").show()
		})
		$(".photo li").click(function(){
			var index = $(".photo li").index($(this));
			let rev_id = $(this).find("img").data("value")
			console.log(index);
			
			let data = {
					 rev_id: rev_id,
					 index: index
				    };
				 
					
					$.ajax({
						url: "<%=contextPath%>/olive/reviewimg.do",
						data:data,
						cache: false,
						success:function( response ) {
							 $(".photo").hide()
				              $(".info_area.scrbar").empty();
				              $(".info_area.scrbar").append( response );
				              $("#layerWrap850:not(.photo)").show()
				              
				     		 slide(index);
				                         
				          }
				        , error		: function() {
				            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
				        }
					})
		})
		
		 $(".ButtonClose.photoClose").click(function(){
		 $(".photo").hide()
	 })
		
	})
	
	
	


		function showDiv(index) {
			const divs = document.querySelectorAll('.tabConts.prd_detail_cont'); // 모든 div 요소 선택

			// index는 1부터 시작하므로 실제 인덱스는 index - 1이 됨
			for (let i = 0; i < divs.length; i++) {
				if (i === index - 1) {
					divs[i].classList.add("show"); // 선택된 div 보이기
				} else {
					divs[i].classList.remove("show"); // 선택되지 않은 div 감추기
				}
			}
		}
	</script>
	<script>
	/*  QnA 스크립트 */
	$(function() {
		$('.completeBind').on('click', function(e) {
			e.preventDefault();
			if ($(this).closest('li').hasClass('show')) {
				$(this).closest('li').removeClass('show');
			}else{
				$(this).closest('li').addClass('show');
			}
			
		}) // completeBind
		
		$('.btnInquiry.goods_qna_inquiry').on('click', function() {
			
			$('#pop_cont').show();
			$('.dimm').show();
			$('#sForm')[0].reset();
		}) // btnInquiry
		
		

	}) //function
	
	// qna 삭제
	function deleteQna(qnaId) {
		var confirmDelete = confirm("삭제하시겠습니까?");
		 if (confirmDelete) {
           
	         console.log(qnaId)
	         
	         $.ajax({
	                type: "POST", // 또는 "GET"
	                url: "<%=contextPath%>/DeleteQna",
	                data: { qnaId: qnaId },
	                success: function(response) {
	                	
	                    console.log("삭제 성공");
	                    window.location.href = window.location.href; 
	                    // 원하는 동작 수행
	                },
	                error: function(error) {
	                    console.log("삭제 실패");
	                    window.location.href = window.location.href; 
	                    // 에러 처리
	                }
	            });
		 } // if
           
        
	} // deleteQna
	
	function qnaPopDown() {
		$('#pop_cont').hide();
		$('.dimm').hide();
		$('.radioGT1 label:nth-child(1)').removeClass('checked');
		$('#cancel').prop("disabled",true);
		$('#reg').prop("disabled",true);
		$('.mypage-qna-write').addClass('disabled');
		$('.reviews-write').addClass('disabled');
		$('.reviews-write > textarea').prop('disabled', true);
	}
	</script>
	<script>
	/*  QnA 스크립트 */
	$(function() {
		$('.radioGT1 label:nth-child(1)').on('click', function() {
			$(this).addClass('checked');	
			$('.reviews-write').removeClass('disabled');
			$('.mypage-qna-write').removeClass('disabled');
			$('.reviews-write textarea').prop("disabled",false);
			$('#cancel').prop("disabled",false);
			$('#reg').prop("disabled",false);
		})
		
		$('.radioGT1 label:nth-child(2)').on('click', function() {
			$(this).addClass('checked');
			$('.radioGT1 label:nth-child(1)').removeClass('checked');
			$('.alertPop.isOpen').show();
		})
		
		
		var maxChars = 250;

	    $("#gdasCont").on("input", function () {
	        var curLength = $(this).val().length;
	        $("#curTxtLength").text(curLength);

	        // 250자를 넘으면 입력 취소
	        if (curLength > maxChars) {
	            $(this).val(function(_, val) {
	            	alert('250자 이내로 작성해주세요.');
	                return val.slice(0, maxChars);
	                
	            });
	        }
	    });

	    $("#gdasCont").on("keypress", function (e) {
	        // 텍스트가 삭제될 때 입력 취소
	        if (e.which === 8) { // 8은 백스페이스 키의 ASCII 코드
	            var curLength = $(this).val().length;
	            if (curLength <= maxChars) {
	                $("#curTxtLength").text(curLength);
	            }
	        }
	    });
		
	})
	</script>
	<script>
	/*  QnA 스크립트 */
	$(function() {
		$('.btnMedium.wGreen.btnClose').on('click', function() {
			$('.alertPop.isOpen').hide();
			$('.radioGT1 label:nth-child(2)').removeClass('checked');
			$('.radioGT1 label:nth-child(1)').addClass('checked');
			$('.reviews-write').removeClass('disabled');
			$('.mypage-qna-write').removeClass('disabled');
			$('.reviews-write textarea').prop("disabled",false);
			$('#cancel').prop("disabled",false);
			$('#reg').prop("disabled",false);
		})
		
		$('#reg').on('click', function () {
			var userId = '${logOn.user_id}';
			var productId = $("#goodsNo").val();
			var contentVal = $("#gdasCont").val();
			var goodsNo = '<%=request.getParameter("goodsNo")%>';
			
			 $.ajax({
		            type: "POST",
		            url: "<%=contextPath%>/WriteQna", 
		            data: {
		                userId: userId,
		                displId: productId,
		                contentVal: contentVal,
		                goodsNo : goodsNo
		            },
		            success: function(response) {
		                console.log("리뷰 등록 성공");
		                window.location.href = window.location.href;
		                // 리뷰 등록 성공 시 원하는 동작 수행
		            },
		            error: function(error) {
		                console.log("리뷰 등록 실패");
		                // 리뷰 등록 실패 시 에러 처리
		                window.location.href = window.location.href;
		            }
		        });
		})
	})

	</script>
	<jsp:include page="/layout/head.jsp"></jsp:include>
	<div id="Container">
		<div id="Contents">

			<!-- 상단 카테고리 history -->
			<div class="page_location">
				<a href="#" class="loc_home">홈</a>
				<ul class="loc_history">
					<li><a href="#" class="cate_y" id="midCatNm">${allCateDTO.catLName}</a>
						<div class="history_cate_box" style="width: 242px;">
							<ul>
								<c:if test="${not empty cLList }">
									<c:forEach items="${cLList}" var="cll">
										<li id="${cll.cLId}"><a
											href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=${cll.cLId}"
											class="goods_category1" data-deleteSession>${cll.cLName}</a></li>
									</c:forEach>
								</c:if>
							</ul>
						</div></li>
					<li><a href="#" class="cate_y" id="smlCatNm">${allCateDTO.catMName}</a>
						<div class="history_cate_box" style="width: 122px;">
							<ul>
								<c:if test="${not empty cMList}">
									<c:forEach items="${cMList}" var="cml">
										<li id="${cml.cmId}"><a
											href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=${allCateDTO.catLId}${cml.cmId}&sort=1"
											class="goods_category2" data-deleteSession>${cml.cmName}</a></li>
									</c:forEach>
								</c:if>
							</ul>
						</div></li>
					<li><a href="#" class="cate_y" id="dtlCatNm">${allCateDTO.catSName}</a>
						<div class="history_cate_box" style="width: 122px;">
							<ul>
								<c:if test="${not empty cSList}">
									<c:forEach items="${cSList}" var="csl">
										<li id="${csl.csId}"><a
											href="<%=contextPath %>/view/product/pmidlistproduct.do?displNum=${allCateDTO.catLId}${allCateDTO.catSId}${csl.csId}&sort=1"
											class="goods_category3" data-deleteSession>${csl.csName}</a></li>
									</c:forEach>
								</c:if>
							</ul>
						</div></li>
				</ul>
			</div>

			<!-- //상단 카테고리 history -->

			<div class="prd_detail_box renew">
				<div class="left_area">
					<div class="prd_img">
						<img id="mainImg" src="${proDImg[0].proDImgSrc }" alt="상품명 이미지"
							onerror=""> <input type="hidden"
							id="mainImgSize" value="550">

						<div class="prd-option-name">
							<!-- 노출 시 is-active class 추가 -->
							<span class="txt" id="goodstxt"></span>
						</div>
					</div>
					<ul class="prd_thumb_list" id="prd_thumb_list">
						<input type="hidden" id="snsImgUrl" value="">
						<c:if test="${not empty proDImg }">
							<c:forEach items="${proDImg}" var="pdi">
								<li class="sel"><a href="#"><img
										src="${pdi.proDImgSrc}" alt="썸네일 이미지"></a></li>
							</c:forEach>

						</c:if>
					</ul>
					<!-- 202005 상품개선 : 위치 변경 및 마크업 변경 -->
					<!-- 고객 만족도 및 공유, 재고확인 -->
					<div class="prd_social_info">
						<!-- 평점 및 리뷰 건수 추가 -->
						<p id="repReview">
							<strong>고객 리뷰</strong> <span class="review_point"> <span
								class="point" style="width: ${reviewScore.averagegrade*20 }%">
							</span>
							</span> <b> ${reviewScore.averagegrade } </b> <em>(${reviewcnt }건)</em>
						</p>
						<!-- 위치 변경 <p><a href="#" class="btn_off_store" data-rel="layer" data-target="offlineStore">올리브영 오프라인 매장 재고확인</a></p>-->
						<p>
							<!-- 							<strong>공유하기</strong> -->
							<a href=""
								class="link_social kakao goods_share_kakao">카카오톡 공유하기(새창)</a> <a
								href=""
								class="link_social facebook goods_share_facebook">페이스북
								공유하기(새창)</a> <a href=""
								class="link_social url goods_share_url">URL공유하기</a>
						</p>
					</div>
					<!--// 고객 만족도 및 공유, 재고확인 -->

				</div>
				<div class="right_area">
					<div class="prd_info">
						<p class="prd_brand">
							<a href=".do?brandId=${pLists[0].brandId}" id="moveBrandShop"
								class="pd_arrow_link">${pLists[0].brandName}</a>
						</p>
						<p class="prd_name">${pLists[0].displName }</p>
						<!-- 202005 상품개선 : 추가 -->
						<div class="price">
							<span class="price-1"> <strike><fmt:formatNumber value="${pLists[0].lowPrice}" pattern="#,###" /> </strike>
								<span>원</span>
							</span> <span class="price-2"> <strong><fmt:formatNumber value="${pLists[0].afterPrice}" pattern="#,###" /></strong>
								<span>원</span>
							</span>
							<c:if
								test="${not empty productPromo.promoDId or not empty productPromo.promoCId}">
								<button type="button" id="btnSaleOpen" class="btn_more">혜택
									정보</button>
							</c:if>

							<div id="saleLayer" class="sale_list" style="display: none">
								<p class="tit">혜택 정보</p>
								<div class="detail">
									<div class="list">
										<div class="flex-item">
											<span class="label">판매가</span> <span class="price"><fmt:formatNumber value="${pLists[0].lowPrice}" pattern="#,###" /><em>원</em></span>
										</div>
										<c:if test="${not empty productPromo.promoDId}">
											<div class="price_child">
												<div class="flex-item">
													<span class="label">세일 (${productPromo.promoDS} ~
														${productPromo.promoDE })</span> <span class="price"><fmt:formatNumber value="${productPromo.promoDdis}" pattern="#,###" /><em>원</em></span>
												</div>
											</div>
										</c:if>
										<c:if test="${not empty productPromo.promoCId}">
											<div class="price_child">
												<div class="flex-item">
													<span class="label">${productPromo.promoCName }
														(${productPromo.promoCS}~ ${productPromo.promoCE})</span> <span
														class="price">-<fmt:formatNumber value="${productPromo.cpdis}" pattern="#,###" /><em>원</em></span>
												</div>
											</div>
										</c:if>
									</div>
									<div class="list">
										<div class="flex-item">
											<span class="label"><b>최적가</b></span> <span
												class="price total"><fmt:formatNumber value="${pLists[0].afterPrice}" pattern="#,###" /><em>원</em></span>
										</div>
									</div>
								</div>
								<button type="button" id="btnSaleClose" class="btn_close">레이어
									닫기</button>
							</div>
						</div>
						<p class="prd_flag" id="icon_area">
							<c:if test="${pLists[0].prd eq 1}">
								<span class="icon_flag sale">세일</span>
							</c:if>
							<c:if test="${pLists[0].prc eq 1}">
								<span class="icon_flag coupon">쿠폰</span>
							</c:if>
							<!-- 기간계 상품, 브랜드 증정품만 아이콘 노출 -->
							<c:if test="${pLists[0].prp eq 1}">
								<span class="icon_flag gift" id="free_gift">증정</span>
							</c:if>
							<c:if test="${pLists[0].stock eq 1}">
								<span class="icon_flag delivery" id="quick_yn">오늘드림</span>
							</c:if>

						</p>
						<div class="viewArea" id="div_goodsViewNumArea"
							style="display: block;">
							<span><span class="viewNum" id="goodsViewNum"><%=usersOnPage.size()%></span>명이
								보고있어요</span>
						</div>
						<!-- 프로 모션 쿠폰영역-->
						<!-- 프로 모션 쿠폰영역-->
						<!-- EP 쿠폰영역-->
						<!-- EP 쿠폰영역-->
						<div class="prd_more_info">
							<div class="row">
								<p class="tit">
									배송정보<a href="#" onclick="popUp()" class="ico_info"
										style="margin: 5px 0 0 7px">배송정보 레이어 열기</a>
								</p>
								<p></p>
								<ul class="bl_list">


									<c:choose>
										<c:when test="${empty sessionScope.logOn }">
											<li><span>일반배송</span>
												<div>
													2,500원( 20,000 원 이상 무료배송 ) <br> <em>올리브영 배송 </em> <em>평균
														3일 이내 배송</em>
													<!-- <b>무료배송</b>  -->
													<!--  <br><b>업체배송</b> -->
													<!-- <em><b>합배송 불가</b></em> -->
													<!-- <em><b>합배송 불가</b></em> -->
												</div></li>
										</c:when>
										<c:otherwise>
											<li><span>일반배송</span>
												<div>
													2,500원( 20,000 원 이상 무료배송 ) <br> <em>올리브영 배송 </em> <em>평균
														3일 이내 배송</em>
													<!-- <b>무료배송</b>  -->
													<!--  <br><b>업체배송</b> -->
													<!-- <em><b>합배송 불가</b></em> -->
													<!-- <em><b>합배송 불가</b></em> -->
												</div></li>
										</c:otherwise>
									</c:choose>
									<!-- 202005 상품개선 : 오늘드림 빠름배송 -->

									<li><span>픽업</span>
										<div>
											배송비 조건 없음 <a
												href="javascript:goods.detail.todayDelivery.openPickupPop();"
												class="ico_info">픽업 안내 레이어열기</a>
										</div></li>
								</ul>
							</div>
							<div class="row">
								<p class="tit">결제혜택</p>
								<div class="txt_list">
									<p>
										THE CJ 카드 추가 10%할인 <a href="#" onclick="card_infoPop()"
											class="ico_info">카드혜택가 안내 레이어 열기</a>
									</p>
									<c:choose>
										<c:when test="${empty sessionScope.logOn }">
											<p>
												CJ ONE 포인트 <span class=""></span> 최대 1% 적립 예상 <a href="#"
													onclick="cjone_pointPop();" class="ico_info">CJ ONE 포인트
													예상적립 레이어 열기</a>
											</p>
										</c:when>
										<c:otherwise>
											<p>
												CJ ONE 포인트 <span class="color-5">${sessionScope.logOn.grade_id}</span>
												<c:if test="${sessionScope.logOn.grade_id eq 'BABY OLIVE'}">0.5% 적립 예상</c:if>
												<c:if test="${sessionScope.logOn.grade_id eq 'PINK OLIVE'}">0.5% 적립 예상</c:if>
												<c:if test="${sessionScope.logOn.grade_id eq 'GREEN OLIVE'}">1% 적립 예상</c:if>
												<c:if test="${sessionScope.logOn.grade_id eq 'BLACK OLIVE'}">1% 적립 예상</c:if>
												<c:if test="${sessionScope.logOn.grade_id eq 'GOLD OLIVE'}">1% 적립 예상</c:if>
												<a href="#" class="ico_info" onclick="cjone_pointPop();">CJ
													ONE 포인트 예상적립 레이어 열기</a>
											</p>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>

						<c:if test="${pLists.size() >= 2}">
							<div class="prd_option_box optionType1 type2" id="buy_option_box">
								<a href="javascript:;" class="sel_option" id="buyOpt"> 상품을
									선택해주세요 </a>
								<ul class="sel_option_list new" id="option_list">
									<!-- 혜택 아이콘 li 분기 시작 -->
									<c:forEach items="${pLists}" var="pll">
										<li class="type1"><a style="cursor: pointer" href="#"
											id="LinkId${pll.proId}"
											onclick="displayDiv('${pll.proId}'); Test2();"> <span
												class="color"> <img alt="상품이미지" src="${pll.proImg}">
											</span>
												<div class="set">
													<span class="option_value"> ${pll.proName} <span
														class="option_price"> <span class="tx_num">
														<fmt:formatNumber value="${pll.pafterPrice}" pattern="#,###" />원</span>
													</span>
													</span>
													<c:if test="${pll.stock eq 1}">
														<span class="icon_flag delivery">오늘드림</span>
													</c:if>
												</div>
										</a></li>
									</c:forEach>
									<!-- 혜택 아이콘 li 분기 시작 -->


									<script>
										var optGiftStockList = [];
										var o2oDeliveryYn = "";
										var o2oMeshYn = "";
										var o2oHldyYn = "";
									</script>

								</ul>
							</div>

							<div class="option_add_area pkg_goods_n">
								<c:forEach items="${pLists}" var="pli">
									<div class="prd_cnt_box ${pli.proId} no_prom" id="${pli.proId}"
										promno="" infnselimpsyn="N" style="display: none">
										<input type="hidden" id="itemInv_${pli.proId}"
											value="${pli.proStock}"> <input type="hidden"
											id="itemMinQty_${pli.proId}" value="1"> <input
											type="hidden" id="itemMaxQty_${pli.proId}" value="10">
										<input type="hidden" name="itemNo" value="001"> <input
											type="hidden" name="sGoodsNo" value="${pli.proId}"> <input
											type="hidden" name="itemPrsntYn" value="N"> <input
											type="hidden" id="quickYn_A000000188803001" value="N">
										<input type="hidden" id="itemSalePrc_A000000188803001"
											value="${pli.pafterPrice }">
										<div class="tit_area">
											<span>${pli.proName} <c:if test="${pli.stock eq 1 }">
													<span class="icon_flag delivery">오늘드림</span>
												</c:if>
											</span> <span class="option_cnt_box">
												<button class="btnCalc minus" id="${pli.proId}">수량
													1감소</button> <input type="text" id="input_${pli.proId}" name=""
												value="0" class="tx_num" title="구매수량"
												data-price="${pli.pafterPrice}">
												<button class="btnCalc plus" id="${pli.proId}">수량
													1증가</button>
											</span>
										</div>
										<div class="cont_area">
											<span class="option_price"> <span class="tx_num">
											<fmt:formatNumber value="${pli.pafterPrice}" pattern="#,###" /></span>원
											</span> <a href="#" class="btn_opt_del">선택한 옵션 삭제</a>
										</div>
									</div>

								</c:forEach>


								<!--  -->
							</div>

						</c:if>
						<c:if test="${pLists.size() eq 1}">
							<c:forEach items="${pLists }" var="list">
								<input type="hidden" id="pro_id" value="${list.proId}" />
							</c:forEach>
							<div class="option_add_area">
								<div class="prd_cnt_box">
									<div class="tit_area">
										<span>구매수량</span>
									</div>
									<div class="cont_area">
										<span class="option_cnt_box">
											<button class="btnCalc minus"
												>수량
												1감소</button> <input type="text" id="cartCnt"
											name="cartCnt" value="1" class="tx_num"
											title="구매수량">
											<button class="btnCalc plus"
												>수량
												1증가</button>
										</span>
									</div>
								</div>

							</div>

						</c:if>
						<div class="prd_total_price">
							<span class="tx_tit">상품금액 합계</span> <input type="hidden"
								id="totalCnt" value="1" name="totalCnt"> <input
								type="hidden" id="totalPrc" value="17000" name="totalPrc">
							<span class="tx_cont">
								<span class="tx_num"
								id="totalPrcTxt">
								<c:if test="${pLists.size() eq 1 }"><%-- <fmt:formatNumber value="${pLists[0].afterPrice}" pattern="#,###" /> --%>
								${pLists[0].afterPrice}
								</c:if>
								<c:if test="${pLists.size() ne 1 }">0
								</c:if>
								</span>원
							</span>

						</div>

						<!-- 20191213 s -->
						<!-- today_dvs s -->
						<div class="today_dv">
							<div class="today_dvChk">
								<input type="checkbox" id="deliveDay" name="qDelive" value="Y"
									class="o2oDeliveDay " data-attr="상품상세^오늘드림신청여부^오늘드림신청"><label
									for="deliveDay">오늘드림으로 받아 보시겠어요?</label>
								<dl>
									<dd>
										<a href="#" onclick="todayDeliveryPop();"
											class="ico_info_view">오늘드림 안내 레이어열기</a>
									</dd>
								</dl>
								<div class="input_nudge nudge_show" id="deliveNudge"
									style="display: none">
									<div class="nudge_txt" id="quickNudge">
										<strong class="impY"><span>46</span>분 <span>21</span>초</strong>
										안에 주문하면 오후 <span>4</span>시 전 도착!
									</div>
								</div>
							</div>
							<!-- //today_dvChk e -->

							<div class="today_dvArea">
								<div class="today_dvArea_inner">
									<a
										href="#"
										class="btn_noDv" style="display: none;">+ 배송지 추가</a> <a
										href="#" class="btn_todayDV">
										<dl>

										</dl>
									</a>
									<div class="todayDV_list">
										<ul>
										</ul>
									</div>
									<!-- //todayDV_list e -->
								</div>
								<!-- //today_dvArea_inner e -->
							</div>
							<!-- //today_dvArea e -->

							<div class="today_dvChk" id="pikcupOnlyYn" style="display: none;">
								<input type="checkbox" id="pickupDirectYn" name="pickupDirectYn"
									value="Y" data-attr="상품상세^매장픽업여부^매장픽업신청"><label
									for="pickupDirectYn">매장에서 픽업 하시겠어요?</label>
								<dl>
									<dd>
										<a
											href="javascript:goods.detail.todayDelivery.openQuickPopMidle('pickup');"
											class="ico_info_view">매장픽업 안내 레이어열기</a>
									</dd>
								</dl>
								<div class="input_nudge" id="storePickNudge"
									style="display: none;">
									<div class="nudge_txt">배송비 허들없는 픽업을 이용해 보세요!</div>
								</div>
							</div>
						</div>
						<!-- //today_dv e -->
						<!-- 20191213 e -->

						<div class="prd_btn_area new-style type1">
							<button class="btnBasket  goods_cart" id="btnBasket"
								data-attr="상품상세^주문유형^장바구니">장바구니</button>
							<!-- <button class="btnBuy goods_buy" id="cartBtn" onClick="javascript:goods.detail.bindBtnBuy();">구매하기</button> -->

							<button class="btnBuy goods_buy" id="cartBtn"
								data-attr="상품상세^주문유형^바로구매">바로구매</button>
							<button class="btnGift goods_gift">선물하기</button>
							<button class="btnSoldout dupItem goods_cart"
								style="display: none;" onclick="javascript:;">일시품절</button>
							<button class="goods_buy btnReStock" style="display: none;"
								onclick="javascript:;" data-attr="상품상세^재입고알림신청^가히 멀티밤 리필_클릭"
								data-trk="/Cat100000100010009_Small">재입고 알림신청</button>
							<button class="btnZzim  goods_wish"
								data-ref-goodsno="A000000175060"
								data-attr="상품상세^상품좋아요^가히 멀티밤 리필_1">찜하기전</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 202005 상품상세 개선 : 증정품 마크업 수정 -->
			<div class="prd_free_gift" id="giftInfo">
				<p class="tit">증정품 안내</p>
				<div class="free_gift">
					<div class="inner">
						<div class="info">
							<div class="tarea soldout">
								<b>[소진완료]</b>

								<!-- 50:브랜드S -->

								<!-- 수량S -->

								<!-- 수량(일반)S -->

								<!-- 수량(일반)E -->

								<!-- 수량(개당)S -->
								<span class="txt">전 회원 ${detailBrandDTO.brandName } 상품 구매
									상품 1개당, <span class="num">증정품 1개</span> 선착순 증정
								</span>

								<!-- 수량(개당)E -->

								<!-- 수량E -->

								<!-- 금액S -->

								<!-- 금액E -->

								<!-- 50:브랜드E -->

								<!-- 35:기간계상품S -->

								<!-- 35:기간계상품E -->

								<!-- 20:표준카테고리S -->

								<!-- 20:표준카테고리E -->

								<!-- 00:전체S -->

								<!-- 00:전체E -->

								<!-- 90:브랜드+표준분류S -->

								<!-- 90:브랜드+표준분류E -->
							</div>
							<span class="notice_exception">오늘드림 주문시 온라인 전용 증정품 미제공</span>
						</div>
					</div>
				</div>
				<a href="javascript:goods.detail.openGiftLayerPop();"
					class="btn_more goods_giftinfo">더보기</a>


			</div>

			<!-- 증정품 오늘드림S  -->

			<input type="hidden" id="h_first_quickGift" value="2345679364472">
			<input type="hidden" id="h_quickGift_count" value="1">
			<div class="prd_free_gift" id="quickGiftInfo" style="display: none;">
				<p class="tit">증정품 안내</p>
				<div class="free_gift">
					<div class="inner">
						<div class="info">
							<div id="quickgift_1_2345679364472" data-evtno="G000000024149"
								class="tarea  prd_gift_infoVer2">
								<b id="quickgift_2_2345679364472">[오늘드림]</b> <span class="txt">전
									회원 올리브영 전 상품 50,000원 이상 구매 시, <span class="num">증정품 1개</span>
									선착순 증정
								</span>
							</div>
						</div>
					</div>
				</div>
				<a id="quickGift_more"
					href="javascript:goods.detail.openGiftLayerPop();"
					class="btn_more goods_giftinfo">더보기</a>
			</div>
			<div class="prd_more_info type2 type-logo">
				<div class="row store_search">
					<a href="javascript:;"
						class="btn_off_store goods_offline link_arrow gen1"
						data-rel="layer" data-target="offStoreStock"
						data-attr="상품상세^구매가능매장^구매가능매장확인버튼" id="buyPossibleStore"> <em><i>구매
								가능 매장</i>을 확인해보세요</em>
					</a>
					<!-- <a href="javascript:mgoods.detail.openOffstoreFullPop2();" class="link_arrow"><span>구매 가능 매장을 확인해보세요</span></a> -->
				</div>
				<div class="row">
					<!-- 202005 상품개선 : 브랜드 좋아요 추가 -->
					<div class="brand_like">
						<p class="inner">
							<a href="<%=contextPath%>/brand/product.do?brand_id=${detailBrandDTO.brandId }" id="moveBrandShop_like"
								class="link arr goods_brand"> <!-- 								<span class="img" style="background-image:url('/pc-static-root/image/product/img_brand_default.png')"></span> -->
								<span class="logo"
								style="background-image:url('${detailBrandDTO.brandLogoSrc}')"></span>
								<em>${detailBrandDTO.brandName } 브랜드관</em>
							</a>
							<button type="button" id="brnd_wish" data-ref-onlbrndcd="A003585"
								class="icon goods_brandlike "
								data-attr="상품상세^브랜드관좋아요^${detailBrandDTO.brandName }">좋아요
								해제됨</button>
						</p>
					</div>
				</div>
			</div>
			<!-- // 202005 상품상세 개선 : 증정품 마크업 수정 -->
			<!-- 큐레이션 2차 S -->
			<div class="curation_area_a002_lead"></div>
			<div id="recobell_area_a002" class="cura_pord">

				<c:set value="${morelist[0].cat_m_name }" var="i" />
				<h4 class="tit_h4 title_a002">
					이런 <strong>${i }</strong> 상품은 어때요?
					<button class="moreBtn" id="crt_more_a002"
						>
						<span>더보기</span>
					</button>
				</h4>


				<div class="inner_cont" role="toolbar">
					<ul
						class="curation_basket slide_list slick_slider"
						id="goods_curation_a002">
						<!-- <button type="button" data-role="none"
							class="slick-prev slick-arrow" aria-label="Previous"
							role="button" style="display: block;">Previous</button> -->

						
								
								<c:forEach items="${morelist }" var="morelist">
								
								<li data-wlog_type="a002">
									<div class="thum" data-ref-goodsno="A000000188968"
										data-egrank="1" data-egcode="" data-attr="null"
										data-trk="null"
										data-impression=""
										data-tracking-param=""
										data-ref-dispcatno="" data-ref-itemno=""
										data-impression-visibility="1">
										<span class="thumb_flag best">베스트</span><img
											src="${morelist.PRO_DISPL_SRC }"
											alt="이미지 준비중">
										<div class="my">
											<button type="button" class="myCart cartBtnRecoBell"
												data-ref-goodsno="A000000188968" name=""
												data-ref-dispcatno="90000010001" data-ref-itemno="001"
												data-rccode="pc_detail_01_a" tabindex="0">
												<span>장바구니</span>
											</button>
											<button type="button" class="mySee btn_zzim"
												data-ref-goodsno="A000000188968" tabindex="0">
												<span>찜하기전</span>
											</button>
										</div>
									</div>
									<div class="info">
										<a
											href=""
											class="a_detail" name="Curation1"
											data-ref-goodsno="" data-egrank="1"
											data-egcode="a002_a002"
											data-attr=""
											data-trk="/"
											data-tracking-param=""
											data-ref-dispcatno="" data-ref-itemno="001"
											tabindex="0"><dl>
												<dt class="tit">${morelist.PRO_DISPL_NAME}</dt>
												<dd class="price">
													<del><fmt:formatNumber value="${ morelist.PROPRICE}" pattern="#,###" />원</del>
													<strong><fmt:formatNumber value="${morelist.AFTERPRICE}" pattern="#,###" />원</strong>
												</dd>
												<dd class="icon">
													<c:if test="${morelist.PDC eq 1}">
															<span class="icon_flag sale">세일</span>
														</c:if>
														<c:if test="${morelist.PRC eq 1}">
															<span class="icon_flag coupon">쿠폰</span>
														</c:if>
														<c:if test="${morelist.PMP eq 1 }">
															<span class="icon_flag gift">증정</span>
														</c:if>
														<c:if test="${morelist.STOCK > 0}">
															<span class="icon_flag delivery">오늘드림</span>
														</c:if>
												</dd>
											</dl></a>
									</div>

								</li>
								
								</c:forEach>

						<!-- <button type="button" data-role="none"
							class="slick-next slick-arrow" aria-label="Next" role="button"
							style="display: block;">Next</button> -->
						
					</ul>
					<input type="hidden" id="goodsCnt" name="goodsCnt" value="12">
				</div>
				<script type="text/javascript">
				

</script>


			</div>
			<!-- 큐레이션 2차 E -->
			<ul class="prd_detail_tab" id="tabList">
				<li class="on" id="productInfo"><a href="javascript:;"
					class="goods_detailinfo" data-attr="상품상세^상품상세_SortingTab^상품설명">상품설명</a></li>
				<li id="buyInfo"><a href="javascript:;" class="goods_buyinfo"
					data-attr="상품상세^상품상세_SortingTab^구매정보">구매정보</a></li>
				<li id="reviewInfo"><a href="javascript:;"
					class="goods_reputation" data-attr="상품상세^상품상세_SortingTab^리뷰">리뷰<span>(${reviewcnt })</span></a></li>
				<li id="qnaInfo"><a href="javascript:;" class="goods_qna"
					data-attr="상품상세^상품상세_SortingTab^Q&amp;A">Q&amp;A<span><c:if
								test="${not empty qnaList}">(${qnaList.size()})</c:if> </span></a></li>
			</ul>
			<div class="tabConts prd_detail_cont show">
				<div class="detail_area">
					<!--
                    * [3492841] 상품상세 'MD공지배너' 노출 우선순위 변경 요청
                    - 노출 순서(AS IS) : 전체 > 배송유형 > 표준 카테고리 > 전시 카테고리 > 협력사 > 온라인 브랜드 > 상품
                    - 노출 순서(TO BE) : 전체 > 배송유형 > 표준 카테고리 > 전시 카테고리(남성>더모>기타 카테고리) > 협력사 > 온라인 브랜드 > 상품
                    - 1 : 전체
                    - 2 : 배송유형
                    - 3 : 표준분류
                    - 4 : 전시카테고리
                    - 5 : 협력사
                    - 6 : 온라인브랜드
                    - 7 : 상품
                    - 8 : 더모 (전시구분 DISP_SEQ (8) 삭제)
                    1. 전시 카테고리 : 남성 카테고리 카운팅 - 10000010007
                    2. 전시 카테고리 : 더모 카테고리 카운팅 - 10000010008 -->
					<!-- 전체, 배송유형, 표준분류 카테고리 노출 -->
					<!-- 전시카테고리 남성 카테고리 노출 -->
					<!-- 전시카테고리 더모 카테고리 노출 -->
					<!-- 전시카테고리 그외 카테고리 노출 -->
					<a
						href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102700126&amp;trackingCd=Banner"
						data-attr="상품상세^MD공지배너^100000100010008,100000100010009,100000100010010_클릭"
						data-trk="/Cat100000100010009_Small"
						> <img
						src="https://image.oliveyoung.co.kr/uploads/images/display/9000003/396/3903698812558035257.jpg"
						alt="100000100010008,100000100010009,100000100010010">
					</a>
					<!-- 협력사, 온라인브랜드, 상품 카테고리 노출 -->
					<div class="contEditor">

						<c:if test="${empty exImg}">
                        ${noexImg}
                        </c:if>
						<c:if test="${not empty exImg}">
							<c:forEach items="${exImg}" var="exi">
								<img alt="" src="${exi.exImgSrc }">
							</c:forEach>
						</c:if>
					</div>
					<div style="text-align: center; padding: 20px 0px 0px 0px;">
						<p
							style="display: inline-block; font-size: 14px; border: 1px solid #ddd; padding: 10px 40px 10px 40px; text-align: center;">
							본 상품 정보(상품 상세, 상품 설명 등)의 내용은 협력사가 직접 등록한 것 입니다.</p>
					</div>
				</div>
				<p class="tit_cate_best mgT40 dispCatBest" style="display: none;">스킨케어
					카테고리 베스트 상품</p>
				<ul class="cate_prd_list dispCatBest" id="recommGoodsList"
					style="display: none;">
				</ul>
				<div class="curation_area_a029_lead"></div>
				<div id="recobell_area_a029" class="cura_pord curation_area_029 btm"
					style="display: none;">
					<h4 class="tit_h4">다른 고객이 함께 본 상품</h4>
					<div class="loading_box">
						<span class="icon"><img
							src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif"
							alt="로딩중"></span>
						<p class="txt">고객님을 위한 상품 추천중이에요</p>
					</div>
				</div>
				<div id="relPlanShop_area" class="related_plan"></div>
			</div>
			<div class="tabConts prd_detail_cont">
				<h3 class="detail_tit">상품정보 제공고시</h3>
				<div id="kcInfo"></div>
				<!-- 상품정보 -->
				<div id="artcInfo">
					<dl class="detail_info_list">
					</dl>
					<dl class="detail_info_list">
						<dt>내용물의 용량 또는 중량</dt>
						<dd>${detailInfoDTO.capacity}</dd>
					</dl>
					<dl class="detail_info_list">
						<dt>제품 주요 사양</dt>
						<dd>${detailInfoDTO.reqirement}</dd>
					</dl>
					<dl class="detail_info_list">
						<dt>사용기한(또는 개봉 후 사용기간)</dt>
						<dd>${detailInfoDTO.useDate}</dd>

					</dl>
					<dl class="detail_info_list">
						<dt>사용방법</dt>
						<dd>${detailInfoDTO.use}<br>
						</dd>
					</dl>
					<dl class="detail_info_list">
						<dt>화장품제조업자,화장품책임판매업자 및 맞춤형화장품판매업자</dt>
						<dd>${detailInfoDTO.company}</dd>
					</dl>
					<dl class="detail_info_list">
						<dt>제조국</dt>
						<dd>${detailInfoDTO.country}</dd>
					</dl>
					<dl class="detail_info_list">
						<dt>화장품법에 따라 기재해야 하는 모든 성분</dt>
						<dd>${detailInfoDTO.ingredient}</dd>
					</dl>
					<dl class="detail_info_list">
						<dt>기능성 화장품 식품의약품안전처 심사필 여부</dt>
						<dd>${detailInfoDTO.whether}</dd>
					</dl>
					<dl class="detail_info_list">
						<dt>사용할 때의 주의사항</dt>
						<dd>${detailInfoDTO.caution}</dd>
					</dl>
					<dl class="detail_info_list">
						<dt>품질보증기준</dt>
						<dd>${detailInfoDTO.quality}</dd>
					</dl>
					<dl class="detail_info_list">
						<dt>소비자상담 전화번호</dt>
						<dd>${detailInfoDTO.tel}</dd>
					</dl>
				</div>
				<!-- 배송안내 -->
				<h3 class="detail_tit mgT40">배송안내</h3>
				<dl class="detail_info_list" id="dlexAjaxInfo">
					<dt>배송비/배송가능일</dt>
					<dd>
						<div>
							<p>
								<strong>[일반 배송]</strong>
							</p>
							<p>
								<strong>배송지역 : </strong>전국
							</p>
							<p>
								<strong>배송비 : </strong>
								<!-- 그외 표기 -->
								<span>2,500원</span>
							</p>
							<p>
								올리브영 배송 상품의 총 결제금액 <span>20,000</span>원 이상일 경우 <span>무료배송</span>
								됩니다.
							</p>
							<p>도서, 산간, 오지 일부 지역은 배송비가 추가될 수 있습니다.</p>
							<p>
								<strong>배송가능일 : </strong><span>3</span>일
							</p>
							<p>배송가능일이란 본 상품을 주문하신 고객님들께 상품 배송이 가능한 기간을 의미합니다. 단, 연휴 및
								공휴일은 기간 계산시 제외하며 현금 주문일 경우 입금일 기준 입니다.</p>
							<p>예약 상품의 경우 예약된 날짜에 출고되며, 상품의 입고가 빠르게 진행된 경우 예약일 보다 일찍 배송될 수
								있습니다.</p>
						</div>
						<br>
						<div>
							<p>
								<strong>[오늘드림 배송]</strong>
							</p>
							<p>
								<strong>배송지역 : </strong>전국(일부지역 제외)
							</p>
							<p>
								<strong>배송비 : </strong><strong>빠름</strong>&nbsp;<span>5,000원</span>,
								<strong>3!4!/미드나잇</strong>&nbsp;<span>2,500원</span>
							</p>
							<p>
								오늘드림 배송 상품의 총 결제금액&nbsp;<span>30,000</span>원 이상일 경우&nbsp;<span>무료배송</span>&nbsp;됩니다.
							</p>
							<p>오늘드림 배송비는 도서, 산간지역에 관련없이 배송비가 동일합니다.</p>
							<div class="crlfix">
								<p style="float: left;">
									<strong>배송가능시간 : </strong>
								</p>
								<div style="margin-left: 87px">
									<p>
										<strong>빠름/미드나잇 </strong>당일 20시까지 주문 시 당일 도착, 이후 주문 건 익일 도착
									</p>
									<p>
										<strong>3!4! </strong>당일13시까지 주문 시 당일 도착, 이후 주문 건 익일 도착
									</p>
								</div>
							</div>
						</div>
					</dd>
				</dl>
				<h3 class="detail_tit mgT40">교환/반품/환불 안내</h3>
				<dl class="detail_info_list">
					<dt>교환/반품 신청 방법</dt>
					<dd>
						마이페이지 내 주문내역에서 신청가능하며,<br>반품 신청의 경우 택배회수 / 매장방문(일부 매장)중 선택하여
						신청가능합니다.
					</dd>
				</dl>
				<dl class="detail_info_list">
					<dt>교환/반품 신청 기간</dt>
					<dd>
						교환, 반품 신청은 배송이 완료된 후 15일 이내 가능합니다.<br> 고객님이 배송 받으신 상품의 내용이
						표시∙광고의 내용과 다르거나 계약내용과 다르게 이행된 경우에는 배송 받으신 날로부터 3개월 이내, 혹은 그 사실을 알
						수 있었던 날로 부터 30일 이내에 가능합니다.
					</dd>
				</dl>
				<dl class="detail_info_list">
					<dt>교환/반품/회수 비용</dt>
					<dd>
						<p>
							<strong>[택배 회수 반품]</strong>
						</p>
						고객님의 사유에 의한 교환 및 반품은 회수 및 배송에 필요한 비용을 부담해주셔야 합니다.<br> 기본 비용은
						교환 5,000원(회수비+배송비), 반품 2,500원(회수비)입니다.<br> 제주도 및 도서산간 지방에는 추가
						운임이 발생합니다.<br> 당사의 사유(상품의 하자, 배송의 오류 등)로 인한 경우 교환 및 반품에 필요한
						비용은 당사에서 부담합니다. <br> <br>
						<p>
							<strong>[매장 방문 반품]</strong>
						</p>
						올리브영 일반 주문 GREEN OLIVE 이상 등급 또는 오늘드림 주문에 한해서 별도 회수비 부담없이 반품
						가능합니다.(단, 일부 매장만 가능)
					</dd>
				</dl>
				<dl class="detail_info_list">
					<dt>교환/반품 불가안내</dt>
					<dd>
						고객님의 사유에 의한 교환 및 반품이 불가한 경우<br> 1. 배송이 완료된 후 15일이 경과한 경우<br>
						2. 포장 훼손 및 사용 또는 일부 소비, 구성품 누락 및 상품의 결함 발생으로 인해 상품의 가치가 훼손된 경우<br>
						<br> 당사의 사유에 의한 교환 및 반품이 불가한 경우<br> 1. 배송 받으신 날로부터 3개월,
						혹은 그 사실을 알 수 있었던 날로 부터 30일이 경과한 경우<br> 2. 당사의 귀책(상품의 불량, 생산 및
						제조 및 배송 간의 파손 등)으로 인한 현상이 아닌 해당 상품의 고유한 특성, 혹은 상품 수령 후 고객님의 과실로 인한
						문제임이 규명된 경우
					</dd>
				</dl>
			</div>
			<!--// 구매정보 컨텐츠 영역 -->


			<!-- 리뷰 영역 -->
			<div class="tabConts prd_detail_cont" id="gdasContentsArea">
				<div class="review_wrap renew review-reward-notice">
					<!-- ## 리뷰 고도화 1차 : 영역 부모 div 추가 ## -->



					<!-- 올영 체험단 배너 -->
					<!-- 옵션start -->
					<input type="hidden" name="gdasItemNo" id="gdasItemNo"
						value="all_search"> <input type="hidden"
						name="gdasLgcGoodsNo" id="gdasLgcGoodsNo" value="all_search">
					<input type="hidden" name="selectedNum" id="selectedNum"
						value="12445">
					<!-- //## 리뷰 고도화 1차 ## 추가 -->
					<input type="hidden" name="itemCnt" id="itemCnt" value="3">

					<div class="prd_option_box box_select">

						<a href="javascript:;" id="ALL" class="sel_option item"> <span
							class="opt"><img src="${proDImg[0].proDImgSrc }"
								onerror=""></span> <span class="txt">전체</span>
							<!-- ## 리뷰 고도화 1차 ## -->
						</a>
						<ul class="sel_option_list scrbar">
							<li><a href="javascript:;" class="item" title="전체"> <span
									class="opt"><img src="${proDImg[0].proDImgSrc }"
										onerror=""></span> <span class="txt">전체</span>
									<span class="num"><em>2379</em>건</span> <input type="hidden"
									name="gdasItemNo" value="ALL"> <input type="hidden"
									name="gdasLgcGoodsNo" value="ALL">
							</a></li>
							<c:forEach items="${pLists}" var="pll">
								<li optgoodsinfo="${pll.proId }">
									<!-- ## 리뷰고도화 2차## 본상품+연관상품 적용시 필요값 (상품번호:아이템번호)--> <a
									href="javascript:;" class="item" title="${pll.proName }"> <span
										class="opt"> <img src="${pll.proImg }"
											onerror="">

									</span> <span class="txt">${pll.proName }</span> <span class="num"><em
											class="txt_en">691</em>건</span> <input type="hidden"
										name="gdasItemNo" value="${pll.proId }"> <input
										type="hidden" name="gdasLgcGoodsNo" value="${pll.proId }">

								</a>
								</li>

							</c:forEach>

						</ul>
					</div>

					<!-- 옵션end -->

					<!-- 필터 start -->
					<!-- ## 리뷰 고도화 1차 : 삭제  ##  -->
					<!-- <div class="cate_align_box prodLine"> -->
					<!-- <div class="align_sort">
		<ul id="gdasSort">
			<li><a href="javascript:;" data-value="02">최신순</a></li>
			<li><a href="javascript:;" data-value="01">도움순</a></li>
			<li><a href="javascript:;" data-value="03">높은 별점순</a></li>
			<li><a href="javascript:;" data-value="04">낮은 별점순</a></li>
		</ul>
	</div> -->

					<!-- 			<p class="txtFilter"></p> -->

					<!-- </div> -->
					<!-- ## 리뷰 고도화 1차 : 삭제  ##  -->
					<!-- 필터end -->

					<!-- 올영체험단 배너값 추가-->
					<input type="hidden" id="dispImgUrl"
						value="https://image.oliveyoung.co.kr/uploads/images/display/">
					<input type="hidden" id="bnrImgUrl"
						value="900000100050003/131/7765849726836347803.jpg"> <input
						type="hidden" id="bnrImgTxtCont" value="올영체험단 PC 배너">
					<!-- summary 페이지  삽입됨  -->

					<!-- 추천 키워드 영역 -->

					<!-- ## 리뷰 고도화 2차## 
	1. 연관상품 추가 : (정상계정)
	2. 탭 건수 : 실시간조회(정상계정)
	3. 별점 : 집계조회(정상계정)
	4: 만족도 : 집계 조회(정상계정)
	5. 옵션별 건수 :  실시간조회 (정상계정)
 -->






					<!--평균별점집계 start-->


					<!-- [D] 리뷰작성 영역 제거 review-write-delete 클래스 추가 -->



					<!--평균별점집계 end-->

					<!-- 만족도결과 start-->

					<!-- <h3 class="tit_type poll_tit">고객 만족도</h3> -->
					<!-- ## 리뷰 고도화 1차 ## -->



					<!-- 만족도결과 end-->
					<!-- ## 리뷰 고도화 1차 ## 정렬 항목 변경 Start -->

					<!-- 연관상품 포함 건수 있는 경우 표시 -->



					<!-- 상품평 등록제한 카테고리 안내 문구 -->


					<!-- ## 리뷰 고도화 1차 ## 정렬 항목 변경 END -->
					<!-- 사진탭 start-->



					<!-- <h3 class="tit_type thum_tit">리뷰 이미지</h3 -->
					<!-- ## 리뷰 고도화 1차 ##  -->


					<!-- 사진탭 end-->

					<!-- 상품평 등록제한 카테고리 안내 문구 -->
					<!-- ## 리뷰 고도화 1차 ## -->

					<!-- ## 리뷰 고도화 1차 ## -->
					<!-- 상품평 등록제한 카테고리 안내 문구 -->




					<!-- ## 리뷰 고도화 2차## 
	1. 연관상품 추가 : (정상계정)
	2. 탭 건수 : 실시간조회(정상계정)
	3. 별점 : 집계조회(정상계정)
	4: 만족도 : 집계 조회(정상계정)
	5. 옵션별 건수 :  실시간조회 (정상계정)
 -->

					<!--평균별점집계 start-->


					<!-- [D] 리뷰작성 영역 제거 review-write-delete 클래스 추가 -->



					<!--평균별점집계 end-->

					<!-- 만족도결과 start-->






					<!-- <h3 class="tit_type poll_tit">고객 만족도</h3> -->
					<!-- ## 리뷰 고도화 1차 ## -->



					<!-- 만족도결과 end-->
					<!-- ## 리뷰 고도화 1차 ## 정렬 항목 변경 Start -->

					<!-- 연관상품 포함 건수 있는 경우 표시 -->



					<!-- 상품평 등록제한 카테고리 안내 문구 -->


					<!-- ## 리뷰 고도화 1차 ## 정렬 항목 변경 END -->
					<!-- 사진탭 start-->



					<!-- <h3 class="tit_type thum_tit">리뷰 이미지</h3 -->
					<!-- ## 리뷰 고도화 1차 ##  -->


					<!-- 사진탭 end-->

					<!-- 상품평 등록제한 카테고리 안내 문구 -->
					<!-- ## 리뷰 고도화 1차 ## -->

					<!-- ## 리뷰 고도화 1차 ## -->
					<!-- 상품평 등록제한 카테고리 안내 문구 -->




					<!-- ## 리뷰 고도화 2차## 
	1. 연관상품 추가 : (정상계정)
	2. 탭 건수 : 실시간조회(정상계정)
	3. 별점 : 집계조회(정상계정)
	4: 만족도 : 집계 조회(정상계정)
	5. 옵션별 건수 :  실시간조회 (정상계정)
 -->
					<!--평균별점집계 start-->


					<!-- [D] 리뷰작성 영역 제거 review-write-delete 클래스 추가 -->



					<!--평균별점집계 end-->

					<!-- 만족도결과 start-->

					<!-- <h3 class="tit_type poll_tit">고객 만족도</h3> -->
					<!-- ## 리뷰 고도화 1차 ## -->



					<!-- 만족도결과 end-->
					<!-- ## 리뷰 고도화 1차 ## 정렬 항목 변경 Start -->

					<!-- 연관상품 포함 건수 있는 경우 표시 -->

					<!-- 상품평 등록제한 카테고리 안내 문구 -->


					<!-- ## 리뷰 고도화 1차 ## 정렬 항목 변경 END -->
					<!-- 사진탭 start-->



					<!-- <h3 class="tit_type thum_tit">리뷰 이미지</h3 -->
					<!-- ## 리뷰 고도화 1차 ##  -->


					<!-- 사진탭 end-->

					<!-- 상품평 등록제한 카테고리 안내 문구 -->
					<!-- ## 리뷰 고도화 1차 ## -->

					<!-- ## 리뷰 고도화 1차 ## -->
					<!-- 상품평 등록제한 카테고리 안내 문구 -->

					<!-- ## 리뷰 고도화 2차## 
	1. 연관상품 추가 : (정상계정)
	2. 탭 건수 : 실시간조회(정상계정)
	3. 별점 : 집계조회(정상계정)
	4: 만족도 : 집계 조회(정상계정)
	5. 옵션별 건수 :  실시간조회 (정상계정)
 -->
					<!--평균별점집계 start-->


					<!-- [D] 리뷰작성 영역 제거 review-write-delete 클래스 추가 -->



					<!--평균별점집계 end-->

					<!-- 만족도결과 start-->


					<!-- <h3 class="tit_type poll_tit">고객 만족도</h3> -->
					<!-- ## 리뷰 고도화 1차 ## -->



					<!-- 만족도결과 end-->
					<!-- ## 리뷰 고도화 1차 ## 정렬 항목 변경 Start -->

					<!-- 연관상품 포함 건수 있는 경우 표시 -->



					<!-- 상품평 등록제한 카테고리 안내 문구 -->


					<!-- ## 리뷰 고도화 1차 ## 정렬 항목 변경 END -->
					<!-- 사진탭 start-->



					<!-- <h3 class="tit_type thum_tit">리뷰 이미지</h3 -->
					<!-- ## 리뷰 고도화 1차 ##  -->


					<!-- 사진탭 end-->

					<!-- 상품평 등록제한 카테고리 안내 문구 -->
					<!-- ## 리뷰 고도화 1차 ## -->

					<!-- ## 리뷰 고도화 1차 ## -->
					<!-- 상품평 등록제한 카테고리 안내 문구 -->
					<!-- ## 리뷰 고도화 2차## 
	1. 연관상품 추가 : (정상계정)
	2. 탭 건수 : 실시간조회(정상계정)
	3. 별점 : 집계조회(정상계정)
	4: 만족도 : 집계 조회(정상계정)
	5. 옵션별 건수 :  실시간조회 (정상계정)
 -->
					<!--평균별점집계 start-->


					<!-- [D] 리뷰작성 영역 제거 review-write-delete 클래스 추가 -->
					<div id="ajax">
						<div class="product_rating_area review-write-delete">
							<div class="inner clrfix">
								<div class="grade_img">
									<p class="img_face">
										<c:set var="integerPart"
											value="${fn:split(reviewScore.averagegrade, '.')[0]}" />
										<span class="grade grade${integerPart}"></span> <em> <c:if
												test="${reviewScore.averagegrade < 3}">최저</c:if> <c:if
												test="${reviewScore.averagegrade >= 3 && reviewScore.averagegrade < 4}">보통</c:if>
											<c:if test="${reviewScore.averagegrade >= 4}">최고</c:if>
										</em>
									</p>
									<!-- grade5 : 최고, grade4 : 좋음, grade3 : 보통, grade2 : 별로, grade1 : 나쁨  -->
								</div>
								<div class="star_area">
									<p class="total">
										총 <em>${reviewcnt }</em>건
									</p>
									<!-- ## 리뷰 고도화 2차 ## 리뷰 전체 건수(본상품+연관상품) -->
									<p class="num">
										<strong>${reviewScore.averagegrade }</strong><span>점</span>
									</p>
									<ul class="star_list">


										<c:forEach begin="1" end="${reviewScore.averagegrade}"
											varStatus="loop">
											<li><span class="rating"></span><img
												src="https://static.oliveyoung.co.kr/pc-static-root/image//product/bg_rating_star.png"></li>
										</c:forEach>

										<c:set var="decimalPart"
											value="${reviewScore.averagegrade mod 1 }" />

										<c:if test="${decimalPart gt 0 }">
											<li><span class="rating"
												style="width:${decimalPart*100}%;"></span><img
												src="https://static.oliveyoung.co.kr/pc-static-root/image//product/bg_rating_star.png"></li>
										</c:if>

										<c:forEach begin="1" end="${5 - reviewScore.averagegrade}"
											varStatus="loop">
											<li><span class="rating" style="width: 0%;"></span><img
												src="https://static.oliveyoung.co.kr/pc-static-root/image//product/bg_rating_star.png"></li>
										</c:forEach>
									</ul>
								</div>
								<div class="graph_area">
									<ul class="graph_list">
										<li><span class="per">${reviewScore.grade_5_ratio }%</span>
											<div class="graph">
												<span style="height: ${reviewScore.grade_5_ratio }%;"></span>
											</div> <span class="txt">5점</span></li>


										<li><span class="per">${reviewScore.grade_4_ratio }%</span>
											<div class="graph">
												<span style="height: ${reviewScore.grade_4_ratio }%;"></span>
											</div> <span class="txt">4점</span></li>


										<li><span class="per">${reviewScore.grade_3_ratio }%</span>
											<div class="graph">
												<span style="height: ${reviewScore.grade_3_ratio }%;"></span>
											</div> <span class="txt">3점</span></li>


										<li><span class="per">${reviewScore.grade_2_ratio }%</span>
											<div class="graph">
												<span style="height: ${reviewScore.grade_2_ratio }%;"></span>
											</div> <span class="txt">2점</span></li>


										<li><span class="per">${reviewScore.grade_1_ratio }%</span>
											<div class="graph">
												<span style="height: ${reviewScore.grade_1_ratio }%;"></span>
											</div> <span class="txt">1점</span></li>
									</ul>
								</div>

							</div>
						</div>


						<!--평균별점집계 end-->

						<!-- 만족도결과 start-->
						<!-- <h3 class="tit_type poll_tit">고객 만족도</h3> -->
						<!-- ## 리뷰 고도화 1차 ## -->
						<div class="poll_all clrfix">
							<dl class="poll_type2 type3">
								<dt>
									<span>피부타입</span>
								</dt>
								<dd>
									<ul class="list">
										<li><span class="txt">건성에 좋아요</span>
											<div class="graph">
												<span style="width: ${reviewScore.grade1_3_ratio }%;"></span>
											</div> <em class="per" data-value="19">${reviewScore.grade1_3_ratio }%</em></li>
										<li><span class="txt">복합성에 좋아요</span>
											<div class="graph">
												<span style="width: ${reviewScore.grade1_2_ratio }%;"></span>
											</div> <em class="per" data-value="60">${reviewScore.grade1_2_ratio }%</em></li>
										<li><span class="txt">지성에 좋아요</span>
											<div class="graph">
												<span style="width: ${reviewScore.grade1_1_ratio }%;"></span>
											</div> <em class="per" data-value="21">${reviewScore.grade1_1_ratio }%</em></li>


									</ul>
								</dd>
							</dl>
							<dl class="poll_type2 type3">
								<dt>
									<span>피부고민</span>
								</dt>
								<dd>
									<ul class="list">
										<li><span class="txt">보습에 좋아요</span>
											<div class="graph">
												<span style="width: ${reviewScore.grade2_3_ratio }%;"></span>
											</div> <em class="per" data-value="21">${reviewScore.grade2_3_ratio }%</em></li>
										<li><span class="txt">진정에 좋아요</span>
											<div class="graph">
												<span style="width: ${reviewScore.grade2_2_ratio }%;"></span>
											</div> <em class="per" data-value="79">${reviewScore.grade2_2_ratio }%</em></li>
										<li><span class="txt">주름/미백에 좋아요</span>
											<div class="graph">
												<span style="width: ${reviewScore.grade2_1_ratio }%;"></span>
											</div> <em class="per" data-value="1">${reviewScore.grade2_1_ratio }%</em></li>
									</ul>
								</dd>
							</dl>
							<dl class="poll_type2 type3">
								<dt>
									<span>자극도</span>
								</dt>
								<dd>
									<ul class="list">
										<li><span class="txt">자극없이 순해요</span>
											<div class="graph">
												<span style="width: ${reviewScore.grade3_3_ratio }%;"></span>
											</div> <em class="per" data-value="76">${reviewScore.grade3_3_ratio }%</em></li>
										<li><span class="txt">보통이에요</span>
											<div class="graph">
												<span style="width: ${reviewScore.grade3_2_ratio }%;"></span>
											</div> <em class="per" data-value="24">${reviewScore.grade3_2_ratio }%</em></li>
										<li><span class="txt">자극이 느껴져요</span>
											<div class="graph">
												<span style="width: ${reviewScore.grade3_1_ratio }%;"></span>
											</div> <em class="per" data-value="1">${reviewScore.grade3_1_ratio }%</em></li>
									</ul>
								</dd>
							</dl>
						</div>
						<!-- 만족도결과 end-->
					</div>
					<!-- 여기까지 -->
					<!-- ## 리뷰 고도화 1차 ## 정렬 항목 변경 Start -->

					<!-- 연관상품 포함 건수 있는 경우 표시 -->

					<div class="cate_align_box prodLine review_N2" id="searchType">
						<!-- ## 리뷰고도화 2차 ## 클래스 "review_N2" 추가-->
						<div class="align_sort">
							<!-- 리뷰 고도화 1차 : 항목 변경 -->
							<ul id="gdasSort">
								<li class="is-layer on"><a href="javascript:;"
									data-value="01" data-sort-type-code="useful"
									data-attr="상품상세^리뷰정렬^유용한순">유용한순</a>
									<button type="button" class="btn-open-layer">
										<span>자세히 보기</span>
									</button>
									<div class="comment-layer">리뷰의 글자수, '도움이 돼요'수 , 등록된 사진,
										최신 작성일등을 점수화하여 올리브영이 추천하는 리뷰를 정렬합니다.</div></li>
								<li><a href="javascript:;" data-value="01"
									data-sort-type-code="help" data-attr="상품상세^리뷰정렬^도움순">도움순</a></li>
								<li><a href="javascript:;" data-value="02"
									data-sort-type-code="latest" data-attr="상품상세^리뷰정렬^최신순">최신순</a></li>
							</ul>
							<!-- // 리뷰 고도화 1차 : 항목 변경 -->
						</div>

						<!--## 리뷰고도화 2차 ## 추가 S -->
						<div class="review_N2 checkbox_wrap">
							<input type="checkbox" name="searchType" id="searchType_1"
								checked="checked" value="100" data-attr="상품상세^리뷰검색필터_유형^포토리뷰"><label>포토리뷰</label>
						</div>
						<div class="review_N2 checkbox_wrap">
							<input type="checkbox" name="searchType" id="searchType_2"
								checked="checked" value="200" data-attr="상품상세^리뷰검색필터_유형^일반리뷰"><label>일반리뷰</label>
						</div>
						<div class="review_N2 checkbox_wrap">
							<input type="checkbox" name="searchType" id="searchType_3"
								checked="checked" value="50" data-attr="상품상세^리뷰검색필터_유형^올영체험단"><label>체험단</label>
						</div>
						<!-- ## 리뷰고도화 2차 ## 추가 E -->

						<!-- 오프라인 리뷰 -->
						<input type="hidden" name="showFilter" id="showFilter" value="Y">
						<div class="align_filter ">
							<!-- ## 리뷰고도화 2차 ## 제거 -->
							<!-- 리뷰 고도화 1차 : 삭제 <select class="selbox type01" title="정렬 옵션을 선택하세요.">
				<option selected="selected">전체 구매</option>
				<option>온라인몰 구매</option>
				<option>매장 구매</option>
			</select>-->
							<!-- ## 리뷰고도화 2차 ## 제거 -->
							<button type="button" class="btnOption" id="filterBtn"
								onclick="goods.gdas.filter.getFilter();"
								data-attr="상품상세^리뷰검색필터^리뷰 검색 필터">리뷰 검색 필터</button>
							<!-- ## 리뷰고도화 2차 ## 텍스트 변경 -->
							<!-- 맞춤필터 설정 시 on 클래스 활성화 처리 -->
						</div>
						<!-- //오프라인 리뷰 -->
					</div>

					<!-- 상품평 등록제한 카테고리 안내 문구 -->
					<!-- ## 리뷰 고도화 1차 ## 정렬 항목 변경 END -->
					<!-- 사진탭 start-->
					<!-- <h3 class="tit_type thum_tit">리뷰 이미지</h3 -->
					<!-- ## 리뷰 고도화 1차 ##  -->
					<div class="review_thum">
						<ul class="inner clrfix">
							<c:set var="i" value="${0 }" />
							<c:forEach items="${reviewimg }" var="imglist"
								varStatus="outloop">

								<c:forEach items="${imglist }" var="img" varStatus="Loop">
									<c:if test="${i < 7}">
										<li><a href="javascript:;"
											data-attr="상품상세^포토모아보기^포토 클릭^1"> <span> <!-- ## 리뷰 고도화 1차 ## onload , errorResizeImg -->
													<img src="${img.rev_img_src }" class="thum"
													data-value="${img.rev_id }" alt="" data-state="">
											</span>

										</a></li>

									</c:if>
									<c:set var="i" value="${i+1 }" />
									<c:if test="${i eq 7 }">
										<li class="more">
											<!-- ## 리뷰 고도화 1차 ## --> <a href="javascript:;" class="more"
											data-attr="상품상세^포토모아보기^포토더보기"> <span> <!-- ## 리뷰 고도화 1차 ## -->
													<span><em>더보기</em></span> <!-- ## 리뷰 고도화 1차 ## onload , errorResizeImg -->
													<img src="${img.rev_img_src }" class="thum"
													data-value="23722172_2" alt="" data-state=""
													>
											</span>

										</a>
										</li>
									</c:if>
								</c:forEach>

							</c:forEach>


						</ul>
					</div>
					<!-- 사진탭 end-->

					<!-- 상품평 등록제한 카테고리 안내 문구 -->
					<!-- ## 리뷰 고도화 1차 ## -->

					<!-- ## 리뷰 고도화 1차 ## -->
					<!-- 상품평 등록제한 카테고리 안내 문구 -->
					<div class="reviewCate" id="gdasRecommKeyword" style="">
						<ul id="ul_recommKeyword">
							<li class="li_keyword on" data-keyword="ALL"><a href="#"
								data-attr="상품상세^추천키워드^전체">추천 키워드 전체</a></li>
							<li class="li_keyword" data-keyword="고보습,보습,보습감,보습력"><a
								href="#" data-attr="상품상세^추천키워드^보습력">#보습력</a></li>
							<li class="li_keyword"
								data-keyword="가려운,가려울,가려움,가려움증,각질제거,간지러운,간지러울,간지러움,간지럼,갈라짐,강력,강력한,강화,개선,거품목욕,광채,광택,그라데이션,그림자,글로시,글로시한,냄새제거,냉감,노폐물제거,눈화장,도자기,드라마틱,드라마틱한,딥클렌징,땀억제,롱래쉬,롱앤컬,릴렉스,모공관리,모공커버,무광,물광,미백,반짝반짝,발그레,백탁,번쩍,번쩍번쩍,보정,보호,블러,빛나는,생기,소독,속광,수정용,수정화장,스머지,스케일링,스타일링,안정,억제,얼굴색,열감,영양,영양감,영양공급,예방,완화,워터프루프,유광,유리알광택,유분제거,유수분밸런스,윤곽,윤광,음영,입체감,자연광,자외선,자외선차단,자외선차단기능,장벽,장벽강화,재생,제거,제모,주름개선,진정,진정효과,충전,컬링,케어,코쉐딩,쿨링,쿨링감,큐티클,탄력,탈취,톤업,플럼핑,피부결,피부보호,피지관리,피지제거,픽싱,항균,항산화,회복"><a
								href="#" data-attr="상품상세^추천키워드^사용효과">#사용효과</a></li>
							<li class="li_keyword" data-keyword="수분,수분감,수분공급,촉촉,촉촉이,촉촉한,촉촉함"><a
								href="#" data-attr="상품상세^추천키워드^수분감">#수분감</a></li>
							<li class="li_keyword" data-keyword="순하,순한,자극,자극적"><a
								href="#" data-attr="상품상세^추천키워드^자극도">#자극도</a></li>
							<li class="li_keyword"
								data-keyword="가방,간편,간편히,대용량,뚜껑,무자극,무펄,분사,분사력,비건,스틱,스틱타입,스틱형,스프레이,스프레이타입,스프레이형,안개,안개분사,약산성,약알칼리성,여행,여행용,올인원,위생적,일회용,주머니,튜브,튜브타입,튜브형,트래블용,패드,펌핑,펌핑타입,펌핑형,핸드백,휴대,휴대성,휴대용"><a
								href="#" data-attr="상품상세^추천키워드^제품특징">#제품특징</a></li>
							<li class="li_keyword"
								data-keyword="거품형,고체,고체타입,꾸덕,꾸덕꾸덕,꾸덕한,끈적끈적,라이트,라이트한,리퀴드,물토너,묽은,묽은제형,버블,버블타입,벨벳,알갱이,액상,액체,연고,워터리,입자,점성,제형,젤리,젤타입,질감,쫀득쫀득,쫀쫀,쫀쫀하,쫀쫀한,크리미한,텍스처,파우더타입,폭신,폭신폭신"><a
								href="#" data-attr="상품상세^추천키워드^제형">#제형</a></li>
							<li class="li_keyword"
								data-keyword="가렵,각질,간지러워,간지럽,개기름,개털,건선,건조,건조함,겨땀,고민,고민거리,곱슬,극건성,극손상,근육통,기름기,기름진,기미,노폐물,노화,다크서클,다크써클,다한증,두드러기,드름,따가운,땀냄새,땀띠,머리숱,모공,목주름,무좀,발냄새,뱀살,뱃살,부스스,부시시,분비물,붓기,블랙헤드,비듬,뾰루지,새치,셀룰라이트,속건조,손상,손상모,습진,아토피,아토피성,악건성,악취,알레르기,암내,여드름,여드름성,요철,울긋불긋,유분,잔머리,잔주름,잡티,좁쌀,좁쌀여드름,주근깨,주름,증상,지성두피,질염,찝찝,칸디다,칸디다균,탈모,트러블,팔자주름,푸석,푸석푸석,피로감,피부염,피지,피지들,홍조,화농성,화이트헤드,흉터,흔적"><a
								href="#" data-attr="상품상세^추천키워드^피부고민">#피부고민</a></li>
						</ul>
					</div>

					<!-- 상품평 리스트 start -->
					<div class="review_list_wrap">
						<ul class="inner_list" id="gdasList">
							<c:set var="i" value="${0 }" />
							<c:forEach items="${reviewlist }" var="review">

								<c:set var="i" value="${i + 1 }" />
								<li>
									<div class="info">
										<div class="user clrfix">
											<a href="javascript:;"
												onclick="goods.gdas.hadleClickProductDetailReviewerProfile('QjdncktGcWptUk5vclBWbnM2NkN6QT09', { t_page: '상품상세', t_click: '리뷰어_리뷰어프로필', t_profile_name: '글리스', t_review_rank_name: '19'})"
												data-attr="상품상세^리뷰어프로필^프로필이미지 또는 닉네임 클릭"> <img
												src="https://image.oliveyoung.co.kr/uploads/images/mbrProfile/2023/11/04/1699105876598.png"
												style="display: none;">
												<div class="thum">
													<span class="bg"></span> <img
														src="${review.user_img }"
														class="profileThum_s"
														style="background: url(https://static.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg) no-repeat 0 0; background-size: 60px">
												</div>
											</a>
											<!--## 리뷰 고도화 1차 ## : top, id 위치 변경 및 마크업 변경 -->
											<p class="info_user">
												<a href="javascript:;" class="id"
													onclick="goods.gdas.hadleClickProductDetailReviewerProfile('QjdncktGcWptUk5vclBWbnM2NkN6QT09', { t_page: '상품상세', t_click: '리뷰어_리뷰어프로필', t_profile_name: '글리스', t_review_rank_name: '19'})"
													data-attr="상품상세^리뷰어프로필^프로필이미지 또는 닉네임 클릭">${review.user_id }</a>
												<!--## 리뷰 고도화 1차 ## :  탑리뷰어 라운지로 이동시킴 -->
												<a href="javascript:;"
													onclick="goods.gdas.handleClickTopReviewer({t_page: '상품상세', t_click: '리뷰어_탑리뷰어순위', t_review_rank_name: '19'})"
													class="top" data-attr="상품상세^랭킹순위^순위클릭">TOP ${i }</a>
											</p>
											<!--## 리뷰 고도화 2차 ## : 명성리뷰어 -->
											<p class="tag">
												<!--피부 컨디션이 -->
												<!--<strong _tmplitem="143" >-->
												<!-- ## 리뷰 고도화 1차 ## : 위치 변경 및 마크업 변경 -->
												<span>${review.skintype_title }</span> <span>${review.skintone_title}</span> 
												<c:forEach items="${skinlists }" var="skinlist">
													<c:forEach items="${skinlist }" var="skintrb">
														<c:if test="${skintrb.user_id eq review.user_id }">
												<span>${skintrb.skintrb_title }</span>
												</c:if>
												</c:forEach>
												</c:forEach>
												<!--</strong>-->
											</p>
											<!--## 리뷰 고도화 1차 ## : 재구매/한달사용 리뷰 -->
											<div class="badge"></div>
										</div>
									</div>
									<div class="review_cont">
										<div class="score_area">
											<span class="review_point"><span class="point"
												style="width: ${review.rev_grade*20 }%">5점만점에
													${review.rev_grade }점</span></span> <span class="date">${review.rev_reg }</span>
										</div>
										<!--## 리뷰 고도화 1차 ## 위치변경 -->
										<!--## 리뷰 고도화 1차 ## 위치변경 -->
										<!--## 리뷰 고도화 1차 ## 위치변경 -->
										<div class="poll_sample">
											<dl class="poll_type1">
												<dt>
													<span>피부타입</span>
												</dt>
												<dd>
													<span class="txt"> <c:choose>
															<c:when test="${review.rev_grade_1 eq 3 }">
													건성에 좋아요
												</c:when>
															<c:when test="${review.rev_grade_1 eq 2 }">
													복합성에 좋아요
												</c:when>
															<c:when test="${review.rev_grade_1 eq 1 }">
													지성에 좋아요
												</c:when>

														</c:choose>

													</span>
												</dd>
											</dl>
											<dl class="poll_type1">
												<dt>
													<span>피부고민</span>
												</dt>
												<dd>
													<span class="txt"> <c:choose>
															<c:when test="${review.rev_grade_2 eq 3 }">
													보습에 좋아요
												</c:when>
															<c:when test="${review.rev_grade_2 eq 2 }">
													진정에 좋아요
												</c:when>
															<c:when test="${review.rev_grade_2 eq 1 }">
													주름/미백에 좋아요
												</c:when>

														</c:choose>
													</span>
												</dd>
											</dl>
											<dl class="poll_type1">
												<dt>
													<span>자극도</span>
												</dt>
												<dd>
													<span class="txt"> <c:choose>
															<c:when test="${review.rev_grade_3 eq 3 }">
													자극없이 순해요
												</c:when>
															<c:when test="${review.rev_grade_3 eq 2 }">
													보통이에요
												</c:when>
															<c:when test="${review.rev_grade_3 eq 1 }">
													자극이 느껴져요
												</c:when>

														</c:choose>
													</span>
												</dd>
											</dl>
										</div>
										<!--## 리뷰 고도화 1차 ## 위치변경 -->
										<div class="txt_inner">${review.rev_content }</div>
										<!-- ## 리뷰 고도화 1차 ## : 태그 추가 -->
										<div class="review_tag">
											<span>어성초토너</span> <span>보습토너</span> <span>진정토너</span>
										</div>
										<div class="review_thum type1">
											<ul class="inner clrfix">
												<c:forEach items="${reviewimg }" var="imglist">
													<c:forEach items="${imglist }" var="img">

														<c:if test="${img.rev_id eq review.rev_id }">
															<li><a href="#" data-attr="상품상세^포토리뷰^포토 클릭^1"><span><img
																		src="${img.rev_img_src }"
																		
																		data-value="23082403_1" class="thum" alt=""></span></a></li>
														</c:if>
													</c:forEach>
												</c:forEach>
											</ul>
										</div>
										<div class="rw-photo-slide" style="display: none">
											<div>
												<img
													src="https://image.oliveyoung.co.kr/uploads/images/gdasEditor/2023/10/22/1697938427930.png">
											</div>
										</div>
										<!--## 리뷰 고도화 2차 ## 연관상품 -->
										<p class="txt_beauty">※ 해당 리뷰는 원칙적으로 기본 상품이 동일한 단품 사용 후
											작성된 것이며,개별 상품에 따라 용량 내지 일부 구성(1+1, 기획상품 등)이 상이할 수 있음을 안내드립니다.</p>
										<!--## 리뷰 고도화 1차 ## 위치변경 및 삭제-->
										<!-- ## 리뷰 고도화 1차 ##  : 리뷰제한 카테고리 일경우 안보이게 -->
										<div class="recom_area">
											<button type="button" class="btn_recom " id="gdas_23082403"
												onclick="goods.gdas.setRecommGdasToggle('23082403',  'N', {t_page: '상품상세', t_click: '상품상세_도움이돼요', t_profile_name: '글리스', t_review_rank_name: '19'});"
												data-attr="상품상세^도움이돼요^도움이돼요">
												이 리뷰가 도움이 돼요! <span class="num" data-attr="상품상세^도움이돼요^도움이돼요">
													${review.rev_like } </span>
											</button>
											<input type="hidden" name="recommCnt_23082403" value="30">
										</div>
										<button type="button" class="btn_dec"
											onclick="goods.gdas.goGdasReportPop('23082403', 'A000000147339', '001', 'N', {t_page: '상품상세', t_click: '상품상세_리뷰신고하기', gdas_seq: '23082403'});"
											data-attr="상품상세^신고하기^신고하기">신고하기</button>
									</div>
								</li>

							</c:forEach>
						</ul>
					</div>
					<!-- pageing start -->
					<div class="pageing" id="<%=request.getParameter("goodsNo")%>">
						<c:if test="${pDto.prev }">
							<a class="prev" href="javascript:;" data-page-no="1">이전 10
								페이지</a>
						</c:if>
						<c:forEach var="i" begin="${pDto.start }" end="${pDto.end }"
							step="1">
							<c:choose>
								<c:when test="${i eq pDto.currentPage}">
									<strong title="현재 페이지">${i}</strong>
									<%-- <a class="active" href="#">${i }</a> --%>
								</c:when>
								<c:otherwise>
									<a href="javascript:;">${i }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${pDto.next }">
							<a class="next" href="javascript:;" data-page-no="21">다음 10
								페이지</a>
						</c:if>
						<!-- <strong title="현재 페이지">1</strong> -->
					</div>
				</div>
			</div>


			<!--  리뷰 팝업 창 -->
			<div class="layer_pop_wrap w850" id="layerWrap850"
				style="z-index: 999; display: none; left: 50%; margin-left: -425px; top: 2169.5px; margin-top: -371px;">

				<div class="popup-contents"
					style="top: 0; width: 850px; margin-left: -425px;">
					<div class="pop-conts type40">
						<h1 class="ptit">포토 상세</h1>
						<div class="photo_view_area clrfix renew">
							<div class="view_area">
								<div class="thumb_slide slider-for">


									<c:set var="i" value="${0 }" />
									<c:forEach items="${reviewimg }" var="imglist">

										<c:forEach items="${imglist }" var="img">

											<div style="width: 500px;">
												<span class="base"> <img
													src="https://static.oliveyoung.co.kr/pc-static-root/image//comm/bg_2_2.png"
													alt="">
												</span> <img alt="" class="bigImg ${i }" name="${i }"
													data-value="${img.rev_id }" src="${img.rev_img_src }">
											</div>
											<c:set var="i" value="${i + 1 }" />
										</c:forEach>
									</c:forEach>




								</div>
								<!-- 여기 까지 -->
								<div class="thums_slide slider-nav">


									<c:forEach items="${reviewimg }" var="imglist">

										<c:forEach items="${imglist }" var="img">

											<div>
												<input type="hidden"
													value="https://image.oliveyoung.co.kr/uploads/images/gdasEditor/2023/11/15/1699976348720.png"
													tabindex="0"> <img alt="" name="23745102"
													data-attr="상품상세^포토상세^포토상세이동_포토"
													data-value="23745102_2_23727075_1"
													
													
													src="${img.rev_img_src }">
											</div>
										</c:forEach>
									</c:forEach>

								</div>


							</div>

							<!-- //view E -->

							<div class="info_area scrbar">
								<div class="photo_detail" id="photoDetail">
									<div class="review_summary photo" id="photoDetail">
										<div class="user clrfix  ">
											<a href="javascript:;"
												onclick="goods.gdas.handleClickReviewPhotoDetailReviewerProfile('aTJNaDhBM0V5QStaeWYrWXdXaWFPZz09', {t_page: '포토상세', t_click: '리뷰포토상세_리뷰어프로필', t_profile_name: 'Mizthecat', goodsNo: 'A000000190051', goodsname: '[윈터 PICK] 마몽드 포어 슈링커 바쿠치올 크림 60ml 단독기획 (+30ml 추가증정)', t_review_rank_name: '1172'});"
												data-attr="상품상세^포토상세^리뷰어프로필클릭"> <img
												src="https://image.oliveyoung.co.kr/uploads/images/mbrProfile/2023/07/31/1690732966938.png"
												onerror=""
												style="display: none;"
												>
												<div class="thum">
													<span class="bg"></span> <img
														src="https://image.oliveyoung.co.kr/uploads/images/mbrProfile/2023/07/31/1690732966938.png?RS=60x79&amp;CS=60x60"
														class="profileThum_s"
														style="background: url(https://static.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg) no-repeat 0 0; background-size: 60px">
												</div>
											</a>
											<p class="info_user">
												<a href="javascript:;"
													onclick="goods.gdas.handleClickReviewPhotoDetailReviewerProfile('aTJNaDhBM0V5QStaeWYrWXdXaWFPZz09', {t_page: '포토상세', t_click: '리뷰포토상세_리뷰어프로필', t_profile_name: 'Mizthecat', goodsNo: 'A000000190051', goodsname: '[윈터 PICK] 마몽드 포어 슈링커 바쿠치올 크림 60ml 단독기획 (+30ml 추가증정)', t_review_rank_name: '1172'});"
													class="id" data-attr="상품상세^포토상세^리뷰어프로필클릭">Mizthecat</a> <a
													href="javascript:;"
													onclick="goods.gdas.handleClickTopReviewer({t_page: '포토상세', t_click: '리뷰포토상세_탑리뷰어순위', t_review_rank_name: '1172'})"
													class="top">TOP 1172</a>
											</p>
											<!-- 리뷰 고도화 2차 추가 S-->
											<!-- 리뷰 고도화 2차 추가 E-->
											<p class="tag">
												<span>트러블성</span> <span>겨울쿨톤</span> <span>각질</span> <span>모공</span>
											</p>
										</div>
										<div class="score_area addOY">
											<span class="review_point"><span class="point"
												style="width: 100%">5점만점에 5점</span></span> <span class="date">2023.11.15</span>
											<span class="ico_oyGroup">체험단</span>
										</div>
										<div class="txt_inner">사랑스러운 윈터가 모델이라니,,, 마몽드 프로모션 팀 일
											잘하네요...!! 예전에도 마몽드 레티놀 토너를 토너패드로 만들어서 잘 썼는데 크림도 나왔네요. 레티놀이 쓰는
											사람에 따라 조금 자극적이라고 느낄 수도 있다고 하는데, 저는 피부가 예민한 편인데도 자극적이라고 느끼진
											못했어요! 참고하시길,,,</div>
										<div class="review_tag"></div>
										<p class="txt_beauty">* 본 상품 후기는 체험단으로 선정되어 CJ올리브영으로부터 위
											상품을 무료로 제공받아 작성한 것입니다.</p>
										<div class="poll_sample">
											<dl class="poll_type1">
												<dt>
													<span>피부타입</span>
												</dt>
												<dd>
													<span class="txt">복합성에 좋아요</span>
												</dd>
											</dl>
											<dl class="poll_type1">
												<dt>
													<span>피부고민</span>
												</dt>
												<dd>
													<span class="txt">주름/미백에 좋아요</span>
												</dd>
											</dl>
											<dl class="poll_type1">
												<dt>
													<span>자극도</span>
												</dt>
												<dd>
													<span class="txt">자극없이 순해요</span>
												</dd>
											</dl>
										</div>
									</div>
								</div>
							</div>
						</div>
						<button type="button" class="ButtonClose"
							onclick="goods.gdas.photo.closePhotoDetail('summary_thumb');">팝업창
							닫기</button>
					</div>
				</div>

				<script type="text/javascript">
      $.noConflict();
</script>

				<script>
$(function(){
	$("#goods_curation_a002").slick({
		  slidesToShow: 3,
		  slidesToScroll: 3,
		  infinite : true,
		  arrows: true
		  
		  
		});
	 $('.slider-for').slick({
		  slidesToShow: 1,
		  slidesToScroll: 1,
		  infinite : true,
		  arrows: true,
		  fade: true,
		  asNavFor: '.slider-nav'
		 
		  
		  
		});
		$('.slider-nav').slick({
		  slidesToShow: 6,
		  slidesToScroll: 1,
		  infinite : true,
		  asNavFor: '.slider-for',
		  arrows: false,
		  dots: false,
		  centerMode: false,
		  focusOnSelect: true
		});
		
		
		$('.slider-for').on('afterChange', function(event, slick, currentSlide, nextSlide){
			let rev_id = $(`img.bigImg[name=\${currentSlide}]`).data("value");
			
			let data = {
				 rev_id: rev_id,
			    };
			 
				
				$.ajax({
					url: "<%=contextPath%>/olive/reviewimg.do",
					data:data,
					cache: false,
					success:function( response ) {
			              $(".info_area.scrbar").empty();
			              $(".info_area.scrbar").append( response );
				           		              
			          }
			        , error		: function() {
			            alert( '서버 데이터를 가져오지 못했습니다. 다시 확인하여 주십시오.' );
			        }
				})
			
		})
		
})
</script>

			</div>

			<div class="layer_pop_wrap w850 photo" id="layerWrap850"
				style="z-index: 999; display: none; left: 50%; margin-left: -425px; top: 2236.5px; margin-top: -361px;">

				<div class="popup-contents"
					style="top: 0; width: 850px; margin-left: -425px;">
					<div class="pop-conts">
						<h1 class="ptit">사진목록</h1>
						<div class="photo_list_cont">
							<div class="photo_list scrbar">
								<ul class="inner" id="photoList">
									<c:forEach items="${reviewimg }" var="imglist">
										<c:forEach items="${imglist }" var="img">
											<li><a href="javascript:;"> <span class="thum">
														<img style="width: 80px;" src="${img.rev_img_src }"
														 class="review_img"
														alt="썸네일 이미지" data-attr="상품상세^포토목록^포토 클릭"
														data-value="${img.rev_id }" data-state=""
														>
												</span>
											</a></li>
										</c:forEach>
									</c:forEach>
								</ul>
							</div>
						</div>
						<button type="button" class="ButtonClose photoClose">팝업창
							닫기</button>
					</div>
				</div>


				<input type="hidden" id="goodsNo" name="goodsNo"
					value="A000000156230"> <input type="hidden" id="gdasSeq"
					name="gdasSeq" value="23744547"> <input type="hidden"
					id="fileSeq" name="fileSeq" value="0">




			</div>









			<!--  ====QNA=========================================  -->
			<div class="tabConts prd_detail_cont show" id="qnaContentsArea">
				<div class="prd_qna_tit">
					<p 
						style="cursor: pointer;">★ 상품 문의사항이 아닌 반품/교환관련 문의는 고객센터 1:1
						문의를 이용해주세요.</p>
					<button class="btnInquiry goods_qna_inquiry" onclick="">상품문의</button>
				</div>
				<ul class="prd_qna_list" id="prd_qna_list">
					<c:if test="${not empty qnaList }">
						<c:forEach items="${qnaList}" var="qna">
							<li class="">
								<div class="qna_tit_box">
									<p class="qna_question">
										<c:if test="${not empty qna.answer}">
											<span class="qna_flag complete">답변완료</span>
											<a href="#" class="completeBind">${qna.question }</a>
										</c:if>
										<c:if test="${empty qna.answer}">
											<span class="qna_flag">답변대기</span>
											<a href="#" class="completeBind">${qna.question} </a>
										</c:if>
									</p>
									<p class="tx_userid">
										<c:set var="userId"
											value="${fn:substring(qna.userId, 0, fn:length(qna.userId) - 4)}****" />
										<span>${userId}</span>
										<c:if test="${not empty sessionScope.logOn }">
											<c:if test="${sessionScope.logOn.user_id eq qna.userId}">
												<button class="btnSmall fullGray" onclick="">수정</button>
												<button class="btnSmall fullGray"
													onclick="deleteQna('${qna.qnaId}');">삭제</button>
											</c:if>
										</c:if>
									</p>
									<p class="tx_date">${qna.regDate}</p>
								</div>
								<div class="qna_answer_box">
									<div class="tx_question">
										<span class="ico_qna question">질문</span> ${qna.question}
									</div>
									<div class="tx_answer">
										<c:if test="${not empty qna.answer}">
											<span class="ico_qna answer">답변</span>
											${qna.answer}
										</c:if>
										<c:if test="${empty qna.answer}">
										</c:if>
									</div>
								</div>
							</li>
						</c:forEach>
					</c:if>

				</ul>
				<div class="pageing">

					<strong title="현재 페이지">1</strong>

				</div>

			</div>

			<!-- QNA END -->

		</div>
	</div>
	<div class="layer_pop_wrap" id="layer_pop_wrap"
		style="z-index: 999; display: none; left: 50%; margin-left: -203.5px;">
		<div class="layer_cont2 w400" id="dlexAmtCont" data-dlv-cd="20"
			data-set="true">
			<h2 class="layer_title2">배송비 안내</h2>

			<dl class="oy_dlex">
				<dt class="bold_str">
					<span id="dlvShpStr">올리브영</span> 배송
				</dt>
				<dd>
					<span id="dlexAmt">2,500</span>원
				</dd>
			</dl>
			<dl class="add_dlex_amt">
				<dt class="bold_str">추가 배송비</dt>
				<dd></dd>
			</dl>
			<dl class="dlex_amt_info">
				<dt>도서산간</dt>
				<dd>
					<span id="ferryRgnDlexAmt">2,500</span>원
				</dd>
			</dl>
			<dl class="dlex_amt_info">
				<dt>제주지역</dt>
				<dd>
					<span id="jejuDlexAmt">2,500</span>원
				</dd>
			</dl>
			<dl class="dlex_amt_info">
				<dt>제주도서산간</dt>
				<dd>
					<span id="jejuFerryRgnDlexAmt">7,000</span>원
				</dd>
			</dl>
			<button class="layer_close type2" onclick="popDown()">창 닫기</button>
		</div>
	</div>
	<div class="layer_pop_wrap w500 layer_todelivery"
		id="infoTodayDeliveryQuestion"
		style="z-index: 999; display: none; left: 50%; margin-left: -250px;">
		<div class="layer_header">
			<h2 class="layer_title">오늘드림 서비스 안내</h2>
			<button class="layer_close" onclick="todayDeliveryPopDown();">창
				닫기</button>
		</div>
		<div class="layer_cont layer_scroll_box">
			<div class="area_logo">
				<h3 class="logo">
					<img
						src="https://static.oliveyoung.co.kr/pc-static-root/image/product/img_todelivery_v2.png"
						alt="">
				</h3>
				<p class="txt">
					올리브영에서 가장 빠른 배송으로 받고싶다면?<br>지금! 오늘드림 4가지 서비스를 경험해보세요!
				</p>
			</div>
			<div class="area_detail">
				<div class="bx_detail">
					<h4 class="tit icon01">배송 및 픽업 가능 지역</h4>
					<div class="bx_info">
						<p class="desc">
							전국 <span class="sub_desc">(정확한 서비스 가능여부는 배송지 등록을 통해서 확인가능)</span>
						</p>
					</div>
				</div>
				<div class="bx_detail type_img">
					<h4 class="tit icon02">픽업 방법 및 비용</h4>
					<div class="bx_info">
						<div class="item_info">
							<img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/product/img_today_01.png"
								class="img_info type01"> <img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/product/flag_today_01.png"
								class="flag" alt="픽업">
							<p class="desc">온라인에서 주문하고 매장에서 픽업!</p>
							<p class="sub_desc">배송비 조건 없음</p>
						</div>
					</div>
					<a
						href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000100720116"
						class="btn_link"><span class="btn_txt">픽업 서비스 자세히 보기</span></a>
				</div>
				<div class="bx_detail type_img">
					<h4 class="tit icon03">배송 방법 및 비용</h4>
					<div class="bx_info">
						<div class="item_info">
							<img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/product/img_today_02.png"
								class="img_info type02"> <img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/product/flag_today_02.png"
								class="flag" alt="낮 3-4시 3!4!배송">
							<p class="desc">낮 1시까지 주문 시, 오늘 낮 3~4시 배송 도착</p>
							<p class="sub_desc">배송비 2,500원(3만원 이상 무료배송)</p>
						</div>
						<div class="item_info">
							<img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/product/img_today_03.png"
								class="img_info type03"> <img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/product/flag_today_03.png"
								class="flag" alt="밤 10-12시 미드나잇배송">
							<p class="desc">밤 8시까지 주문 시, 오늘 밤 10~12시 배송도착</p>
							<p class="sub_desc">배송비 2,500원(3만원 이상 무료배송)</p>
						</div>
						<div class="item_info">
							<img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/product/img_today_04.png"
								class="img_info type04"> <img
								src="https://static.oliveyoung.co.kr/pc-static-root/image/product/flag_today_04.png"
								class="flag" alt="주문 후, +3시간 빠름배송">
							<p class="desc">밤 8시까지 주문 시, 주문 후 3시간 이내 배송 도착</p>
							<p class="sub_desc">배송비 5,000원(3만원 이상 무료배송)</p>
						</div>
					</div>
					<a
						href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000100700005"
						class="btn_link btn_link2"><span class="btn_txt">오늘드림
							사용 설명서 보기</span></a>
				</div>
				<div class="bx_detail">
					<h4 class="tit icon04">교환 및 반품</h4>
					<div class="bx_info">
						<dl class="lst_desc">
							<div class="item_desc">
								<dt>교환</dt>
								<dd>회수 기사님을 통해 물류센터로 상품 교환 (단, 매장을 통한 교환 불가)</dd>
							</div>
							<div class="item_desc">
								<dt>반품</dt>
								<dd>
									2가지 중 선택 가능
									<ul class="lst_sub_desc">
										<li class="item_sub_desc">회수 택배 기사님을 통해 물류센터로 반품</li>
										<li class="item_sub_desc">오프라인 매장에 방문하여 직접 반품</li>
									</ul>
								</dd>
							</div>
						</dl>
					</div>
				</div>
				<a href="#" class="btn_confirm" id="todayBtnConfirm"
					onclick="todayDeliveryPopDown();"><span class="btn_txt">확인</span></a>
			</div>
			<ul class="lst_notice">
				<li class="item_notice">매장 상품 출발대기 전까지 주문취소가 가능합니다.</li>
				<li class="item_notice">서비스 특성상 주문 이후 배송지 변경은 어렵습니다.</li>
				<li class="item_notice">상품 수령 보관장소가 여의치 않은 경우 자동 반송처리 될 수 있으며,
					반송에 의한 반품비는 고객 부담으로 처리됩니다.</li>
				<li class="item_notice">일반 배송비 쿠폰은 오늘드림 주문에 적용되지 않습니다.</li>
				<li class="item_notice">기상상태에 따라 배송이 지연 또는 취소될 수 있습니다.</li>
				<li class="item_notice">주문 확인 시 재고가 부족한 경우, 부득이하게 주문이 취소될 수
					있습니다.</li>
			</ul>
		</div>
	</div>

	<!-- 팝업 창 키면 나오는 배경 -->
	<div class="dimm" style="z-index: 990; display: none;"></div>

	<!-- 등급별 포인트 팝업 -->
	<div class="layer_pop_wrap ly_cjone_point show" id="layerWrap534"
		style="z-index: 999; display: none; left: 50%; margin-left: -250px; top: 362.5px;">
		<div class="layer_cont2">
			<h2 class="layer_title2">등급별 CJ ONE 포인트 적립</h2>
			<div class="cjoneBox">
				<table class="table_type">
					<caption>등급별 CJ ONE 포인트 적립표</caption>
					<colgroup>
						<col style="width: 50%;">
						<col style="width: 50%;">
					</colgroup>
					<thead>
						<tr>
							<th>등급</th>
							<th>적립률</th>
						</tr>
					</thead>
					<tbody>

						<tr>
							<th>
								<div class="icon_group">
									<span class="icon_grade icon_grade1"></span> <span
										class="txt_grade">GOLD OLIVE</span>
								</div>
							</th>
							<td><em>1%</em></td>
						</tr>

						<tr>
							<th>
								<div class="icon_group">
									<span class="icon_grade icon_grade2"></span> <span
										class="txt_grade">BLACK OLIVE</span>
								</div>
							</th>
							<td><em>1%</em></td>
						</tr>

						<tr>
							<th>
								<div class="icon_group">
									<span class="icon_grade icon_grade3"></span> <span
										class="txt_grade">GREEN OLIVE</span>
								</div>
							</th>
							<td><em>1%</em></td>
						</tr>

						<tr>
							<th>
								<div class="icon_group">
									<span class="icon_grade icon_grade4"></span> <span
										class="txt_grade">PINK OLIVE</span>
								</div>
							</th>
							<td><em>0.5%</em></td>
						</tr>

						<tr>
							<th>
								<div class="icon_group">
									<span class="icon_grade icon_grade5"></span> <span
										class="txt_grade">BABY OLIVE</span>
								</div>
							</th>
							<td><em>0.5%</em></td>
						</tr>

					</tbody>
				</table>
				<div class="usage-guide mgT20">
					<ul class="">
						<li>일부 제휴카드 / 임직원 카드로 결제 시 0.1% 적립</li>
						<li>복합 결제 진행 시 포인트 적립액 상이 가능</li>
					</ul>
				</div>
			</div>
			<div class="layer_btn_area mgT20">
				<button class="btnMedium fullGreen w120"
					onclick="cjone_pointPopDown();">닫기</button>
			</div>
			<button class="layer_close type2" onclick="cjone_pointPopDown();">창
				닫기</button>
		</div>
	</div>

	<!-- 카드 할인 혜택 팝업 -->
	<div class="layer_pop_wrap" id="layer_pop_wrap2"
		style="z-index: 999; display: none; left: 50%; margin-left: -325px; top: 532px;">
		<div class="layer_cont2 w650">
			<h2 class="layer_title2">카드할인혜택</h2>

			<dl class="card_info_data">
				<dt>THE CJ카드</dt>
				<dd>결제 시 10% 할인 (BC 카드 제외)</dd>
			</dl>




			<button class="layer_close type2" onclick="card_infoPopDown()">창
				닫기</button>
		</div>
	</div>
	<!-- 브랜드off 작업 -->
	<div class="laytoast" id="brandOff" style="display: none;">
		<div class="inner">
			<p class="txt_recom txt_01">
				브랜드<br> <em>좋아요</em>
			</p>
		</div>
	</div>
	<!-- 브랜드on 작업 -->
	<div class="laytoast on" id="brandOn" style="display: none;">
		<div class="inner">
			<p class="txt_recom txt_01">
				브랜드<br> <em>좋아요</em>
			</p>
		</div>
	</div>

	<!-- === Q&A 쓰기 팝업 =====================  -->

	<div class="popup-contents" id="pop_cont"
		style="top: 1300px; display: none; width: 650px; margin: -258px 0px 0px -325px; z-index: 999; left: 50%;">
		<div class="pop-conts">
			<form name="sForm" id="sForm">
				<input type="hidden" name="gdasSeq" id="gdasSeq" value=""> <input
					type="hidden" name="goodsNo" id="goodsNo"
					value="${pLists[0].displId}">
				<h1 class="ptit">상품 Q&amp;A 작성</h1>

				<!-- [s] 2021.04.19 modify -->
				<div class="mypage-qna-write disabled">
					<div class="optionSec">
						<h3>아래의 문의 유형을 선택해주세요.</h3>
						<div class="radioGT1">
							<label><input type="radio" name="prdTypeSelect"
								id="prdTypeSelect1"><span>상품문의</span></label> <label><input
								type="radio" name="prdTypeSelect" id="prdTypeSelect2"><span>주문
									상품문의</span></label>
						</div>
						<p class="txt">성분, 사용법, 구성 등 상품 관련 문의를 남겨주세요. 배송/교환/반품 문의는
							‘주문상품문의’를 선택해주세요.</p>
					</div>

					<p class="common4s-text">${pLists[0].displName }</p>

					<!-- 등록제한이 없는 한줄상품평 작성 -->
					<div class="reviews-write disabled">
						<textarea cols="5" rows="1" id="gdasCont" name="gdasCont"
							placeholder="Q&amp;A 게시판에서는 고객님의 정보 확인이 어려우므로 배송문의 등은 1:1 게시판 이용 부탁드립니다."
							disabled=""></textarea>
						<p>
							<span id="curTxtLength">0</span>자/250자
						</p>
					</div>
					<!-- 등록제한이 없는 한줄상품평 작성 -->

					<div class="btnGroup">
						<button id="cancel" type="button" class="btnGray"
							onclick="qnaPopDown()" disabled="disabled">취소</button>
						<button id="reg" type="button" class="btnGreen" onclick=""
							disabled="disabled">등록</button>
					</div>
					<div class="usage-guide">
						<h2 class="stit">이용안내</h2>
						<ul>
							<li>재판매글, 상업성 홍보글, 미풍양속을 해치는 글 등 상품 Q&amp;A의 취지에 어긋나는 글은 삭제될
								수 있습니다.</li>
						</ul>
					</div>
				</div>
				<!-- [e] 2021.04.19 modify -->

				<button type="button" class="ButtonClose" onclick="qnaPopDown();">팝업창
					닫기</button>
				<!-- [s] 2021.04.19 add -->
				<div class="alertPop">
					<p class="txt">
						해당 상품의 배송/교환/반품 문의를 위해<br>1:1문의 게시판을 이용해주세요.
					</p>
					<p class="btnGroup">
						<button type="button" class="btnMedium wGreen btnClose">취소</button>
						<button id="btnCounsel" type="button" class="btnMedium btnGreen">1:1문의
							바로가기</button>
					</p>
				</div>
			</form>
			<!-- [e] 2021.04.19 add -->
		</div>

		<script>
		
	</script>
		<div class="alertPop isOpen" style="display: none">
			<p class="txt">
				해당 상품의 배송/교환/반품 문의를 위해<br>1:1문의 게시판을 이용해주세요.
			</p>
			<p class="btnGroup">
				<button type="button" class="btnMedium wGreen btnClose">취소</button>
				<button id="btnCounsel" type="button" class="btnMedium btnGreen">1:1문의
					바로가기</button>
			</p>
		</div>
	</div>
	<!-- === Q&A 쓰기 팝업 종료=====================  -->

	<!--  ========장바구니 추가 클릭 팝업 ========== -->
	<div class="layer_pop_wrap w490" id="basketOption"
		style="z-index: 999; display: none; left: 50%; margin-left: -245px; top: 492px;"
		data-quick-yn="N">

		<div class="popup-contents"
			style="top: 50%; width: 534px; margin: -365px 0 0 -268px;">
			<div class="pop-conts">
				<h1 class="ptit">선택완료</h1>

				<div class="popCont contPd01">
					<p class="txt_onbag">
					<p class="txt_onbag">장바구니에 추가되었습니다.</p>
					</p>
				</div>

				<div class="area2sButton pdTz">
					<button class="btnlG01 pdzero w130">
						<span>쇼핑계속하기</span>
					</button>
					<button class="btnG01 pdzero w130" id="basketgo">
						<span>장바구니 확인</span>
					</button>
				</div>

				<button type="button" class="ButtonClose"
					>팝업창
					닫기</button>
			</div>
		</div>

	</div>
	<!--  ========상품 좋아요 클릭 팝업 ========== -->
	<div class="layerAlim zzimOn wishPrd" style="display: none;">
		<span class="icon"></span>
		<p class="one">
			<strong>좋아요</strong>
		</p>
	</div>

	<div class="layerAlim zzimOff wishPrd" style="display: none;">
		<span class="icon"></span>
		<p class="one">
			<strong>좋아요</strong>
		</p>
	</div>
	<script>
	
	function slide(index){
		$('.slider-nav').slick('goTo', index);
	}
	
	function addComma(value){
        value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        return value; 
    }
	</script>
</body>
</html>