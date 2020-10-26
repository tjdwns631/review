<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.back{
font-size :1.2em;
background : cyan;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
$( function(){
	
$("td").bind("click",function(){
	//$(this).closest("table").prev().css("backgroundColor","cyan");
	//$(this).closest("body").children().first().css("backgroundColor","cyan");
	//$(this).prevAll().last().css("backgroundColor","cyan");
	//$(this).parent().children().first().css("backgroundColor","cyan");
	//$(this).parent().children().eq(2).css("backgroundColor","cyan");
	//$(this).toggleClass("back");
	//클릭한 행의 값을 조회
	var tds = $(this).parent().children();
	var str = "";
	for(i=0; i<tds.length; i++){
	str += $(tds[i]).text();		
	}
		alert(str);
		
		str = "";
		tds.each(function(index){
			str += $(this).text();
		});
		alert(str);
		
		str = "";
		$.each(tds, function(index){
			str += $(this).text();
		});
		alert(str);
});
	
});
</script>
</head>
<body>
<div>탐색 선택자</div>
<table border="1">
<tr><td>1</td><td>2</td><td>3</td></tr>
<tr><td>4</td><td>5</td><td>6</td></tr>
<tr><td>7</td><td>8</td><td>9</td></tr>
</table>
</body>
</html>