<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/js/chat.js"></script>
<title>Insert title here</title>
</head>
<style>
      body {
            margin: 0;
            padding: 0;
        }

        a.navbar-brand {
            float: left;
            height: 50px;
            padding: 15px 15px;
            font-size: 18px;
            line-height: 20px;
            text-decoration: none;
            color: orangered;
            font-family: cursive;
            font-weight: 700;

        }

        nav.main-navigation {
            position: relative;
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
<body>
<br>
 <nav class="main-navigation">
<img src="/resources/images/hudling_logo3.jpg">
        <div class="navbar-header animated fadeInUp">            
        </div>
    </nav>
    <hr>	
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
                    <h4 class="modal-title" id="myModalLabel">More About ${memberVo.member_nickname}</h4>
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

</body>
</html>