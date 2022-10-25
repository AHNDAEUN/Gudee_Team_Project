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
<c:import url="../template/meetingboard/jQueryJs.jsp"></c:import>
<c:import url="../template/meetingboard/summerNote.jsp"></c:import>
</head>
<body>
	<c:import url="../template/meetingboard/header.jsp"></c:import>
	
	<c:if test="${meetingBoardDetail.meetingBoardWriter != sessionScope.member.memberNum }">
		<form>
			<input type="hidden" id="mbNum" value="${meetingBoardDetail.meetingBoardNum }">
			<input type="hidden" id="mNum" value="${sessionScope.member.memberNum }">
		</form>
		<c:if test="${!isLikeExist }">
			<img alt="" src="/resources/images/meetingboard/detail_star_icon.svg" id="likeBtn">
		</c:if>
		<c:if test="${isLikeExist }">
			<img alt="" src="/resources/images/meetingboard/detail_star_xmas_icon.svg" id="unlikeBtn">
		</c:if>
		<c:if test="${!isJoinExist }">
			<img alt="" src="/resources/images/meetingboard/detail_person_plus_icon.svg" id="joinBtn">
		</c:if>
		<c:if test="${isJoinExist }">
			<img alt="" src="/resources/images/meetingboard/detail_person_minus_icon.svg" id="unjoinBtn" data-hostnum="${meetingBoardDetail.meetingBoardWriter }">
		</c:if>
	</c:if>
	
	<section class="container-fluid col-10" id="detailMainSection" data-mbNum="${meetingBoardDetail.meetingBoardNum }">
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
					<c:if test="${meetingBoardDetail.memberDTO.memberFileDTO == null }">
						<img alt="" src="/resources/images/meetingboard/detail_person_icon.svg" style="width:5rem; height:5rem;">
					</c:if>
					<c:if test="${meetingBoardDetail.memberDTO.memberFileDTO != null }">
						<img alt="" src="../resources/upload/member/${meetingBoardDetail.memberDTO.memberFileDTO.fileName }" style="width:5rem; height:5rem; border-radius: 70%; overflow: hidden;">
					</c:if>
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
	
	<section class="container-fluid col-10" id="detailJoinListSection">
	</section>
	
	<c:if test="${meetingBoardDetail.meetingBoardWriter == sessionScope.member.memberNum }">
		<section class="container-fluid col-10 buttonSection">
		<a class="btn btn-primary" id="updateBtn" href="./update?num=${meetingBoardDetail.meetingBoardNum }">수정</a>
		<a class="btn btn-primary" id="deleteBtn" href="./delete?num=${meetingBoardDetail.meetingBoardNum }">삭제</a>
		</section>
	</c:if>
	
	<section class="container-fluid col-10" id="commentSection">
		<div class="input-group mb-3" id="commentInputFrame">
		  <textarea class="form-control" id="commentContents"></textarea>
		  <button type="button" id="commentAddBtn" class="btn btn-primary" data-m-num="${sessionScope.member.memberNum }" data-mb-num="${meetingBoardDetail.meetingBoardNum }">댓글 작성</button>
		</div>
	</section>
	
	<section class="container-fluid col-10 buttonSection">
		<button type="button" class="btn btn-success" id="commentMoreBtn">댓글 더보기</button>
	</section>
	
	<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#requestApprovalModal" data-bs-whatever="@getbootstrap" id="requestApprovalModalOpenBtn"></button>

	<div class="modal fade" id="requestApprovalModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="requestApprovalTitle">참여 신청하기</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        <form>
	          <div class="mb-3">
	            <label for="recipient-name" class="col-form-label">주최자 질문:</label>
	            <input type="text" class="form-control" id="recipient-name" readonly="readonly" value="${meetingBoardDetail.meetingBoardHostDemand }">
	          </div>
	          <div class="mb-3">
	            <label for="approvalContents" class="col-form-label">답변:</label>
	            <textarea class="form-control" id="approvalContents" name="approvalContents" data-hostnum="${meetingBoardDetail.meetingBoardWriter }"></textarea>
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="requestApprovalModalCloseBtn">닫기</button>
	        <button type="button" class="btn btn-primary" id="requestApprovalModalSendBtn">신청하기</button>
	      </div>
	    </div>
	  </div>
	</div>

	<!-- 회원신고 버튼 -->
	<form action="/member/report" method="post" id="formReport">
		<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#requestReportModal" data-bs-whatever="@getbootstrap" id="requestReportModalOpenBtn">신고하기</button>

		<div class="modal fade" id="requestReportModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="requestReportTitle">신고하기</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<form>
				<div class="mb-3">

					<label for="reportNickName" class="col-form-label">신고자</label>
					<input type="text" class="form-control" id="reportNickname" readonly="readonly" value="${sessionScope.member.nickname}">
					<input type="hidden" id="reportName" value="${sessionScope.member.name}">
					<input type="hidden" id="reportJoinDate" value="${sessionScope.member.joinDate}">
				</div>
				<div class="mb-3">
					<label for="reportedNickName" class="col-form-label">피신고자</label>
					<input type="text" class="form-control" id="reportedNickname" readonly="readonly" value="${meetingBoardDetail.memberDTO.nickname}">
					<input type="hidden" id="reportedName" value="${meetingBoardDetail.memberDTO.name}">
					<input type="hidden" id="reportedJoinDate" value="${meetingBoardDetail.memberDTO.joinDate}">
				</div>
				<div class="mb-3">
					<label for="reportTitle" class="col-form-label">신고제목</label>
					<input type="text" class="form-control" id="reportTitle" name="reportTitle">

				</div>
				<div class="mb-3">
					<label for="reportContent" class="col-form-label">신고내용</label>
					<textarea class="form-control" id="reportContent" name="reportContent" data-hostnum="${sessionScope.member.memberNum}" data-guestnum="${meetingBoardDetail.meetingBoardWriter}"></textarea>
				</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="requestReportModalCloseBtn">닫기</button>
				<button type="button" class="btn btn-danger" id="requestReportModalSendBtn">신고하기</button>
			</div>
			</div>
		</div>
		</div>
	</form>

	<c:import url="../template/meetingboard/footer.jsp"></c:import>
	<c:import url="../template/meetingboard/kakaoMapApi.jsp"></c:import>
	<c:import url="../template/meetingboard/bootstrapJs.jsp"></c:import>
	
	<script src="/resources/js/meetingboard/detail.js"></script>
	<script src="/resources/js/meetingboard/detail_comment.js"></script>
	<script src="/resources/js/report.js"></script>
	
	<c:if test="${meetingBoardDetail.meetingBoardWriter != sessionScope.member.memberNum }">
		<script type="text/javascript" src="/resources/js/meetingboard/detail_like_join.js"></script>
		<c:if test="${!isLikeExist }">
			<script type="text/javascript">
				likeBtnFunction();
			</script>
		</c:if>
		<c:if test="${isLikeExist }">
			<script type="text/javascript">
				unlikeBtnFunction();
			</script>
		</c:if>
		<c:if test="${!isJoinExist }">
			<script type="text/javascript">
				joinBtnFunction();
			</script>
		</c:if>
		<c:if test="${isJoinExist }">
			<script type="text/javascript">
				unjoinBtnFuction();
			</script>
		</c:if>
	</c:if>
	
	<script type="text/javascript">
		$("#commentContents").summernote();
	</script>
	
	<script type="text/template" id="commentListTemplate">
		<div class="commentListItem">
			<div class="commentItemInfoFrame">
				<div class="commentItemInfoWriterFrame">
					<img alt="" src="{imagePath}" class="commentWriterImage" style="border-radius: 70%; overflow: hidden;">
					<div class="commentWriterNickname">{nickname}</div>
				</div>
				<div class="commentItemContents">{commentContents}</div>
			</div>
			<div class="commentItemDate">{commentDate}</div>
		</div>
	</script>
	
</body>
</html>