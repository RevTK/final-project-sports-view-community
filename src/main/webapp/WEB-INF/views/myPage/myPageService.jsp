<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
	<h2>고객센터</h2>
	
	<table>
		<thead>
			<tr>
				<th>카테고리</th>
				<th>제목</th>
				<th>시간</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="ask" items="${Asks }">
				<tr>
					<td>${ask.ask_cat }</td>
					<td><a style="cursor: pointer; color: blue;" href="myPage.ask.detail.go?ask_no=${ask.ask_no}">${ask.ask_title }</a></td>
					<td>${ask.ask_date }</td>
					<td>${ask.ask_count }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<button onclick="bye();" type="button">탈퇴문의</button>
	<button type="button">고객문의</button>
</body>
</html>