$(function () {
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
	var r_,hphone;
	$(".ph").change(function() {
		phone = "";
		$(".ph").each(function() {
			phone += $(this).val();
		});
		$("#phone").val(phone);
	});
	
	$(".r_ph").change(function() {
		phone = "";
		$(".r_ph").each(function() {
			phone += $(this).val();
		});
		$("#r_phone").val(phone);
	});
	
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
				pro = "";
				$(".pro1").each(function() {
					if($(this).css('background-color') == "rgb(53, 197, 240)"){
						pro += " "+$(this).val();
					}
				});
				$("#pro").val(pro);
			}else{
				pro = "";
				$(this).css("background-color", "white");
				$(this).css("color", "black");
				clicked-=1;
				$(".pro1").each(function() {
					if($(this).css('background-color') == "rgb(53, 197, 240)"){
						pro += " "+$(this).val();
					}
				});
				$("#pro").val(pro);
			}
		}else{
			pro = "";
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				$(this).css("background-color", "white");
				$(this).css("color", "black");
				clicked-=1;
				$(".pro1").each(function() {
					if($(this).css('background-color') == "rgb(53, 197, 240)"){
						pro += " "+$(this).val();
					}
				});
				$("#pro").val(pro);
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
				$("#pro").val($(this).val());
				clicked2+=1;
			}else{
				$(this).css("background-color", "white");
				$(this).css("color", "black");
				$("#pro").val($(this).val());
				clicked2-=1;
			}
		}else{
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				$(this).css("background-color", "white");
				$(this).css("color", "black");
				$("#pro").val("");
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
		space_type = ""; 
		if($(this).css('background-color') != "rgb(255, 255, 255)"){
			$(this).css("background-color", "white");
			$(this).css("color", "black");
		}else{
			$(this).css("background-color", "#35c5f0");
			$(this).css("color", "white");
		}
		$(".place").each(function() {
			if($(this).css('background-color') == "rgb(53, 197, 240)"){
				space_type += $(this).val();
			}
		});
		$("#place").val(space_type);
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
		$("#a_s").val($(this).val());
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
		$("#carreer").val($(this).val());
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
		$("#pay").val($(this).val());
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
		$("#deposit").val($(this).val());
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
		
		if($(this).attr("id") == "part"){
			$("#pro01").css('display','inline');
			$("#pro02").css('display','none');
			clicked2=0;
			$(".pro2").css('background-color', 'white');
			$(".pro2").css('color', 'black');
			$("#contract").val("부분");
		}else if($(this).attr("id") == "combine"){
			$("#pro02").css('display','inline');
			$("#pro01").css('display','none');
			clicked=0;
			$(".pro1").css('background-color', 'white');
			$(".pro1").css('color', 'black');
			$("#contract").val("통합");
		}else if($(this).attr("id") == "synthesis"){
			$("#pro01").css('display','none');
			$("#pro02").css('display','none');
			$("#contract").val("종합");
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
		tag = "";
		if($(this).css('background-color') != "rgb(255, 255, 255)"){
			$(this).css("background-color", "white");
			$(this).css("color", "black");
			$(".tag").each(function() {
				if($(this).css('background-color') == "rgb(53, 197, 240)"){
					tag += $(this).val();
				}
			});
		}else{
			$(this).css("background-color", "#35c5f0");
			$(this).css("color", "white");
			$(".tag").each(function() {
				if($(this).css('background-color') == "rgb(53, 197, 240)"){
					tag += " " +$(this).val();
				}
			});
		}
		$("#tag").val(tag);
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
			$("#r_check").val("프리랜서");
		}else if($(this).val()=="등록(개인사업자)"){
			$(".q4_d").each(function() {
				$(this).css("display", "none");
			});
			$("#individual").css("display", "inline");
			$("#r_check").val("개인사업자");
		}else if($(this).val()=="등록(법인사업자)"){
			$(".q4_d").each(function() {
				$(this).css("display", "none");
			});
			$("#corporation").css("display", "inline");
			$("#r_check").val("법인사업자");
		}else if($(this).val()=="등록(브랜드대리점)"){
			$(".q4_d").each(function() {
				$(this).css("display", "none");
			});
			$("#brand").css("display", "inline");
			$("#r_check").val("브랜드대리점");
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
		
		$("#route").val($(this).val());
	});

	$(".count").click(function() {
		$(".count").each(function() {
			if($(this).css("color") == "rgb(0, 78, 131)"){
				$(this).css("color", "black");
			}
		});
		$(this).css("color", "#004e83");
		if($(this).attr("id") == "01"){
			$("#head1").css("display", "inline-block");
			$("#body1").css("display", "inline-block");
			$("#head2").css("display", "none");
			$("#body2").css("display", "none");
			$("#head3").css("display", "none");
			$("#body3").css("display", "none");
			$("#head4").css("display", "none");
			$("#body4").css("display", "none");
		}else if($(this).attr("id") == "02"){
			$("#head2").css("display", "inline-block");
			$("#body2").css("display", "inline-block");
			$("#head1").css("display", "none");
			$("#body1").css("display", "none");
			$("#head3").css("display", "none");
			$("#body3").css("display", "none");
			$("#head4").css("display", "none");
			$("#body4").css("display", "none");
		}else if($(this).attr("id") == "03"){
			$("#head3").css("display", "inline-block");
			$("#body3").css("display", "inline-block");
			$("#head1").css("display", "none");
			$("#body1").css("display", "none");
			$("#head2").css("display", "none");
			$("#body2").css("display", "none");
			$("#head4").css("display", "none");
			$("#body4").css("display", "none");
		}else if($(this).attr("id") == "04"){
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
				if($(this).attr("id") == "marketing"){
					$("#c_check").val("1");
				}
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
			$("#c_check").val("1");
		}else{
			$(".c_check").each(function() {
				$(this).prop("checked", false);
				$("#c_check").val("0");
			});
		}
	});
	var e;
	$("#s_email").mouseout(function() {
		$(".ad").each(function() {
			if($(this).prop("selected")){
				
				e = $("#email").val()+"@"+$(this).val();
				
			}
		});
		$("#address").val(e);

	});
	$("#select").click(function() {
		if($("#locat").css("display") == "none"){
			$("#locat").css("display", "inline-block");
		}else{
			$("#locat").css("display", "none");
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
	
	var l1;
	$(".location").click(function() {
		l1 = $(this).text().replace(">", " ");
	});
	
	var l2;
	$(".l").click(function() {
		l2 = $(this).html();
		$("#loc").html(l1+l2);
		$("#location").val(l1+l2);
		$("#locat").css("display", "none");
		$(".ul").css("display", "none");
	});
});