<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/resources/css/trade/footer.css" />

<footer class="footer">
    <div class="container">
        <div class="footer-row">
        	<!-- flex -->
        	<div class="footer-flex">
	            <div class="footer-about">
	                <div class="footer-logo">
	                    <a href="/"><img src="/resources/images/logo.png" alt="" class="footer-logo-img"></a>
	                </div>
	                <div>
		                <ul class="footer-ul">
		                	<li class="footer-li">💚 담당자 : 김남진 권경문 안다은 서소영</li>
		                    <li class="footer-li">🏢 주소 : 서울 금천구 가산디지털1로 151 세진 이노플렉스, 306호</li>
		                    <li class="footer-li">📱 전화 : 02-2108-5900</li>
		                    <li class="footer-li">📧 메일 : goodeemarket@gmail.com</li>
		                </ul>
	                </div>
	            </div>
	            
	            <!-- API -->
	            <div class="footer-api">
	            	<div id="map" style="width:100%;height:350px;"></div>
						<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6f4fee9581f0b544ff40e3aa60be3101"></script>
						<script>
							var mapContainer = document.getElementById('map'), // 지도의 중심좌표
							    mapOption = { 
							        center: new kakao.maps.LatLng(37.47807428498916, 126.87930082685244), // 지도의 중심좌표
							        level: 3 // 지도의 확대 레벨
							    }; 
							
							var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
							
							// 지도에 마커를 표시합니다 
							var marker = new kakao.maps.Marker({
							    map: map, 
							    position: new kakao.maps.LatLng(37.47807428498916, 126.87930082685244)
							});
							
							// 커스텀 오버레이에 표시할 컨텐츠 
							var content = '<div class="wrap">' + 
							            '    <div class="info">' + 
							            '        <div class="title">' + 
							            '            구디마켓' + 
							            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
							            '        </div>' + 
							            '        <div class="body">' + 
							            '            <div class="img">' +
							            '                <img src="/resources/images/logo.png" width="73" height="70">' +
							            '           </div>' + 
							            '            <div class="desc">' + 
							            '                <div class="ellipsis">서울 금천구 가산디지털1로 151</div>'+
							            '				 <div class="ellipsis">세진 이노플렉스, 306호</div>' + 
							            '                <div class="jibun ellipsis">(지번)가산동 371-47 (우)08506</div>' + 
							            '                <div><a href="/" target="_blank" class="link">홈페이지</a></div>' + 
							            '            </div>' + 
							            '        </div>' + 
							            '    </div>' +    
							            '</div>';
							
							// 마커 위에 커스텀오버레이를 표시
							var overlay = new kakao.maps.CustomOverlay({
							    content: content,
							    map: map,
							    position: marker.getPosition()       
							});
							
							// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
							kakao.maps.event.addListener(marker, 'click', function() {
							    overlay.setMap(map);
							});
							
							// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
							function closeOverlay() {
							    overlay.setMap(null);     
							}
						</script>
	            </div>
        	</div>
        </div>
    </div>    
</footer>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6f4fee9581f0b544ff40e3aa60be3101"></script>
