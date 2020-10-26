<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
// 수량과 단가의 곱의 전체 합계를 출력하시오.
$(function(){
	var sum = $("td:nth-child(2):gt(0)");
	var ver = $("td:nth-child(3):gt(0)");
	var i =0;
	var total =0;
		console.log($("td:nth-child(2):gt(0)").css("color","red"));
	for(var i =0; i<sum.length; i++){
		total +=parseInt($(sum[i]).text() * $(ver[i]).text());
	}
		console.log(total)
		$("#total").text(total);
		
});
	
</script>
</head>
<body>
<h3>장바구니</h3>
<table border="1">
<thead>
	<tr><td>상품</td><td>수량</td><td>단가</td></tr>
</thead>
<tbody>	
	<tr><td>볼펜</td><td>2</td><td>100</td></tr>
	<tr><td>사표</td><td>1</td><td>200</td></tr>
	<tr><td>지우개</td><td>5</td><td>50</td></tr>
</tbody>	
</table>
<div>합계<span id="total"></span></div>
</body>
</html>