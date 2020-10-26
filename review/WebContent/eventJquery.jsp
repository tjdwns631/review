<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

</script>
</head>
<body>
<input id="txtFruit"><button id="btn">추가</button>
<div id="result">
	<p class="pf">사과</p>
	<p class="pf">바나나</p>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
//그룹이벤트

$("#result").on("click", ".pf" , mouseHandler);
//$(".pf").bind("click", mouseHandler);
$("#btn").bind("click",function(){
	$("#result").append("<p class='pf'>" +  txtFruit.value+ "</p>");
});
function mouseHandler (){
	//this ==event.target
	$(event.target).css("color", "blue");
}
</script>
</body>
</html>