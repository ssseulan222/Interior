$(function () {
	$("#complete").click(function() {


		var contract;
		var pro;
		var space_type = "주거공간";
		var a_s;
		var carreer;
		var pay;
		var deposit;
		$(".se").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				contract = $(this).val();
			}
		});
		$(".pro1").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				pro += ","+$(this).val();
			}
		});
		$(".pro2").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				pro += ","+$(this).val();
			}
		});
		$(".place").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				space_type += ","+$(this).val();
			}
		});
		$(".a_s").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				a_s = $(this).val();
			}
		});
		$(".carreer").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				carreer = $(this).val();
			}
		});
		$(".pay").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				pay = $(this).val();
			}
		});
		$(".deposit").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				deposit = $(this).val();
			}
		});


		var tag;
		$(".tag").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				tag += $(this).val();
			}
		});

		var email;
		email = $("#email").val()+"@";
		if($("#adr").attr("selected")){
			alert($(this).val());
		}else{
			alert($(this).val());
		}
	});
});