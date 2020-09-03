<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="practiceExam2.schoolDAO" %>
     <%@ page import="practiceExam2.courseBean" %>
     <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
 *총 10갸의 교과목이 있습니다.
 <%
 schoolDAO dao = new schoolDAO();
 Vector<courseBean> vec = dao.coursebring();
 
 %>
 <table border="1px";>
 <tr>
 <td>과목코드</td>
 <td>과목명</td>
 <td>학점</td>
 <td>담당강사</td>
 <td>요일</td>
 <td>시작시간</td>
 <td>종료시간</td>
 <td>관리</td></tr>
 
 <%
 //**여기중요
 for(int i=0; i<vec.size(); i++){
	  courseBean bean = vec.get(i);
	 

 %>
  <tr>
 <td><%=bean.getId()%></td>
 <td><%=bean.getName()%></td>
 <td><%=bean.getCredit()%></td>
 <td><a href="index.jsp?center=teacherInfo.jsp?name=<%=bean.getLecturer()%>"><%=bean.getLecturer()%></a></td>
 
 <td>
 
<% 
String day = request.getParameter("day");
if(bean.getWeek()==1){
	day = "월요일";
}else if(bean.getWeek()==2){
	day = "화요일";
}else if(bean.getWeek()==3){
	day = "수요일";
}else if(bean.getWeek()==4){
	day = "목요일";
}else if(bean.getWeek()==5){
	day = "금요일";
}else {
	day = "토요일";
}
%>
 
 <%=day%></td>
 <td><%=bean.getStart_hour()%></td>
 <td><%=bean.getEnd_end()%></td>
 <td>
 <%--****여기서 id =빼먹음 --%>
 <a href="index.jsp?center=courseUpdate.jsp?id=<%=bean.getId()%>">수정</a>/
<a href="courseDelete.jsp?id=<%=bean.getId()%>"> 삭제</a></td>
 
 <%
 }
 %></tr>
<button type="button"><a href="index.jsp?center=courseWrite.jsp">작성</a> </button>
 </table>

</body>
</html>