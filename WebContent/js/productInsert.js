function loadJQuery() {
	var oScript = document.createElement("script");
	oScript.type = "text/javascript";
	oScript.charset = "utf-8";
	oScript.src = "http://code.jquery.com/jquery-1.6.2.min.js";
	document.getElementsByTagName("head")[0].appendChild(oScript);
}

$(function() {
	// 엔터방지
	document.addEventListener('keydown', function(event) {
	    if (event.keyCode === 13) {
	        event.preventDefault();
	    }
	}, true);
	
	$("#preview").hide();
	function readURL(input) {
		 
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	 
	        reader.onload = function (e) {
	            $('#preview-img').attr('src', e.target.result);
	        }
	 
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	 
	$("#mainPhoto").change(function(){
		$("#preview").show();
	    readURL(this);
	});
	
	
	// 선택된 카테고리 출력되게

	$('.category-1').click(function(){
		checkOne();
		$(this).children().css('background-color','rgb(53, 197, 240)');
		$(this).children().css('color','rgb(255,255,255)');
		$(this).children().css('border-color','rgb(53, 197, 240)');
		$('#category').val($(this).attr('id'));
	});

	function checkOne() {
		$('.selCat').css('background-color','rgb(255,255,255)');
		$('.selCat').css('color','rgb(0,0,0)');
		$('.selCat').css('border-color','lightgray');
		$('#category').val('');
	}

	$('.category-1').click(function() {
		var cat = "";
		$('.check').each(function() {
			if($(this).prop("checked") == true){
				cat += $(this).val() + ", ";
			}
			$('#category').attr('value',cat);				
		});
	});

	
	
	// 가격정보, 포인트
	$('#price').blur(function() {
		if($(this).val() != '' && $('#saleRate').val() != ''){
			var salePrice =  $(this).val() - $(this).val()*($('#saleRate').val()*0.01);
			
			$('#salePrice').val(salePrice);
			var point=Math.ceil($('#salePrice').val()*0.01);
		
			$('#point').val(point);
		} else {
			$('#salePrice').val('');
		}
				
	});
	
	$('#saleRate').blur(function(){
		if($(this).val() != ''){
			var salePrice =  $('#price').val() - $('#price').val()*($(this).val()*0.01);
			$('#salePrice').val(salePrice);
			var point=$('#salePrice').val()*0.01;
			$('#point').val(point);
		} else {
			$('#salePrice').val('');
		}
	});
	
	$('#salePrice').blur(function() {
		if($(this).val() != ''){
			var saleRate = ($('#price').val()-$(this).val())/$('#price').val()*100;
			$('#saleRate').val(saleRate);
			var point=$(this).val()*0.01;
			$('#point').val(point);
		}
	});
	

	
	
	// 무료택배
	$('#freeDeliv1').click(function() {
		$('#deliveryFee').attr('readonly','readonly');
		$('#deliveryFee').css('background-color','#f9f9f9c4');
		$('#deliveryFee').attr('value','0');
	});
	
	$('#freeDeliv2').click(function() {
		$('#deliveryFee').removeAttr('readeonly');
		$('#deliveryFee').css('background-color','white');
		$('#deliveryFee').attr('value','');
	});
	
	// 모두 작성
	$('#submitBtn').click(function() {
		/*if(
				$('#seller') != '' &&
				$('#name') != '' &&
				$('#category') != '' &&
				$('#mainPhoto') != '' &&
				$('#info') != '' &&
				$('#stock') != '' &&
				$('#price') != '' &&
				$('#saleRate') != '' &&
				$('#salePrice') != '' &&
				$('.lowestPrice').is(':checked') &&
				$('#point') != '' &&
				$('.freeDeliv').is(':checked') &&
				$('#deliveryFee') != '' &&
				$('#agreeCh').is(':checked')
			
		){*/
			$(this).submit();
		
		/*} else{
			alert('필수가 비었어요');
			return false;
		}*/
	});

});
