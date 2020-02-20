<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script>
$(document).ready(function() {
	//채팅 불러오기
	var prev;
	setInterval(function() {
		var d = new Date();
		var url = "/message/inquiryRead";
		var member_id = '${memberVo.member_id}';
		var sData = {
			"message_receiver" : member_id,
			"message_sender" : "admin"
		}
		$.post(url, sData, function(rData) {
			if(rData[0] != null) {
				var message_date = rData[rData.length-1].message_date;
				if(message_date != prev) {
					console.log(message_date + " // " + prev);
					var strHtml = "";
					$(rData).each(function() {
						if (this.message_sender == member_id) {
							strHtml += "<span style='float : right;'>" + this.message_content +"</span><br>";
						} else {
							strHtml += "<span style='float : left;'>" + this.message_sender + " : " + this.message_content +"</span><br>";
						}
					});
					$("#chat").empty();
					$("#chat").append(strHtml);
					$("#chat").scrollTop($("#chat")[0].scrollHeight);
					prev = message_date;
				}
			}
		});
	}, 500);
	
	// 클릭 메세지 전송
	$("#send").click(function() {
		sendMessage();
	});
	
	// 엔터 메세지 전송
	$("#inputText").keydown(function(key) {
		if ($("#inputText").val() != null) {
			if (key.keyCode == 13) {
				sendMessage();
			}
		}
	});
	
	// 메세지 전송 기능
	function sendMessage() {
		var userText = $("#inputText").val();
		var url = "/message/inquirySend";
		var member_id = '${memberVo.member_id}';
		var sData = {
			"message_sender" :  member_id,
			"message_receiver" : "admin",
			"message_content" : userText
		};
		$.post(url, sData, function(rData) {
			console.log(rData);
		});
		$("#inputText").val("");
		$("#inputText").focus();
	}
	
	
});
</script>
</head>
<body>
	<h1>문의</h1>
	<hr>
	<table border="1">
		<tr>
			<td colspan="2" >
				<div id="chat" style="height: 500px; width: 500px; overflow: auto;">
<!-- 					채팅 내용 -->
				</div>
			</td>
		</tr>
		<tr style="height: 20px;">
			<td>
				<input type="text" id="inputText" size="20" style="width:100%; "/>
			</td>
			<td>
				<input type="button" id="send" value="입력" style="width:100%; "/>
			</td>
		</tr>
	</table>
</body>
</html>