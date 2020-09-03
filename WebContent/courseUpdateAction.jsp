<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ page import="practiceExam2.schoolDAO" %>
     <%@ page import="practiceExam2.courseBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="bean" class="practiceExam2.courseBean">
<jsp:setProperty name="bean" property="*"/>
</jsp:useBean>
<%
schoolDAO dao = new schoolDAO();
dao.updateData(bean);
response.sendRedirect("index.jsp");

%>
</body>
</html>