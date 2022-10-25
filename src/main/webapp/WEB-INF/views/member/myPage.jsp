<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/member/home.css">
<link rel="stylesheet" href="/resources/css/member/myPage.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
	<c:import url="../template/member/memberHeader.jsp"></c:import>
	
	
	<section class="container" id="main">
		<div id="mainContent">
			<table class="table">
				<thead>
					<tr>
						<th>ID</th><th>NAME</th><th>NICKNAME</th><th>EMAIL</th><th>PHONE</th><th>CASH</th><th>BIRTHDAY</th>
						<th>MAIN_ADDRESS</th><th>DETAIL_ADDRESS</th><th>POSTCODE</th><th>PROFILE IMAGE</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><p>${sessionScope.member.id}</p></td>
						<td><p>${sessionScope.member.name}</p></td>
						<td><p>${sessionScope.member.nickname}</p></td>
						<td><p>${sessionScope.member.email}</p></td>
						<td><p>${sessionScope.member.phone}</p></td>
						<td><p>${sessionScope.member.cash}</p></td>
						<td><p>${sessionScope.member.birthday}</p></td>
						<td><p>${sessionScope.member.main_address}</p></td>
						<td><p>${sessionScope.member.detail_address}</p></td>
						<td><p>${sessionScope.member.postcode}</p></td>
						<td><p><img src="/resources/upload/member/${myPage.memberFileDTO.fileName}" alt="" style="width: 100px; height: 100px;"></p></td>
					</tr>
				</tbody>
			</table>
		</div>	
			<div id="buttons">
				<div id="modal">
					<form action="/member/inquiry" method="post" id="formInquiry">
						<button type="button" class="btn btn-light" data-bs-toggle="modal" data-bs-target="#requestInquiryModal" data-bs-whatever="@getbootstrap" id="requestInquiryModalOpenBtn">1:1 문의하기</button>
						
						<div class="modal fade" id="requestInquiryModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="requestInquiryTitle">문의하기</h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<form>
											<div class="mb-3">
												<label for="title" class="col-form-label">제목</label>
												<input type="text" class="form-control" name="title" id="title">
											</div>
											<div class="mb-3">
												<label for="contents" class="col-form-label">신고내용</label>
												<textarea class="form-control" id="contents" name="contents" data-writer="${sessionScope.member.memberNum}"></textarea>
											</div>
										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="requestInquiryModalCloseBtn">닫기</button>
										<button type="button" class="btn btn-primary" id="requestInquiryModalSendBtn">문의하기</button>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
				
				<nav class="navbar navbar-expand-lg header">
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse navnav" id="navbarNav">
						<ul class="navbar-nav">
							<li class="nav-item">
								<a class="nav-link" href="/member/infoUpdate?memberNum=${myPage.memberNum}">회원정보 수정</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="/member/socialMyPage?memberNum=${myPage.memberNum}">소셜링 마이페이지</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="/mbm/mylist?hostMemberNum=${sessionScope.member.memberNum}">내가 만든 모임</a>
							</li>
						</ul>
					</div>
				</nav>	
			</div>
				
	</section>
			
	<script src="/resources/js/inquiry.js"></script>
			
</body>
</html>