
window.onload = () =>{
	document.getElementById("btnGnbOpen").onclick = function () {
    if(document.querySelector(".layer_all_menu").classList.contains("active")){
                document.querySelector(".layer_all_menu.active").className = "layer_all_menu";
            }else{
                document.querySelector(".layer_all_menu").className += " active";
            }
}

document.getElementById("btnGnbClose").onclick = function () {
    document.querySelector(".layer_all_menu.active").className = "layer_all_menu";
}


$(".mymenu_layer").click(function(){
            $("li.recent").addClass("open");
            
        })
        $("li.recent").mouseleave(function(){
            $("li.recent").removeClass("open");
            
        })

};


