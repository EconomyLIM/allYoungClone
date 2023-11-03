
$(function() {
	document.getElementById("btnGnbOpen").onclick = function () {
		document.querySelector(".layer_all_menu").classList.toggle("active");
}

document.getElementById("btnGnbClose").onclick = function () {
    document.querySelector(".layer_all_menu.active").className = "layer_all_menu";
}


$("li.recent>.mymenu_layer").click(function(){
            $("li.recent").addClass("open");
            
        })
        $("li.recent").mouseleave(function(){
            $("li.recent").removeClass("open");
            
        })

$("li.store>.mymenu_layer").mouseover(function(){
            $("li.store").addClass("open");
            
        })
        $("li.store").mouseleave(function(){
            $("li.store").removeClass("open");
            
        })
		$("#todayDeliveryContainer>.mymenu_layer ").mouseover(function(){
            $("li#todayDeliveryContainer").addClass("open");
			$(".delivery_box_wrap").css("display","block");
        })
		$("#todayDeliveryContainer").mouseleave(function(){
            $("li#todayDeliveryContainer").removeClass("open");
			$(".delivery_box_wrap").css("display","none");
        })
        
		$(".placeholder_area").click(function(){
			$(".search_box").addClass("active");
			$(".placeholder_area>label[for='query']").addClass("hide");
			$(".search_tab").css("display","block");
			$("#w_pop_cont").css("display","block");
		})
		
		$("#searchRecent").click(function(){
			$("#searchRecent").addClass("on");
			$("#searchPop").removeClass("on");
			$("#w_pop_cont").css("display","none");
			$("#recent_cont").css("display","block");
		})
		
		$("#searchPop").click(function(){
			$("#searchPop").addClass("on");
			$("#searchRecent").removeClass("on");
			$("#w_pop_cont").css("display","block");
			$("#recent_cont").css("display","none");
		})
		
		 $(document).on('click', function(e) {
    var searchBox = $('.search_box');
    // 클릭된 요소가 .search_box의 하위 요소이거나 .search_box 자체인 경우 아무것도 하지 않음
    if (searchBox.is(e.target) || searchBox.has(e.target).length > 0) {
        return;
    } else {
			$("#searchPop").addClass("on");
			$("#searchRecent").removeClass("on");
			$("#w_pop_cont").css("display","block");
			$("#recent_cont").css("display","none");
        	$(".search_box").removeClass("active");
			$(".placeholder_area>label[for='query']").removeClass("hide");
			$(".search_tab").css("display","none");
			$("#w_pop_cont").css("display","none");
        	
    }
});
		
});
