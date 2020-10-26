<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input id="txtFruit"><button id="btn">추가</button>
<div id="result">
	<p class="pf">사과</p>
	<p class="pf">바나나</p>
</div>
<script>
result.addEventListener("click", mouseHandler);

function mouseHandler (){
	console.log(this);
	console.log(event.target);
	//this ==event.target
	event.target.style.color="red";
}
//버튼 클릭 이벤트
btn.addEventListener("click",function(){
	result.innerHTML +="<p class='pf'>" +  txtFruit.value+ "</p>";
});
</script>
</body>
</html>