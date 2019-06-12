function loadJQuery() {
	var oScript = document.createElement("script");
	oScript.type = "text/javascript";
	oScript.charset = "utf-8";
	oScript.src = "http://code.jquery.com/jquery-1.6.2.min.js";
	document.getElementsByTagName("head")[0].appendChild(oScript);
}

$(function() {

	var con=false;
	var check1=0;
	var check2=0;
	var idReg=/^[A-Za-z]{1}[A-Za-z0-9]{6,19}$/;
	var pwReg=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,19}$/;

	//비밀번호
	$('#cor1').hide();
	$('#cor2').hide();
	$('#pw2').keyup(function() {
		if($('#pw').val() !=''){
			if($('#pw2').val()==$('#pw').val()){
				$('#cor1').show();
				$('#cor2').hide();
			} else if($('#pw2').val()!=$('#pw').val()){
				$('#cor1').hide();
				$('#cor2').show();
			}
		} else {
			$('#cor1').hide();
			$('#cor2').hide();
		}
	});
	
	$('#pw').keyup(function() {
		if($('#pw2').val() !=''){
			if($('#pw2').val()==$('#pw').val()){
				$('#cor1').show();
				$('#cor2').hide();
			} else if($('#pw2').val()!=$('#pw').val()){
				$('#cor1').hide();
				$('#cor2').show();
			}
		} else {
			$('#cor1').hide();
			$('#cor2').hide();
		}
	});
	
	$('#pw2').blur(function() {
		if(!pwReg.test($('#pw2').val())){
			alert("올바른 비밀번호를 작성해주세요");
			$(this).val('');
		}
	});
	
	$('#pw').blur(function() {
		if(!pwReg.test($('#pw').val())){
			alert("올바른 비밀번호를 작성해주세요");
			$(this).val('');
		} else {
			check2=1;
		}
	});
	
	
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

	
	// 아이디 중복 체크 --- ajax
	$('#error').hide();
	$('#right').hide();
	$('#id').blur(function(){
		if($(this).val()==""){
			$('#error').hide();
			$('#right').hide();
		}
		
		if(!idReg.test($('#id').val())){	// 정규식 체크
			$('#error').show();
			$('#right').hide();
			check1=0;
		} else {
			$.ajax({
				url:'./idCheck',
				type:'POST',
				data:{'id':$(this).val()},
				success: function(data) {
				data.trim();
					if(data==1){
						$('#error').hide();
						$('#right').show();
						check1=1;
					} else {
				    	$('#error').show();
				    	$('#right').hide();
				    	check1=0;
					}
			    },
			    error: function(err) {
			 
			    	$('#error').show();
			    	$('#right').hide();
			    	check1=0;
			    }
			});
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
