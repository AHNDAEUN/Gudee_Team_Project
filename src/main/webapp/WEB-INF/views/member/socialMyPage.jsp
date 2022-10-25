<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/member/home.css">
<c:import url="../template/meetingboard/bootstrapCss.jsp"></c:import>
</head>
<body>
	<c:import url="../template/member/memberHeader.jsp"></c:import>

    <div style="background-color: #FBF7F2; height: 50rem;">
		<div class="container content">
			<section class="container lists">
                <p>내가 찜한 모임 목록</p>
                <c:forEach items="${LikeDTO.meetingBoardDTOs}" var="LikeDTO">
                    <p><a href="/mb/detail?num=${LikeDTO.meetingBoardNum}">${LikeDTO.meetingBoardTitle}</a></p>
                </c:forEach>
            </section>
            
            <section class="container lists" style="margin-top: 5rem;">
                <p>내가 작성한 댓글 목록</p>
                <c:forEach items="${myCommentList}" var="comment">
                    <a href="/mb/detail?num=${comment.meetingBoardNum}">${comment.contents}</a>
                </c:forEach>
            </section>
        </div>
    </div>  

    <link rel="stylesheet" href="/resources/css/member/socialMyPage.css">
    <c:import url="../template/meetingboard/bootstrapJs.jsp"></c:import>
</body>
</html>