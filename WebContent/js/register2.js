$(function () {
	$("#complete").click(function() {
		var contract;
		var pro;
		var space_type = "주거공간";
		var a_s;
		var carreer;
		var pay;
		var deposit;
		var tag;
		var email;
		var phone;
		var r_check;
		var c_num;
		var c_regi;
		var route;
		var c_check;
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

		$(".tag").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				tag += $(this).val();
			}
		});

		email = $("#email").val()+"@";
		$(".adr").each(function() {
			if($(this).prop("selected")){
				email += $(this).val();
			}
		});
		phone = $("#phone1")+$("#phone2")+$("#phone3")

		$(".r_check").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				r_check = $(this).val();
			}
		});

		c_num = $("#c_num1") + $("#c_num2") + $("#c_num3");
		if($("#c_regi").prop("checked")){
			c_regi=1;
		}else{
			c_regi=2;
		}

		$(".route").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				route += $(this).val();
			}
		});

		if($("#marketing").prop("checked")){
			c_check = 1;
		}else{
			c_check = 2;
		}

		$.post("./ExpertJoin",
				{
			contract : contract,
			pro : pro,
			space_type : space_type,
			a_s : a_s,
			carreer : carreer,
			pay : pay,
			deposit : deposit,
			tag : tag,
			email : email,
			phone : phone,
			r_check : r_check,
			c_num : c_num,
			c_regi : c_regi,
			route : route,
			c_check : c_check
				});
	});
});