<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON 테스트</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(function () {
		let jsonData='{"name":["김철수","홍길동","이영희"]}';
		$('#btn_outputJson').click(function () { //JSON 데이터 출력 버튼 클릭시 이벤트 발생
			let jsonInfo = JSON.parse(jsonData);
			let data = "<h2>회원정보</h2>";
			data += "================<br>";
			for(let na in jsonInfo.name){
				data += jsonInfo.name[na] + "<br>";
			}
			$('#output').html(data);
		});
	});
</script>
</head>
<body>
	<input type="button" id="btn_outputJson" value="JSON 데이터 출력">
	<div id="output"></div>
</body>
</html>