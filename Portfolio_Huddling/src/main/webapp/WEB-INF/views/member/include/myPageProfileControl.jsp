<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<script>
function Back()
{
    window.history.back();
}


$("#profile_pic").change(function(){
 if(this.files && this.files[0]) {
  var reader = new FileReader;
  reader.onload = function(data) {
   $(".select_img img").attr("src", data.target.result).width(500);        
  }
  reader.readAsDataURL(this.files[0]);
 }
});
</script>

<style>
.select_img img {margin:20px 0;}
</style>
<body>
<span id="list-item-6" >
    <div class="container">
			<div class="Back">
				<i class="fa fa-arrow-left" onclick="Back()"></i>
			</div>
			<p class="h2 text-center">Form</p>
			<form action="/member/profileRegister" method="post" enctype="multipart/form-data">
				
				<div class="form-group">
					<label>아이디:</label> <input class="form-control" type="text"
						id="profile_id" name="profile_id" value="${memberVo.member_id}"/> <span
						class="Error"></span>
				</div>

				<div class="form-group">
					<label>소개:</label> 
					<textarea class="form-control" id="profile_intro" name="profile_intro" cols="30" rows="5" 
					placeholder="default text"></textarea>
					 <span class="Error"></span>
				</div>
				
				<div class="preview text-center">
					<div class="inputArea">
						<label for="profile_pic">이미지</label> <input type="file" id="profile_pic"
							name="file" />
						<div class="select_img">
							<img src="" />
						</div>
					</div>
					<%=request.getRealPath("/") %>
					<span class="Error"></span>
				</div>
					<div class="form-group">
					<input class="btn btn-primary btn-block" type="submit"
						value="Submit" />
				</div>
			</form>
		</div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</span>
</body>
</body>
</html>