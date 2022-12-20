$(document).ready(function() {
    var number = 1;
    $( "#so-luong2" ).val(number);
    $( "#cong2" ).click(function() {
        console.log("aa");
        if(number < 1) {
            $( "#so-luong2" ).val(1);
        } else {
            number++;
            $( "#so-luong2" ).val(number);
        }
    });
    $( "#tru2" ).click(function() {
        if(number > 1) {
            number--;
            $( "#so-luong2" ).val(number);
        }
    });
});