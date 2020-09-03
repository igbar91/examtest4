<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
div{
text-align:center;
border:1px solid black;
margin:auto
}
</style>
<body>
<%
String center = request.getParameter("center");
if(center==null){
	center = "index.jsp?center=courseList.jsp";
}

%>
<header>
<div>
수강신청 도우미 사이트
</div>
</header>

<section>
<jsp:include page="<%=center %>"></jsp:include>
</section>

<footer>
<div>Copyright (C) 20108 정보처리산업기사 All Right Reserved</div>
</footer>
</body>
</html>