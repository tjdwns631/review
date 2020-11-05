<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 	ArrayList<String> list = new ArrayList();
	list.add("바나나");
	list.add("딸기");
	list.add("귤");
	request.setAttribute("fruit", list);
	pageContext.setAttribute("color", "cyan");
%>
${fruit[0] }
<hr>
총 과일 수 : ${fn:length(fruit)} <br>
<c:forEach items="${fruit}" var="f" varStatus="s">
	<c:set var="color" value="cyan" />
		<c:if test="${ s.index%2==0}">
			<c:set var="color" value="yellow" />
		</c:if>
 <div style="background-color:${color}" >${s.index } : ${f}</div>
</c:forEach>
</body>
</html>