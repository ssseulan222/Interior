<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="postcodify"></div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script type="text/javascript">
        $("#postcodify").postcodify();
        var ad = window.opener.document.getElementById("address");
        var po = $("#postcodify").val();
        
        $(function() { $("#postcodify").postcodify({
            insertPostcode5 : "#postcode",
            insertAddress : "#address",
            insertDetails : "#details",
            insertExtraInfo : "#extra_info",
            hideOldAddresses : false
        }); });
        
        $("#postcodify").click(function () {
        	ad.value = $("#postcodify").postcodify();
		});
        
</script>

</body>
</html>