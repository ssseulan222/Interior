function loadJQuery() {
	var oScript = document.createElement("script");
	oScript.type = "text/javascript";
	oScript.charset = "utf-8";
	oScript.src = "http://code.jquery.com/jquery-1.6.2.min.js";
	document.getElementsByTagName("head")[0].appendChild(oScript);
}

$(function() {

	$('input').click(function() {
		$(this).removeAttr('placeholder')
	});
	$('input').blur(function() {
		$(this).attr('placeholder', '값을 입력해주세요');
	});

	$('#12').click(function() {
		if($(this).is(":checked")){
			$('.check').prop('checked', true);
		} else {
			$('.check').prop('checked', false);
		}
	});

	//var cat=document.getElementsByName('cat');
	$('.check').click(function() {
		var cat = "";
		$('.check').each(function() {
			if($(this).prop("checked") == true){
				cat += $(this).val() + " ";
				$('#category').val(cat);				
			}
		})
	});
	

});
