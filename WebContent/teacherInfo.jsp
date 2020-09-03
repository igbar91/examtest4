<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="practiceExam2.schoolDAO" %>
     <%@ page import="practiceExam2.LecturerBean" %>
     <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사 정보 샘플 데이터</title>
</head>
<style>
table{
margin:auto;
border:1px solid black;
padding-left:30px;
padding-right:30px;
padding-top:10px;
padding-bottom:10px;
margin-top:30px;
margin-bottom:30px;
text-align:center;
}
</style>
<body>
<%
request.setCharacterEncoding("UTF-8");
%>
 <%
 String name = request.getParameter("name");
 schoolDAO dao = new schoolDAO();
 LecturerBean bean = dao.teacherInfo(name);
 
 %>
<table>
<tr>
<td>번호</td>
<td>강사명</td>
<td>전공</td>
<td>세부전공</td></tr>



<tr>
<td>번호<%=bean.getIdx()%></td>
<td>강사명<%=bean.getName()%></td>
<td>전공<%=bean.getMajor()%></td>
<td>세부전공<%=bean.getField()%>
</td></tr>

</table>

</body>
</html>