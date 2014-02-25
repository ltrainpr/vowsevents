
	$("#nav-menu").on('click', showMenu);

	function showMenu(e) {
		e.stopImmediatePropagation();
		console.log('clicking');
		$('#navigation').toggleClass('navigation-menu');
		$('.nav-item').toggleClass('hide');
		$('.menu-services').toggleClass('pad-right');
	}


