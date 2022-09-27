<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail</title>
<c:import url="../template/meetingboard/bootstrapCss.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/meetingboard/detail.css?after" />
<link rel="stylesheet" href="/resources/css/meetingboard/header.css">
<link rel="stylesheet" href="/resources/css/meetingboard/footer.css">
</head>
<body>
	<c:import url="../template/meetingboard/header.jsp"></c:import>
	
	<c:if test="${meetingBoardDetail.meetingBoardWriter != sessionScope.member.memberNum }">
		<form>
			<input type="hidden" id="mbNum" value=${meetingBoardDetail.meetingBoardNum }>
			<input type="hidden" id="mNum" value="${sessionScope.member.memberNum }">
		</form>
		<img alt="" src="/resources/images/meetingboard/detail_star_icon.svg" id="likeBtn">
		<img alt="" src="/resources/images/meetingboard/detail_person_plus_icon.svg" id="joinBtn">
	</c:if>
	
	<section class="container-fluid col-10" id="detailMainSection">
		<div id="detailTopFrame">
			<div id="meetingBoardDetailThumnailFrame">
				<c:if test="${meetingBoardDetail.meetingBoardImageDTO == null }">
					<img alt="" src="/resources/images/meetingboard/detail_test_image.jpg" id="meetingBoardDetailThumnail">
				</c:if>
				<c:if test="${meetingBoardDetail.meetingBoardImageDTO != null }">
					<img alt="" src="../resources/upload/meetingboard/${meetingBoardDetail.meetingBoardImageDTO.fileName }" id="meetingBoardDetailThumnail">
				</c:if>
			</div>
			<div id="detailInfoFrame">
				<div class="detailInfoSingleFrame">
					<img alt="" src="/resources/images/meetingboard/detail_group_icon.svg" style="width:3rem; height:3rem;">
					<span>${meetingBoardDetail.meetingBoardMaxMember }</span>
				</div>
				
				<div class="detailInfoSingleFrame">
					<img alt="" src="/resources/images/meetingboard/detail_cash_icon.svg" style="width:3rem; height:3rem;">
					<span>${meetingBoardDetail.meetingBoardTotalCost }</span>
				</div>
				
				<div class="detailInfoSingleFrame">
					<img alt="" src="/resources/images/meetingboard/detail_person_icon.svg" style="width:3rem; height:3rem;">
					<span id="detailPersonalCost">${meetingBoardDetail.meetingBoardTotalCost / meetingBoardDetail.meetingBoardMaxMember }</span>
				</div>
				
				<div class="detailInfoSingleFrame">
					<img alt="" src="/resources/images/meetingboard/detail_calendar_clock_icon.svg" style="width:3rem; height:3rem;">
					<span id="detailDueDate">${meetingBoardDetail.meetingBoardDueDate }</span>
				</div>
				
				<div class="detailInfoSingleFrame">
					<img alt="" src="/resources/images/meetingboard/map_marker_icon.svg" style="width:3rem; height:3rem;">
					<span id="detailLocation">${meetingBoardDetail.meetingBoardLocation }</span>
				</div>
				<div class="detailInfoSingleFrame" id="detailFindLocation">
					<img alt="" src="/resources/images/meetingboard/detail_search_location_icon.svg" style="width:3rem; height:3rem;">
					<span style="color: #8B0075;">해당 위치 길찾기</span>
				</div>
			</div>
		</div>
		
		<div id="detailCenterFrame">
			<div id="detailTitleFrame">
				<div id="detailTitleUserFrame">
					<img alt="" src="/resources/images/meetingboard/detail_person_icon.svg" style="width:5rem; height:5rem;">
					<span>${meetingBoardDetail.memberDTO.nickname }</span>
				</div>
				<div id="detailTitle">${meetingBoardDetail.meetingBoardTitle }</div>
			</div>
			<div id="detailContentsFrame">
				<div id="detailContents">
					${meetingBoardDetail.meetingBoardContents }
				</div>
			</div>
		</div>
	</section>
	
	<c:if test="${meetingBoardDetail.meetingBoardWriter == sessionScope.member.memberNum }">
		<a class="btn btn-primary" id="updateBtn" href="./update?num=${meetingBoardDetail.meetingBoardNum }">수정</a>
		<a class="btn btn-primary" id="deleteBtn" href="./delete?num=${meetingBoardDetail.meetingBoardNum }">삭제</a>
	</c:if>
	
	<c:import url="../template/meetingboard/footer.jsp"></c:import>
	<c:import url="../template/meetingboard/kakaoMapApi.jsp"></c:import>
	<c:import url="../template/meetingboard/bootstrapJs.jsp"></c:import>
	
	<script src="/resources/js/meetingboard/detail.js"></script>
	
	<c:if test="${meetingBoardDetail.meetingBoardWriter != sessionScope.member.memberNum }">
		<script type="text/javascript" src="/resources/js/meetingboard/detail_like_join.js"></script>
	</c:if>
	
	<!-- Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi magni veniam vero minus, vitae repellat earum quas aliquam aliquid fugiat sequi laborum aut reprehenderit necessitatibus, repellendus accusamus quisquam recusandae dolorem.
		Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis, expedita sunt consequatur nobis veritatis reiciendis fugiat necessitatibus doloribus voluptate inventore corporis facilis molestias beatae! Ipsam beatae asperiores adipisci. Modi, explicabo!
		Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quo iure fugiat sit consectetur molestias nobis temporibus sapiente, repellendus laudantium, aliquam recusandae sequi in officia veritatis et voluptatum, iste voluptates accusantium.
		Lorem ipsum dolor sit amet consectetur, adipisicing elit. Officiis atque ea vero non quia minima aspernatur? Natus facilis tempora, praesentium ducimus nostrum quam, dolore itaque quis sapiente quaerat quia inventore.
		Lorem ipsum dolor sit amet consectetur, adipisicing elit. Odit quod omnis, nulla cum hic quo, eligendi necessitatibus mollitia minima nemo, esse nesciunt incidunt maiores dolorem. Officiis adipisci cum enim facere?
		Lorem ipsum dolor sit amet consectetur, adipisicing elit. Culpa minima necessitatibus maxime voluptates rerum praesentium nihil ratione! Doloremque, sequi porro blanditiis totam quisquam, laboriosam illum facere animi, explicabo maiores vitae.
		Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ullam suscipit corrupti maxime aliquam aut. Consequatur voluptatem neque quod rerum sequi nulla consectetur omnis quae cumque, exercitationem qui tenetur totam ab? -->
</body>
</html>