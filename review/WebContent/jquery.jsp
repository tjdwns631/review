<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
$(function(){
	
	/* var $btn = $("#btn1"); // jquery 객체
	$("#btn1").on("click",function(){
		$("#result").html("jqeury 변경");	
	})
	 */
	
	var btn= document.getElementById("btn1"); // dom 객체
	btn.addEventListener("click", function(){
		var result = document.getElementBtId("result");
		result.innerHTML = "dom 변경됨!!!";
	})
	
/* 	
    btn.innerHTML = "변경됨!!!";
	$("#btn1").html("jqeury 변경");
	$btn.html("jqeury 변경")
	$(btn).html("jqeury 변경") */
	
});
</script>
</head>
<body>
<button type="button" id=btn1 >내용변경</button>
<div id="result"></div>
</body>
</html>