<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update.jsp</title>
</head>
<body>
<h1>게시글 수정하기</h1>
<form action="/board/update" method="post" name="updateForm">
	<input type="hidden" name="id" value="${board.id}" readonly><p>
	작 성 자 : <input type="text" name="boardWriter" value="${board.boardWriter}" readonly><p>
	비밀번호 : <input type="text" name="boardPass" id="boardPass" placeholder="비밀번호"><p>
	제 목 : <input type="text" name="boardTitle" value="${board.boardTitle}"><p>
	내 용 : <textarea name="boardContents" rows="10">${board.boardContents}</textarea><p>
	<input type="button" value="수정" onclick="updateReqFn()">
</form>
</body>
<script>
	const updateReqFn = () => {
		const passInput = document.getElementById("boardPass").value;
		const passDB = '${board.boardPass}';
		if(passInput == passDB){
			document.updateForm.submit();
		}else{
			alert("비밀번호가 일치하지 않습니다!!");
		}
	}
</script>
</html>