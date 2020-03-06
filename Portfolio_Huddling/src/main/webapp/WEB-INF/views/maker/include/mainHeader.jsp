<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>maker</title>

  <!-- Bootstrap core CSS -->
  <!-- Custom styles for this template -->
  <link href="/resources/css/simple-sidebar.css" rel="stylesheet">

</head>
<script>
$(function(){
	 var num = ${projectNum};
	 console.log("프로젝트 번호 : header ? " + num);
	 $('.a').click(function(e){
	 var a = $(this).attr('href');
		 var url = a;
		 console.log(url);
	 $(this).attr('href',url);
		 console.log('click'); 
	 });
});
</script>
<body>

  <div class="d-flex" id="wrapper">
    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading">Start Maker Project </div>
      <div class="list-group list-group-flush">
        <a href="/maker/requir/" class="list-group-item list-group-item-action bg-light a">Requir</a>
        <a href="/maker/info/" class="list-group-item list-group-item-action bg-light a">BasicInfo</a>
        <a href="/maker/story/" class="list-group-item list-group-item-action bg-light a">ProductStory</a>
        <a href="/maker/reword/" class="list-group-item list-group-item-action bg-light a">Reword</a>
        <a href="/maker/makerInfo/" class="list-group-item list-group-item-action bg-light a">MakerInfo</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <nav class="navbar navbar-expand-lg navbar-dark bg-dark border-bottom">
        <button class="btn btn-primary" id="menu-toggle" aria-label="Justify">
        <i class="fa fa-align-justify" style="font-size:18px; "></i>
       </button>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
          <li class="nav-item active">
          <a class="nav-link a" href="/maker/preview/">미리보기<span class="sr-only">(current)</span></a>
          </li>
            <li class="nav-item active">
              <a class="nav-link" href="/maker/intro">뒤로가기<span class="sr-only">(current)</span></a>
            </li>
          </ul>
        </div>
      </nav>

      <div class="container-fluid">
      
      
  <!-- Bootstrap core JavaScript -->
  <!-- Menu Toggle Script -->
  <script>
  $(document).ready(function(){
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  });
  </script>
