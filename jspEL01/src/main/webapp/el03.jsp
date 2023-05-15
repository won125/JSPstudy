<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어 실습</title>
</head>
<body>
	<h1>표현언어로 여러 형태의 데이터 출력</h1>
	<h2>
		\${30 == 30} = ${30 == 30}<br>
		\${30 eq 30} = ${30 eq 30}<br>
		\${"kbs" == "kbs"} = ${"kbs" == "kbs"}<br>
		\${"kbs" eq "kbs"} = ${"kbs" eq "kbs"}<br>
		\${50 != 30} = ${50 != 30}<br>
		\${50 ne 30} = ${50 ne 30}<br>
		\${50 > 30} = ${50 > 30}<br>
		\${50 gt 30} = ${50 gt 30}<br>
		\${50 < 30} = ${50 < 30}<br>
		\${50 lt 30} = ${50 lt 30}<br>
		\${50 <= 30} = ${50 <= 30}<br>
		\${50 ge 30} = ${50 ge 30}<br>
		\${50 >= 30} = ${50 >= 30}<br>
		\${50 le 30} = ${50 le 30}<br>
		<%-- \사용시 연산이아닌 입력한 그대로의 내용이 나옴 --%>
	</h2>
</body>
</html>