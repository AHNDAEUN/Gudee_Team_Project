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
	<div class="container">
		<nav class="navbar navbar-expand-lg header">
			<div class="container">
				<img src="/resources/images/stack-overflow.svg" alt="" id="mainLogo">
			  <a class="navbar-brand" href="/">구디마켓</a>
			  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			  </button>
			  <div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
				  <li class="nav-item">
					<a class="nav-link" href="./trade/main">중고거래</a>
				  </li>
				  <li class="nav-item">
					<a class="nav-link" href="/mb/home">소셜링</a>
				  </li>
				</ul>
			  </div>
			  <div>
				<div class="collapse navbar-collapse" id="navbarNav">
					<c:choose>
						<c:when test="${not empty member}">
							<ul class="navbar-nav">
							  <li class="nav-item">
								<a class="nav-link" href="/member/logout">로그아웃</a>
							  </li>
							  <li class="nav-item">
								<a class="nav-link" href="/member/myPage">마이페이지</a>
							  <li class="nav-item">
							  <li class="nav-item">
								<a class="nav-link" href="/mb/home">고객문의</a>
							  </li>
							</ul>
						</c:when>
						<c:otherwise>
							<ul class="navbar-nav">
							  <li class="nav-item">
								<a class="nav-link" href="/member/login">로그인</a>
							  </li>
							  <li class="nav-item">
								<a class="nav-link" href="/member/agree">회원가입</a>
							  </li>
							  <li>
								<a class="nav-link" href="/mb/home">고객문의</a>
							  </li>
							</ul>
						</c:otherwise>
					</c:choose>
			  </div>
			</div>
		  </nav>
	</div>

	<section id="home-main-section-top">
		<div id="home-main-top">
			<div id="home-main-desc">
				<div class="container-fluid ">
					<span class="font">
						<h1 class="home-main-title">
							당신 근처의
							<br>
							구디모임
						</h1>
					</span>
						<p class="text-m">
							다양한 사람들과 다양한 모임을 통해
							<br>
							당신 근처의 따뜻한 모임을 만들어요
						</p>
				</div>
				<div class="home-main-image-top">
					<img src="/resources/images/image-top.webp" class="home-main-image-top" alt="">
				</div>
			</div>
		</div>
	</section>

	<section class="home-main-section">
		<div class="home-main-content">
			<div class="home-main-image home-main-image-01">
				<img src="/resources/images/image-01.webp" class="home-main-image-01" alt="">
			</div>

			<div>
				<span class="font">
					<h1 class="home-main-title">
						우리 동네
						<br>
						중고 마켓
					</h1>
				</span>
					<p>동네 주민들과 가깝고 따뜻한 거래를 지금 경험해보세요</p>
			</div>

		</div>
	</section>

	<script src="/resources/js/home.js"></script>
	<script src="/resources/css/home.css"></script>
</body>
</html>