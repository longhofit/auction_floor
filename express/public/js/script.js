$(".card").on("click", function() {
  // window.location.replace("product_detail.html");
  window.open("product_detail.html", "_self");
});

$(".card-container-2").on("click", function() {
  // window.location.replace("product_detail.html");
  window.open("product_detail.html", "_self");
});

$(".card").tilt({
  maxTilt: 10,
  glare: true
});

function changeCss() {
  var bodyElement = document.querySelector("body");
  var title = document.querySelectorAll(".title");
  var sub = document.querySelectorAll(".view-detail-text");
  var row = document.querySelectorAll(".row-product");
  var rowAllProduct = document.querySelector("all-product");

  if (this.scrollY > 100 && this.scrollY < 800) {
    title[0].style.transform = "translateX(0)";
    sub[0].style.transform = "translateX(0)";
  } else {
    title[0].style.transform = "translateX(-122%)";
    sub[0].style.transform = "translateX(1000%)";
  }

  if (this.scrollY > 700 && this.scrollY < 1800) {
    title[1].style.transform = "translateX(0)";
    sub[1].style.transform = "translateX(0)";
  } else {
    title[1].style.transform = "translateX(-122%)";
    sub[1].style.transform = "translateX(1000%)";
  }

  if (this.scrollY > 1200 && this.scrollY < 2400) {
    title[2].style.transform = "translateX(0)";
    sub[2].style.transform = "translateX(0)";
  } else {
    title[2].style.transform = "translateX(-122%)";
    sub[2].style.transform = "translateX(1000%)";
  }

  if (this.scrollY > 100 && this.scrollY < 1400) {
    row[0].style.transform = "translateY(0)";
    row[0].style.opacity = "1";
  } else {
    row[0].style.transform = "translateY(100%)";
    row[0].style.opacity = "0";
  }

  if (this.scrollY > 800 && this.scrollY < 2200) {
    row[1].style.transform = "translateY(0)";
    row[1].style.opacity = "1";
  } else {
    row[1].style.transform = "translateY(100%)";
    row[1].style.opacity = "0";
  }

  if (this.scrollY > 1250 && this.scrollY < 2900) {
    row[2].style.transform = "translateY(0)";
    row[2].style.opacity = "1";
  } else {
    row[2].style.transform = "translateY(100%)";
    row[2].style.opacity = "0";
  }
}

window.addEventListener("scroll", changeCss, false);

function openLoginForm() {
  // alert("Hello");
  closeSignUpForm();
  var element = (document.getElementById("myForm").style.display = "flex");
}

function closeLoginForm() {
  document.getElementById("myForm").style.display = "none";
}

function openSignUpForm() {
  closeLoginForm();
  var element = (document.getElementById("mySignUpForm").style.display =
    "flex");
}

function closeSignUpForm() {
  document.getElementById("mySignUpForm").style.display = "none";
}
