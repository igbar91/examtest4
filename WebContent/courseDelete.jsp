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

<%
String id = request.getParameter("id");
schoolDAO dao = new schoolDAO();
dao.deleteData(id);

response.sendRedirect("index.jsp");

%>

</body>
</html>