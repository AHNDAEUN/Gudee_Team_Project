<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="/resources/css/home.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
	<div>
		<nav class="navbar navbar-expand-lg bg-light">
			<div class="container-fluid">
				<img src="/resources/images/stack-overflow.svg" alt="" id="mainLogo">
			  <a class="navbar-brand" href="#">구디마켓</a>
			  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			  </button>
			  <div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
				  <li class="nav-item">
					<a class="nav-link" href="#">중고거래</a>
				  </li>
				  <li class="nav-item">
					<a class="nav-link" href="#">소셜링</a>
				  </li>
				</ul>
			  </div>
			</div>
		  </nav>
	</div>

	<div>
		<span class="font">
			당신 근처의 구디마켓
		</span>
	</div>


	<a href="중고거래"></a>
	<a href="소모임"></a>
	<a href="/member/login">로그인</a>
	<script src="/resources/js/home.js"></script>
</body>
</html>
