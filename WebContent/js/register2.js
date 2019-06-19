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
				contract = $(this).attr("id");
				$("#contract").val(contract);
			}
		});
		$(".pro1").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				pro += ","+$(this).val();
				$("#pro").val(pro);
			}
		});
		$(".pro2").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				pro += $(this).val();
				$("#pro").val(pro);
			}
		});
		$(".place").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				space_type += ","+$(this).val();
				$("#space_type").val(space_type);
			}
		});
		$(".a_s").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				a_s = $(this).val();
				$("#a_s").val(a_s);
			}
		});
		$(".carreer").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				carreer = $(this).val();
				$("#carreer").val(carreer);
			}
		});
		$(".pay").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				pay = $(this).val();
				$("#pay").val(pay);
			}
		});
		$(".deposit").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				deposit = $(this).val();
				$("#deposit").val(deposit);
			}
		});

		$(".tag").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				tag += $(this).val();
				$("#tag").val(tag);
			}
		});

		email = $("#email").val()+"@";
		$(".ad").each(function() {
			if($(this).prop("selected")){
				email += $(this).val();
			}
		});
		email += $("#email2").val();
		$("#email").val(email);
		phone = $("#phone1")+$("#phone2")+$("#phone3")
		$("#phone").val(phone);
		$(".r_check").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				r_check = $(this).val();
			}
		});
		$("#r_check").val(r_check);
		c_num = $("#c_num1") + $("#c_num2") + $("#c_num3");
		$("#c_num").val(c_num)
		if($("#c_regi").prop("checked")){
			c_regi=1;
		}else{
			c_regi=2;
		}
		$("#c_regi").val(c_regi);
		$(".route").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				route += $(this).val();
			}
		});
		$("#route").val(route);
		if($("#marketing").prop("checked")){
			c_check = 1;
		}else{
			c_check = 2;
		}
		$("#c_check").val(c_check);
        
        oEditors.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
        $("#frm").submit();
	});
});