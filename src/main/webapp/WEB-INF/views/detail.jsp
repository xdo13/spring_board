<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>detail</title>
</head>
<body>
<h1>상세 정보</h1>
<table>
	<tr>
		<th>id</th>
		<td>${board.id}</td>
	</tr>
	<tr>
		<th>writer</th>
		<td>${board.boardWriter}</td>
	</tr>
	<tr>
		<th>date</th>
		<td>${board.boardCreatedTime}</td>
	</tr>
	<tr>
		<th>hits</th>
		<td>${board.boardHits}</td>
	</tr>
	<tr>
		<th>title</th>
		<td>${board.boardTitle}</td>
	</tr>
	<tr>
		<th>contents</th>
		<td>${board.boardContents}</td>
	</tr>
</table>
<button onclick="listFn()">목록</button>
<button onclick="updateFn()">수정</button>
<button onclick="deleteFn()">삭제</button>
</body>
<script>
	const listFn = () => {
		const page = '${page}';
		location.href = "/board/paging?page=" + page;
	}
	const updateFn = () => {
		const id ='${board.id}';
		location.href = "/board/update?id=" +id;
	}
	const deleteFn = () => {
		const id ='${board.id}';
		location.href = "/board/delete?id=" +id;
	}

</script>
</html>