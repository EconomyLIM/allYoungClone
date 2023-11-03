
$(function() {
	document.getElementById("btnGnbOpen").onclick = function () {
	    document.querySelector(".layer_all_menu").classList.toggle("active");
	}
	
	document.getElementById("btnGnbClose").onclick = function () {
	    document.querySelector(".layer_all_menu.active").className = "layer_all_menu";
	}
	
	function recProductView() {
		$("recent_prd_box").show();
	}
})