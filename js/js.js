$(function() {
    $('nav a').mouseover(function() {
        if ($(this).is('.back')) {
            console.log('success')
            return;
        }
        var $index = $(this).index();
        var $width = $(this).width();
        var $marginLeft = parseInt($(this).css("margin-left"), 10)
        $('.back').stop().animate({ left: ($index - 1) * ($width + $marginLeft + 4) }, 500, 'easeOutElastic')
    })
})