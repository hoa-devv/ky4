$(document).ready(function() {
    var number = 1;
    $( "#so-luong" ).val(number);
    $( "#cong" ).click(function() {
        console.log("aa");
        if(number < 1) {
            $( "#so-luong" ).val(1);
        } else {
            number++;
            $( "#so-luong" ).val(number);
        }
    });
    $( "#tru" ).click(function() {
        if(number > 1) {
            number--;
            $( "#so-luong" ).val(number);
        }
    });
});