<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글삭제하기</title>
</head>
<body>

	<div align="center" style="padding-top: 100px">
		<h1>글 삭제하기</h1>
	</div>
	<div align="center">
		<form action="boardDelete" method="post">
			<table border="1" style="width: 700px; text-align: center">
				<colgroup>
					<col width="20%">
					<col width="80%">
				</colgroup>
				<tr>
					<td>글번호</td>
					<td>${bdto.num }</td>
				</tr>
				<tr>
					<td>조회수</td>
					<td>${bdto.readCount }</td>
				</tr>
				<tr>
					<td>글쓴이</td>
					<td>${bdto.writer }</td>
				</tr>
				<tr>
					<td>작성일</td>
					<td><fmt:formatDate value="${bdto.regDate }" pattern="yyyy-MM-dd"/></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" id="password" name="password"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>${bdto.email }</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>${bdto.subject }</td>
				</tr>
				<tr>
					<td>글내용</td>
					<td>${bdto.content }</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="hidden" name="num" value="${bdto.num }">
						<input type="submit" value="삭제하기">
						<input type="button" value="돌아가기" onclick="history.go(-1)">
						<input type="button" value="목록보기" onclick="location.href='boardList'">
					</td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>