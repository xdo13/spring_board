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
<title>save</title>
</head>
<body>
<h1>&#128220;게시글 작성</h1>
<form action="/board/save" method="post">
	<p><input type="text" name="boardWriter" placeholder="작성자"></p>
	<p><input type="text" name="boardPass" placeholder="비밀번호"></p>
	<p><input type="text" name="boardTitle" placeholder="제목"></p>
	<textarea name="boardContents" cols="30" rows="10" placeholder="내용을 입력하세요"></textarea>
	<br><br>
	<input type="submit" value="작성">



</form>
</body>
</html>