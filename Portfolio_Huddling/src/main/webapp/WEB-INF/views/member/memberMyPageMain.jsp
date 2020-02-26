<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
	$("#page").load("myPageSupportControl");
	$("#item1").click(function(){
		$("#page").load("myPageSupportControl");
	});
	// 내가 등록한 프로젝트
	$("#item2").click(function(){
		$("#page").load("registPostList");
	});
	$("#item3").click(function(){
		$("#page").load("myPageQuestionControl");
	});
	$("#item4").click(function(){
		$("#page").load("myPageChaetingControl");
	});
	$("#item5").click(function(){
		$("#page").load("buy");
	});
	$("#item6").click(function(){
		$("#page").load("pointListById");
	});
	$("#item7").click(function(){
		$("#page").load("profileRegister");
	});

	function buyPoint_click() {
		var url ="member/include/buy";
		window.open(url,"_blank_1","toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500 height=600")
	};

});
</script>	
<style>
#spanRight {
	text-align: right;
}

#charge {
	text-align: center;
	font-size: 5px;
}
label{
	font-size:15px;
	margin-right:350px;
	
}
#chargeRead {
	text-align: center;
}

/**
 * Profile image component
 */
.profile-header-container{
    margin: 0 auto;
    text-align: center;
}

.profile-header-img {
    padding: 54px;
}

.profile-header-img > img.img-circle {
    width: 120px;
    height: 120px;
    border: 2px solid #51D2B7;
}

.profile-header {
    margin-top: 43px;
}

.mycenter { text-align: center; }

</style>
<title>MyPage</title>
</head>
<body>
<%-- profileVo : ${profileVo} --%>
<!-- 맨위쪽(header) -->



		
		
		<div class="container">
		<div class="mycenter">
    <div class="span3 well">
   
        <a href="#aboutModal" data-toggle="modal" data-target="#myModal"><img src="/member/displayFile?fileName=${profileVo.profile_pic}" name="aboutme" width="140" height="140" class="img-circle"></a>
        <h3>${memberVo.member_nickname}</h3>
        <em>click my face for more</em>
        <a href="/">홈으로</a>
	
    </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title" id="myModalLabel">More About Joe</h4>
                    </div>
                    <div class="mycenter">
                <div class="modal-body">
              
                    <img src="/member/displayFile?fileName=${profileVo.profile_pic}" name="aboutme" width="140" height="140" border="0" class="img-circle"></a>
                    <h3 class="media-heading">${memberVo.member_nickname}<small>${memberVo.member_id}</small></h3>
                    <!-- <span><strong>Skills: </strong></span>
                        <span class="label label-warning">HTML5/CSS</span>
                        <span class="label label-info">Adobe CS 5.5</span>
                        <span class="label label-info">Microsoft Office</span>
                        <span class="label label-success">Windows XP, Vista, 7</span>
                -->
                    <hr>
                
                    <p class="text-left"><strong>intro: </strong><br>
                        ${profileVo.profile_intro}</p>
                    <br>
             
                </div>
                </div>
                <div class="modal-footer">
    				<a href="/member/logout">
                    <button type="button" class="btn btn-default">로그아웃</button></a>
                    <a href="/member/memberPrivacyUpdate">
                    <button type="button" class="btn btn-default">개인정보 수정</button></a>
 
   
                </div>
            </div>
        </div>
    </div>
</div>
		
	


<div class="row">
		<div class="col-md-2">
		
		
			<div id="list-example" class="list-group">
							<a class="list-group-item list-group-item-action"
								 id="item1">내가후원한프로젝트</a> 
								 <a
								class="list-group-item list-group-item-action"
								 id="item2">내가등록한프로젝트</a> 
								 <a
								class="list-group-item list-group-item-action"
								 id="item3">문의내역</a> 
								 <a
								class="list-group-item list-group-item-action"
								 id="item4">받은문의내역</a> 
								 <a
								class="list-group-item list-group-item-action"
								id="item5">포인트 충전</a>
								<a
								class="list-group-item list-group-item-action"
								id="item6">포인트 내역</a> 
								<a
								class="list-group-item list-group-item-action"
								id="item7">프로필 설정</a>
						</div>
		
		
						</div>
						<div id="page" class="col-md-8">
						
						
							<div data-target="#list-example" data-offset="0"
											class="scrollspy-example">
									
									</div>
						
								
						</div>
						<div class="col-md-2">
						</div>
					</div>













<%-- 	<header style="padding:30px;">
	<nav id="navbar-example2" class="navbar navbar-light bg-light"
			style="background-color:fuchsia;">
			<a class="navbar-brand" href="#" style="margin-right:1740px "><strong>마이페이지</a>
			
			<ul class="nav nav-pills">
				<li class="nav-item dropdown">
				
					 <!-- 이미지드롭다운 -->
              <li class="dropdown user user-menu" style="left:1450px">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="/member/displayFile?fileName=${profileVo.profile_pic}" class="img-circle" width="50" height="50" alt="User Image"/>
                  <span class="hidden-xs">${memberVo.member_id} (${memberVo.member_nickname})</span>
                  <span class="badge"></span>
                </a>
                <!-- //이미지드롭다운 -->
                <ul class="dropdown-menu">
                  <!-- 드롭다운되면보여줄 image -->
                            <li class="user-header">
		        <div class="profile-header-container">   
		    		<div class="profile-header-img">
		                <img class="img-circle" src="/member/displayFile?fileName=${profileVo.profile_pic}" />
		                <!-- badge -->
		                <div class="rank-label-container">
		                    <span class="label label-default rank-label">${profileVo.profile_id}</span>
		                </div>
		            </div>
		        </div> 
                    <img src=" ${profileVo.profile_pic}" class="img-circle" alt="User Image"/>
                    <p>
                      ${memberVo.member_name}님 반갑습니다
                    </p>
                    <input type="button" value="프로필 수정" onClick="location.href='/member/profileRegister'">
                    <input type="button" value="포인트 충전" onClick="location.href='/member/buyPoint'">
                  </li>
                  </ul>
                  <!-- Menu Body -->
                  <li class="user-body">
                    <div>
                      <a href="/member/logout">로그아웃</a>
                    </div>
                    
                    <div>
                      <a href="/member/memberPrivacyUpdate">개인정보수정</a>
                    </div>
                  </li>
					
					</li>
				
			</ul>
		</nav>
		<a href="/">홈으로</a>
	</header> --%>
	<!-- //header -->
	
	
	
 
	

	
	
</body>

</html>