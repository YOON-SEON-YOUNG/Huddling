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
    var reader = new FileReader();

    reader.onload = function (e) {
            $('#blah').attr('src', e.target.result);
        }

      reader.readAsDataURL(input.files[0]);
    }
}

function rewordAdded(url){
	var params = $('#formTampData').serializeArray();
	console.log("data 확인...",params);
	$.post(url,params,function(result){
			console.log('전달 값...',result);
//			var added = "<div class='col-sm-3'>";
//			added += "<div class='card'>";
//			added +="<div class='card-body'>";
//			added +="<h5 class='card-title'><span>"+params[1].value+"원</span><label class='badge badge-success'";
//			added +="style='float: right;'>"+params[7].value+"개</label></h5>";
//			added +="<hr>";
//			added +="<p class='card-text'><strong>"+params[2].value+"</strong></p>";
//			added +="<p class='card-text'>"+params[3].value+"</p>";
//			added +="<div class='card-body'>배송비 <span style='float: right;'>"+params[6].value+"원</span></div>";
//			added +="<div class='card-body'>배송 날짜 <span style='float: right;'>"+params[8].value+"("+params[9].value+")예정</span></div>";
//			added +="<div class='card-body' style='float: right;'>";
//			added +="<a href='#' class='btn btn-primary'>편집</a>";
//			added +="<a href='#' class='btn btn-primary'>삭제</a>";
//			added +="</div>	</div> </div>";
			$('#wrapper').load('/maker/reword/1');
			console.log('전달 완료...');
		});
}

function rewordUpdate(url) {
	var params = $('#formTampData').serializeArray();
	console.log(params);
	$.post(url, params, function(result) {
		console.log("result :",result);
	});
}
	