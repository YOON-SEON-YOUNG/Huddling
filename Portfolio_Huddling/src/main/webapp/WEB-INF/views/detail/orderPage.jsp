<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<style>
.align-center { text-align: center; }
</style>

<body>


<center><h3>현재 보유한 포인트</h3></center>
<br/>
<table border="1" align="center">
  	    <tr>
        <td width="200" bgcolor="#CCCCCC"> <p align="center"><b>포인트 잔액</b></p> </td>
        <td width="200" bgcolor="#CCCCCC"> <p align="center"><b>가격</b></p> </td>
        <td width="200" bgcolor="#CCCCCC"> <p align="center"><b>결제 후 잔액</b></p> </td>
    </tr>
    <tr>
        <td> <p align="center">포인트</p></td>
        <td> <p align="center"><span id="new_points"></span> 포인트</p> </td>
        <td> <p align="center"><span id="new_points"></span> 포인트</p> </td>
    </tr>
</table>

<div class="align-center">
결제가 완료되었습니다
00월 00일에 배송 예정입니다
<br>
<br>

<button type="button" class="btn btn-primary" onClick="location.href=''">내가 후원한 펀딩 보기</button>
<br>
<br>
<button type="button" class="btn btn-primary" onClick="window.open('','_self').close();">닫기</button>



</div>
</body>