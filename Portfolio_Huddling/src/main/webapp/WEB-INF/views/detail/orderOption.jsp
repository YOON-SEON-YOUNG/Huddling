<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="utf-8" session="false"%>
<%@ include file="../board/include/board_header.jsp"%>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->



</head>
<style>
/* Global settings */
 
.product-image {
  float: left;
  width: 20%;
}
 
.product-details {
  float: left;
  width: 37%;
}
 
.product-price {
  float: left;
  width: 12%;
}
 
.product-quantity {
  float: left;
  width: 10%;
}
 
.product-removal {
  float: left;
  width: 9%;
}
 
.product-line-price {
  float: left;
  width: 12%;
  text-align: right;
}
 
/* This is used as the traditional .clearfix class */
.group:before, .shopping-cart:before, .column-labels:before, .product:before, .totals-item:before,
.group:after,
.shopping-cart:after,
.column-labels:after,
.product:after,
.totals-item:after {
  content: '';
  display: table;
}
 
.group:after, .shopping-cart:after, .column-labels:after, .product:after, .totals-item:after {
  clear: both;
}
 
.group, .shopping-cart, .column-labels, .product, .totals-item {
  zoom: 1;
}
 
/* Apply clearfix in a few places */
/* Apply dollar signs */

/* Body/Header stuff */
body {
  padding: 0px 30px 30px 20px;
  font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-weight: 100;
}
 
h1 {
  font-weight: 100;
}
 
label {
  color: #aaa;
}
 
.shopping-cart {
  margin-top: -45px;
}
 
/* Column headers */
.column-labels label {
  padding-bottom: 15px;
  margin-bottom: 15px;
  border-bottom: 1px solid #eee;
}
/* .column-labels .product-image, .column-labels .product-details, .column-labels .product-removal {
  text-indent: -9999px;
}
  */
/* Product entries */
.product {
  margin-bottom: 20px;
  padding-bottom: 10px;
  border-bottom: 1px solid #eee;
}
.product .product-image {
  text-align: center;
}
.product .product-image img {
  width: 100px;
}
.product .product-details .product-title {
  margin-right: 20px;
  font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
}
.product .product-details .product-description {
  margin: 5px 20px 5px 0;
  line-height: 1.4em;
}
.product .product-quantity input {
  width: 40px;
}
.product .remove-product {
  border: 0;
  padding: 4px 8px;
  background-color: #F29661;
  color: #fff;
  font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
  font-size: 12px;
  border-radius: 3px;
}
.product .remove-product:hover {
  background-color: #a44;
}
 
/* Totals section */
.totals .totals-item {
  float: right;
  clear: both;
  width: 100%;
  margin-bottom: 10px;
}
.totals .totals-item label {
  float: left;
  clear: both;
  width: 79%;
  text-align: right;
}
.totals .totals-item .totals-value {
  float: right;
  width: 21%;
  text-align: right;
}
.totals .totals-item-total {
  font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
}
 
.checkout {
  float: right;
  border: 0;
  margin-top: 20px;
  padding: 6px 25px;
  background-color: #4374D9;
  color: #fff;
  font-size: 25px;
  border-radius: 3px;
}
 
.checkout:hover {
  background-color: #494;
}
 
/* Make adjustments for tablet */
@media screen and (max-width: 650px) {
  .shopping-cart {
    margin: 0;
    padding-top: 20px;
    border-top: 1px solid #eee;
  }
 
  .column-labels {
    display: none;
  }
 
  .product-image {
    float: right;
    width: auto;
  }
  .product-image img {
    margin: 0 0 10px 10px;
  }
 
  .product-details {
    float: none;
    margin-bottom: 10px;
    width: auto;
  }
 
  .product-price {
    clear: both;
    width: 70px;
  }
 
  .product-quantity {
    width: 100px;
  }
  .product-quantity input {
    margin-left: 20px;
  }
 
  .product-quantity:before {
    content: 'x';
  }
 
  .product-removal {
    width: auto;
  }
 
  .product-line-price {
    float: right;
    width: 70px;
  }
}
/* Make more adjustments for phone */
@media screen and (max-width: 350px) {
  .product-removal {
    float: right;
  }
 
  .product-line-price {
    float: right;
    clear: left;
    width: auto;
    margin-top: 10px;
  }
 

  .totals .totals-item label {
    width: 60%;
  }
  .totals .totals-item .totals-value {
    width: 40%;
  }
}

</style>

