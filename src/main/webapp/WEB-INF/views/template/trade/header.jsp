<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
	<title>구디마켓│중고거래📦</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  
  <link rel="stylesheet" href="/resources/css/trade/header.css"/>
</head>

<body>
		<!-- The Modal -->
	<form action=./category>	
	<div class="modal" id="myModal">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header">
					<h6 class="modal-search">검색어를 입력하세요.</h6>
				  	<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>
				
				<div class="modal-body">
					<select name="select" class="form-select" id="select">
				      <option selected class="select" id="title" value="title">제목</option>
				      <option class="select" id="contents" value="contents">내용</option> 
				    </select>
					<input type="text" name="search" class="form-control" id="search">
					<button class="btn btn-outline-secondary" type="submit" id="button-addon2">검색</button>
				</div>
			</div>
		</div>
	</div>
	</form>
		
<header class="header">
	<div class="header-up">
		<!-- 로고 -->
		<div class="logo">
			<a href="/">
				<svg width="120" viewBox="0 0 200 200" fill="none" xmlns="http://www.w3.org/2000/svg">
					<image href="/resources/images/logo.png" height="200" width="200" class="logo-img"/>
				</svg>
			</a>
		</div>

		<!-- 검색 -->
		<div class="searchWrap">
			<button type="button" class="searchBar" data-bs-toggle="modal" data-bs-target="#myModal">어떤 상품을 찾으시나요?</button>
			<div class="searchIcon">
				<svg class="searchBarIcon"></svg>
			</div>
		</div>

		<!-- 로그인 / 회원가입 / 찜 바구니 -->
		<div class="member">
			<c:choose>
				<c:when test="${not empty member}">
					<ul>
						<li class="member-li">
							<a class="member-a" href="/member/logout">🔓로그아웃</a>
						</li>
						<li class="member-li">
							<a class="member-a" href="/trade/heartlist">❤️찜 바구니</a>
						</li>
						<li class="member-li">
							<a class="member-a" href="/mypage/trade/main?memberNum=${myPage.memberNum}">🎁마이페이지</a>
						</li>
					</ul>
 				</c:when>
				<c:otherwise>
					<ul>
						<li class="member-li">
							<a class="member-a" href="/member/login">🔒로그인</a>
						</li>
						<li class="member-li">
							<a class="member-a" href="/member/agree">🙋‍♀️회원가입</a>
						</li>
					</ul>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<div class="header-low">
		<div class="header-low-category">
			<ul>
				<li class="cate-li">
				  <a class="cate-a" href="/">홈</a>
				</li>
				<li class="cate-li">
				  <a class="cate-a" href="/trade/main">중고거래</a>
				</li>
				<li class="cate-li">
				  <a class="cate-a" href="/trade/category" role="button" data-bs-toggle="dropdown" aria-expanded="false">카테고리</a>
				  <ul class="dropdown-menu">
						<li><a href="/trade/category" class="cate-a-all">전체 카테고리</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a href="/trade/category" class="cate-a">의류</a></li>
						<li><a href="/trade/category" class="cate-a">식품류</a></li>
						<li><a href="/trade/category" class="cate-a">도서/문구</a></li>
						<li><a href="/trade/category" class="cate-a">뷰티/미용</a></li>
						<li><a href="/trade/category" class="cate-a">생활/디지털</a></li>
						<li><a href="/trade/category" class="cate-a">반려동물 용품</a></li>
						<li><a href="/trade/category" class="cate-a">가구/인테리어</a></li>
					</ul>
				</li>
				<li class="cate-li">
				  <a class="cate-a" href="/trade/review" role="button" data-bs-toggle="dropdown" aria-expanded="false">후기</a>
				  <ul class="dropdown-menu">
						<li><a href="/trade/review/main" class="cate-a-all">전체 카테고리</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a href="/trade/review/cloth" class="cate-a">의류</a></li>
						<li><a href="/trade/review/food" class="cate-a">식품류</a></li>
						<li><a href="/trade/review/book" class="cate-a">도서/문구</a></li>
						<li><a href="/trade/review/beauty" class="cate-a">뷰티/미용</a></li>
						<li><a href="/trade/review/digital" class="cate-a">생활/디지털</a></li>
						<li><a href="/trade/review/pet" class="cate-a">반려동물 용품</a></li>
						<li><a href="/trade/review/interior" class="cate-a">가구/인테리어</a></li>
				  </ul>
				</li>
				<li class="cate-li">
					<a class="cate-a" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						구디마켓 소개
					</a>
					<ul class="dropdown-menu">
						<li><a class="cate-a-c" href="/teamMember">MEMBER</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="cate-a-c" href="/erd">ERD</a></li>
						<li class="cate-disabled">중고거래📦</li><br>
						<li class="cate-disabled">모임🎈</li>
					</ul> 
				</li>
				<!-- <li class="cate-li">
					<a class="cate-a" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						공지사항
					</a>
					<ul class="dropdown-menu">
						<li class="cate-disabled">중고거래📦</a></li>
						<li><a class="cate-a" href="/notice/trade">공지사항</a></li>
						<li><a class="cate-a" href="/board/trade/mylist">1대1문의</a></li>
						<li><a class="cate-a" href="/board/trade/faq">자주묻는질문</a></li>
						<li><hr class="dropdown-divider"></li>
						<li class="cate-disabled">모임🎈</a></li>
						<li><a class="cate-a" href="/notice/meeting">공지사항</a></li>
						<li><a class="cate-a" href="/board/meeting/mylist">1대1문의</a></li>
						<li><a class="cate-a" href="/board/meeting/faq">자주묻는질문</a></li>
					</ul> 
				</li> -->
			</ul>
		</div>
		<div class="category-point" style="left: 355px;"></div>
	</div>
</header>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>

</html>