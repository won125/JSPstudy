<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력 결과</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String inp_dan = request.getParameter("inp_dan");
	if(inp_dan == null || inp_dan.length() == 0){
%>
		<p>출력할 단을 입력해주세요.</p>
<%
	}else{
		int dan = Integer.parseInt(inp_dan);
%>
		<h2>*** <%=dan %>단 ***</h2>
<%
		for(int i=1; i<=9; i++){
%>
			<h3><%=dan %> x <%=i %> = <%=dan*i %></h3>
<%
		}
	}
%>			
<a href="gugu.html">단수 입력창으로 돌아가기</a>
	
</body>
</html>