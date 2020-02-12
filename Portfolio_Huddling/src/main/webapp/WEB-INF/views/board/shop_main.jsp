<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Huddling_Main_Page</title>
</head>
<body>

<!-- 로고, 검색, 로그인 -->
<div class="container-fluid">
	<div class="row">
		<div class="col-md-4">
			<a href="board-list.board">
				<img src="images/logo.jpg" style="width:120px; height: 125px; ">
			</a>
			</div>
			
			<div class="col-md-4">
			<button type="button" class="btn btn-success">
				검색
			</button> 
			</div>
			
			<div class="col-md-4">
			<button type="button" class="btn btn-outline-warning">
				회원 로그인
			</button>
			<a href="manager/mainPage">관리자페이지</a>
			
		</div>
	</div>
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
				    	<img class="d-block w-743 h-743 " src="images/slide_01.jpg" alt="이미지_01"  style="width:100%;">
							<div class="carousel-caption">
								<h4 style="font-weight: bold;">
									이미지1
								</h4>
							</div>
				  	</div>
				   	<div class="item">
				      	<img class="d-block w-1004 h-743" src="images/slide_02.jpg" alt="이미지_02"  style="width:100%;">
							<div class="carousel-caption">
								<h4 style="font-weight: bold;">
										이미지2
									</h4>
							</div>
					</div>
					<div class="item">
						<img class="d-block w-830 h-743" src="images/slide_03.jpg" alt="이미지_03"  style="width:100%;">
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
	</div><!-- /슬라이드 -->		

	<!-- 카테고리 -->
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="btn-group" role="group">
				 
			 	<button class="btn btn-secondary" type="button">
					전체 테마
				</button>
				<button class="btn btn-secondary" type="button">
					테크/가전
				</button> 
				<button class="btn btn-secondary" type="button">
					패션/뷰티
				</button> 
				<button class="btn btn-secondary" type="button">
					푸드
				</button> 
				<button class="btn btn-secondary" type="button">
					문화
				</button>
				<button class="btn btn-secondary" type="button">
					기부/후원
				</button>
				
			</div>
		</div>
		<div class="col-md-2">
		</div>
	</div>

	<!-- /카테고리 -->
	
	
	<!-- 리스트 -->
	<div class="row">
		<div class="col-md-12">
		    <div class="page-header">
		        <h3>Bootstrap 3.3.0</h3>
		        <p>Responsive Moving Box Carousel Demo</p>
		    </div>
		        
		    <div class="carousel slide" id="myCarousel">
		        <div class="carousel-inner">
		            <div class="item active">
		                    <ul class="thumbnails">
		                        <li class="col-sm-3">
		    						<div class="fff">
										<div class="thumbnail">
											<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
										</div>
										<div class="caption">
											<h4>Praesent commodo</h4>
											<p>Nullam Condimentum Nibh Etiam Sem</p>
											<a class="btn btn-mini" href="#">» Read More</a>
										</div>
		                            </div>
		                        </li>
		                        <li class="col-sm-3">
									<div class="fff">
										<div class="thumbnail">
											<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
										</div>
										<div class="caption">
											<h4>Praesent commodo</h4>
											<p>Nullam Condimentum Nibh Etiam Sem</p>
											<a class="btn btn-mini" href="#">» Read More</a>
										</div>
		                            </div>
		                        </li>
		                        <li class="col-sm-3">
									<div class="fff">
										<div class="thumbnail">
											<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
										</div>
										<div class="caption">
											<h4>Praesent commodo</h4>
											<p>Nullam Condimentum Nibh Etiam Sem</p>
											<a class="btn btn-mini" href="#">» Read More</a>
										</div>
		                            </div>
		                        </li>
		                        <li class="col-sm-3">
									<div class="fff">
										<div class="thumbnail">
											<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
										</div>
										<div class="caption">
											<h4>Praesent commodo</h4>
											<p>Nullam Condimentum Nibh Etiam Sem</p>
											<a class="btn btn-mini" href="#">» Read More</a>
										</div>
		                            </div>
		                        </li>
		                    </ul>
		              </div><!-- /Slide1 --> 
		            <div class="item">
		                    <ul class="thumbnails">
		                        <li class="col-sm-3">
									<div class="fff">
										<div class="thumbnail">
											<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
										</div>
										<div class="caption">
											<h4>Praesent commodo</h4>
											<p>Nullam Condimentum Nibh Etiam Sem</p>
											<a class="btn btn-mini" href="#">» Read More</a>
										</div>
		                            </div>
		                        </li>
		                        <li class="col-sm-3">
									<div class="fff">
										<div class="thumbnail">
											<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
										</div>
										<div class="caption">
											<h4>Praesent commodo</h4>
											<p>Nullam Condimentum Nibh Etiam Sem</p>
											<a class="btn btn-mini" href="#">» Read More</a>
										</div>
		                            </div>
		                        </li>
		                        <li class="col-sm-3">
									<div class="fff">
										<div class="thumbnail">
											<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
										</div>
										<div class="caption">
											<h4>Praesent commodo</h4>
											<p>Nullam Condimentum Nibh Etiam Sem</p>
											<a class="btn btn-mini" href="#">» Read More</a>
										</div>
		                            </div>
		                        </li>
		                        <li class="col-sm-3">
									<div class="fff">
										<div class="thumbnail">
											<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
										</div>
										<div class="caption">
											<h4>Praesent commodo</h4>
											<p>Nullam Condimentum Nibh Etiam Sem</p>
											<a class="btn btn-mini" href="#">» Read More</a>
										</div>
		                            </div>
		                        </li>
		                    </ul>
		              </div><!-- /Slide2 --> 
		            <div class="item">
		                    <ul class="thumbnails">
		                        <li class="col-sm-3">	
									<div class="fff">
										<div class="thumbnail">
											<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
										</div>
										<div class="caption">
											<h4>Praesent commodo</h4>
											<p>Nullam Condimentum Nibh Etiam Sem</p>
											<a class="btn btn-mini" href="#">» Read More</a>
										</div>
		                            </div>
		                        </li>
		                        <li class="col-sm-3">
									<div class="fff">
										<div class="thumbnail">
											<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
										</div>
										<div class="caption">
											<h4>Praesent commodo</h4>
											<p>Nullam Condimentum Nibh Etiam Sem</p>
											<a class="btn btn-mini" href="#">» Read More</a>
										</div>
		                            </div>
		                        </li>
		                        <li class="col-sm-3">
									<div class="fff">
										<div class="thumbnail">
											<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
										</div>
										<div class="caption">
											<h4>Praesent commodo</h4>
											<p>Nullam Condimentum Nibh Etiam Sem</p>
											<a class="btn btn-mini" href="#">» Read More</a>
										</div>
		                            </div>
		                        </li>
		                        <li class="col-sm-3">
									<div class="fff">
										<div class="thumbnail">
											<a href="#"><img src="http://placehold.it/360x240" alt=""></a>
										</div>
										<div class="caption">
											<h4>Praesent commodo</h4>
											<p>Nullam Condimentum Nibh Etiam Sem</p>
											<a class="btn btn-mini" href="#">» Read More</a>
										</div>
		                            </div>
		                        </li>
		                    </ul>
		              </div><!-- /Slide3 --> 
		        </div>
		        
		       
			   <nav>
					<ul class="control-box pager">
						<li><a data-slide="prev" href="#myCarousel" class=""><i class="glyphicon glyphicon-chevron-left"></i></a></li>
						<li><a data-slide="next" href="#myCarousel" class=""><i class="glyphicon glyphicon-chevron-right"></i></li>
					</ul>
				</nav>
			   <!-- /.control-box -->   
		                              
		    </div><!-- /#myCarousel -->
		</div><!-- /.row -->          
	</div><!-- /.col-xs-12 -->   
    <!-- /리스트 -->
    
</div><!-- /.container -->
</body>
</html>