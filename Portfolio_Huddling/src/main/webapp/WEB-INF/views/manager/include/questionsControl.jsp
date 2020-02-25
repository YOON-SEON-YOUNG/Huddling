<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
	.chatListcss {
		width:232px; 
		height:50px; 
		cursor:pointer;
		display:table-cell; text-align:center; vertical-align:middle;
	}
</style>
<script>
$(document).ready(function() {
	
	$("#chatList").on("mouseover", ".chatListcss", function() {
		$(this).css('background-color', '#FAFAFA');
	});
	$("#chatList").on("mouseout", ".chatListcss", function() {
		$(this).css('background-color', 'white');
	});
	
	// 인터벌
// 	var inter;
// 	var inter2;
	
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
		inter2 = setInterval(function() {
			var url = "/message/inquiryReadList";
			var sData = {
				"message_receiver" : "관리자"	
			};
			$.post(url, sData, function(rData) {
				var arrList = new Array();
				if(rData[0] != null) {
					var message_date = rData[0].message_date;
					// 새로운 메세지가 왔을 때
					if(message_date != prevList) {
					// 마우스가 없을 때
// 						if (mouseCheck == 0) {
							$("#chatList").empty();
							$(rData).each(function(i) {
								if (this.message_sender == '관리자') {
									// 배열에서 못찾을 경우 -1 값을 리턴한다
									if ($.inArray(this.message_receiver, arrList) == -1) {
										// 못찾음
										
										arrList.push(this.message_receiver);
										$("#chatList").append("<div class='btnChat chatListcss "+this.message_receiver+"' data-message_sender='"+this.message_receiver+"' >"
										 + this.message_receiver 
										 + "</div><hr>");
									}
								} else {
									if ($.inArray(this.message_sender, arrList) == -1) {
										// 못찾음
										arrList.push(this.message_sender);
										if (this.message_read != null) {
// 											$("#chatList").append("<a class='btnChat "+this.message_sender+"' data-message_sender='"+this.message_sender+"' >"
// 											+ "<div>"+this.message_sender+"</div>"
// 											+ "</a><br>");
											$("#chatList").append("<div class='btnChat chatListcss "+this.message_sender+"' data-message_sender='"+this.message_sender+"' >"
													 + this.message_sender 
													 + "</div><hr>");
										} else {
// 											$("#chatList").append("<a class='btnChat "+this.message_sender+"' data-message_sender='"+this.message_sender+"' >"
// 											+ "<div>"+this.message_sender+" (!)</div>"
// 											+ "</a><br>");
											$("#chatList").append("<div class='btnChat chatListcss "+this.message_sender+"' data-message_sender='"+this.message_sender+"' >"
													 + this.message_sender 
													 + "<span class='badge' style='background-color:#2E64FE;'>new</span></div><hr>");
										}
										
									}
								}
							}); 
	// 						console.log(arrList);
							prevList = message_date;
// 						}
					}
				}
			});
		}, 500);
	}
	
	

	
	// 채팅 선택
	$("#chatList").on("click", ".btnChat",function() {
		console.log("클릭"+$(this).attr("data-message_sender"));
		sender = $(this).attr("data-message_sender");
		setTimeout(reChatList, 500);
	});
	
	// 채팅 내용 인터벌
	var prev;
	function startInterval() {
		inter = setInterval(function() {
			var d = new Date();
			var url = "/message/inquiryRead";
			var admin = "관리자";
			var sData = {
				"message_receiver" : "관리자",
				"message_sender" : sender
			}
			$.post(url, sData, function(rData) {
				if(rData[0] != null) {
					var message_date = rData[rData.length-1].message_date;
					if(message_date != prev) {
						console.log(message_date + " // " + prev);
						var strHtml = "";
						$(rData).each(function() {
							if (this.message_sender == admin) {
								var day = new Date(this.message_date);
								strHtml += "<div style='width: 100%; height: 50px;'>" + 
									"<div style='float : right; background-color:#2E64FE; color:white; border-radius:10px; padding:10px;'>" + this.message_content +"</div>" +
									"</div>";
							} else {
								var day = new Date(this.message_date);
								strHtml += "<div>"+this.message_sender+"</div>" +
									"<div style='width: 100%; height: 50px;'>" + 
									"<div style='float : left; background-color:#F2F2F2; border-radius:10px; padding:10px;'>" + this.message_content +"</div><br>" +
									"</div>";
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
		if ( $("#inputText").val() != "") {
			sendMessage();
		}
	});
	
	// 엔터 메세지 전송
	$("#inputText").keydown(function(key) {
		if ($("#inputText").val() != null) {
			if (key.keyCode == 13) {
				if ( $("#inputText").val() != "") {
					sendMessage();
				}
			}
		}
	});
	
	// 메세지 전송 기능
	function sendMessage() {
		var userText = $("#inputText").val();
		var url = "/message/inquirySend";
		var member_id = '관리자';
		var sData = {
			"message_sender" :  "관리자",
			"message_receiver" : sender,
			"message_content" : userText
		};
		$.post(url, sData, function(rData) {
			console.log(rData);
		});
		$("#inputText").val("");
		$("#inputText").focus();
	}
	
	function reChatList() {
		var url = "/message/inquiryReadList";
		var sData = {
			"message_receiver" : "관리자"	
		};
		$.post(url, sData, function(rData) {
			var arrList = new Array();
			if(rData[0] != null) {
				var message_date = rData[0].message_date;
				// 새로운 메세지가 왔을 때
				// 마우스가 없을 때
//						if (mouseCheck == 0) {
						$("#chatList").empty();
						$(rData).each(function(i) {
							if (this.message_sender == '관리자') {
								// 배열에서 못찾을 경우 -1 값을 리턴한다
								if ($.inArray(this.message_receiver, arrList) == -1) {
									// 못찾음
									
									arrList.push(this.message_receiver);
									$("#chatList").append("<div class='btnChat chatListcss "+this.message_receiver+"' data-message_sender='"+this.message_receiver+"' >"
									 + this.message_receiver 
									 + "</div><hr>");
								}
							} else {
								if ($.inArray(this.message_sender, arrList) == -1) {
									// 못찾음
									arrList.push(this.message_sender);
									if (this.message_read != null) {
//											$("#chatList").append("<a class='btnChat "+this.message_sender+"' data-message_sender='"+this.message_sender+"' >"
//											+ "<div>"+this.message_sender+"</div>"
//											+ "</a><br>");
										$("#chatList").append("<div class='btnChat chatListcss "+this.message_sender+"' data-message_sender='"+this.message_sender+"' >"
												 + this.message_sender 
												 + "</div><hr>");
									} else {
//											$("#chatList").append("<a class='btnChat "+this.message_sender+"' data-message_sender='"+this.message_sender+"' >"
//											+ "<div>"+this.message_sender+" (!)</div>"
//											+ "</a><br>");
										$("#chatList").append("<div class='btnChat chatListcss "+this.message_sender+"' data-message_sender='"+this.message_sender+"' >"
												 + this.message_sender 
												 + "<span class='badge badge-warring'>!</span></div><hr>");
									}
									
								}
							}
						}); 
//	 						console.log(arrList);
						prevList = message_date;
//						}
			}
		});
	}
	
});
</script>
<h2>문의사항</h2>
<hr>
<div class="container-fluid">
	<div class="row" style="height: 500px;">
<!-- 		문의 목록 -->
		<div id="page" class="col-md-3" style="height: 100%; text-align: center;">
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
