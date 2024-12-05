<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
        @font-face {
            font-family: 'Ownglyph_ParkDaHyun';
            src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2411-3@1.0/Ownglyph_ParkDaHyun.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }

        /* 폰트 적용: 전체 문서에 적용하거나 특정 요소에만 적용 */
        h1 {
            font-family: 'Ownglyph_ParkDaHyun', sans-serif;
        }
    </style>

<meta charset="UTF-8">
<title>List</title>
</head>
<body>
<h1> 게시글 목록</h1>
<table>
	<tr>
		<th>id</th>
		<th>title</th>
		<th>writer</th>
		<th>date</th>
		<th>hits</th>
	</tr>
	<c:forEach items="${boardList}" var="board">
		<tr>
			<td>${board.id}</td>
			<td>
				<a href="/board?id=${board.id}">${board.boardTitle}</a>
			</td>
			<td>${board.boardWriter}</td>
			<td>${board.boardCreatedTime}</td>
			<td>${board.boardHits}</td>
		</tr>	
	</c:forEach>
</table>

</body>
</html>