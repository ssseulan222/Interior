$(function() {
	
	var location="";
	var pro = "";
	$('.l').click(function() {
		location = $("#ll").text();
		pro=$("#pp").text();
		
		if(pro=="필요시공"){
			pro="";
		}
		$("#location").val(location);
		$("#pro").val(pro);
	});
	
	$('.p').click(function() {
		location = $("#ll").text();
		pro=$("#pp").text();
		$("#location").val(location);
		$("#pro").val(pro);
	});
});