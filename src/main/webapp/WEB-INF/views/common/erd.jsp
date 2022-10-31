<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
	<title>ERD🌳│구디마켓</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    
    <style>
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
	</style>
    
  	<link rel="stylesheet" href="/resources/css/trade/header.css" />
    <link rel="stylesheet" href="/resources/css/trade/footer.css" />
    <link rel="stylesheet" href="/resources/css/common.css" />

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<c:import url="../template/trade/header.jsp"></c:import>

<body>

<div class="erdBody">
	<section class="erdTop">
		<div class="erdContainer">
			<div class="erdRow">
				<div class="erdlogo">
					<img alt="" src="/resources/images/logo.png" class="erdlogoimg">
				</div>
				
				<div class="erdair"></div>
				<!-- 전체 ERD -->
				<div class="erd-row-con">
					<h5 class="erdtitle">구디 마켓 │ 전체 ERD</h5>
					<img alt="" src="/resources/images/Goodee_Market_Project.png" class="erd-img">
				</div>
		

				<div class="erdair"></div>
				
				<div class="erd-row-con-two">
					<!-- TRADE ERD -->
					<div class="erd-row-Trade-logo"> <!-- 상단 -->
						<h1>📦</h1>
					</div>
					<div class="erdTrade"> <!-- 하단 -->
						<div class="erd-row-con">
							<div class="erdTradeCon">
								<h5 class="erdtitle">구디 마켓 │ 중고거래📦 ERD</h5>
								<img alt="" src="/resources/images/Goodee_Market_Project_trade.png" class="erd-img">
							</div>
						</div>					
					</div>
					
					<!-- Meeting ERD -->
					<div class="erd-row-Meet-logo">
						<h1>👥</h1>
					</div>
					<div class="erdMeeting">
						<div class="erd-row-con">
							<div class="erdcon">
								<h5 class="erdtitle">구디 마켓 │ 모임👥 ERD</h5>
								<img alt="" src="/resources/images/Goodee_Market_Project_meeting.png" class="erd-img">
							</div>
						</div>				
					</div>					
				</div>
			</div>
		</div>
	</section>
</div>		
			

	<c:import url="../template/trade/footer.jsp"></c:import>
	<script src="../../../resources/js/trade/erd.js"></script>
</body>
</html>