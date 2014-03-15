
$('.about_photo').on('click', function (e){
	var indie = $(e.currentTarget).data('indie');
	$('.toggle-hide').toggleClass('hide');
	$('#about-' + indie).removeClass('hide');
});

$('#group-thumb').on ('click', showGroup);

function showGroup() {
	$('.show-group').addClass('hide');
	$('.toggle-hide').toggleClass('hide');
}