$('.card').on('click', function() {
  // window.location.replace("product_detail.html");
  window.open('product_detail.html', '_self');
});

$('.card-container-2').on('click', function() {
  // window.location.replace("product_detail.html");
  window.open('product_detail.html', '_self');
});

$('.card').tilt({
  maxTilt: 10,
  glare: true
});

function changeCss() {
  var bodyElement = document.querySelector('body');
  var title = document.querySelectorAll('.title');
  var sub = document.querySelectorAll('.view-detail-text');
  var row = document.querySelectorAll('.row-product');
  var rowAllProduct = document.querySelector('all-product');

  if (this.scrollY > 100 && this.scrollY < 800) {
    title[0].style.transform = 'translateX(0)';
    sub[0].style.transform = 'translateX(0)';
  } else {
    title[0].style.transform = 'translateX(-122%)';
    sub[0].style.transform = 'translateX(1000%)';
  }

  if (this.scrollY > 700 && this.scrollY < 1800) {
    title[1].style.transform = 'translateX(0)';
    sub[1].style.transform = 'translateX(0)';
  } else {
    title[1].style.transform = 'translateX(-122%)';
    sub[1].style.transform = 'translateX(1000%)';
  }

  if (this.scrollY > 1200 && this.scrollY < 2400) {
    title[2].style.transform = 'translateX(0)';
    sub[2].style.transform = 'translateX(0)';
  } else {
    title[2].style.transform = 'translateX(-122%)';
    sub[2].style.transform = 'translateX(1000%)';
  }

  if (this.scrollY > 100 && this.scrollY < 1400) {
    row[0].style.transform = 'translateY(0)';
    row[0].style.opacity = '1';
  } else {
    row[0].style.transform = 'translateY(100%)';
    row[0].style.opacity = '0';
  }

  if (this.scrollY > 800 && this.scrollY < 2200) {
    row[1].style.transform = 'translateY(0)';
    row[1].style.opacity = '1';
  } else {
    row[1].style.transform = 'translateY(100%)';
    row[1].style.opacity = '0';
  }

  if (this.scrollY > 1250 && this.scrollY < 2900) {
    row[2].style.transform = 'translateY(0)';
    row[2].style.opacity = '1';
  } else {
    row[2].style.transform = 'translateY(100%)';
    row[2].style.opacity = '0';
  }
}

window.addEventListener('scroll', changeCss, false);

function openLoginForm() {
  // alert("Hello");
  closeSignUpForm();
  var element = (document.getElementById('myForm').style.display = 'flex');
}

function closeLoginForm() {
  document.getElementById('myForm').style.display = 'none';
}

function openSignUpForm() {
  closeLoginForm();
  var element = (document.getElementById('mySignUpForm').style.display =
    'flex');
}

function closeSignUpForm() {
  document.getElementById('mySignUpForm').style.display = 'none';
}

function getRndInteger(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

var temp = getRndInteger(7, 15);
str = String(temp);
var date = 'Dec 8,2019 ' + temp + ':37:25';

// Set the date we're counting down to
var countDownDate = new Date(date).getTime();

// Update the count down every 1 second
var x = setInterval(function() {
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
      user.innerHTML = '0' + hours + ':' + minutes + ':' + seconds + '';
    } else {
      user.innerHTML = hours + ':' + minutes + ':' + seconds + '';
    }
  }
  // If the count down is over, write some text
  if (distance < 0) {
    clearInterval(x);
    document.getElementById('cd').innerHTML = 'EXPIRED';
  }
}, 1000);

$('.responsive').slick({
  dots: true,
  autoplay: false,
  infinite: true,
  speed: 300,
  slidesToShow: 4,
  slidesToScroll: 1,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        infinite: true,
        dots: true
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    }
  ]
});

$(document).ready(function() {
  $('.slider-area').bxSlider({
    mode: 'fade',
    auto: true,
    pager: false
  });
});

$(document).ready(function() {
  $('.bxslider').bxSlider({
    slideMargin: 0,
    speed: 0,
    ticker: true,
    minSlides: 3,
    maxSlides: 10,
    slideWidth: 250,
    pager: true
  });
});

$('.responsive').slick({
  dots: true,
  autoplay: true,
  infinite: false,
  speed: 300,
  slidesToShow: 4,
  slidesToScroll: 1,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        infinite: true,
        dots: true
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    }
  ]
});
