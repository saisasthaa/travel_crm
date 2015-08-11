$(document).ready(function () {
			   
	$('tbody tr').hover(function() {
	  $(this).addClass('odd');
	}, function() {
	  $(this).removeClass('odd');
	});

	var h8=$(window).height();
	//var w5=$(document).width();
	$('.login').css({'height': h8+ "px"});
	var formheight=$('.login form').height();
	var formwidth=$('.login form').width();
	$('.login form').css({'margin-top': -formheight/1.5 + "px", 'margin-left': -formwidth / 2 + "px"});
});