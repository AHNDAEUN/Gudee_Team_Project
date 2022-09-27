<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>myPage</h1>
	
	<a href="/member/infoUpdate?memberNum=${myPage.memberNum}">회원정보 수정</a>

	<table class="table table-striped">
		<thead>
			<tr>
				<th>USERNAME</th><th>NAME</th><th>EMAIL</th><th>PHONE</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><p>${sessionScope.member.id}</p></td>
				<td><p>${sessionScope.member.name}</p></td>
				<td><p>${sessionScope.member.email}</p></td>
				<td><p>${sessionScope.member.phone}</p></td>
			</tr>
		</tbody>
	</table>



</body>
</html>