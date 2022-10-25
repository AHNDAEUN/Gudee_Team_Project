<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원가입🙋🏻‍♀️│구디마켓</title>
  <link rel="stylesheet" href="/resources/css/member/join.css">
  <link script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    
  <style>
  	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
  </style>


</head>
<body>
  <!-- 헤더 시작 -->
    <div class="container">
		<nav class="navbar navbar-expand-lg header">
			<div class="container d-flex">
				<!-- <img src="/resources/images/logo.png" alt="" id="mainLogo" class="flex"> -->
			  <a class="navbar-brand flex" href="/">구디마켓</a>
			  <button class="navbar-toggler flex" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			  </button>
			  <div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
				  <li class="nav-item">
					<a class="nav-link" href="#">중고거래</a>
				  </li>
				  <li class="nav-item">
					<a class="nav-link" href="/mb/home">소셜링</a>
				  </li>
				</ul>
			  </div>
			  <div>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
					  <li class="nav-item">
						<a class="nav-link" href="/member/login">로그인</a>
					  </li>
					  <li class="nav-item">
						<a class="nav-link" href="/mb/home">고객문의</a>
					  </li>
					</ul>
			  </div>
			</div>
		  </nav>
	</div>
  <!-- 헤더 끝 -->

    <form action="join" method="post" enctype="multipart/form-data" id="form">
        <div style="background-color: #FBF7F2; height: 75rem;">
            <section class="container col-lg-5 mt-2">
                <h1 style="padding-top: 2rem; padding-bottom: 1rem;">회원가입</h1>
                <!-- 아이디 입력 -->
                <div>
                <p class="tfont">아이디</p>
                <p><input class="form-control form-control box" type="text" placeholder="ID" aria-label=".form-control example" name="id" id="id"></p>
                </div>
                <div id="idm" class="m"></div>

                <!-- 비밀번호 입력 -->
                <p class="tfont">비밀번호</p>
                <p><input class="form-control form-control box" type="password" placeholder="PW" aria-label=".form-control example" name="password" id="password"></p>
                <div id="pwm" class="m"></div>
                
                <!-- 비밀번호 확인 -->
                <p class="tfont">비밀번호 확인</p>
                <p><input class="form-control form-control box" type="password" placeholder="PW" aria-label=".form-control example" id="password2"></p>
                <div id="pwm2" class="m"></div>

                <!-- 이름 입력 -->
                <p class="tfont">이름</p>
                <p><input class="form-control form-control cb box" type="text" placeholder="Name" aria-label=".form-control example" name="name" id="name"></p>
                <div class="ch m"></div>

                <!-- 닉네임 입력 -->
                <p class="tfont">닉네임</p>
                <p><input class="form-control form-control cb box" type="text" placeholder="Nickame" aria-label=".form-control example" name="nickname" id="nickname"></p>
                <div class="ch m"></div>

                <!-- 이메일 입력 -->
                <p class="tfont">이메일</p>
                <!-- 이메일 select -->
                <div class="emailform d-flex" style="align-items: center;">
                  <input class="form-control form-control flex" id="email-txt" type="text"/>
                  <div class="flex">@</div>
                  <input class="form-control form-control flex" id="domain-txt" type="text"/>
                  <select class="form-select form-select flex" id="domain-list">
                    <option value="type">직접 입력</option>
                    <option value="naver.com">naver.com</option>
                    <option value="google.com">google.com</option>
                    <option value="hanmail.net">hanmail.net</option>
                    <option value="nate.com">nate.com</option>
                    <option value="kakao.com">kakao.com</option>
                  </select>
                </div>
                <input type="hidden" id="email" name="email">
                <div class="emailm m"></div>

                <!-- 전화번호 입력 -->
                <p class="tfont" style="padding-top: 1rem;">전화번호</p>
                <p><input class="form-control form-control cb box" type="text" placeholder="Phone" aria-label=".form-control example" name="phone" id="phone"></p>
                <div class="ch m"></div>

                <!-- 생년월일 입력 -->
                <p class="tfont">생년월일</p>
                <!-- 생년월일 입력 폼 -->
                  <div class="d-flex">
                    <select class="form-select form-select flex" id="birth-year">
                      <option disabled selected>출생 연도</option>
                    </select>
                    <select class="form-select form-select flex" id="birth-month">
                      <option disabled selected>월</option>
                    </select>
                    <select class="form-select form-select flex" id="birth-day">
                      <option disabled selected value="0">일</option>
                    </select>
                  </div>
                  <input type="hidden" id="birthday" name="birthday">
                  <div class="birthdaym m"></div>

                <!-- 주소 입력 -->
                <p class="tfont" style="padding-top: 1rem;">주소</p>
                <div class="d-flex flex-row">
                  <input class="form-control p-2 box" type="text" id="postcode" placeholder="우편번호" readonly="readonly" name="postcode">
                  <input class="btn btn-secondary p-2" type="button" onclick="checkPost()" value="우편번호 찾기">
                </div>
                <input class="form-control box" type="text" id="mainAddress" placeholder="주소" readonly="readonly" name="main_address">
                <div class="d-flex flex-row">
                  <input class="form-control p-2 box" type="text" id="detailAddress" placeholder="상세주소" name="detail_address">
                </div>
                <div class="addressm m"></div>

                
                <div>
                  <p class="tfont" style="padding-top: 1rem;">프로필 사진</p>
                  <p><input class="form-control form-control box" type="file" aria-label=".form-control example" name="files" id="photo"></p>
                </div>
                <div class="photom m"></div>
                
                <button type="button" class="btn btn-primary" id="btn">회원가입</button>
              </section>
            </form>
        </div>
          
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="/resources/js/join.js"></script>
    <script>
         joinCheck();
    </script>
</body>
</html>