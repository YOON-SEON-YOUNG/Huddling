<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<script>
	
	var normPrice;
	var salePrice;
	
	// 천단위 콤마
function ThousandComma(dispalynumber) {
	var str = dispalynumber.replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1,');
	return str;
}
	
function select_charge_type(inputNormPrice, inputSalesPrice) {
	normPrice = inputNormPrice;
	salePrice = inputNormPrice;
	
	document.getElementById("price_info").innerHTML = ThousandComma(normPrice);
	document.getElementById("point_info").innerHTML = ThousandComma(salesPrice);
	document.getElementById("new_points").innerHTML = ThousandComma(String(Number() + Number(salesPrice)));
	
}

function chargePage_click() {
	var url ="../member/pointChargePage";
	window.open(url,"_blank_1","toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500 height=600")
};



</script>

<style>

li {	list-style: none;	}
th, td {	padding: 0;		vertical-align: top;	}
body, th, td, input, select {	color: black;	font-size: 12px;	}
div, ul, li, ol, dd, input {
	border: 0;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	color: black;
	outline: none;
	font-family: dotum,sans-serif;
	font-size: 12px;
	font-weight: normal;
	color: #333333;
	vertical-align: top;
}
#wrap #contents_wrap .center_wrap {	float: left;	width: 795px;	margin: 0 auto;	position: relative;	top: 0px;	right: 0px;}
#wrap #contents_wrap {	clear: both;	width: 1000px;	height: auto;	margin: 0 auto;	text-align: center;	margin-top: 5px;	position: relative;}
#wrap {	width: 100%;	height: auto;	margin: 0 auto;	text-align: center;	}
body {	margin: 0;	padding: 0;	}
th, td {	padding: 0;		vertical-align: top;	}
.center_wrap .sub_banner {	width: 100%;	margin: 0 auto;	background-color: #fff;	position: relative;	}
.charge_tit {	clear: both;	width: 100%;	height: 20px;	margin: 0 auto;	text-align: left;	margin-top: 30px;	margin-bottom: 10px;	}
.charge {	clear: both;	width: 100%;	margin: 0 auto;	position: relative;	z-index: 100;}
.charge_info {	clear: both;	width: 100%;	position: relative;	text-align: left;	margin-top: 30px;	margin-bottom: 30px;}
li {	list-style: none;	}
.mar_top10 {	margin-top: 10px;	}
.charge_info li {	list-style: none;	display: block;	height: 20px;	line-height: 20px;	text-align: left;	color: #666;}
.mar_top10 {	margin-top: 10px;	}
.font14 {	font-size: 14px;	}
.fontBlack {	color: #000;	}
.fontBlue {	color: #0e61ae;	}
.bold {	font-weight: bold;	}
.charge .icon_hot3 {	width: 41px;	height: 41px;	background: url(./images/icon/icon_hot.png) no-repeat;	position: absolute;	top: 111px;	left: 20px;	z-index: 200;}
table {	border-collapse: collapse;	border-spacing: 0;	padding: 0;	border: 0;	box-sizing: border-box;}
.charge table {	width: 100%;	margin: 0 auto;		position: relative;	}
.charge .btn_buy {	width: 100%;	margin: 0 auto;	height: 60px;	text-align: center;	margin: 30px 0px;	background: url(./images/btn/btn_buy.gif) no-repeat 0px 0px;	background-position: center;	cursor: pointer;}
th, td {	padding: 0;	vertical-align: top;	}
.alignC {	text-align: center;	}
.alignR {	text-align: right;	}
.pad_right10 {	padding-right: 10px;	}
.pad_right20 {	padding-right: 20px;	}
.charge table td {	height: 40px;	line-height: 40px;	vertical-align: middle;	border-bottom: #e0e0e0 1px solid;}
.charge .tit_tot {	height: 40px;	line-height: 40px;	font-size: 14px;	background-color: #f9f9f9;	border-bottom: #CCC 1px solid;	border-top: #CCC 1px solid;	text-align: center;}
.font14 {	font-size: 14px;	}
.fontBlack {	color: #000;	}
.fontBlue {	color: #0e61ae;	}
.fontGray {	color: #757575;	}
.font11 {		font-size: 11px;	}
.fontGray {	color: #757575;	}
.font_through {		text-decoration: line-through;	}
.font11 {	font-size: 11px;	}
.fontGray {	color: #757575;	}
.charge table td span {	font-family: Verdana, Geneva, sans-serif;	}
.charge .ch_tit {	height: 30px;	line-height: 30px;	font-size: 12px;	background-color: #f9f9f9;	border-bottom: #CCC 1px solid;	border-top: #CCC 1px solid;	text-align: center;	color: #666;}
.charge .td_rig {	border-right: #e0e0e0 1px solid;	}
img {	border: 0;	}
.fontGray {	color: #757575;	}
.font_through {	text-decoration: line-through;	}
.font11 {	font-size: 11px;	}
.shbox {	width: 29px;	height: 29px;	margin-top: 7px;	text-align: center;	margin: 0 auto;}
.shbox input[type='radio'] {	 display: none;	}
.shbox input[type='radio'] + label {	color: #f2f2f2;	font-family: Arial, sans-serif;	font-size: 14px;	}
.shbox input[type='radio'] + label span {	display: inline-block;	width: 29px;	height: 29px;	margin: -1px 4px 0 0;	vertical-align: middle;	background: url(./images/icon/icon_check.png) -64px top no-repeat;	cursor: pointer;}
.shbox input[type='radio']:checked + label span {	background: url(./images/icon/icon_check.png) -94px top no-repeat;	}
</style>
<body>

				<!-- 포인트충전시작 -->
							<span id="list-item-5" >
memberVo : ${memberVo}<br>						
pointVo: ${pointVo}							
							
							<div id="tooplate_middle_subpage">
    	<h2>포인트 충전</h2>
        <p></p>	
	</div> <!-- end of middle -->
    
    <div id="tooplate_main">
    
    	<div class="col_w960 float_l">

			<div id="wrap"><div id="contents_wrap"><div class="center_wrap">
			
			 
			 <h3>포인트 충전소</h3>
					
				<!--충전표 시작!-->
				<div class="charge">
					<div class="icon_hot3"></div><!--줄 번호별로 아이콘 있음!-->
					<form name="formPoint" method="get" action="">
						<input type='hidden' name='menu' value='551'>
						<table align='center'>
							<tbody><tr>
								<td width="90" class="ch_tit"></td>
								<td width="35" class="ch_tit"></td>
								<td width="75" class="ch_tit">정상가</td>
							    <td width="100" class="ch_tit td_rig">특별 할인가</td>
						    	<td width="90" class="ch_tit td_rig">할인율</td>
							</tr>
				
							<tr>
								<td></td>
								<td class="alignC">
									<!-- <div class="shbox" onclick="select_charge_type('5000','5000');"><input name="pay_type" id="pay_type" type="radio" value="5000"><label for="ch1"><span></span></label></div> -->
									<input id="txtPrice" name="txtPrice" type="radio" value="5000" onclick="select_charge_type('5000','5000');" checked>
								</td>
								<td class="alignC"><span class=" fontGray font11">5,000원</span></td>
								<td class="alignC td_rig pad_right10"><span class=" font14 fontBlack bold">5,000원</span></td>
								<td class="alignC td_rig">-</td>
							</tr>
							<tr>
								<td></td>
								<td class="alignC">
									<!-- <div class="shbox" onclick="select_charge_type('9500','10000');"><input name="pay_type" id="pay_type" type="radio" value="10000"><label for="ch1"><span></span></label></div> -->
									<input id="txtPrice" name="txtPrice" type="radio" value="10000" onclick="select_charge_type('9500','10000');">
								</td>
								<td class="alignC"><span class="font_through fontGray font11">10,000원</span></td>
								<td class="alignC td_rig pad_right10"><span class=" font14 fontBlack bold">9,500원</span></td>
								<td class="alignC td_rig">5%</td>
							</tr>
							<tr>
								<td></td>
								<td class="alignC">
									<!-- <div class="shbox" onclick="select_charge_type('18000','20000');"><input name="pay_type" id="pay_type" type="radio" value="17600"><label for="ch1"><span></span></label></div> -->
									<input id="txtPrice" name="txtPrice" type="radio" value="20000" onclick="select_charge_type('18000','20000');">
								</td>
								<td class="alignC"><span class="font_through fontGray font11">20,000원</span></td>
								<td class="alignC td_rig pad_right10"><span class=" font14 fontBlack bold">18,000원</span></td>
								<td class="alignC td_rig">5%</td>
							</tr>
							<tr>
								<td></td>
								<td class="alignC">
									<!-- <div class="shbox" onclick="select_charge_type('26400','30000');"><input name="pay_type" id="pay_type" type="radio" value="26400"><label for="ch1"><span></span></label></div> -->
									<input id="txtPrice" name="txtPrice" type="radio" value="30000" onclick="select_charge_type('26400','30000');">
								</td>
								<td class="alignC"><span class="font_through fontGray font11">30,000원</span></td>
								<td class="alignC td_rig pad_right10"><span class=" font14 fontBlack bold">26,400원</span></td>
								<td class="alignC td_rig">5%</td>
							</tr>
							<tr>
								<td></td>
								<td class="alignC">
									<!-- <div class="shbox" onclick="select_charge_type('42500','50000');"><input name="pay_type" id="pay_type" type="radio" value="44000"><label for="ch1"><span></span></label></div> -->
									<input id="txtPrice" name="txtPrice" type="radio" value="50000" onclick="select_charge_type('42500','50000');">
								</td>
								<td class="alignC"><span class="font_through fontGray font11">50,000원</span></td>
								<td class="alignC td_rig pad_right10"><span class=" font14 fontBlack bold">42,500원</span></td>
								<td class="alignC td_rig">5%</td>
							</tr>
							<tr>
								<td></td>
								<td class="alignC">
									<!-- <div class="shbox" onclick="select_charge_type('80000','100000');"><input name="pay_type" id="pay_type" type="radio" value="88000"><label for="ch1"><span></span></label></div> -->
									<input id="txtPrice" name="txtPrice" type="radio" value="100000" onclick="select_charge_type('80000','100000');">
								</td>
								<td class="alignC"><span class="font_through fontGray font11">100,000원</span></td>
								<td class="alignC td_rig pad_right10"><span class=" font14 fontBlack bold">80,000원</span></td>
								<td class="alignC td_rig">10%</td>
							</tr>
							<tr>
								<td class="tit_tot" colspan="12"><span class="bold">결제금액: <span id="price_info">5,000</span>원</span> ( =    <span class="fontBlack bold"><span id="point_info">5,000</span> 포인트</span>   ) </td>
							</tr>
						</tbody>
						</table>
						
						<br/>
						<input type="submit" name="btnSubmit" class="btn btn-primary" value="충전하기" onClick="chargePage_click()">
					</form>			
					<!-- <div class="btn_buy" onclick="charge_layer();"></div> -->
				</div>
				<!-- 충전표 끝!-->
				
				<h3>현재 보유한 포인트금액</h3>
				<table border="1" align="center">
				<tr>
					<td width="200" bgcolor="#CCCCCC"><p align="center"></b></p>포인트 잔액</td>
					<td width="200" bgcolor="#CCCCCC"><p align="center">결제 후 잔액</td>
				</tr>	
				<tr>
					<td><p align="center">10000</p></td>
					<td><p align="center">15000</p></td>
				</tr>	
				
				
				</table>
				
				<!-- 결제유의사항!-->     
				<div class="charge_info" style="padding-left: 10px;">
					<li><span class="bold">[유의사항]</span></li>
					<li class="mar_top10">* 원하시는 결제방법을 선택하신 후 충전하시면 됩니다.</li>
					<li>* 충전 후, 사용하신 상품은 해지 및 취소/변경을 하실 수 없습니다.</li>
					
			
			
				</div>
				<!-- 충전소 종료!-->
			</div></div></div>
			
		</div>        
        
        <div class="cleaner"></div>
    </div> <!-- end of main -->

	<div class="cleaner"></div>
</div> <!-- end of forever wrapper -->
</div> <!-- end of forever body wrapper -->

				
							
							
							
<!-- 								<h4>포인트충전</h4>
								<div class="row">
									<div class="col-md-3">
										<table class="table" style="padding: 50px">
											<thead style="background-color: #888888">
												<tr>
													<th scope="col" id="charge">충전</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th scope="row" style="width: 120px" id="chargeRead">
														
														보유포인트&nbsp; <span>XXXX</span>
														<span style="font-size: 30px">원</span>&nbsp;
														
														Button trigger modal
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  충전하기
</button>

모달창
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">충전하기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      모달 입력가능창
      <div class="modal-body">
  		<h4 style="text-align:center;">충전</h4>
  		<hr style="background-color:#00FF00">
  		
  		<label>충전금액</label>
  		<input type="text"class="form-control" >
  		<label>충전수단</label>
  		<input type="text"class="form-control">
  		
  		
      모달 버튼창
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary">충전하기</button>
      </div>
    </div>
  </div>
</div>
													</th>

												</tr>
											밑에
												<tr>
													<td></td>	
												</tr>
											</tbody>
										</table>
										<div class="col-md-9"></div>
									</div> -->
							</span>
</body>
</html>