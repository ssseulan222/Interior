function loadJQuery() {
	var oScript = document.createElement("script");
	oScript.type = "text/javascript";
	oScript.charset = "utf-8";
	oScript.src = "http://code.jquery.com/jquery-1.6.2.min.js";
	document.getElementsByTagName("head")[0].appendChild(oScript);
}

$(function() {

	//플레이스홀더
	$('input').click(function() {
		$(this).removeAttr('placeholder')
	});
	$('input').blur(function() {
		$(this).attr('placeholder', '값을 입력해주세요');
	});

	//비밀번호
	$('#cor1').hide();
	$('#cor2').hide();
	$('#pw2').keyup(function() {
		if($('#pw') != null){
			if($('#pw2').val()==$('#pw').val()){
				$('#cor1').show();
				$('#cor2').hide();
			} else if($('#pw2').val()!=$('#pw').val()){
				$('#cor1').hide();
				$('#cor2').show();
			}
		}
	});
	$('#pw').keyup(function() {
		if($('#pw2') != null){
			if($('#pw2').val()==$('#pw').val()){
				$('#cor1').show();
				$('#cor2').hide();
			} else if($('#pw2').val()!=$('#pw').val()){
				$('#cor1').hide();
				$('#cor2').show();
			}
		}
	});
	
	// 선택된 카테고리 출력되게
	$('#submit').click(function() {
		console.log("click");
	});

	$('.check').click(function() {
		var cat = "";
		$('.check').each(function() {
			if($(this).prop("checked") == true){
				cat += $(this).val() + " ";
			}
			$('#category').attr('value',cat);				
		});
	});
	
	function joinConfirm() {
		if($('#id').val().length < 6){
			alert("아이디를 다시 입력");
			$(this).focus();
			return;
		}
	}

});
