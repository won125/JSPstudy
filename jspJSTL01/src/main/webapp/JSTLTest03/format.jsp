<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    isELIgnored="false"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포맷태그 라이브러리</title>
</head>
<body>
	<h2>
		<c:set var="price" value="3500000"/>
		<fmt:formatNumber var="priceNum" value="${price}" type="number"/>
		상품 가격 : ${priceNum}원
	</h2>
	<h2>
		<c:set var="rate" value="0.2"/>
		<fmt:formatNumber var="rateNum" value="${rate}" type="percent"/>
		할인율 : ${rateNum}
	</h2>
	<h2>
		<c:set var="price2" value="3500000"/>
		<fmt:formatNumber var="priceNum2" value="${price}" type="currency" currencySymbol="$"/>
		상품 가격 : ${priceNum2}
	</h2>
	<h2>
		<c:set var="now" value="<%=new Date() %>"/>
		<fmt:formatDate value="${now}" var="nowDate" type="date" pattern="yyyy-MM-dd" />
		<fmt:formatDate value="${now }" type="date" var="fnow1" dateStyle="full"/>
		<fmt:formatDate value="${now }" type="time" var="fnow2"/>
		<fmt:formatDate value="${now }" type="both" var="fnow3"/>
		오늘 : ${nowDate}<br>
		오늘 : ${fnow1}<br>
		오늘 : ${fnow2}<br>
		오늘 : ${fnow3}<br>
		<fmt:timeZone value="America/New York">
			뉴욕 현재 시간 : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
		</fmt:timeZone>
		
	</h2>
</body>
</html>