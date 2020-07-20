// JavaScript Document

jQuery(document).ready(function($) {
   'use strict';

/* animated
================================================== */
    
// $('*[data-animated]').addClass('animated');

// function animated_contents() {
//         $(".animated:appeared").each(function (i) {
//             var $this    = $(this),
//                 animated = $(this).data('animated');

//             setTimeout(function () {
//                 $this.addClass(animated);
//             }, 50 * i);
//         });
// }
// animated_contents();



/* preloader
================================================== */ 

$(window).load(function () {

    document.getElementById('current-year').innerHTML = new Date().getFullYear();

    $('#status').fadeOut(); // will first fade out the loading animation
    $('#preloader').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
    $('body').delay(350).css({
        'overflow': 'visible'
    });

 });    
  
    $('.ajax-popup-link').magnificPopup({
        type: 'ajax',
        mainClass: 'mfp-fade',
        closeBtnInside: false,
        closeMarkup: '<button class="mfp-close yayCloseBtn" href="#"><i class="ion-close-round"></i></button>'
    });


    // back to top
    var offset = 300,
        offset_opacity = 1200,
        scroll_top_duration = 700,
        $back_to_top = $('.cd-top');

    //hide or show the "back to top" link
    $(window).scroll(function () {
        ($(this).scrollTop() > offset) ? $back_to_top.addClass('cd-is-visible'): $back_to_top.removeClass('cd-is-visible cd-fade-out');
    });

    //smooth scroll to top
    $back_to_top.on('click', function (event) {
        event.preventDefault();
        $('body,html').animate({
            scrollTop: 0,
        }, scroll_top_duration);
    });

//hide bullet separator on last list items
    function hidebullet() {
    var lastElement = false;
    $("ul > li").each(function () {
        if (lastElement) {
            if (lastElement.offset().top !== $(this).offset().top) {
                lastElement.addClass("hidebullet");
            } 
            else {
                lastElement.removeClass("hidebullet");
            }
        }
    lastElement = $(this);
    }).last().addClass("hidebullet");
    }
    hidebullet();
    $(window).resize(function () {
        hidebullet();
    });

}) //end window.onload shiz