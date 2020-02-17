<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- 총 댓글 수 -->
	<div class="page-header">
		<h1>
			<small class="pull-right">45 comments</small> 참여댓글
		</h1>
	</div>
	<div class="comments-list">
		<div class="media">
			
			<!-- 사용자 프로필 -->
			<a class="media-left" href="#"> 
			<img class="rounded-circle reviewer" src="/resources/images/profile.jpg" width="70">
			</a>
			
			<!-- 댓글(참여내역) 내용 -->
			<div class="media-body">
				이 프로젝트의 성공을 기원합니다.<br> <small>5 days ago</small><br>
				<h4 class="media-heading user_name">이은비님 50,000원 참여</h4>
			</div>
		</div>
	</div>


<br>
<!-- Textarea -->
<div class="form-group">
  <div class="col-md-12">                     
    <textarea class="form-control" id="textarea" name="textarea" cols="30" rows="5" placeholder="default text"></textarea>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-info">reply</button>
  </div>
</div>

