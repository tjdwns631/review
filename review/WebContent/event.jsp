<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<button type="button" id="btn1">이벤트처리</button><p id="info">상세소개</p>
	<button type="button" id="btn2">이벤트처리</button><p id="info2">상세소개2</p>
	<script>
		//이벤트 핸들러 
		//btn1.onclick = function(){info.style.display = "none";};
		//btn1.addEventListener("click", btnHandler);
		//btn2.addEventListener("click", btnHandler);
		document.body.addEventListener("click", btnHandler)
		function btnHandler() {
			event.target.nextSibling.style.display = "none";
			//event.stopPropagation();//전파 중지
		}
	</script>
</body>
</html>