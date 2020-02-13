<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- include 로고, 검색, 로그인, 카테고리 -->
<%@ include file="include/board_header.jsp"%>
</head>

<body>

<div class="container-fluid">
	<!-- 		슬라이드 이미지 -->
	<div class="row">
		<div class="col-md-12">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
		    <!-- Indicators -->
				<ol class="carousel-indicators">
		      		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		      		<li data-target="#myCarousel" data-slide-to="1"></li>
		      		<li data-target="#myCarousel" data-slide-to="2"></li>
		   		</ol>
			    <!-- Wrapper for slides -->
				<div class="carousel-inner">
				  	<div class="item active">
				    	<img class="d-block w-743 h-743 " src="/resources/images/slide_01.jpg" alt="이미지_01"  style="width:100%;">
							<div class="carousel-caption">
								<h4 style="font-weight: bold;">
									이미지1
								</h4>
							</div>
				  	</div>
				   	<div class="item">
				      	<img class="d-block w-1004 h-743" src="/resources/images/slide_02.jpg" alt="이미지_02"  style="width:100%;">
							<div class="carousel-caption">
								<h4 style="font-weight: bold;">
										이미지2
									</h4>
							</div>
					</div>
					<div class="item">
						<img class="d-block w-830 h-743" src="/resources/images/slide_03.jpg" alt="이미지_03"  style="width:100%;">
							<div class="carousel-caption">
								<h4 style="font-weight: bold;">
									이미지3
								</h4>
							</div>
					</div>
					
					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" data-slide="prev">
					  	<span class="glyphicon glyphicon-chevron-left""></span>
					  	<span class="sr-only">Previous</span>				
					</a>
					<a class="right carousel-control" href="#myCarousel" data-slide="next">
						  <span class="glyphicon glyphicon-chevron-right"></span>
						  <span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>
	</div><!-- /.row 슬라이드 -->		

	<br/>
	<br/>
	<br/>
	
	<!-- 리스트01 : 인기 추천 프로젝트 -->
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<h3>인기 추천 프로젝트</h3>
		 
<!--             이미지 넘기기..?,...그..불러올 갯수대로 -->
<!--             <div class="controls pull-right hidden-xs" align="right"> -->
<!-- 				<a class="left fa fa-chevron-left btn btn-primary"  -->
<!-- 					href="#carousel-example-generic" data-slide="prev"> -->
<!-- 				</a> -->
<!-- 				<a class="right fa fa-chevron-right btn btn-primary"  -->
<!-- 					href="#carousel-example-generic" data-slide="next"> -->
<!-- 				</a> -->
<!--             </div>/.controls pull-right hidden-xs -->
            
        </div>
        <div class="col-md-2" >
        </div>
	</div><!-- /.row -->
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="row">
				<!-- 상품1 -->
				<div class="col-md-4">
					<div class="card" style="width: 400px; height: 200px;">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="/resources/images/thumbnail_01.jpg" />
						<div class="card-block">
							<h5 class="card-title">
								모빌리티산업 투자ㅣ대한민국 캠핑 카라반이 세계로 진출합니다.
							</h5>
							
							<!-- 프로그레스 -->
							<div class="progress">
								<div class="progress-bar w-75">
								</div>
							</div><!-- /.프로그레스 -->
							<p>
								<a class="btn btn-primary" href="detail/detailMain">펀딩하러가기</a> 
							</p>
						</div>
					</div>
				</div>
				
				<!-- 상품2 -->
				<div class="col-md-4" >
					<div class="card" style="width: 400px; height: 200px;">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="/resources/images/thumbnail_02.jpg" />
						<div class="card-block">
							<h5 class="card-title">
								강집사 초대형 고양이 화장실 + 멀티박스!! 냥이와 집사를 위한 선택
							</h5>
							
							<!-- 프로그레스 -->
							<div class="progress">
								<div class="progress-bar w-50">
								</div>
							</div><!-- /.프로그레스 -->
							<p>
								<a class="btn btn-primary" href="#">펀딩하러가기</a> 
							</p>
						</div>
					</div>
				</div>
				
				<!-- 상품3 -->
				<div class="col-md-4">
					<div class="card" style="width: 400px; height: 200px;">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="/resources/images/thumbnail_03.jpg" />
						<div class="card-block">
							<h5 class="card-title">
								스트릿 패션 완성! 환경을 생각한 가벼운 메신져백, [비트백]
							</h5>
							
							<!-- 프로그레스 -->
							<div class="progress">
								<div class="progress-bar w-75">
								</div>
							</div><!-- /.프로그레스 -->
							<p>
								<a class="btn btn-primary" href="#">펀딩하러가기</a> 
							</p>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<div class="col-md-2">
		</div>
	</div> <!-- /.리스트01 : 인기프로젝트 슬라이드 묶음 -->
	
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
		
	<!-- 리스트02 : 신규 프로젝트 -->
	<div class="row">
		<div class="col-md-2">
			<!-- 여백 -->
		</div>
		<div class="col-md-8">
			<h3>신규 프로젝트</h3>
		 
