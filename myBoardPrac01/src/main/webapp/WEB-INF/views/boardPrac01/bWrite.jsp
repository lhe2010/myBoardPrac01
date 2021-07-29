<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center" style="padding-top: 100px">
		<h1>글쓰기 페이지 입니다. </h1>
	</div>
	<div align="center">
		<form action="boardWrite" method="post">
			<table border="1">
				<colgroup>
					<col width="20%">
					<col width="80%">
				</colgroup>
				<tr>
					<td>제목</td>
					<td><input type="text" id="subject" name="subject" size="50"></td>
				</tr>
				<tr>
					<td>글쓴이</td>
					<td><input type="text" id="writer" name="writer"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" id="email" name="email"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" id="password" name="password"></td>
				</tr>
				<tr>
					<td>글내용</td>
					<td><textarea cols="50" rows="6" id="content" name="content"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글쓰기" >
						<input type="button" value="게시판보러가기" onclick="location='boardList'">
					</td>
				</tr>	
			</table>
		</form>
	</div>

</body>
</html>