<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수 결과</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String inp_score = request.getParameter("inp_score");
	if(inp_score == null || inp_score.length() == 0){
%>
		<p>점수를 입력해주세요.</p>
<%
	}else{
		int score = Integer.parseInt(inp_score);
		int result = score/10;
		switch(result){
			case 9:
%>			
				<p>시험점수는 <%=score %>점 입니다.</p>
				<p>결과는 A학점 입니다.</p>
<%
				break;
			case 8:
%>
				<p>시험점수는 <%=score %>점 입니다.</p>
				<p>결과는 B학점 입니다.</p>
<%
				break;
			case 7:
%>
				<p>시험점수는 <%=score %>점 입니다.</p>
				<p>결과는 C학점 입니다.</p>
<%
				break;
			case 6:
%>
				<p>시험점수는 <%=score %>점 입니다.</p>
				<p>결과는 D학점 입니다.</p>
<%
				break;
			default:
%>
				<p>시험점수는 <%=score %>점 입니다.</p>
				<p>결과는 F학점 입니다.</p>
<%
				break;
			}
	}
%>
<a href="scoreResult.html">점수입력창으로 돌아가기</a>

</body>
</html>