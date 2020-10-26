<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Thread.sleep(2000);//2초대기 
HashMap<String,String> map = new HashMap<>();
map.put("choi","최기자");
map.put("park","박길동");
map.put("kim","김길자");
//1.파라미터
String userid = request.getParameter("userid");
String name =map.get(userid);


%>
{"result":true, "name":"<%=name %>"}