<script>
$(document).ready(function() {
	var num = ${num};
	var member_id = $(#member_id).val();
	var optionArray = [];
	$("input[name='option']:checked").each(function(i){
		optionArray.push($(this).val());
	});
	
	var allData = {"member_id": member_id, "optionList":optionArray};
	
	$.ajax({
		url:""
		type='GET'
		data:allData
		success:fuction(data){
			alert("완료!")
			window.opner.location.reload();
			self.close();
		},
		error:function(jqXHR, textStatus, errorThrown){
            alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
            self.close();
        }
	   });
}
	
	
	
	$(".optionCheck").change(function() {
		var that = $(this);
		console.log("that", that);
	}); // $(".optionCheck").change
    


	
	 
	/* Set rates + misc */
	var taxRate = 0.05;
	var shippingRate = 15.00; 
	var fadeTime = 300;
	 
	 
	/* Assign actions */
	$('.product-quantity input').change( function() {
	  updateQuantity(this);
	});
	 
	$('.product-removal button').click( function() {
	  removeItem(this);
	});
	 
	 
	/* Recalculate cart */
	function recalculateCart()
	{
	  var subtotal = 0;
	   
	  /* Sum up row totals */
	  $('.product').each(function () {
	    subtotal += parseFloat($(this).children('.product-line-price').text());
	  });
	   
	  /* Calculate totals */
	  var tax = subtotal * taxRate;
	  var shipping = (subtotal > 0 ? shippingRate : 0);
	  var total = subtotal + tax + shipping;
	   
	  /* Update totals display */
	  $('.totals-value').fadeOut(fadeTime, function() {
	    $('#cart-subtotal').html(subtotal.toFixed(0));
	    $('#cart-tax').html(tax.toFixed(0));
	    $('#cart-shipping').html(shipping.toFixed(0));
	    $('#cart-total').html(total.toFixed(0));
	    if(total == 0){
	      $('.checkout').fadeOut(fadeTime);
	    }else{
	      $('.checkout').fadeIn(fadeTime);
	    }
	    $('.totals-value').fadeIn(fadeTime);
	  });
	} // function recalculateCart()
	 
	 
	/* Update quantity */
	function updateQuantity(quantityInput)
	{
	  /* Calculate line price */
	  var productRow = $(quantityInput).parent().parent();
	  var price = parseFloat(productRow.children('.product-price').text());
	  var quantity = $(quantityInput).val();
	  var linePrice = price * quantity;
	   
	  /* Update line price display and recalc cart totals */
	  productRow.children('.product-line-price').each(function () {
	    $(this).fadeOut(fadeTime, function() {
	      $(this).text(linePrice.toFixed(0));
	      recalculateCart();
	      $(this).fadeIn(fadeTime);
	    });
	  });  
	} // function updateQuantity(
	 
	 
	/* Remove item from cart */
	function removeItem(removeButton)
	{
	  /* Remove row from DOM and recalc cart total */
	  var productRow = $(removeButton).parent().parent();
	  productRow.slideUp(fadeTime, function() {
	    productRow.remove();
	    recalculateCart();
	  });
	} // function removeItem(removeButton)
	 
	// 서브밋 클릭하면 체크된 리워드 번호 가져오기 
 	
	
/* 	$("#optionSubmit").on('click', function(){
		var saveOption = [];
		$("input[name=option]:checked").each(function(){
			saveOption.push($(this).val());
		});
		console.log(saveOption);
	});

 */
	
	
}); // $(document).ready(function(){})
	 


function funding_click() {
	
	var num = ${num};	
	var optionArray= [];
	$("input[name=option]:checked").each(function(){
		optionArray.push($(this).val());
	});

	console.log(num);
	console.log(optionArray);
 	var url = "/detail/detailMain/" + num + "/payment";
 	window.open(url,"_blank_1","toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500 height=600");
} 



</script>

<body>
<%-- optionList: ${reword} --%>

	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
		
<h1>리워드 옵션</h1>

<br>
<br>
<br>
<div class="shopping-cart"> 
  <div class="column-labels">
    <label class="product-image">option</label>
    <label class="product-details">Product</label>
    <label class="product-price">Price</label>
    <label class="product-quantity">Quantity</label>
    <label class="product-removal">Remove</label>
    <label class="product-line-price">Total</label>
  </div>
 
 <c:forEach var="rewordDto" items="${reword}" varStatus="stat">
  <div class="product">
    <div class="product-image">
    <input name="option" class="optionCheck" type="checkbox" value="${rewordDto.temp_reword_num}">
      ${rewordDto.temp_reword_trans}
    </div>
    <c:choose>
	<c:when test="${stat.count eq 1 }">
	</c:when>
	<c:otherwise>
	<div role="tab" id="heading${stat.count}"></div>
	</c:otherwise>
	</c:choose>
    <div class="product-details">
      <div class="product-title">${rewordDto.temp_reword_name}</div>
      <p class="product-description">배송비</p><span style="text-align:right;">${rewordDto.temp_reword_trans_price }</span>원
	<p class="product-description">발송예상일</p> ${rewordDto.temp_reword_trans_month }/${rewordDto.temp_reword_trans_days } 예상
	
    </div>
    <div class="product-price">${rewordDto.temp_reword_price}원</div>
    <div class="product-quantity">
      <input type="number" value="1" min="1">
    </div>
    <div class="product-removal">
      <button class="remove-product">
        Remove
      </button>
    </div>
    <div class="product-line-price">${rewordDto.temp_reword_price}원</div>
  </div>
  </c:forEach>
 

 
  <div class="totals">
    <div class="totals-item">
      <label>Total</label>
      <div class="totals-value" id="cart-subtotal">${rewordDto.temp_reword_price}원</div>
    </div>
   
  </div>
          <button class="checkout" id="optionSubmit" onClick="funding_click()">Checkout</button>
      
 
</div>
		
		</div>
		<div class="col-md-2">
		</div>
	</div>







</body>
</html>

<%@ include file="../board/include/board_footer.jsp"%>