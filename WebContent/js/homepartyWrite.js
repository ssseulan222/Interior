/**
 * 
 */
$(function() {
		$("#hometitle").blur(function() {
			var hometitle = $("#hometitle").val();
			if(hometitle!=null&&hometitle!=''){
				$('#title_check').val('0');
			}else if(hometitle==''){
				$('#title_check').val('');
			}
			
		});
		$("#place").blur(function() {
			var place = $("#place option:selected").val();
		});
		$("#floor").blur(function() {
			var floor = $(this).val();
			if(floor!=null&&floor!=''){
				$('#floor_check').val('0');
			}else if(floor==''){
				$('#floor_check').val('');
			}
		});
		$("#field").blur(function() {
			var field=$("#field option:selected").val();
		});
		$("#family").blur(function() {
			var family = $("#family option:selected").val();
			if(family==0){
				$('#family_check').val('');
			}else{
				$('#family_check').val('0');
			}
		});
		$("#style").blur(function() {
			var style = $("#style option:selected").val();
		});
		$('#money').blur(function() {
			var money = $(this).val();
		});
		$('#detail').blur(function() {
			var detail = $("#detail option:selected").val();
		});
		/*$('#location_first').blur(function() {
			var location_first = $("#location_first option:selected").val();
			if(location_first=='0'){
				$('.second_select').css('display','none');
			}if(location_first=='서울특별시'){
				$('.second_select').css('display','none');
				$('.second_select').attr('name','aaa');
				$('.0').css('display','');
			}else if(location_first=='부산광역시'){
				$('.second_select').css('display','none');
				$('.1').css('display','');
			}else if(location_first=='대구광역시'){
				$('.second_select').css('display','none');
				$('.2').css('display','');
			}else if(location_first=='인천광역시'){
				$('.second_select').css('display','none');
				$('.3').css('display','');
			}else if(location_first=='광주광역시'){
				$('.second_select').css('display','none');
				$('.4').css('display','');
			}else if(location_first=='대전광역시'){
				$('.second_select').css('display','none');
				$('.5').css('display','');
			}else if(location_first=='울산광역시'){
				$('.second_select').css('display','none');
				$('.6').css('display','');
			}
		});
		
 		$('#location_last').blur(function() {
			var location_last = $(".location_last option:selected").val();
			var location_first = $("#location_first option:selected").val();
			alert(location_first);
			alert(location_last);
			
		}); 
		
		
		
		기간 주,개월 바꾸기
		$('input[type=radio][name=weekmonth]').on('click',function(){
			var check = $('input[type=radio][name=weekmonth]:checked').val();
			if(check==0){
				$('#week').css('display','block');
				$('#month').css('display','none');
			}else if(check==1){
				$('#month').css('display','block');
				$('#week').css('display','none');
			}
		});*/
		
		$("#publish_submit").click(function() {
			// 마지막 버튼 눌렀을때 서브밋 되는 것 $("#homepartywrite").submit();
			var work = $('input[name="work"]:checked').val();
			var check = $('input[type=radio][name=weekmonth]:checked').val();
			var a;
			if(check==0){
				a='주';
			}else if(check==1){
				a='개월';
			}
			var weekmonth = $('#weekmonth').val()+a;
			var title_check = $('#title_check').val();
			var floor_check = $('#floor_check').val();
			var family_check = $('#family_check').val();
			alert(title_check);
			if(title_check=='0'&&floor_check=='0'&&family_check=='0'){
				alert("aa");
				$("#homepartywrite").submit();
			}else{
				
			}
		});
		
		
		
		
	});