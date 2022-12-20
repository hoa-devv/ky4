$(document).ready(function (){
    $('.fixed').hide();

    $(window).scroll(function() {
        if ($(this).scrollTop()) {
            $('.fixed').fadeIn();
        } else {
            $('.fixed').fadeOut();
        }
    });

    $(".fixed").click(function() {
        $("html, body").animate({scrollTop: 0}, 1000);
    });
});
