$(document).ready(function (event) {
  $('body').on("scroll", function () {
    if (scrollY <= 1) {
      $(".scroll_to_top").addClass("in_top").removeClass("active_anim").stop();
      console.log(scrollY)
    } else {
      $(".scroll_to_top").removeClass("in_top").addClass("active_anim").stop();
      console.log('55')
    }
  });
  $(".firstWord").html(function () {
    var text = $(this).text().trim().split(" ");
    var first = text.shift();
    return (
      (text.length > 0 ? "<span>" + first + "</span>" : first) + text.join(" ")
    );
  });
  if(window.innerWidth > 991) {
  var heightRightPart = $('.art1_text-item').height();
  $('.art1_img-item').height(heightRightPart);
  }
  var slideWidth = $(".img_page .mySwiper .swiper-slide img").width();
  $(".img_page .mySwiper .swiper-slide img").height(slideWidth);
  function Size2() {
    var slideWidth2 = $(".img_page .mySwiper2 .swiper-slide img").width();
    $(".img_page .mySwiper2 .swiper-slide img").height(slideWidth2);
  }
  $(window).resize(function (event) {
    var slideWidth = $(".img_page .mySwiper .swiper-slide img").width();
    $(".img_page .mySwiper .swiper-slide img").height(slideWidth);
    var slideWidth2 = $(".img_page .mySwiper2 .swiper-slide img").width();
    $(".img_page .mySwiper2 .swiper-slide img").height(slideWidth2);
    var heightRightPart = $('.art1_text-item').height();
    if(window.innerWidth > 991) {
      $('.art1_img-item').height(heightRightPart);
      console.log('hey')
      }else {
        $('.art1_img-item').css('height','fit-content')
      }
  });
  $('.faq h3').on('click',function () {
    $(this).parent().find('.answear').slideToggle();
    $(this).parent().siblings().find('.answear').slideUp();
  })
});
var swiper = new Swiper(".mySwiper-main", {
  direction: "vertical",
  slidesPerView: 10,
  mousewheel: true,
  loop: true,
  pagination: false,
  breakpoints: {
    0: {
      direction: "horizontal",
      slidesPerView: 2,
      spaceBetween: 10,
      loop: true,
      slidesPerGroup: 1,
      loopFillGroupWithBlank: true,
    },
    576: {
      direction: "horizontal",
      slidesPerView: 3,
      spaceBetween: 10,
      loop: true,
      slidesPerGroup: 1,
      loopFillGroupWithBlank: true,
    },
    767: {
      direction: "horizontal",
      slidesPerView: 4,
      centeredSlides: false,
      loop: true,
      spaceBetween: 10,
      slidesPerGroup: 1,
      loopFillGroupWithBlank: true,
    },
    992: {
      direction: "vertical",
      slidesPerView: 10,
      centeredSlides: false,
      loop: false,
      spaceBetween: 10,
      slidesPerGroup: 1,
      loopFillGroupWithBlank: true,
    },
  },
});
var swiper = new Swiper(".mySwiper", {});
var swiper2 = new Swiper(".mySwiper2", {
  spaceBetween: 10,
  loop: true,
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  thumbs: {
    swiper: swiper,
  },
});
