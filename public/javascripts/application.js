$(document).ready(function() {

    $('.person').mouseover(function() {

        $(this).find('.photo').fadeIn(500);
    });

    $('.person').mouseleave(function() {
        $(this).find('.photo').fadeOut(500);
    });

    $('.social_network ul li').mouseover(function() {

        $(this).find('.image_color').fadeIn(500);
    });

    $('.social_network ul li').mouseleave(function() {

        $(this).find('.image_color').fadeOut(500);
    });
});

