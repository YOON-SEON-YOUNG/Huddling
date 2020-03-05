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
// 주석 작성
function helpText(){
$('.help').prev().each(function(){
		$(this).keyup(function(){
		var inputId = $(this).attr('id');
		var helpTxtField = $(this).next();
		var helpText = '';
		var length = $(this).val().length;
		var maxLength = 0;
		switch(inputId){
		//requir
			case 'q1Desc' :
			maxLength = 500;
			var remain = maxLength - length;
			helpText = remain + '자 남음';
			break;
			case 'q2Desc' :
			maxLength = 500;
			var remain = maxLength - length;
			helpText = remain + '자 남음';
			break;
				
			case 'q3Desc' :
			maxLength = 500;
			var remain = maxLength - length;
			helpText = remain + '자 남음';
			break;
		//basicInfo
			case 'projectTitle':
			maxLength = 40;
			var remain = maxLength - length;
			helpText = remain + '자 남음';
			break;
			case 'projectAmount':
			var amount = $(this).val();
			if((event.keyCode<48 || event.keyCode>57) && (event.keyCode<96 || event.keyCode>105) && event.keyCode != 8){
				this.value=this.value.replace(/[^0-9]/g,'');
	        	helpText ='숫자만 입력 가능 합니다.';
	        } else if (amount < 500000){
	        	helpText ='최소 50만원부터 가능 합니다.';
	        } else if (amount > 1000000000){
	        	helpText ='최대 10억까지 가능 합니다.';
	        }
			break;
		//story
			case 'summary':
			maxLength = 300;
			var remain = maxLength - length;
			helpText = remain + '자 남음';
			break;
		//reword
			case 'price':
			var price = $('#price').val();
			if((event.keyCode<48 || event.keyCode>57) && (event.keyCode<96 || event.keyCode>105) && event.keyCode != 8){
				this.value=this.value.replace(/[^0-9]/g,'');
	        	helpText ='숫자만 입력 가능 합니다.';
	        }
			else if (price < 1000){
	        	helpText ='1000원 이상만 입력 가능 합니다.'
	        }
			break;
			case 'rewordName':
			maxLength = 60;
			var remain = maxLength - length;
			helpText = remain + '자 남음';
			break;
			case 'rewordDesc':
			maxLength = 200;
			var remain = maxLength - length;
			helpText = remain + '자 남음';
			break;
		}
		helpTxtField.text(helpText);
		});
	});
}

	