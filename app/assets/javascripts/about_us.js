var toggleHide = function (){
	return $('#a-thumb, #k-thumb, #s-thumb, #directionz, #group_photo').toggleClass('hide');
};
function showKA() {
	toggleHide();
	document.getElementById("about-karin").className = "show";
	document.getElementById("group-thumb").className = "show";
	document.getElementById("about-karin").className += " about_indi";}

function showAV() {
	toggleHide();
	document.getElementById("about-avery").className = "show";
	document.getElementById("group-thumb").className = "show";
	document.getElementById("about-avery").className += " about_indi";}

function showSI() {
	toggleHide();
	document.getElementById("about-simona").className = "show";
	document.getElementById("group-thumb").className = "show";
	document.getElementById("about-simona").className += " about_indi";}

function showGroup() {
	document.getElementById("about-avery").className = "hide";
	document.getElementById("about-simona").className = "hide";
	document.getElementById("about-karin").className = "hide";
	document.getElementById("group-thumb").className = "hide";
	document.getElementById("group_photo").className = "show";
	document.getElementById("a-thumb").className = "show";
	document.getElementById("a-thumb").className += " avery about_photo";
	document.getElementById("k-thumb").className = "show";
	document.getElementById("k-thumb").className += " karin about_photo";
	document.getElementById("s-thumb").className = "show";
	document.getElementById("s-thumb").className += " simona about_photo";
	document.getElementById("directionz").className = "show";
}