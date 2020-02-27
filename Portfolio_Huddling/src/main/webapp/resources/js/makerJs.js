function breadChange() {
	var url = document.URL.split('/');
	console.log("url",url);
	$("#bread").text(url[4]);
}

//임시 저장 데이터 
function formsave(url) {
	var params = $('#formTampData').serializeArray();
	console.log(params);
	$.post(url, params, function(result) {
		console.log("result :",result);
	});
}

function readURL(input) {
    if (input.files && input.files[0]) {
    var filesName = input.files[0].name;
    var reader = new FileReader();
    reader.onload = function (e) {
            $('#blah').attr('src', e.target.result);
        }
      reader.readAsDataURL(input.files[0]);
    }
    return input.files[0];
}

function rewordAdded(url,num){
	var params = $('#formTampData').serializeArray();
	console.log("data 확인...",params);
	$.post(url,params,function(result){
			console.log('전달 값...',result);
//			$('#wrapper').load('/maker/reword/' + num);
			location.reload();
			console.log('전달 완료...');
		});
}

function rewordUpdate(url) {
	var params = $('#formTampData').serializeArray();
	console.log("params",params);
	$.post(url, params, function(result) {
		console.log("result :",result);
	});
}

function imgInp(){
	$("#imgInp").on('change', function(){
        var img = readURL(this);
        var formData = new FormData();
		formData.append("file", img);
        console.log("imgId : ", img);
        var url = "/upload/intro_img";
        $.ajax({
			"type" : "post",
			"url" : url,
			"processData" : false,
			"contentType" : false,
			"data" : formData,
			"success" : function(path){
				console.log("path : " + path);
				var index = path.lastIndexOf("/");
				var sub = path.substring(index + 1);
				console.log("substring : " + sub);
				$("#introImg").val(path);
				}
			});
    	});
	}


	