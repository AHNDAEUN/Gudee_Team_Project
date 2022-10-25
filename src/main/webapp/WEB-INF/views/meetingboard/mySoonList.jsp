<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Soon List</title>
<c:import url="../template/meetingboard/bootstrapCss.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/meetingboard/header.css">
<link rel="stylesheet" href="/resources/css/meetingboard/footer.css">
<link rel="stylesheet" href="/resources/css/meetingboard/mySoonList.css">
</head>
<body>
	<c:import url="../template/meetingboard/header.jsp"></c:import>
	
	<section class="container-fluid col-10" id="listMainSection">
		<c:forEach items="${requestScope.soonList }" var="listItem">
			<div id="meetingBoardListFrame">
				<div class="meetingBoardListItem" data-meetingboard-num="${listItem.meetingBoardDTO.meetingBoardNum }" data-hostnum="${listItem.hostMemberNum }">
					<c:if test="${listItem.meetingBoardDTO.meetingBoardImageDTO == null }">
						<img alt="" src="/resources/images/meetingboard/map_marker_icon.svg" class="meetingBoardListItemThumnail">
					</c:if>
					<c:if test="${listItem.meetingBoardDTO.meetingBoardImageDTO != null }">
						<img alt="" src="../resources/upload/meetingboard/${listItem.meetingBoardDTO.meetingBoardImageDTO.fileName }" class="meetingBoardListItemThumnail">
					</c:if>
					<div>
						<a class="meetingBoardListItemTitle">${listItem.meetingBoardDTO.meetingBoardTitle}</a>
						<p class="meetingBoardListItemAddress">${listItem.meetingBoardDTO.meetingBoardLocation}</p>
						<div class="d-flex flex-row">
							<div class="d-flex align-items-center">
								<div class="badge text-bg-success">총 비용</div>
								<div class="meetingBoardListItemTotalCost">${listItem.meetingBoardDTO.meetingBoardTotalCost}</div>
							</div>
							<div class="d-flex align-items-center">
								<div class="badge text-bg-success ms-3">1인 비용</div>
								<div class="meetingBoardListItemPersonalCost">${listItem.meetingBoardDTO.meetingBoardTotalCost / listItem.meetingBoardDTO.meetingBoardMaxMember}</div>
							</div>
							<div class="d-flex align-items-center">
								<div class="badge text-bg-success ms-3">참여자</div>
								<div class="meetingBoardListItemEnjoyMember">${listItem.meetingBoardDTO.meetingBoardCurrentMember} / ${listItem.meetingBoardDTO.meetingBoardMaxMember}</div>
							</div>
						</div>
						<div class="d-flex flex-row">
							<div class="d-flex align-items-center">
								<div class="badge text-bg-success">카테고리</div>
								<div class="meetingBoardListItemCategory">${listItem.meetingBoardDTO.meetingBoardCategory}</div>
							</div>
							<div class="d-flex align-items-center">
								<div class="badge text-bg-success">마감기한</div>
								<div class="meetingBoardListItemDueDate">${listItem.meetingBoardDTO.meetingBoardDueDate}</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</section>
	
	<c:import url="../template/meetingboard/footer.jsp"></c:import>

	<c:import url="../template/meetingboard/bootstrapJs.jsp"></c:import>
	
	<script src="/resources/js/meetingboard/mySoonList.js"></script>
</body>
</html>