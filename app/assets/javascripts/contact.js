
function showAQ1() {
	document.getElementById("another-question-1").className = "show";
	document.getElementById("another-question-1").className += " contact-column";
	document.getElementById("another-question-2").className = "show";
	document.getElementById("another-question-2").className += " contact-column";
	document.getElementById("AQ1").className = "yes_to_AQ"; }
function yesQ() {
	document.getElementById("yesQ").className = "yes_to_AQ";
	document.getElementById("noQ").className = "contact-navigation"; }
function noQ() {
	document.getElementById("noQ").className = "yes_to_AQ";
	document.getElementById("yesQ").className = "contact-navigation";}
function selectWD() {
	document.getElementById("event-wedding").className = "yes_to_AQ";
	document.getElementById("event-social").className = "contact-navigation";
	document.getElementById("event-corporate").className = "contact-navigation" ;
	document.getElementById("event-other").className = "contact-navigation";
	document.getElementById("other_direction").className = "hide";
	document.getElementById("other_event_type").className = "hide";}
function selectCO() {
	document.getElementById("event-corporate").className = "yes_to_AQ";
	document.getElementById("event-social").className = "contact-navigation";
	document.getElementById("event-wedding").className = "contact-navigation" ;
	document.getElementById("event-other").className = "contact-navigation";
	document.getElementById("other_direction").className = "hide";
	document.getElementById("other_event_type").className = "hide"; }
function selectSO() {
	document.getElementById("event-social").className = "yes_to_AQ";
	document.getElementById("event-wedding").className = "contact-navigation";
	document.getElementById("event-corporate").className = "contact-navigation";
	document.getElementById("event-other").className = "contact-navigation";
	document.getElementById("other_direction").className = "hide";
	document.getElementById("other_event_type").className = "hide"; }
function selectOT() {
	document.getElementById("event-other").className = "yes_to_AQ";
	document.getElementById("other_direction").className = "show";
	document.getElementById("other_event_type").className = "show";
	document.getElementById("event-social").className = "contact-navigation";
	document.getElementById("event-corporate").className = "contact-navigation" ;
	document.getElementById("event-wedding").className = "contact-navigation"; }
function showWQ() {
	document.getElementById("contact-router").className = "hide";
	document.getElementById("wedding-questions").className = "show";
	document.getElementById("om").className= "hide"; }
function showOM() {
	document.getElementById("om").className = "show";
	document.getElementById("om").className += " contact-column";
	document.getElementById("other_message").className = "yes_to_AQ";
	document.getElementById("wedding_questions").className = "hide"; }