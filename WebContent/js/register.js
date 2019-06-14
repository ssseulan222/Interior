$(function () {
	
	$("#open").click(function() {
		$("#modal").css("display", "inline");
	});
	$("#close").click(function() {
		$("#modal").css("display", "none");
	});
	
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
		if($(this).val()=="미등록(프리랜서)"){
			$(".q4_d").each(function() {
				$(this).css("display", "none");
			});
			$("#freelancer").css("display", "inline");
		}else if($(this).val()=="등록(개인사업자)"){
			$(".q4_d").each(function() {
				$(this).css("display", "none");
			});
			$("#individual").css("display", "inline");
		}else if($(this).val()=="등록(법인사업자)"){
			$(".q4_d").each(function() {
				$(this).css("display", "none");
			});
			$("#corporation").css("display", "inline");
		}else if($(this).val()=="등록(브랜드대리점)"){
			$(".q4_d").each(function() {
				$(this).css("display", "none");
			});
			$("#brand").css("display", "inline");
		}
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
	
	$(".c_check").click(function() {
		var check = 0;
		$(".c_check").each(function() {
			if($(this).prop("checked")){
				check++;
			}
		});
		if(check == 4){
			$("#allagree").prop("checked", true);
		}else{
			$("#allagree").prop("checked", false);
		}
	});
	$("#allagree").click(function() {
		if($(this).prop("checked")){
			$(".c_check").each(function() {
				$(this).prop("checked", true);
			});
		}else{
			$(".c_check").each(function() {
				$(this).prop("checked", false);
			});
		}
	});
	
	$("#s_email").mouseout(function() {
		$(".ad").each(function() {
			if($(this).prop("selected")){
				if($(this).attr("id")=="self"){
					$("#email2").html('<input type="text" id="email2" name="email2">');
				}
			}
		});
	});
	$("#select").click(function() {
		if($("#location").css("display") == "none"){
			$("#location").css("display", "inline-block");
		}else{
			$("#location").css("display", "none");
			$(".ul").css("display", "none");
		}
	});
	$(".location").click(function() {
		if ($(this).attr("id") == "seoul") {
			$(".ul").css("display", "none");
			$("#1").css("display", "inline-block");
		} else if ($(this).attr("id") == "busan") {
			$(".ul").css("display", "none");
			$("#2").css("display", "inline-block");
		} else if ($(this).attr("id") == "daegu") {
			$(".ul").css("display", "none");
			$("#3").css("display", "inline-block");
		} else if ($(this).attr("id") == "incheon") {
			$(".ul").css("display", "none");
			$("#4").css("display", "inline-block");
		} else if ($(this).attr("id") == "gwangju") {
			$(".ul").css("display", "none");
			$("#5").css("display", "inline-block");
		} else if ($(this).attr("id") == "daejeon") {
			$(".ul").css("display", "none");
			$("#6").css("display", "inline-block");
		} else if ($(this).attr("id") == "ulsan") {
			$(".ul").css("display", "none");
			$("#7").css("display", "inline-block");
		} else if ($(this).attr("id") == "gangwon") {
			$(".ul").css("display", "none");
			$("#8").css("display", "inline-block");
		} else if ($(this).attr("id") == "gyunggi") {
			$(".ul").css("display", "none");
			$("#9").css("display", "inline-block");
		} else if ($(this).attr("id") == "gyungsangnam") {
			$(".ul").css("display", "none");
			$("#10").css("display", "inline-block");
		} else if ($(this).attr("id") == "gyungsangbuk") {
			$(".ul").css("display", "none");
			$("#11").css("display", "inline-block");
		} else if ($(this).attr("id") == "jeonranam") {
			$(".ul").css("display", "none");
			$("#12").css("display", "inline-block");
		} else if ($(this).attr("id") == "jeonrabuk") {
			$(".ul").css("display", "none");
			$("#13").css("display", "inline-block");
		} else if ($(this).attr("id") == "chungchennam") {
			$(".ul").css("display", "none");
			$("#14").css("display", "inline-block");
		} else if ($(this).attr("id") == "chungchenbuk") {
			$(".ul").css("display", "none");
			$("#15").css("display", "inline-block");
		} else if ($(this).attr("id") == "jeju") {
			$(".ul").css("display", "none");
			$("#16").css("display", "inline-block");
		}
	});
});