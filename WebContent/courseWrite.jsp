<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교과목 추가</title>
</head>
<style>
h1{
text-align:center;
}
table{
margin:auto;
text-align:center;
}
</style>
<body>
		<h1>교과목 추가</h1>
<form method="post" action="courseWriteAction.jsp">		
<table border="1";>
<tr>
<td>교과목 코드</td><td><input type="text" name="id"></input></td></tr>
<tr>
<td>과목명</td><td><input type="text" name="name"></input></td></tr>
<tr>
<td>담당강사</td>
<td><select name="lecturer">
<option value="김교수" selected>김교수</option>
<option value="이교수">이교수</option>
<option value="박교수">박교수</option>
<option value="우교수">우교수</option>
<option value="최교수">최교수</option>
<option value="강교수">강교수</option>
<option value="황교수">황교수</option>
</select></td></tr>
<tr>
<td>학점</td><td><input type="text" name="lecturer"></input></td></tr>
<tr>
<%--radio input radio name value 값 --%>
<td>요일</td><td><input type="radio" name="week" value="1">월
<input type="radio" name="week" value="2">화
<input type="radio" name="week" value="3">수
<input type="radio" name="week" value="4">목
<input type="radio" name="week" value="5">금
<input type="radio" name="week" value="6">토
</td></tr>
<tr>
<td>시작</td><td><input type="text" name="start_hour"></input></td></tr>
<tr>
<td>종료</td><td><input type="text" name="end_end"></input></td></tr>

<tr><td  align="center" colspan="2">
<%--??왜 목록으로 안가지 --%>
<a href="index.jsp?center=courseList.jsp"><button>목록</button></a>
<input type="submit" value="완료"></td></tr>
</table>
</form>
</body>
</html>