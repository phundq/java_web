$(document).ready(function () {
  $(window).scroll(function () {
    let position = $(this).scrollTop();
    //console.log(position);
    if (position >= 135) {
      $('.top-head').addClass('in-top');
    }
    else {
      $('.top-head').removeClass('in-top');
    }
  });
  $(document).ready(function () {
    $('.owl-carousel').owlCarousel();
  });
  $('.owl-carousel').owlCarousel({
    loop: true,
    margin: 1,
    autoplay: true,
    autoplayHoverPause: true,
    responsive: {
      0: { items: 2 },
      480: { items: 4 },
      768: { items: 6 },
      992: { items: 6 },
      1200: { items: 8 }
    }
  });
  $('[data-toggle="tooltip"]').tooltip()
});