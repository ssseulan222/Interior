$(function () {
	var clicked=0;
	$(".pro1").click(function () {
		if(clicked!=3){
			if($(this).css('background-color') == "rgb(255, 255, 255)"){
				$(this).css("background-color", "#35c5f0");
				$(this).css("color", "white");
				clicked+=1;
			}else{
				$(this).css("background-color", "white");
				$(this).css("color", "black");
				clicked-=1;
			}
		}else{
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				$(this).css("background-color", "white");
				$(this).css("color", "black");
				clicked-=1;
			}
		}

		if(clicked == 3){
			$(".pro1").each(function () {
				if($(this).css('background-color') == "rgb(255, 255, 255)"){
					$(this).css("background-color", "#ededed");
				}
			});
		}else{
			$(".pro1").each(function () {
				if($(this).css('background-color') == "rgb(237, 237, 237)"){
					$(this).css("background-color", "white");
				}
			});
		}
	});
	var clicked2 = 0;
	$(".pro2").click(function () {
		if(clicked2!=1){
			if($(this).css('background-color') == "rgb(255, 255, 255)"){
				$(this).css("background-color", "#35c5f0");
				$(this).css("color", "white");
				clicked2+=1;
			}else{
				$(this).css("background-color", "white");
				$(this).css("color", "black");
				clicked2-=1;
			}
		}else{
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				$(this).css("background-color", "white");
				$(this).css("color", "black");
				clicked2-=1;
			}
		}

		if(clicked == 3){
			$(".pro2").each(function () {
				if($(this).css('background-color') == "rgb(255, 255, 255)"){
					$(this).css("background-color", "#ededed");
				}
			});
		}else{
			$(".pro2").each(function () {
				if($(this).css('background-color') == "rgb(237, 237, 237)"){
					$(this).css("background-color", "white");
				}
			});
		}
	});

	$(".place").click(function() {
		if($(this).css('background-color') != "rgb(255, 255, 255)"){
			$(this).css("background-color", "white");
			$(this).css("color", "black");
		}else{
			$(this).css("background-color", "#35c5f0");
			$(this).css("color", "white");
		}
	});

	$(".a_s").click(function() {
		$(".a_s").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				$(this).css("background-color", "white");
				$(this).css("color", "black");
			}
		});
		$(this).css("background-color", "#35c5f0");
		$(this).css("color", "white");
	});
	$(".carreer").click(function() {
		$(".carreer").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				$(this).css("background-color", "white");
				$(this).css("color", "black");
			}
		});
		$(this).css("background-color", "#35c5f0");
		$(this).css("color", "white");
	});
	$(".pay").click(function() {
		$(".pay").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				$(this).css("background-color", "white");
				$(this).css("color", "black");
			}
		});
		$(this).css("background-color", "#35c5f0");
		$(this).css("color", "white");
	});
	$(".deposit").click(function() {
		$(".deposit").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				$(this).css("background-color", "white");
				$(this).css("color", "black");
			}
		});
		$(this).css("background-color", "#35c5f0");
		$(this).css("color", "white");
	});

	$(".se").click(function() {
		$(".se").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				$(this).css("background-color", "white");
				$(this).css("color", "black");
			}
		});
		$(this).css("background-color", "#35c5f0");
		$(this).css("color", "white");

		if($(this).val() == "부분"){
			$("#pro01").css('display','inline');
			$("#pro02").css('display','none');
			clicked2=0;
			$(".pro2").css('background-color', 'white');
			$(".pro2").css('color', 'black');
		}else if($(this).val() == "통합"){
			$("#pro02").css('display','inline');
			$("#pro01").css('display','none');
			clicked=0;
			$(".pro1").css('background-color', 'white');
			$(".pro1").css('color', 'black');
		}else if($(this).val() == "종합"){
			$("#pro01").css('display','none');
			$("#pro02").css('display','none');
		}
	});

	$("#next1").click(function() {
		$("#head1").css("display", "none");
		$("#body1").css("display", "none");
		$("#head2").css("display", "inline-block");
		$("#body2").css("display", "inline-block");
	});

	$("#before1").click(function() {
		$("#head1").css("display", "inline-block");
		$("#body1").css("display", "inline-block");
		$("#head2").css("display", "none");
		$("#body2").css("display", "none");
	});

	$("#next2").click(function() {
		$("#head2").css("display", "none");
		$("#body2").css("display", "none");
		$("#head3").css("display", "inline-block");
		$("#body3").css("display", "inline-block");
	});

	$("#before2").click(function() {
		$("#head2").css("display", "inline-block");
		$("#body2").css("display", "inline-block");
		$("#head3").css("display", "none");
		$("#body3").css("display", "none");
	});

	$("#next3").click(function() {
		$("#head3").css("display", "none");
		$("#body3").css("display", "none");
		$("#head4").css("display", "inline-block");
		$("#body4").css("display", "inline-block");
	});

	$("#before3").click(function() {
		$("#head3").css("display", "inline-block");
		$("#body3").css("display", "inline-block");
		$("#head4").css("display", "none");
		$("#body4").css("display", "none");
	});

	$(".tag").click(function() {
		if($(this).css('background-color') != "rgb(255, 255, 255)"){
			$(this).css("background-color", "white");
			$(this).css("color", "black");
		}else{
			$(this).css("background-color", "#35c5f0");
			$(this).css("color", "white");
		}
	});
	
	$(".r_check").click(function() {
		$(".r_check").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				$(this).css("background-color", "white");
				$(this).css("color", "black");
			}
		});
		$(this).css("background-color", "#35c5f0");
		$(this).css("color", "white");
	});
	
	
	$(".route").click(function() {
		$(".route").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				$(this).css("background-color", "white");
				$(this).css("color", "black");
			}
		});
		$(this).css("background-color", "#35c5f0");
		$(this).css("color", "white");
	});

	$(".count").click(function() {
		if($(this).attr("id") == "1"){
			$("#head1").css("display", "inline-block");
			$("#body1").css("display", "inline-block");
			$("#head2").css("display", "none");
			$("#body2").css("display", "none");
			$("#head3").css("display", "none");
			$("#body3").css("display", "none");
			$("#head4").css("display", "none");
			$("#body4").css("display", "none");
		}else if($(this).attr("id") == "2"){
			$("#head2").css("display", "inline-block");
			$("#body2").css("display", "inline-block");
			$("#head1").css("display", "none");
			$("#body1").css("display", "none");
			$("#head3").css("display", "none");
			$("#body3").css("display", "none");
			$("#head4").css("display", "none");
			$("#body4").css("display", "none");
		}else if($(this).attr("id") == "3"){
			$("#head3").css("display", "inline-block");
			$("#body3").css("display", "inline-block");
			$("#head1").css("display", "none");
			$("#body1").css("display", "none");
			$("#head2").css("display", "none");
			$("#body2").css("display", "none");
			$("#head4").css("display", "none");
			$("#body4").css("display", "none");
		}else if($(this).attr("id") == "4"){
			$("#head4").css("display", "inline-block");
			$("#body4").css("display", "inline-block");
			$("#head1").css("display", "none");
			$("#body1").css("display", "none");
			$("#head2").css("display", "none");
			$("#body2").css("display", "none");
			$("#head3").css("display", "none");
			$("#body3").css("display", "none");
		}
	});
	
	$("#ad").click(function() {
		window.open("../register/address.jsp", "", "width=500,height=500");
	});
	$("#adr").click(function() {
		if($(this).attr("selected").text() == "직접입력"){
			$("#email2").html('<input type="text" name="email" id="adr">');
		}
	});
});