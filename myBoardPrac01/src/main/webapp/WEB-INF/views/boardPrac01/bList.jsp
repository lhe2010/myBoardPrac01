<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판목록</title>
</head>
<body>
	<div align="center" style="padding-top: 100px">
		<h1>게시판목록입니다.</h1>
	</div>
	<div align="center">
		<table border="1" style="width: 700px">
			<colgroup>
				<col width="10%">
				<col width="40%">
				<col width="20%">
				<col width="10%">
				<col width="20%">
			</colgroup>
			<tr align="center">
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>조회수</td>
				<td>작성일</td>
			</tr>
			<c:forEach var="board" items="${boardList }">
				<c:set var="idx" value="${idx+1 }"/>
				<tr align="center">
					<td><c:out value="${idx }"/></td>
					<td><a href="boardInfo?num=${board.num }" >${board.subject }</a></td>
					<td>${board.writer }</td>
					<td>${board.readCount }</td>
					<td><fmt:formatDate value="${board.regDate }" pattern="yyyy-MM-dd"/></td>				
				</tr>
			</c:forEach>
			<tr>
				<td colspan="5">
					<input type="button" value="글쓰기" style="float: right" onclick="location.href='boardWrite'">
				</td>
			</tr>
		</table>
	</div>

</body>
</html>