<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>socialAdminMyPage</title>
<link rel="stylesheet" href="/resources/css/member/socialAdminMyPage.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
    <div class="container">
		<nav class="navbar navbar-expand-lg header">
			<div class="container" id="mainFrame">
				<img src="/resources/images/stack-overflow.svg" alt="" id="mainLogo">
			  <a class="navbar-brand" href="/">구디마켓</a>
              <span>소셜 관리자 페이지</span>
			  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			  </button>
			  <div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
				  <li class="nav-item">
					<a class="nav-link" href="/member/socialAdminMyPage" style="font-weight: bold;">신고리스트</a>
				  </li>
                  <li class="nav-item">
					<a class="nav-link" href="/member/socialAdminInquiry">문의리스트</a>
				  </li>
				</ul>
			  </div>
    
        <table class="table table-hover" id="table" style="cursor: pointer;">
            <thead>
                <tr>
                    <th>번호</th><th>신고자 이름</th><th>신고자 닉네임</th><th>피신고자 이름</th><th>피신고자 닉네임</th>
                    <th>신고 제목</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${reportDTOs}" var="dto">
                        <tr class="parent" data-num="${dto.num}">
                            <td id="td${dto.num}">${dto.num}</td>
                            <td>${dto.reportName}</td>
                            <td>${dto.reportNickname}</td>
                            <td>${dto.reportedName}</td>
                            <td>${dto.reportedNickname}</td>
                            <td>${dto.reportTitle}</td>
                        </tr>
                </c:forEach>
            </tbody>
        </table>

            <div id="aa">
                <div id="content"></div>

                <nav aria-label="Page navigation example" id="nav">
                    <ul class="pagination">
                        <c:if test="${pager.pre}">
                            <li class="page-item">
                                <a class="page-link" href="./socialAdminMyPage?page=${pager.startNum - 1}">Previous</a>
                            </li>
                        </c:if>

                        <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                            <li class="page-item">
                                <a class="page-link" href="./socialAdminMyPage?page=${i}">${i}</a>
                            </li>
                        </c:forEach>

                        <c:if test="${pager.next}">
                            <li class="page-item">
                                <a class="page-link" href="./socialAdminMyPage?page=${pager.lastNum + 1}">Next</a>
                            </li>
                        </c:if>
                    </ul>
                </nav>
            </div> 
        </div>   
        </nav>

    </div>

<script src="/resources/js/socialAdminMyPage.js"></script>

</body>
</html>