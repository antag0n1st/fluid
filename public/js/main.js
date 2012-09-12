var ie = $.browser.msie && $.browser.version < 8.0;
 
$.fn.menu = function() {
	$(this).find('li').each(function() {
		if ($(this).find('> ul').size() > 0) {
			$(this).addClass('has_child');
		}
	});

	var closeTimer = null;
	var menuItem = null;
	
	function cancelTimer() {
		if (closeTimer) {
			window.clearTimeout(closeTimer);
			closeTimer = null;
		}
	}
	
	function close() {
		$(menuItem).find('> ul ul').hide();
		ie ? $(menuItem).find('> ul').fadeOut() : $(menuItem).find('> ul').slideUp(50);
		menuItem = null;
	}
	
	$(this).find('li').hover(function() {
		cancelTimer();
		
		var parent = false;
		$(this).parents('li').each(function() { 
			if (this == menuItem) parent = true;
		});
		if (menuItem != this && !parent) close();
		
		$(this).addClass('hover');
		ie ? $(this).find('> ul').fadeIn() : $(this).find('> ul').slideDown(50);
	}, function() {
		$(this).removeClass('hover');
		menuItem = this;
		cancelTimer();
		closeTimer = window.setTimeout(close, 500);
	});
	
	if (ie) {
		$(this).find('ul a').css('display', 'inline-block');
		$(this).find('ul ul').css('top', '0');
	}
}

$(document).ready(function() {
	$('#menu').menu();
        
        $(window).load(function() {
            $('#slider').nivoSlider();
        });
        
//        $("#search_word").focus(function(){
//            if($(this).val() == 'Пребарај...'){
//                $(this).val('');
//                $(this).css('color', 'white');
//            }
//        });
//        
//        $("#search_word").blur(function(){
//            if($(this).val() == ''){
//                $(this).val('Пребарај...');
//                $(this).css('color', '#787878');
//            }
//        });
        
        
});

function confirm_delete(){
        var r=confirm("Дали сте сигурни дека сакате да избришете?");
            if (r==true)
            {
                return true;
            }
            else
            {
                return false;
            }
}