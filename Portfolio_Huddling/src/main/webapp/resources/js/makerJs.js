function breadChange() {
	var thisfilefullname = document.URL.substring(
			document.URL.lastIndexOf("/") + 1, document.URL.length);
	console.log(thisfilefullname);
	$("#bread").text(thisfilefullname);
}

//임시 저장 데이터 
function formsave(url) {
	var params = $('#formTampData').serializeArray();
	console.log(params);
	$.ajax({
		'url' : url,
		'type' : 'POST',
		'data' : params,
		'dataType' : 'html',
		'success' : function(result) {
			console.log("임시 저장", result);
		}
	});
}