/**
 * 
 */

/***  main full banner ***/

let timer;

$(function() {
	setInterval(mainFullSlider, 5000);
});

function mainFullSlider() {
	let banners = $("#mainFullSlider .slick-list .slick-track .slick-slide").length;
	let slick_index = $("#mainFullSlider .slick-list .slick-track .slick-slide.slick-active").data("slick-index");
	let index = (slick_index+1)%banners;
	$("#mainFullSlider .slick-list .slick-track .slick-slide.slick-active")
		.removeClass(["slick-active", "slick-current"])
		.css({
			"z-index" : "1"
			, "opacity" : "0"
		});
	
	$(`#mainFullSlider .slick-list .slick-track .slick-slide[data-slick-index=${index}]`)
		.addClass(["slick-active", "slick-current"])
		.css({
			"z-index" : "999"
			, "opacity" : "1"
		});
}
