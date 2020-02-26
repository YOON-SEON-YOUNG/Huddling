<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- memberVo : ${memberVo}<br>
myRegistList : ${myRegistList} --%>

	<div class="container">
	<!-- 내가등록한프로젝트시작 -->
	
	
	<div class="cl-md-12">
			<p class="h3">내가 등록한 프로젝트</p>
		</div>
		<div class="row text-center my-4">
			<c:forEach var="projectVo" items="${myRegistList}">
				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card h-100">
						<img class="card-img-top" src="http://placehold.it/500x325" alt="">
						<div class="card-body">
							<h4 class="card-title">${projectVo.project_name}</h4>
							<p class="card-text">${projectVo.project_story}</p>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
		
	
							<!-- <span id="list-item-2">
								<h4>내가등록한프로젝트</h4> <span>&nbsp;
									<div class="container-fluid">
										<div class="row">
											<div class="col-md-9"></div>
											<div class="col-md-3">
												<select>
													<option selected>펀딩완료</option>
													<option selected>작성중</option>
												</select>
											</div>
										</div>
									</div>
							</span>
								<table class="table">
									<thead>
										<tr>
											<th scope="col"></th>
											<th scope="col">00프로젝트</th>
											<th scope="col">Last</th>
											<th scope="col">Handle</th>
											<th scope="col">Handle</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th><img src="..." class="align-self-start mr-3"></th>
											<th scope="row">1</th>
											<td>Mark</td>
											<td>Otto</td>
											<td>펀딩완료/진행중</td>
										</tr>
										<tr>
										</tr>
									</tbody>
								</table>
							</span> -->
							</div>
</body>
</html>