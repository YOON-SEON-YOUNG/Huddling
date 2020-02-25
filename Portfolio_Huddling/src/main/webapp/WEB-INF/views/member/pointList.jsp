<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 	memberVo : ${memberVo}<br>
	<br> pointList : ${pointList}<br> --%>
		<h1>포인트 내역</h1>


		<div class="row">
			<div class="col-md-12">
				<table class="table">
					<thead>
						<tr>
							<th>번호</th>
							<th>포인트</th>
							<th>포인트 내용</th>
							<th>포인트 날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${pointList}" var="pointVo">
				<tr>
					<td>${pointVo.point_num}</td>
					<td><fmt:formatNumber pattern="###,###" value="${pointVo.member_point}"></fmt:formatNumber> </td>
					<td>${pointVo.point_content}</td>
					<td><fmt:formatDate value="${pointVo.point_date}"
							pattern="yyyy-MM-dd HH:mm:ss" /></td>
				</tr>
				<c:set var="total" value="${total + pointVo.member_point}" />
			</c:forEach>
			<tr style="font-style: bold">
				<td style="text-align: left">total</td>
				<td style="text-align: left"><fmt:formatNumber pattern="###,###" value="${total}"/></td>
				<td colspan="4">-</td>
			</tr>
					</tbody>
				</table>
			</div>
		</div>

<nav aria-label="Page navigation example">
  <ul class="pagination">
  	<c:if test="${pagintDto.hasPrev == true}">
    <li class="page-item">
      <a class="page-link" data-page="${pagintDto.startPage - 1}" aria-label="Previous">
        <span aria-hidden="true">«</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
    </c:if>
    <c:forEach begin="${pagintDto.startPage}"
    		   end="${pagintDto.endPage}"
    		   var="v">
    <li 
    	<c:choose>
    		<c:when test="${pagingDto.page == v}">
    			class="page=item active"
    		</c:when>
    		<c:otherwise>
				class="page-item"
			</c:otherwise>
			</c:choose>
			>
				<a class="page-link" data-page="${v}">${v}</a>
			</c:forEach>	   
			<c:if test="${pagingDto.hasNext == true}">
    			<li class="page-item">
      <a class="page-link" data-page="${pagingDto.endPage +1}" href="#" aria-label="Next">
        <span aria-hidden="true">»</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
    </c:if>
  </ul>
</nav>


		
</body>
</html>