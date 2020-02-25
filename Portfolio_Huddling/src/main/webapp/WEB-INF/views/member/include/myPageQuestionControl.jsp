<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
$(document).ready(function() {
	// 인터벌
	var inter;
	var sender = "";
	
	// 처음 리스트를 불러옴
	var prevList;
	var mouseCheck = 0;
	$("#chatList").mouseover(function() {
		mouseCheck = 1;
		setTimeout(function() {
			mouseCheck = 0;
		}, 1000);
	});
	$("#chatList").mouseout(function() {
		mouseCheck = 0;
	});
	
	readMessageList();
	startInterval();
	function readMessageList() {
		setInterval(function() {
			var url = "/message/inquiryReadList";
			var message_receiver = '${sessionScope.memberVo.member_id}';
			var sData = {
				"message_receiver" : message_receiver
			};
			$.post(url, sData, function(rData) {
				var arrList = new Array();
				if(rData[0] != null) {
					var message_date = rData[0].message_date;
					// 새로운 메세지가 왔을 때
// 					if(message_date != prevList) {
					// 마우스가 없을 때
					if (mouseCheck == 0) {
						$("#chatList").empty();
						$(rData).each(function(i) {
							if (this.message_sender == message_receiver) {
								// 배열에서 못찾을 경우 -1 값을 리턴한다
								if ($.inArray(this.message_receiver, arrList) == -1) {
									// 못찾음
									arrList.push(this.message_receiver);
									$("#chatList").append("<a class='btnChat "+this.message_receiver+"' data-message_sender='"+this.message_receiver+"'>"+this.message_receiver+"</a><br>");
								}
							} else {
								if ($.inArray(this.message_sender, arrList) == -1) {
									// 못찾음
									arrList.push(this.message_sender);
									if (this.message_read != null) {
										$("#chatList").append("<a class='btnChat "+this.message_sender+"' data-message_sender='"+this.message_sender+"'>"+this.message_sender+"</a><br>");
									} else {
										$("#chatList").append("<a class='btnChat "+this.message_sender+"' data-message_sender='"+this.message_sender+"'>"+this.message_sender+" (!)</a><br>");
									}
									
								}
							}
						}); 
// 						console.log(arrList);
						prevList = message_date;
					}
// 					}
				}
			});
		}, 500);
	}
	
	

	
	// 채팅 선택
	$("#chatList").on("click", ".btnChat",function() {
		console.log("클릭"+$(this).attr("data-message_sender"));
		sender = $(this).attr("data-message_sender");
	});
	
	// 채팅 내용 인터벌
	var prev;
	function startInterval() {
		inter = setInterval(function() {
			var d = new Date();
			var url = "/message/inquiryRead";
			var message_receiver = '${sessionScope.memberVo.member_id}';
			var sData = {
				"message_receiver" : message_receiver,
				"message_sender" : sender
			}
			$.post(url, sData, function(rData) {
				if(rData[0] != null) {
					var message_date = rData[rData.length-1].message_date;
					if(message_date != prev) {
						console.log(message_date + " // " + prev);
						var strHtml = "";
						$(rData).each(function() {
							if (this.message_sender == message_receiver) {
								strHtml += "<div style='float : right;'>" + this.message_content +"</div><br>";
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
	}
	
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
		var member_id = '${sessionScope.memberVo.member_id}';
		var sData = {
			"message_sender" :  member_id,
			"message_receiver" : sender,
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
<title>Insert title here</title>
</head>
<body>
<h2>문의사항</h2>
<hr>
<div class="container-fluid">
	<div class="row" style="height: 500px;">
<!-- 		문의 목록 -->
		<div id="page" class="col-md-3" style="height: 100%; text-align: center;">
			<span>문의 내역</span>
			<hr>
			<div id="chatList" style="overflow: auto;  text-align: center;">
			</div>
		</div>
<!-- 		// 문의 목록 -->
<!-- 		채팅 내용 -->
		<div id="page" class="col-md-9" style="height: 100%;">
			<table class="table" style="width: 100%; height: 100%; ">
				<tr style="height: 100%; width: 100%;">
					<td colspan="2" >
						<div id="chat" style="height: 100%; width: 100%; overflow: auto;">
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
		</div>
<!-- 		// 채팅 내용 -->
	</div>
</div>
</body>
</html>