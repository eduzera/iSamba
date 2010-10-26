$(document).ready(function() {

    $('.person').mouseover(function() {

        $(this).find('.photo').stop(false,true).fadeIn(500);
    });

    $('.person').mouseleave(function() {
        $(this).find('.photo').stop(false,true).fadeOut(500);
    });

    $('.social_network ul li').mouseover(function() {

        $(this).find('.image_color').stop(false,true).fadeIn(500);
    });

    $('.social_network ul li').mouseleave(function() {

        $(this).find('.image_color').stop(false,true).fadeOut(500);
    });

	$('.social_network ul li').click(function(){
		
		if(navigator.userAgent.search("MSIE") != -1){
			
			var url = $(this).find('a').attr('href');
		
			window.open(url);
			
		}
	});

});

