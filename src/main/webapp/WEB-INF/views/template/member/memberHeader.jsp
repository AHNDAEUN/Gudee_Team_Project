<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <div class="container">
		<nav class="navbar navbar-expand-lg header">
			<div class="container">
				<img src="/resources/images/logo.png" alt="" id="mainLogo">
			  <a class="navbar-brand" href="/">구디마켓</a>
			  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			  </button>
			  <div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
				  <li class="nav-item">
					<a class="nav-link" href="/trade/main">중고거래</a>
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
							
								<c:if test="${sessionScope.memberIsAdmin == 1}">
									<ul class="navbar-nav">
										<li class="nav-item">
											<a class="nav-link" href="/member/logout">로그아웃</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="/member/socialAdminMyPage">마이페이지</a>
										</li>
									</ul>
								</c:if>
								<c:if test="${sessionScope.memberIsAdmin == 0}">
									<ul class="navbar-nav">
										<li class="nav-item">
											<a class="nav-link" href="/member/logout">로그아웃</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" href="/member/myPage">마이페이지</a>
										</li>
									</ul>
								</c:if>	
						</c:when>
						<c:otherwise>
							<ul class="navbar-nav">
							  <li class="nav-item">
								<a class="nav-link" href="/member/login">로그인</a>
							  </li>
							  <li class="nav-item">
								<a class="nav-link" href="/member/agree">회원가입</a>
							  </li>
							</ul>
						</c:otherwise>
					</c:choose>
			  </div>
			</div>
		  </nav>
	</div>