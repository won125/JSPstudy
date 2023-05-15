<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h1>로그인 결과</h1>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("user_id");
		String pwd = request.getParameter("user_pwd");

		if(id == null || id.length() == 0) {
	%>
			<p>아이디를 입력하시오!</p>
			<a href="/jsp01/login.html">로그인 화면으로 돌아가기</a>
	<%
		}else {
			if(pwd == null || pwd.length() == 0) {
				
	%>
				<p>비밀번호를 입력하시오!</p>
				<a href="/jsp01/login.html">로그인 화면으로 돌아가기</a>
	<%
			}else{
				if(id.equals("admin")){
	%>
					<p>관리자 계정으로 로그인 하셨습니다.</p>
					<input type="button" value="회원정보 삭제하기">
					<input type="button" value="회원정보 수정하기">
	<%
				}else{
	%>
					<p>로그인이 정상적으로 완료되었습니다.</p>
	<%
				}
			}
		}
	%>
</body>
</html>