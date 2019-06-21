function loadJQuery() {
	var oScript = document.createElement("script");
	oScript.type = "text/javascript";
	oScript.charset = "utf-8";
	oScript.src = "http://code.jquery.com/jquery-1.6.2.min.js";
	document.getElementsByTagName("head")[0].appendChild(oScript);
}

$(function() {
	$('.navmenu').click(function(){
		var seq=$(this).attr('id');
		/*해당 섹션의 offset(위에서부터 높이)*/
		var offset = $('#s'+seq).offset().top;
		alert(offset);
		$('body').animate({scrollTop : offset}, 400);
	});
	
	//상단바 고정
	 $( window ).scroll( function() {
		 
         if ( $( document ).scrollTop() > $('.detailBar').offset().top) {
           $( '.nav' ).addClass( 'menuFixed' );
         }
         else {
           $( '.nav' ).removeClass( 'menuFixed' );
         }
       });
	 
	$('#buy').click(function() {
		location.href="./productOrder";
	});
});
