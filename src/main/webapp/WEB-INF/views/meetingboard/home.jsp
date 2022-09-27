<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<c:import url="../template/meetingboard/bootstrapCss.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/meetingboard/header.css">
<link rel="stylesheet" href="/resources/css/meetingboard/footer.css">
<link rel="stylesheet" href="/resources/css/meetingboard/home.css">
</head>

<body>

	<c:import url="../template/meetingboard/header.jsp"></c:import>
	
	<section>
		<div id="mainSectionDiv">
			<div id="mainSectionTop">
				<div id="mainSectionTopTitleContainer">
					<h1 id="mainSectionTopTitle"></h1>
				</div>
			</div>
			<div id="mainSectionBottom">
				
			</div>
		</div>
	</section>
	
	<c:import url="../template/meetingboard/footer.jsp"></c:import>
	
	<c:import url="../template/meetingboard/bootstrapJs.jsp"></c:import>
	
	<script src="https://unpkg.com/typeit@8.7.0/dist/index.umd.js"></script>
	<script src="/resources/js/meetingboard/home.js"></script>

</body>

</html>