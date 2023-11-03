
window.onload = () =>{
	document.getElementById("btnGnbOpen").onclick = function () {
    document.querySelector(".layer_all_menu").className += " active";
}

document.getElementById("btnGnbClose").onclick = function () {
    document.querySelector(".layer_all_menu.active").className = "layer_all_menu";
}

};
