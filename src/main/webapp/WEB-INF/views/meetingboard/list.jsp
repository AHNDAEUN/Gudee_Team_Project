<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MeetingBoard List</title>
<c:import url="../template/meetingboard/bootstrapCss.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/meetingboard/header.css">
<link rel="stylesheet" href="/resources/css/meetingboard/footer.css">
<link rel="stylesheet" href="/resources/css/meetingboard/list.css">
</head>
<body>

	<c:import url="../template/meetingboard/header.jsp"></c:import>

	<a class="btn btn-primary" id="addBtn" href="./add">모집글 작성</a>
	
	<section class="container-fluid" id="listSearchFrame">
		<div>
			<form method="get" action="./list" class="d-flex justify-contents-center align-items-center">
				
				<label class="visually-hidden" for="kind">Kind</label>
				<select name="kind" class="form-select" id="kind">
				  <option value="title">제목</option>
				  <option value="nickname">닉네임</option>
				  <option value="category">카테고리</option>
				</select>
			    
				<label class="visually-hidden" for="search">검색어</label>
				<!-- 라벨의 for와 input의 id를 같게하면 같은 영역으로 인식되서 편리하다. -->
				<div class="input-group" id="searchFrame">
				  <input type="text" class="form-control" id="search" name="search">
				</div>
				
				<button type="submit" class="btn btn-info">Search</button>
			</form>
		</div>
	</section>

	<section class="container-fluid col-10" id="listMainSection">
		<c:forEach items="${requestScope.meetingBoardList }" var="listItem">
			<div id="meetingBoardListFrame">
				<div class="meetingBoardListItem" data-meetingboard-num="${listItem.meetingBoardNum }">
					<c:if test="${listItem.meetingBoardImageDTO == null }">
						<img alt="" src="/resources/images/meetingboard/map_marker_icon.svg" class="meetingBoardListItemThumnail">
					</c:if>
					<c:if test="${listItem.meetingBoardImageDTO != null }">
						<img alt="" src="../resources/upload/meetingboard/${listItem.meetingBoardImageDTO.fileName }" class="meetingBoardListItemThumnail">
					</c:if>
					<div>
						<p class="meetingBoardListItemWriter">${listItem.memberDTO.nickname }</p>
						<a class="meetingBoardListItemTitle">${listItem.meetingBoardTitle}</a>
						<p class="meetingBoardListItemAddress">${listItem.meetingBoardLocation}</p>
						<div class="d-flex flex-row">
							<div class="d-flex align-items-center">
								<div class="badge text-bg-success">총 비용</div>
								<div class="meetingBoardListItemTotalCost">${listItem.meetingBoardTotalCost}</div>
							</div>
							<div class="d-flex align-items-center">
								<div class="badge text-bg-success ms-3">1인 비용</div>
								<div class="meetingBoardListItemPersonalCost">${listItem.meetingBoardTotalCost / listItem.meetingBoardMaxMember}</div>
							</div>
							<div class="d-flex align-items-center">
								<div class="badge text-bg-success ms-3">참여자</div>
								<div class="meetingBoardListItemEnjoyMember">${listItem.meetingBoardCurrentMember} / ${listItem.meetingBoardMaxMember}</div>
							</div>
						</div>
						<div class="d-flex flex-row">
							<div class="d-flex align-items-center">
								<div class="badge text-bg-success">카테고리</div>
								<div class="meetingBoardListItemCategory">${listItem.meetingBoardCategory}</div>
							</div>
							<div class="d-flex align-items-center">
								<div class="badge text-bg-success">마감기한</div>
								<div class="meetingBoardListItemDueDate">${listItem.meetingBoardDueDate}</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</section>
	
	<section class="container-fluid col-10 mt-4 mb-4">
		<nav aria-label="Page navigation example">
		  <ul class="pagination justify-content-center">
		  	<li class="page-item ${pager.pre ? '' : 'disabled' }">
		  		<a class="page-link" href="./list?page=${pager.startNum - 1 }&kind=${pager.kind}&search=${pager.search}" aria-label="Previous">
				   <span aria-hidden="true">&laquo;</span>
				</a>
		  	</li>
		    <c:forEach begin="${pager.startNum }" end="${pager.lastNum }" step="1" var="i">
		    	<li class="page-item"><a class="page-link" href="./list?page=${i }&kind=${pager.kind}&search=${pager.search}">${i }</a></li>
		    </c:forEach>
		    <li class="page-item ${pager.next ? '' : 'disabled' }">
			   <a class="page-link" href="./list?page=${pager.lastNum + 1 }&kind=${pager.kind}&search=${pager.search}" aria-label="Next">
			      <span aria-hidden="true">&raquo;</span>
			   </a>
			</li>
		  </ul>
		</nav>
	</section>

	<c:import url="../template/meetingboard/footer.jsp"></c:import>

	<c:import url="../template/meetingboard/bootstrapJs.jsp"></c:import>

	<script src="/resources/js/meetingboard/list.js"></script>
	
	<script type="text/template" id="searchCategory_template">
		<select name="search" class="form-select" id="search">
		  <option value="문화/예술">문화/예술</option>
		  <option value="운동/액티비티">운동/액티비티</option>
		  <option value="푸드/드링크">푸드/드링크</option>
		  <option value="취미">취미</option>
		  <option value="여행/나들이">여행/나들이</option>
		  <option value="창작">창작</option>
		  <option value="성장/자기계발">성장/자기계발</option>
		</select>
	</script>
	
</body>
</html>