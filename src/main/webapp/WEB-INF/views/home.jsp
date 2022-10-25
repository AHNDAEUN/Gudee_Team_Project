<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="/resources/css/member/home.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>

<body>
	<c:import url="./template/member/memberHeader.jsp"></c:import>

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
</body>
</html>