<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/meetingboard/bootstrapCss.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/meetingboard/test.css?after" />
<link rel="stylesheet" href="/resources/css/meetingboard/header.css">
<link rel="stylesheet" href="/resources/css/meetingboard/footer.css">
</head>
<body>

	<c:import url="../template/meetingboard/header.jsp"></c:import>

	<section class="container-fluid col-10" id="detailMainSection">
		<div id="detailTopFrame">
			<div id="meetingBoardDetailThumnailFrame">
				<img alt="" src="/resources/images/meetingboard/detail_test_image.jpg" id="meetingBoardDetailThumnail">
			</div>
			<div id="detailInfoFrame">
				
				<div class="detailInfoSingleFrame">
					<img alt="" src="/resources/images/meetingboard/detail_group_icon.svg" style="width:3rem; height:3rem;">
					<span>4명</span>
				</div>
				
				<div class="detailInfoSingleFrame">
					<img alt="" src="/resources/images/meetingboard/detail_cash_icon.svg" style="width:3rem; height:3rem;">
					<span>10000원</span>
				</div>
				
				<div class="detailInfoSingleFrame">
					<img alt="" src="/resources/images/meetingboard/detail_person_icon.svg" style="width:3rem; height:3rem;">
					<span>2500원</span>
				</div>
				
				<div class="detailInfoSingleFrame">
					<img alt="" src="/resources/images/meetingboard/detail_calendar_clock_icon.svg" style="width:3rem; height:3rem;">
					<span>2022-10-21 15:30</span>
				</div>
				
				<div class="detailInfoSingleFrame">
					<img alt="" src="/resources/images/meetingboard/map_marker_icon.svg" style="width:3rem; height:3rem;">
					<span>서울특별시 금천구 가산디지털1로 128 에스티엑스브이타워 1층 스타벅스</span>
				</div>
			</div>
		</div>
		
		<div id="detailCenterFrame">
			<div id="detailTitleFrame">
				<div id="detailTitleUserFrame">
					<img alt="" src="/resources/images/meetingboard/detail_person_icon.svg" style="width:5rem; height:5rem;">
					<span>유저닉네임</span>
				</div>
				<div id="detailTitle">타이틀이 들어갈 자리입니다. 테스트를 위해 길게</div>
			</div>
			<div id="detailContentsFrame">
				<div id="detailContents">
					Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi magni veniam vero minus, vitae repellat earum quas aliquam aliquid fugiat sequi laborum aut reprehenderit necessitatibus, repellendus accusamus quisquam recusandae dolorem.
					Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis, expedita sunt consequatur nobis veritatis reiciendis fugiat necessitatibus doloribus voluptate inventore corporis facilis molestias beatae! Ipsam beatae asperiores adipisci. Modi, explicabo!
					Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quo iure fugiat sit consectetur molestias nobis temporibus sapiente, repellendus laudantium, aliquam recusandae sequi in officia veritatis et voluptatum, iste voluptates accusantium.
					Lorem ipsum dolor sit amet consectetur, adipisicing elit. Officiis atque ea vero non quia minima aspernatur? Natus facilis tempora, praesentium ducimus nostrum quam, dolore itaque quis sapiente quaerat quia inventore.
					Lorem ipsum dolor sit amet consectetur, adipisicing elit. Odit quod omnis, nulla cum hic quo, eligendi necessitatibus mollitia minima nemo, esse nesciunt incidunt maiores dolorem. Officiis adipisci cum enim facere?
					Lorem ipsum dolor sit amet consectetur, adipisicing elit. Culpa minima necessitatibus maxime voluptates rerum praesentium nihil ratione! Doloremque, sequi porro blanditiis totam quisquam, laboriosam illum facere animi, explicabo maiores vitae.
					Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ullam suscipit corrupti maxime aliquam aut. Consequatur voluptatem neque quod rerum sequi nulla consectetur omnis quae cumque, exercitationem qui tenetur totam ab?
				</div>
			</div>
		</div>
	</section>
	
	<c:import url="../template/meetingboard/footer.jsp"></c:import>
	
	<c:import url="../template/meetingboard/bootstrapJs.jsp"></c:import>
	
	<%-- <p style="margin-top:-12px">
    <b>Chrome 브라우저는 https 환경에서만 geolocation을 지원합니다.</b> 참고해주세요.
	</p>
	<div id="map" style="width:100%;height:350px;"></div>

	<c:import url="../template/meetingboard/bootstrapJs.jsp"></c:import>
	<script src="https://unpkg.com/typeit@8.7.0/dist/index.umd.js"></script>
	<!-- <script src="/resources/js/meetingboard/home.js"></script> -->
	
	<c:import url="../template/meetingboard/kakaoMapApi.jsp"></c:import>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level: 10 // 지도의 확대 레벨 
		    }; 
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
		if (navigator.geolocation) {
		    
		    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
		    navigator.geolocation.getCurrentPosition(function(position) {
		        
		        var lat = position.coords.latitude, // 위도
		            lon = position.coords.longitude; // 경도
		        
		        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
		            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
		        
		        // 마커와 인포윈도우를 표시합니다
		        displayMarker(locPosition, message);
		            
		      });
		    
		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
		    
		    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
		        message = 'geolocation을 사용할수 없어요..'
		        
		    displayMarker(locPosition, message);
		}
		
		// 지도에 마커와 인포윈도우를 표시하는 함수입니다
		function displayMarker(locPosition, message) {
		
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({  
		        map: map, 
		        position: locPosition
		    }); 
		    
		    var iwContent = message, // 인포윈도우에 표시할 내용
		        iwRemoveable = true;
		
		    // 인포윈도우를 생성합니다
		    var infowindow = new kakao.maps.InfoWindow({
		        content : iwContent,
		        removable : iwRemoveable
		    });
		    
		    // 인포윈도우를 마커위에 표시합니다 
		    infowindow.open(map, marker);
		    
		    // 지도 중심좌표를 접속위치로 변경합니다
		    map.setCenter(locPosition);      
		}    
		</script> --%>

</body>
</html>