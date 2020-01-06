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

