<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form role="form" method="post" autocomplete="off">


<div class="inputArea">
 <label for="profile_id">아이디</label>
 <span>${profileVo.profile_id}</span>
</div>



<div class="inputArea">
 <label for="profile_intro">소개</label>
 <span>${profileVo.profile_intro}</span>
</div>

<div class="inputArea">
 <label for="profile_pic">이미지</label>
 <p>원본 이미지</p>
 <img src="${profileVo.profile_pic}" class="oriImg"/>
 
 <p>썸네일</p>
 <img src="${profileVo.profile_thumbimg}" class="thumbImg"/>
</div>

<div class="inputArea">
 <button type="button" id="register_Btn" class="btn btn-warning">수정</button>
 <button type="button" id="register_Btn" class="btn btn-danger">삭제</button>
</div>

</form>

</body>
</html>