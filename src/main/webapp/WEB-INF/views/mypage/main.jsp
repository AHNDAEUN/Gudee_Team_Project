<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title> My Page </title>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
		crossorigin="anonymous">	
	<style>
	    .align-left {text-align: center;}
	    .align-center {text-align: center;}
		.row {text-align: center;}
	</style>
</head>

<body>
	<form action="/mypage/main" method="get">
	
		<h4 class="align-center"> 중고 마이페이지 - 이따 삭제~! </h4>
		
		<c:import url="sellitemlist.jsp"></c:import>
		<br><br>
			
		<c:import url="buyitemlist.jsp"></c:import>
		<br><br>
		
		<c:import url="reviewlist.jsp"></c:import>
	
	
	
	
	
	</form>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>