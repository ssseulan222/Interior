function loadJQuery() {
	var oScript = document.createElement("script");
	oScript.type = "text/javascript";
	oScript.charset = "utf-8";
	oScript.src = "http://code.jquery.com/jquery-1.6.2.min.js";
	document.getElementsByTagName("head")[0].appendChild(oScript);
}
$(function() {

	/* 세일 가능 체크 */
	$("#saleCheck1").click(function() {
		$('#saleRate').removeAttr('readonly');
		$('#saleRate').removeAttr('value');
		$('#saleRate').attr('placeholer', '세일가를 입력하세요');
	});

	$('#saleCheck2').click(function() {
		$('#saleRate').attr('readonly', 'readonly');
		$('#saleRate').attr('value', '0');
		$('#salePrice').val($('#price').val());
	});

	/* 세일가 계산 */
	$('#saleRate').blur(
			function() {
				if ($('#saleRate').val() != null && $('#price').val() != null) {
					var salePrice = $('#price').val() - $('#saleRate').val()
							* $('#price').val() / 100;
					$('#salePrice').replace('value', salePrice);
				}

			});

	/* 세일률 계산 */
	$('#salePrice').blur(function() {
		if ($('#salePrice').val() != null && $('#price').val() != null) {
			var saleRate = 100 - $('#salePrice').val() / $('#price').val() * 100;
			$('#saleRate').replace('value', saleRate);
		}
	});

	/* 카테고리 */
	$('.cat-2').hide();
	$('.arrow').hide();

	$('#1').click(function() {
		$('.cat-2').hide();
		$('.arrow').show();
		$('#1-0').show();
	});
	$('#2').click(function() {
		$('.cat-2').hide();
		$('.arrow').show();
		$('#2-0').show();
	});
	$('#3').click(function() {
		$('.cat-2').hide();
		$('.arrow').show();
		$('#3-0').show();
	});
	$('#4').click(function() {
		$('.cat-2').hide();
		$('.arrow').show();
		$('#4-0').show();
	});
	$('#5').click(function() {
		$('.cat-2').hide();
		$('.arrow').show();
		$('#5-0').show();
	});
	$('#6').click(function() {
		$('.cat-2').hide();
		$('.arrow').show();
		$('#6-0').show();
	});
	$('#7').click(function() {
		$('.cat-2').hide();
		$('.arrow').show();
		$('#7-0').show();
	});
	$('#8').click(function() {
		$('.cat-2').hide();
		$('.arrow').show();
		$('#8-0').show();
	});
	$('#9').click(function() {
		$('.cat-2').hide();
		$('.arrow').show();
		$('#9-0').show();
	});

	/* 선택된 카테고리 */

	/* 배송비 */
	$('#delivery1').click(function() {
		$('#deliveryFee').attr('readonly', 'readonly')
	});

});
