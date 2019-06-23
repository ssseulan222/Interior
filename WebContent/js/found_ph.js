	$(function () {
		$("#ll").click(function() {
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
			$("#ll").text(l1+l2);
			$("#locat").css("display", "none");
			$(".ul").css("display", "none");
		});
		$("#pp").click(function () {
			if($(".ul2").css("display") == "none"){
				$(".ul2").css("display", "inline-block");
			}else{
				$(".ul2").css("display", "none");
			}
		});
		$(".p").click(function() {
			$(".ul2").css("display", "none");
			var p = $(this).text();
			$("#pp").text(p);
		});
	});
