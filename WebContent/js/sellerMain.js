function loadJQuery() {
	var oScript = document.createElement("script");
	oScript.type = "text/javascript";
	oScript.charset = "utf-8";
	oScript.src = "http://code.jquery.com/jquery-1.6.2.min.js";
	document.getElementsByTagName("head")[0].appendChild(oScript);
}

$(function() {
	$('#insertProduct').click(function() {
		location.href="../product/productInsert";
	})
	$('#updateSeller').click(function() {
		location.href="./sellerUpdate";
	});
});