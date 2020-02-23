<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

</head>


<script>
</script>

<style>
.fixed_headers {
	width: 750px;
	table-layout: fixed;
	border-collapse: collapse;
}

.fixed_headers th {
	text-decoration: underline;
}

.fixed_headers th, .fixed_headers td {
	padding: 5px;
	text-align: left;
}

.fixed_headers td:nth-child(1), .fixed_headers th:nth-child(1) {
	min-width: 200px;
}

.fixed_headers td:nth-child(2), .fixed_headers th:nth-child(2) {
	min-width: 200px;
}

.fixed_headers td:nth-child(3), .fixed_headers th:nth-child(3) {
	width: 350px;
}

.fixed_headers thead {
	background-color: #333;
	color: #FDFDFD;
}

.fixed_headers thead tr {
	display: block;
	position: relative;
}

.fixed_headers tbody {
	display: block;
	overflow: auto;
	width: 100%;
	height: 300px;
}

.fixed_headers tbody tr:nth-child(even) {
	background-color: #DDD;
}

.old_ie_wrapper {
	height: 300px;
	width: 750px;
	overflow-x: hidden;
	overflow-y: auto;
}

.old_ie_wrapper tbody {
	height: auto;
}
</style>
<body>

	<!-- 포인트충전시작 -->
	<span id="list-item-5"> 
<%-- memberVo : ${memberVo}<br> --%>

		<table class="fixed_headers">
			<thead>
				<tr>
					<th>포인트 금액</th>
					<th>입출금</th>
					<th>날짜</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>10000</td>
					<td>입금</td>
					<td>2020년 2월 20일</td>
				</tr>
				<tr>
					<td>5000</td>
					<td>출금</td>
					<td>2020년 2월 20일</td>
				</tr>

			</tbody>
		</table>		
	</span>
</body>
</html>