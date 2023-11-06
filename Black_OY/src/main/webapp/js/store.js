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
	
	
	
	
	
	/* 직접검색 탭 */
	$("#searchWord").on("keyup", function(event) {
		if(event.which == 13) {
			let search = $(this).val();
			$.ajax({
			type : 'get'
			, async : false
			, cache: false
			, url : '/Black_OY/store/getStoreCity.do'
			, dataType : 'text'
			, data : {}
			, success : function(data) {
				
            }
			, error : function (data, textStatus) {
                console.log('error');
            }
		});
		}
	})
	
	
	
	
	
	
	/* 지역검색 탭 */
	$.ajax({
			type : 'get'
			, async : false
			, cache: false
			, url : '/Black_OY/store/getStoreCity.do'
			, dataType : 'text'
			, data : {}
			, success : function(data) {
				let citys = JSON.parse(data);
				let select = $("#mainAreaList");
				$(select).empty();
				let firstOpt = $("<option>")
					.prop({
						value : "none"
						, selected : true
					}).text("지역")
				
				$(select).append(firstOpt);
				
				for(let i=0; i<citys.citys.length; i++) {
					let li = $("<option>").prop({
						value : citys.citys[i].city_id
					}).text(citys.citys[i].city_name);
					
					$(select).append(li);
				}
				// console.log(data);
            }
			, error : function (data, textStatus) {
                console.log('error');
            }
		});
	
	
	// 시,도가 바꼈을 때
	$("#mainAreaList").on("change", function() {
		let city_id = $(this).val();
		$.ajax({
			type : 'get'
			, async : false
			, cache: false
			, url : '/Black_OY/store/getStoreDistrict.do'
			, dataType : 'text'
			, data : {
				city_id : city_id
			}
			, success : function(data) {
				// console.log(data)
				let select = $("#subAreaList");
				$("#subAreaList option:not(:first)").remove();
				
				let districts = JSON.parse(data);
				for(let i=0; i<districts.districts.length; i++) {
					let li = $("<option>").prop({
						value : districts.districts[i].city_id
					}).text(districts.districts[i].district_name);
					
					$(select).append(li);
				}
            }
			, error : function (data, textStatus) {
                console.log('error');
            }
		});
	});
	
	// 검색 눌렀을 때
	// [개선] weekday로만 했음
	$("#searchAreaButton").on("click", function() {
		let city = $("#mainAreaList > option:selected").val() === "none" ? "" : $("#mainAreaList > option:selected").text();
		let district = $("#subAreaList > option:selected").val() === "none" ? "" : $("#subAreaList > option:selected").text();
		$.ajax({
            type : 'get'
			, async : false
			, cache: false
			, url : '/Black_OY/store/getStoreList.do'
			, dataType : 'text'
			, data : {
				city : city 
				, district : district
			}
			, success : function(data) {
				$("#areaStoreList").empty();
				//$("#areaStoreList")
				let stores = JSON.parse(data);
				$(".reShop_result > dt > span").text(stores.stores.length)
				for(let i=0; i<stores.stores.length; i++) {
					let li = $("<li>").addClass(stores.stores[i].store_id);
					let div = $("<div>").addClass("li_Pc_reInner");
					let h4 = $("<h4>").addClass("tit")
					let a = $("<a>").text(stores.stores[i].store_name);
					let p = $("<p>").addClass("addr").text(stores.stores[i].store_addr);
					let area = $("<div>").addClass("area");
					let call = $("<div>").addClass("call").text(stores.stores[i].store_tel);
					
					let date = new Date();
					let curTime = date.getHours() + ":" + date.getMinutes();
					let weekday = stores.stores[i].weekday;
					let weekdays = weekday.split(" - ");
					let time;
					if(weekdays[0] <= curTime && curTime <= weekdays[1]) {
						time = $("<div>").addClass(["time", "on"]).text("영업중");
					} else {
						time = $("<div>").addClass("time").text("영업 안함");
					}
					
					
					let fv_reShop_in = $("<div>")
										.addClass("fv_reShop_in")
										.html(`<span>${stores.stores[i].store_fav}</span>명이 관심매장으로 등록했습니다.`);
					let button = $("<button>").addClass(["star", "active"]);
					
					$(area).append(call);
					$(area).append(time);
					
					$(h4).append(a);
					$(div).append(h4);
					$(div).append(p);
					$(div).append(area);
					$(div).append(fv_reShop_in);
					$(div).append(button);
					
					$(li).append(div);
					$("#areaStoreList").append(li);
				}
                // console.log(data);
            }
			, error : function (data, textStatus) {
				$(".reShop_result > dt > span").text("0");
				$("#areaStoreList").empty();
               //  console.log('error');
            }
        });
	});
	
	// 즐겨찾기 눌렀을 때
	// 로그인 했는지 체크 후
	// db에도 +1 하기
	// ~명이 관심매장으로 등록했습니다. 업데이트
	$(".star.active").on("click", function() {
		alert("왜 알람이 안뜨지?");
	})
	
	// 지역검색 눌렀을 때 자동 클릭되게 만듬
	$("#searchAreaTab").on("click", function() {	
		$("#searchAreaButton").click()
	})
	
	// 스크롤 구현
	$("#mCSB_2_container").on("scoll", function() {
		alert();
	})
	
	$("#mCSB_2").on("click", function() {
		alert();
	})
})