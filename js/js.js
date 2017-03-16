$(function() {
    $('nav a').mouseover(function() {
            if ($(this).is('.back')) {
                return;
            }
            $('.back').stop().animate({ left: ($(this).index() - 1) * ($(this).width() + parseInt($(this).css("margin-left"), 10) + 4) }, 500, 'easeOutElastic')
        }) //test js
})