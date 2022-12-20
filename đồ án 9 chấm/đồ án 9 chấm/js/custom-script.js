$(document).ready(function() {
    var position = $(window).scrollTop();
    position = 0;

// should start at 0

    $(window).scroll(function () {
        var scroll = $(window).scrollTop();
        if (scroll > position) {
            console.log('scrollDown');
            $('.header').css('background-color', 'rgba(0, 0, 0, 1)');
            $('.header').css('height', '70px');
            $('.header_top').hide(1000);
            $('.logo').height(63);
            $('.logo img').css('margin-top', '5px');
        }
        if(scroll == 0){
            $('.header').css('background-color', 'rgba(0, 0, 0, 0.3)');
            $('.header_top').show(1000);
            $('.logo').height();
            $('.header').css('height', '110px');
            $('.logo img').css('margin-top', '30px');
        }
        position = scroll;
    });
});