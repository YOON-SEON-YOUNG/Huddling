<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
<style>
#container_box table td { width:100px; }
</style>


<body>
<h1>리워드 리스트</h1>
<table>
 <thead>
  <tr>
   <th>리워드 옵션</th>
   <th>리워드 제목</th>
   <th>리워드 가격</th>
   <th>리워드 수량</th>
   <th>리워드 배송일</th>
   <th>리워드 발송예상일</th>
  </tr>
 </thead>
 <tbody>
  <c:forEach var="rewordDto" items="${reword}" varStatus="stat">
  <tr>
    <c:choose>
	<c:when test="${stat.count eq 1 }">
	</c:when>
	<c:otherwise>
	<div role="tab" id="heading${stat.count}"></div>
	</c:otherwise>
	</c:choose>
   <td>${rewordDto.temp_reword_option}</td>
   <td>
   		<a href="/detail/detailMain/${num}/option?n=${rewordDto.temp_reword_num}">${rewordDto.temp_reword_name}"</a>
   </td>
   <td>${rewordDto.temp_reword_price}</td>
   <td>${rewordDto.temp_reword_count}</td>
   <td>${rewordDto.temp_reword_trans_price}</td>
   <td>${rewordDto.temp_reword_trans_month}/${rewordDto.temp_reword_trans_days}예상</td>
  </tr>   
  </c:forEach>
 </tbody>
</table>

</body>
</html>