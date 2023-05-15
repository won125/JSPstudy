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
		$('#btn_get').click(function () { //JSON 데이터 출력 버튼 클릭시 이벤트 발생
			$.ajax({
				type:"post",
				async:false,
				url:"${contextPath}/json2",
				success:function(data,textStatus){
					let jsonInfo = JSON.parse(data);
					let memInfo = "<h2>**회원 정보**</h2>";
					memInfo += "===================<br>";
					for(let i in jsonInfo.member){
						memInfo += "이름 : " + jsonInfo.member[i].name + "<br>";
						memInfo += "나이 : " + jsonInfo.member[i].age + "<br>";
						memInfo += "직업 : " + jsonInfo.member[i].job + "<br>";
						memInfo += "========================<br>";
					}
					$('#output').html(memInfo);
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
	<input type="button" id="btn_get" value="회원정보 수신하기">
	<div id="output"></div>
</body>
</html>