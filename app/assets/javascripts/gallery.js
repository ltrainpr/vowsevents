$(window).load(function centerImages() {
  var y = document.getElementById("center").offsetWidth;
  var z = document.getElementById("left").offsetWidth;
  var right = document.getElementById("right").offsetWidth;
  // find what lies beyond the halfway point of the 1000px container div
  // by subtracting half of it from half of the center image and all of the left image
  var x = (y / 2) + z - 500;
  var showing = 1000 - y - (z-x) - right
  // set the left margin of the image container div as that surplus
  document.getElementById("measure").style.marginLeft= "-"+x+"px";
  
  $('.slide-left').click(function(){
      $('#measure').animate({
          left: x
      }, 500);
	});

	$('.slide-center').click(function(){
    $('#measure').animate({
        left: 0
    }, 500);
	});

  $('.slide-right').click(function(){
    $('#measure').animate({
        left: showing
    }, 500);
  });
});