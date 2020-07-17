(function($){
	$.wmBox = function(){
		$('body').prepend('<div class="wmBox_overlay"><div class="wmBox_closeBtn"><a href="#"><ion-icon name="close-outline"></ion-icon></i></a></div>');
	};
	$('[data-popup]').click(function(e){
		e.preventDefault();
		$('.wmBox_overlay').fadeIn(750);
		var mySrc = $(this).attr('data-popup');
		$('.wmBox_overlay').append('<iframe src="'+mySrc+'">');
		
		$('.wmBox_overlay iframe').click(function(e){
			e.stopPropagation();
		});
		$('.wmBox_overlay').click(function(e){
			e.preventDefault();
			$('.wmBox_overlay').fadeOut(750, function(){
				$(this).find('iframe').remove();
			});
		});
	});
}(jQuery));