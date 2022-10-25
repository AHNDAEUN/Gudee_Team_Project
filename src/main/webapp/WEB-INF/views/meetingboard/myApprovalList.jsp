<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Approval List</title>
<c:import url="../template/meetingboard/bootstrapCss.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/meetingboard/header.css">
<link rel="stylesheet" href="/resources/css/meetingboard/footer.css">
<link rel="stylesheet" href="/resources/css/meetingboard/myApprovalList.css">
</head>
<body>
	<c:import url="../template/meetingboard/header.jsp"></c:import>
	
	<section class="container-fluid col-10" id="listMainSection" data-meetingboardnum="${pager.meetingBoardNum }">
		<c:forEach items="${requestScope.myApprovalList }" var="listItem">
			<div id="approvalListFrame">
				<div class="approvalListItem">
					<c:if test="${listItem.memberFileDTO == null }">
						<img alt="" src="/resources/images/meetingboard/detail_person_icon.svg" class="approvalListItemThumnail">
					</c:if>
					<c:if test="${listItem.memberFileDTO != null }">
						<img alt="" src="../resources/upload/member/${listItem.memberFileDTO.fileName }" class="approvalListItemThumnail">
					</c:if>
					<div>
						<p class="approvalListItemNickname">${listItem.memberDTO.nickname}</p>
						<p class="approvalListItemHostDemand">${listItem.meetingBoardDTO.meetingBoardHostDemand}</p>
						<div class="approvalListItemApprovalContents">${listItem.approvalContents}</div>
						<div class="d-flex flex-row mt-2">
							<div class="d-flex align-items-center">
								<div class="approvalListItemAcceptBtn" data-mbmnum="${listItem.mbmNum }">
									<button type="button" class="btn btn-primary">수락</button>
								</div>
							</div>
							<div class="d-flex align-items-center">
								<div class="approvalListItemDenieBtn" data-mbmnum="${listItem.mbmNum }">
									<button type="button" class="btn btn-danger">거절</button>
								</div>
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
		  		<a class="page-link" href="./myApprovalList?hostMemberNum=${sessionScope.member.memberNum }&page=${pager.startNum - 1 }&meetingBoardNum=${pager.meetingBoardNum}" aria-label="Previous">
				   <span aria-hidden="true">&laquo;</span>
				</a>
		  	</li>
		    <c:forEach begin="${pager.startNum }" end="${pager.lastNum }" step="1" var="i">
		    	<li class="page-item"><a class="page-link" href="./myApprovalList?hostMemberNum=${sessionScope.member.memberNum }&page=${i }&meetingBoardNum=${pager.meetingBoardNum}">${i }</a></li>
		    </c:forEach>
		    <li class="page-item ${pager.next ? '' : 'disabled' }">
			   <a class="page-link" href="./myApprovalList?hostMemberNum=${sessionScope.member.memberNum }&page=${pager.lastNum + 1 }&meetingBoardNum=${pager.meetingBoardNum}" aria-label="Next">
			      <span aria-hidden="true">&raquo;</span>
			   </a>
			</li>
		  </ul>
		</nav>
	</section>

	<c:import url="../template/meetingboard/footer.jsp"></c:import>

	<c:import url="../template/meetingboard/bootstrapJs.jsp"></c:import>
	
	<script src="/resources/js/meetingboard/myApprovalList.js"></script>

</body>
</html>