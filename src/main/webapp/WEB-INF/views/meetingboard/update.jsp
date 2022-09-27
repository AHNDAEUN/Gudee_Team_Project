<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<c:import url="../template/meetingboard/bootstrapCss.jsp"></c:import>
<c:import url="../template/meetingboard/jQueryJs.jsp"></c:import>
<c:import url="../template/meetingboard/summerNote.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/meetingboard/update.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row" id="mapFrame">
			<div class="col-lg-3 col-md-3" id="searchFrame">
				<div class="searchBox container-fluid">
					<img alt="" src="/resources/images/meetingboard/map_search_view_icon.svg" id="searchIcon">
					<input type="text" placeholder="장소검색 ex) 판교 치킨" id="inputKeyword">
				</div>
				<div id="placesListFrame">
					<ul class="list-group" id="placesList"></ul>
				</div>
			</div>
			<div class="map_wrap col-lg-9 col-md-9">
				<div id="map"></div>
				<div class="hAddr">
			        <span id="addrTitle">지도중심기준 행정동 주소정보</span>
			        <span id="centerAddr"></span>
			    </div>
		    </div>
		</div>
	</div>

	<section>
	</section>
	
	<!-- 모달 -->
	<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#updateFormModal" data-bs-whatever="@getbootstrap" id="updateFormModalOpenBtn">모임만들기</button>

	<div class="modal fade" id="updateFormModal" tabindex="-1" aria-labelledby="updateFormModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="updateFormModalLabel">${sessionScope.member.nickname }의 모임 수정하기</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="updateFormModalCloseBtn"></button>
	      </div>
	      <div class="modal-body">
	        <form method="post" action="./update" id="updateForm" enctype="multipart/form-data">
	        	<input type="hidden" id="meetingBoardNum" value="${meetingBoardDTO.meetingBoardNum }" name="meetingBoardNum">
	          <div class="mb-3">
	            <label for="meetingBoardThumnail" class="col-form-label updateFormModalSubLabel">썸네일:</label>
	            <input type="file" class="form-control" id="meetingBoardThumnail" name="meetingBoardThumnail">
	          </div>
	          <div class="mb-3">
	            <label for="meetingBoardTitle" class="col-form-label updateFormModalSubLabel">제목:</label>
	            <input type="text" class="form-control" id="meetingBoardTitle" name="meetingBoardTitle" value="${meetingBoardDTO.meetingBoardTitle }">
	          </div>
	          <div class="mb-3">
	            <label for="meetingBoardContents" class="col-form-label updateFormModalSubLabel">내용:</label>
	            <textarea class="form-control" id="meetingBoardContents" name="meetingBoardContents">${meetingBoardDTO.meetingBoardContents }</textarea>
	          </div>
	          <div class="mb-3">
	            <label for="meetingBoardDueDate" class="col-form-label updateFormModalSubLabel">만남 예정일:</label>
	            <input type="datetime-local" class="form-control" id="meetingBoardDueDate" name="meetingBoardDueDate" value="${meetingBoardDTO.meetingBoardDueDate }">
	          </div>
	          <div class="mb-3">
	            <label for="meetingBoardTotalCost" class="col-form-label updateFormModalSubLabel">비용:</label>
	            <input type="number" class="form-control" id="meetingBoardTotalCost" name="meetingBoardTotalCost" value="${meetingBoardDTO.meetingBoardTotalCost }">
	          </div>
	          <div class="mb-3">
	            <label for="meetingBoardLocation" class="col-form-label updateFormModalSubLabel">장소:</label>
	            <input type="text" readonly="readonly" class="form-control" id="meetingboardMainAddress">
	            <input type="text" class="form-control" id="meetingboardSubAddress" placeholder="상세주소 입력(선택)">
	            <input type="hidden" id="meetingBoardLocation" name="meetingBoardLocation">
	          </div>
	          <div class="mb-3">
	            <label for="meetingBoardMaxMember" class="col-form-label updateFormModalSubLabel">최대 인원:</label>
	            <input type="number" class="form-control" id="meetingBoardMaxMember" name="meetingBoardMaxMember" value="${meetingBoardDTO.meetingBoardMaxMember }">
	          </div>
	          <div class="mb-3">
	            <div class="dropdown">
				  <button class="btn btn-success dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
				    카테고리
				  </button>
				  <ul class="dropdown-menu" id="categoryList">
				    <li class="dropdown-item categoryListItem">문화/예술</li>
				    <li class="dropdown-item categoryListItem">운동/액티비티</li>
				    <li class="dropdown-item categoryListItem">푸드/드링크</li>
				    <li class="dropdown-item categoryListItem">취미</li>
				    <li class="dropdown-item categoryListItem">여행/나들이</li>
				    <li class="dropdown-item categoryListItem">창작</li>
				    <li class="dropdown-item categoryListItem">성장/자기계발</li>
				  </ul>
				</div>
				<input type="text" readonly="readonly" class="form-control" id="meetingBoardCategory" name="meetingBoardCategory">
	          </div>
	          <div class="mb-3">
	            <label for="meetingBoardHostDemand" class="col-form-label updateFormModalLabel">신청자에게 질문:</label>
	            <input type="text" class="form-control" placeholder="ex) 오는데 걸리는 시간은?" id="meetingBoardHostDemand" name="meetingBoardHostDemand" value="${meetingBoardDTO.meetingBoardHostDemand }">
	          </div>
	        </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="updateFormModalCloseBottomBtn">취소</button>
	        <button type="button" class="btn btn-primary" id="updateFormModalSendBtn">모집글 수정</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	<c:import url="../template/meetingboard/bootstrapJs.jsp"></c:import>
	<c:import url="../template/meetingboard/kakaoMapApi.jsp"></c:import>
	<script type="text/javascript" src="/resources/js/meetingboard/update.js"></script>
	<script type="text/template" id="template-map-marker">
		<div class="ms-2 me-auto placesListItemDivUp d-flex justify-content-between">
			<div class="placesListItemDivTitle d-inline-block">
				{storeTitle}
			</div>
		</div>
	</script>
	<script type="text/template" id="template-click-map-marker">
		<div class="ms-2 me-auto placesListItemDivUp d-flex justify-content-between">
			<div class="placesListItemDivTitle">
				{storeTitle}
			</div>
			<div class="placesListItemDivTitle">
				{storeAddress}
			</div>
		</div>
	</script>
	
	<script type="text/javascript">
		$("#meetingBoardContents").summernote();
	</script>
</body>
</html>