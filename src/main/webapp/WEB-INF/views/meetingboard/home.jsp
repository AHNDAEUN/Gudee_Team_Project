<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<c:import url="../template/meetingboard/bootstrapCss.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/meetingboard/header.css">
<link rel="stylesheet" href="/resources/css/meetingboard/footer.css">
<link rel="stylesheet" href="/resources/css/meetingboard/home.css">
</head>

<body>

	<c:import url="../template/meetingboard/header.jsp"></c:import>
	
	<section>
		<div id="mainSectionDiv" data-num="${sessionScope.member.memberNum }">
			<div id="mainSectionTop">
				<div id="mainSectionTopTitleContainer">
					<h1 id="mainSectionTopTitle"></h1>
					<a href="/mb/list" class="btn btn-outline-info" role="button" id="listBtn">지금 시작</a>
				</div>
				<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
				  <div class="carousel-inner">
				    <div class="carousel-item active" data-bs-interval="2000">
				      <img src="../resources/images/meetingboard/home1.JPG" class="d-block w-100" style="width:20rem; height:20rem; object-fit: contain;">
				    </div>
				    <div class="carousel-item" data-bs-interval="2000">
				      <img src="../resources/images/meetingboard/home2.JPG" class="d-block w-100" style="width:20rem; height:20rem; object-fit: contain;">
				    </div>
				    <div class="carousel-item" data-bs-interval="2000">
				      <img src="../resources/images/meetingboard/home3.JPG" class="d-block w-100" style="width:20rem; height:20rem; object-fit: contain;">
				    </div>
				  </div>
				  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>
				</div>
			</div>
			<div id="mainSectionBottom">
				
			</div>
		</div>
	</section>
	
	<c:import url="../template/meetingboard/footer.jsp"></c:import>
	
	<c:import url="../template/meetingboard/bootstrapJs.jsp"></c:import>
	
	<script src="https://unpkg.com/typeit@8.7.0/dist/index.umd.js"></script>
	<script src="/resources/js/meetingboard/home.js"></script>

</body>

</html>