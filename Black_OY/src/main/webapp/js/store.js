/**
 * store.js
 */

$(function() {
	// 직접검색 지역검색 관심매장 판매매장 찾기 
	// 탭 구현
	$("#TabsOpenArea > li").on("click", function() {
		$("#TabsOpenArea > li").removeClass("on");
		$(this).addClass("on");
		$(".tab_area").hide();
		switch($(this).text()) {
			case "직접검색" : 
				$(".tab_area").eq(0).show();
				break;
			case "지역검색" : 
				$(".tab_area").eq(1).show();
				break;
			case "관심매장" : 
				$(".tab_area").eq(2).show();
				break;
			case "판매매장 찾기" : 
				$(".tab_area").eq(3).show();
				break;
		}
	})
	
	// 매장 검색 옵션 눌렀을 때
	$(".btn_opSt").on("click", function() {
		$(this).toggleClass("on");
		$(".choice_opSt").slideToggle("fast");
		
		/*if($(this).hasClass("on")) {
			$(".choice_opSt").css("display", "block");
		} else {
			$(".choice_opSt").css("display", "none");
		}*/
	});
	
	// 카테고리 취급매장, 서비스 제공 매장 버튼 선택 구현
	$(".reShop_opList > ul > li > button").on("click", function() {
		$(this).toggleClass("on");
	});
	
	// 초기화 버튼 구현
	$(".init_btn.empty_btn").on("click", function() {
		$(".reShop_opList > ul > li > button").removeClass("on");
	})
	
	
	/* 지역검색 탭 */
	
	// 검색 눌렀을 때
	$("#searchAreaButton").on("click", function() {
		let city = $("#mainAreaList").val() === "none" ? "" : $("#mainAreaList").val();
		let district = $("#subAreaList").val() === "none" ? "" : $("#subAreaList").val();
		$.ajax({
            type : 'get'
			, async : false
			, url : '/Black_OY/store/getStoreList.do'
			, dataType : 'text'
			, data : {
				city : city 
				, district : district
			}
			, success : function(data) {
                console.log(data);
            }
			, error : function (data, textStatus) {
                console.log('error');
            }
        });
	})
})