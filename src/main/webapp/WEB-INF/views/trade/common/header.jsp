<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header class="header">
	<nav class="navbar navbar-expand-lg bg-light">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="../trade/main.jsp">구디마켓</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarNavDropdown">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">홈</a>
	          
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            카테고리
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">의류</a></li>
	            <li><a class="dropdown-item" href="#">식품류</a></li>
	            <li><a class="dropdown-item" href="#">도서/문구</a></li>
	            <li><a class="dropdown-item" href="#">뷰티/미용</a></li>
	            <li><a class="dropdown-item" href="#">생활/디지털</a></li>
	            <li><a class="dropdown-item" href="#">반려동물 용품</a></li>
	            <li><a class="dropdown-item" href="#">가구/인테리어</a></li>
	          </ul>
	        </li>
	        
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            후기
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">의류</a></li>
	            <li><a class="dropdown-item" href="#">식품류</a></li>
	            <li><a class="dropdown-item" href="#">도서/문구</a></li>
	            <li><a class="dropdown-item" href="#">뷰티/미용</a></li>
	            <li><a class="dropdown-item" href="#">생활/디지털</a></li>
	            <li><a class="dropdown-item" href="#">반려동물 용품</a></li>
	            <li><a class="dropdown-item" href="#">가구/인테리어</a></li>
	          </ul>
	        </li>
	        
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            공지사항
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">공지사항</a></li>
	            <li><a class="dropdown-item" href="#">자주하는 질문</a></li>
	            <li><a class="dropdown-item" href="#">1:1 문의</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div> <!-- dropdown -->
	    
	    <div> <!-- 검색 -->
	    	<nav class="navbar bg-light">
		  	<div class="container-fluid">
		    	<form class="d-flex" role="search">
		      		<input class="form-control me-2" type="search" placeholder="어떤 상품을 찾으시나요?" aria-label="">
		      		<button class="btn btn-outline-secondary" type="submit">검색왜세로로?</button>
		    	</form>
		</div>		    	
  </div>
</nav>
</header>