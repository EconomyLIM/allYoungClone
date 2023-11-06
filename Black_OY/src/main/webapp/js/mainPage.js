/**
 * 
 */

/***  main full banner ***/

let timer;
let flag = false; // main full banner의 timer 조건

$(function() {
	timer = setInterval(mainFullSlider, 5000);	
	
	// / mainFullSlider에서 ㅣㅣ 또는 ▶ 눌렀을 때
	$("#mainSliderBtn").on("click", function() {
		$(this).toggleClass("pause");
		if(flag) {
			timer = setInterval(mainFullSlider, 5000);		
		} else {
			clearInterval(timer);
		}
		flag = !flag;
	});
	
	// mainFullSlider에서 > 눌렀을 때
	$("#mainFullSlider .slick-next").on("click", function() {
		mainFullSlider();
	});
	
	// mainFullSlider에서 < 눌렀을 때
	$("#mainFullSlider .slick-prev").on("click", function() {
		mainFullSlider(-1);
	});
	
	/* 메인 카테고리 목록 */
	$(".main_cate_wrap .main_cate_list > li").on("mouseover", function() {
		$(".main_cate_wrap").addClass("active");
		$(this).addClass("on");
		$()
	}).on("mouseleave", function() {
		$(".main_cate_wrap").removeClass("active");
		$(this).removeClass("on");
	})
	
	/* 큐레이션 S 구현 */ 
	// 다른상품 추천해드릴게요 눌렀을 때
	$("#refBtn").on("click", function() {
		let slides = $("#main_curation02_01 .slick-slide").length;
		let slick_index = $("#mainFullSlider .slick-slide.slick-active").data("slick-index");
		let index = (slick_index+1)%slides;
		
		$("#main_curation02_01 .slick-slide.slick-active")
			.removeClass(["slick-active", "slick-current"])
			.css({
				"z-index" : "1"
				, "opacity" : "0"
			});
			
		$(`#main_curation02_01 .slick-slide[data-slick-index=${index}]`)
			.addClass(["slick-active", "slick-current"])
			.css({
				"z-index" : "999"
				, "opacity" : "1"
			});
			
		$("#contsInfoBeginNum").html(`${index+1}`);
	});
});

// 매개변수를 안주면 현재페이지+1
// 매개변수 -1를 주면 현재페이지에 -1
function mainFullSlider(addIndex = 1) {
	let banners = $("#mainFullSlider .slick-slide").length;
	let slick_index = $("#mainFullSlider .slick-slide.slick-active").data("slick-index");
	let index = slick_index + addIndex;
	if(index < 0) {
		index = banners-1;
	} else if(index > banners-1) {
		index = 0;
	}
	
	$("#mainFullSlider .slick-slide.slick-active")
		.removeClass(["slick-active", "slick-current"])
		.css({
			"z-index" : "1"
			, "opacity" : "0"
		});
	
	$(`#mainFullSlider .slick-slide[data-slick-index=${index}]`)
		.addClass(["slick-active", "slick-current"])
		.css({
			"z-index" : "999"
			, "opacity" : "1"
		});
		
	$("#mainFullSlider .slick-paging .cur_no").html(`${index+1}`);
}
