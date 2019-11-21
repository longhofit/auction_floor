slide = document.getElementsByClassName("slide");
var index = 0;
var cc;
var count = 0;
shows(1);
function shows(n) {
    var i;
    for (i = 0; i < slide.length; i++) {
        slide[i].style.display = "none";
    }
    slide[n - 1].style.display = "block";
}

function getRndInteger(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}
var temp = getRndInteger(7, 15);
str = String(temp);
var date = "Dec 8,2019 " + temp + ":37:25";

// Set the date we're counting down to
var countDownDate = new Date(date).getTime();

// Update the count down every 1 second
var x = setInterval(function () {

    // Get today's date and time
    var now = new Date().getTime();

    // Find the distance between now and the count down date
    var distance = countDownDate - now;

    // Time calculations for days, hours, minutes and seconds
    //  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    // Output the result in an element with id="cd"
    //  document.getElementById("cd").innerHTML = hours + "h:"
    //     + minutes + "m:" + seconds + "s";
    var users = document.getElementsByClassName('cd');
    for (var i = 0; i < users.length; ++i) {
        var user = users[i];
        if (hours < 10) {
            user.innerHTML = "0" + hours + ":"
                + minutes + ":" + seconds + "";
        }
        else {
            user.innerHTML = hours + ":"
                + minutes + ":" + seconds + "";
        }

    }
    // If the count down is over, write some text 
    if (distance < 0) {
        clearInterval(x);
        document.getElementById("cd").innerHTML = "EXPIRED";
    }
}, 1000);

