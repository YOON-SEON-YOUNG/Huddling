<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
//상단 선택버튼 클릭시 체크된 Row의 값을 가져온다.
$("#selectBtn").click(function(){ 
	
	var rowData = new Array();
	var tdArr = new Array();
	var checkbox = $("input[name=user_CheckBox]:checked");
	
	// 체크된 체크박스 값을 가져온다
	checkbox.each(function(i) {

		// checkbox.parent() : checkbox의 부모는 <td>이다.
		// checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
		var tr = checkbox.parent().parent().eq(i);
		var td = tr.children();
		
		// 체크된 row의 모든 값을 배열에 담는다.
		rowData.push(tr.text());
		
		// td.eq(0)은 체크박스 이므로  td.eq(1)의 값부터 가져온다.
		var no = td.eq(1).text()+", "
		var userid = td.eq(2).text()+", ";
		var name = td.eq(3).text()+", ";
		var email = td.eq(4).text()+", ";
		
		// 가져온 값을 배열에 담는다.
		tdArr.push(no);
		tdArr.push(userid);
		tdArr.push(name);
		tdArr.push(email);
		
		//console.log("no : " + no);
		//console.log("userid : " + userid);
		//console.log("name : " + name);
		//console.log("email : " + email);
	});
	
	$("#ex3_Result1").html(" * 체크된 Row의 모든 데이터 = "+rowData);	
	$("#ex3_Result2").html(tdArr);	
});

var sell_price;
var amount;


function init () {
	sell_price = document.form.sell_price.value;
	amount = document.form.amount.value;
	document.form.sum.value = sell_price;
	change();
}

function add () {
	hm = document.form.amount;
	sum = document.form.sum;
	hm.value ++ ;

	sum.value = parseInt(hm.value) * sell_price;
}

function del () {
	hm = document.form.amount;
	sum = document.form.sum;
		if (hm.value > 1) {
			hm.value -- ;
			sum.value = parseInt(hm.value) * sell_price;
		}
}

function change () {
	hm = document.form.amount;
	sum = document.form.sum;

		if (hm.value < 0) {
			hm.value = 0;
		}
	sum.value = parseInt(hm.value) * sell_price;
}  
</script>

<br><br>

<form name="form" method="get">
	<div class="row">
		<button type="button" class="btn btn-outline btn-primary pull-right" id="selectBtn">선택</button>
		<table id="example-table-3" width="100%" class="table table-bordered table-hover text-center">
			<thead>
				<tr>
					<th>선택</th>
					<th>No.</th>
					<th>제목</th>
					<th>수량</th>
					<th>총액</th>
				</tr>
			</thead>
			<tbody>				
				<tr>
					<td><input type="checkbox" name="user_CheckBox"></td>
					<td>1</td>
					<td>50000원 이상</td>
					<td>
					<input type=hidden name="sell_price" value="50000">
					<input type="button" value=" - " style="width:30px;" onclick="del();"><br>
					<input type="text" name="amount" value="1" class="form-control text-center" onchange="change();">
					<input type="button" value=" + " style="width:30px" onclick="add();"><br>
					</td>
					<td>
					<input type="text" name="sum" size="11" style="width:100px" readonly>원
					</td>
				
				</tr>
				<tr>
					<td><input type="checkbox" name="user_CheckBox" ></td>
					<td>2</td>
					<td>user08</td>
					<td>넥슨</td>
					<td>donson@naver.com</td>
					
				</tr>
				<tr>
					<td><input type="checkbox" name="user_CheckBox" ></td>
					<td>3</td>
					<td>user09</td>
					<td>넷마블</td>
					<td>net@gmail.com</td>
				</tr>
			</tbody>
		</table>
		<div class="col-lg-12" id="ex3_Result1" ></div> 
		<div class="col-lg-12" id="ex3_Result2" ></div> 
	</div>
</form>	
	<br><br>
<!-- 프로젝트 소개 -->
<!-- 	<p>
		<br>
		<h3><strong>내 아이, 우리 엄마의 몰랐던 속마음을 들어보세요.</strong></h3><br>
		<br>
		<br>
		어느순간
		뒤돌아보면 서먹해지는 부모님과 아이 사이, 바쁜 하루 속 점점 줄어드는 가족간의 대화들. 서로 잘 안다고 생각했지만
		마음을 터놓고 이야기 하기란 쉽지 않습니다. 사실 우리의 마음은 더 깊이 있는 이야기를 원하고 있는지도 모릅니다.
		메리노크(MERRY KNOCK) 보드게임은 그런 당신과 주변 사람들의 마음에 명랑한 노크를 제안합니다.
	</p>
		<img src="/resources/images/pjt.jpg" width="200"/>
		<p>
		<br>
		<h3><strong>보드게임으로 이루는 어른과 아이의 '세대공감'</strong></h3><br>
		<br>
		<br>
		메리노크 보드게임은 보드판과 여러가지 카드로 구성되어 있습니다. 
		4가지 문으로 디자인 된 질문 카드는 우리의 마음 문을 의미합니다. 
		질문카드를 뽑고 답하면서 마음의 문을 서서히 열어보세요. 
		대화가 필요한 부모와 아이부터, 아이스브레이킹이 필요한 모임의 리더, 
		강의와 상담을 진행하는 데 효과적인 교구가 필요한 분들까지 메리노크 보드게임은 대화를 
		열어주는 훌륭한 도구가 됩니다.
	</p> -->
	
	
