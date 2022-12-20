$(document).ready(function() {
    var number = 1;
    $( "#so-luong1" ).val(number);
    $( "#cong1" ).click(function() {
        console.log("aa");
        if(number < 1) {
            $( "#so-luong1" ).val(1);
        } else {
            number++;
            $( "#so-luong1" ).val(number);
        }
    });
    $( "#tru1" ).click(function() {
        if(number > 1) {
            number--;
            $( "#so-luong1" ).val(number);
        }
    });
});
