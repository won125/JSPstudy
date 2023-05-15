<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 테스트</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(function () {
		let jsonData='{"name":"홍길동","age":25,"job":"도적"}';
		$('#btn_serve').click(function () { //JSON 데이터 출력 버튼 클릭시 이벤트 발생
			$.ajax({
				type:"post",
				async:false,
				url:"${contextPath}/json",
				data:{jsonInfo:jsonData},
				success:function(data,textStatus){
					$('#output').append(data);
				},
				error:function (data,textStatus){
					alert("에러가 발생하였습니다.");
				}
			});
		});
	});
</script>
</head>
<body>
	<input type="button" id="btn_serve" value="서버로 전송">
	<div id="output"></div>
</body>
</html>