<!--             이미지 넘기기..?,...그..불러올 갯수대로 -->
<!--             <div class="controls pull-right hidden-xs" align="right"> -->
<!-- 				<a class="left fa fa-chevron-left btn btn-primary"  -->
<!-- 					href="#carousel-example-generic" data-slide="prev"> -->
<!-- 				</a> -->
<!-- 				<a class="right fa fa-chevron-right btn btn-primary"  -->
<!-- 					href="#carousel-example-generic" data-slide="next"> -->
<!-- 				</a> -->
<!--             </div>/.controls pull-right hidden-xs -->
            
        </div>
        <div class="col-md-2" >
       	 	<!-- 여백 -->
        </div>
	</div><!-- /.row -->
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="row">
				<!-- 상품1 -->
				<div class="col-md-4">
					<div class="card" style="width: 400px; height: 200px;">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="/resources/images/thumbnail_01.jpg" />
						<div class="card-block">
							<h5 class="card-title">
								모빌리티산업 투자ㅣ대한민국 캠핑 카라반이 세계로 진출합니다.
							</h5>
							
							<!-- 프로그레스 -->
							<div class="progress">
								<div class="progress-bar w-75">
								</div>
							</div><!-- /.프로그레스 -->
							<p>
								<a class="btn btn-primary" href="#">펀딩하러가기</a> 
							</p>
						</div>
					</div>
				</div>
				
				<!-- 상품2 -->
				<div class="col-md-4" >
					<div class="card" style="width: 400px; height: 200px;">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="/resources/images/thumbnail_02.jpg" />
						<div class="card-block">
							<h5 class="card-title">
								강집사 초대형 고양이 화장실 + 멀티박스!! 냥이와 집사를 위한 선택
							</h5>
							
							<!-- 프로그레스 -->
							<div class="progress">
								<div class="progress-bar w-50">
								</div>
							</div><!-- /.프로그레스 -->
							<p>
								<a class="btn btn-primary" href="#">펀딩하러가기</a> 
							</p>
						</div>
					</div>
				</div>
				
				<!-- 상품3 -->
				<div class="col-md-4">
					<div class="card" style="width: 400px; height: 300px;">
						<img class="card-img-top" alt="Bootstrap Thumbnail First" src="/resources/images/thumbnail_03.jpg" />
						<div class="card-block">
							<h5 class="card-title">
								스트릿 패션 완성! 환경을 생각한 가벼운 메신져백, [비트백]
							</h5>
							
							<!-- 프로그레스 -->
							<div class="progress">
								<div class="progress-bar w-75">
								</div>
							</div><!-- /.프로그레스 -->
							<p>
								<a class="btn btn-primary" href="#">펀딩하러가기</a> 
							</p>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<div class="col-md-2">
		</div>
	</div> <!-- /.리스트02 : 신규 프로젝트 슬라이드 묶음 -->
</div><!-- /.container -->

<%@ include file="include/board_footer.jsp" %>