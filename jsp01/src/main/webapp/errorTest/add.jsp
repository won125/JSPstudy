<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="addExceprion.jsp" %>
<%
	int num = Integer.parseInt(request.getParameter("number"));
	int result=0;
	for(int i = 0; i <= num; i++){
		result+= i;
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>합계</title>
</head>
<body>
	<h2>1부터 <%=num %>까지의 합은 <%=result %>입니다.</h2>
</body>
</html>