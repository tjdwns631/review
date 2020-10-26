<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<body>
	<div>a</div>
	<div>b</div>
	<div>c</div>
	<script>
		var div = document.getElementsByTagName("div");
		//div[0].style.color ="red";
		//$(div[0]).css("color","red"); // dom ->jQuery : $(dom객체 )
		var $div = $("div");
		$div[1].style.color="blue";//jqeury ->dom객체 : get(),item()
	</script>
</body>
</html>