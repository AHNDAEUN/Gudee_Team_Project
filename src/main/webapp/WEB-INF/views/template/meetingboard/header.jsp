<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<header class="header">
		<nav class="navbar navbar-expand-lg bg-white fixed-top">
		   <div class="container-fluid">
		   	<div class="ms-lg-5 ps-lg-5">
		   		<a class="navbar-brand" href="/" id="mainLogoFrame"><img src="/resources/images/stack-overflow.svg" alt="" id="mainLogo"><span id="logoText">구디마켓</span></a>
		   	</div>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkupMeeting" aria-controls="navbarNavAltMarkupMeeting" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarNavAltMarkupMeeting">
		    	<div class="container-fluid">
			      <div class="navbar-nav" id="navMeeting">
			        <a class="nav-link active" aria-current="page" href="/mb/home">Home</a>
			        <a class="nav-link" href="/mb/list">모임리스트</a>
			        <a class="nav-link" href="#">협력체</a>
			        <a class="nav-link" href="#">포인트결제</a>
			      </div>
			    
			      <div class="navbar-nav" id="navPersonal">
			      	<c:if test="${sessionScope.member == null }">
				        <a class="nav-link active" aria-current="page" href="/member/login">로그인</a>
				        <a class="nav-link" href="#">회원가입</a>
			        </c:if>
			        <c:if test="${sessionScope.member != null }">
			        	<a class="nav-link active" aria-current="page" href="#">로그아웃</a>
				        <a class="nav-link" href="#">마이페이지</a>
			        </c:if>
			        <a class="nav-link" href="#">중고거래</a>
			        <a class="nav-link" href="#">고객센터</a>
			      </div>
		      	</div>
			</div>
		   </div>
		</nav>
	</header>