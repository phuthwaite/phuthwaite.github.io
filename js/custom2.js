// JavaScript Document
jQuery(document).ready(function($) {
   'use strict';		 



	/* animated
================================================== */
	
	 $('*[data-animated]').addClass('animated');
            function animated_contents() {
                $(".animated:appeared").each(function (i) {
                    var $this    = $(this),
                        animated = $(this).data('animated');

                    setTimeout(function () {
                        $this.addClass(animated);
                    }, 50 * i);

                });
            }

            animated_contents();
            $(window).scroll(function () {
                animated_contents();
            });
	
})
//End Document.ready   

/* preloader
================================================== */ 
$(window).load(function() { // makes sure the whole site is loaded
	'use strict';
	$('#status').fadeOut(); // will first fade out the loading animation
	$('#preloader').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
	//$('body').delay(50).css({'overflow':'visible'});
})

