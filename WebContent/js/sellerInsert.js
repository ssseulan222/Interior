function loadJQuery() {
	var oScript = document.createElement("script");
	oScript.type = "text/javascript";
	oScript.charset = "utf-8";
	oScript.src = "http://code.jquery.com/jquery-1.6.2.min.js";
	document.getElementsByTagName("head")[0].appendChild(oScript);
}

$(function() {
	document.addEventListener('keydown', function(event) {
	    if (event.keyCode === 13) {
	        event.preventDefault();
	    }
	}, true);
	
	// 카테고리 ajax
	
	/*$('.category-1').on('click',function() {
		$.ajax({
			url:'./cat2',
			type:'POST',
			data:{'id':$(this).attr('id')},
			success:function(data){
				data.trim();
			},
			error:function(data){
				
			}
		});
	});*/
	
	
	// 선택된 카테고리 출력되게

	$('.check').click(function() {
		var cat = "";
		$('.check').each(function() {
			if($(this).prop("checked") == true){
				cat += $(this).val() + ", ";
			}
			$('#category').attr('value',cat);				
		});
	});

	
	// 가격정보
	$('#price').blur(function() {
		if($(this).val() != '' && $('#saleRate').val() != ''){
			var salePrice =  $(this).val() - $(this).val()*($('#saleRate').val()*0.01);
			$('#salePrice').val(salePrice);
		} else {
			$('#salePrice').val('');
		}
				
	});
	
	$('#saleRate').blur(function(){
		if($(this).val() != ''){
			var salePrice =  $('#price').val() - $('#price').val()*($(this).val()*0.01);
			$('#salePrice').val(salePrice);
		} else {
			$('#salePrice').val('');
		}
	});
	
	$('#salePrice').blur(function() {
		if($(this).val() != ''){
			var saleRate = ($('#price').val()-$(this).val())/$('#price').val()*100;
			$('#saleRate').val(saleRate);
		}
	});
	
	
	// 모두 작성
	
	$('#submitBtn').click(function() {
		if(
				$('#id').val() != '' &&
				check1==1 &&
				$('#pw').val() == $('#pw2').val() &&
				check2==1&&
				$('#companyName').val() != ''&&
				$('#pw').val() != '' &&
				$('#companyNum').val() != ''&&
				$('#marketerName').val() != ''&&
				$('#phone').val() != ''&&
				$('#email').val() != ''&&
				$('#brandName').val() != ''&&
				$('#category').val() != ''&&
				$('#info').val() != ''&&
				$('#agreeCh').is(':checked')
		){
			con=true;
			$(this).submit();
		
		} else{
			alert('필수가 비었어요');
			return false;
		}
	});

});
