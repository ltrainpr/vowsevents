
	$("#nav-menu").on('click', showMenu);

	function showMenu(e) {
		$('#navigation').toggleClass('navigation-menu');
		$('.nav-item').toggleClass('hide');
		$('.menu-services').toggleClass('pad-right');
	}


