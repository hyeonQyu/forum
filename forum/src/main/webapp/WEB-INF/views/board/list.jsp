<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>
</head>
<body>

<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성일</th>
			<th>작성자</th>
			<th>조회수</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${list}" var="post">
			<tr>
				<td>${post.bno}</td>
				<td>
					<a href="/board/view?bno=${post.bno}">${post.title}</a>
				</td>
				<td>${post.regDate}</td>
				<td>${post.writer}</td>
				<td>${post.viewCount}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<a href="/board/write">게시글 작성</a>

</body>
</html>