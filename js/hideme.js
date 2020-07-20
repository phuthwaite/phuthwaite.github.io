$(window).load(function () {
    
    $.fn.hideme = function() {
    
        /* Check the location of each desired element */
        $('.hideme').each( function(i){
            
            var bottom_of_object = $(this).offset().top + $(this).outerHeight();
            var bottom_of_window = $(window).scrollTop() + $(window).height();
            
            /* If the object is completely visible in the window, fade it it */
            if( bottom_of_window < bottom_of_object ){
                $(this).css({'display':'block'});
                window.alert('its-showing')
                //$(this).animate({'opacity':'1'},500);
                    
            }
            else{
                //$(this).animate({'opacity':'0'},100);
                $(this).css({'display':'none'});
                window.alert('its-hiding')
            }
            
        }); 
    
    }

    
});