<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>중고거래 마이페이지</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>

<body>
	<div>
		<table>
			<tbody>
				<tr>
					<th>등록일</th>
					<th>카테고리</th>
					<th>제목</th>
					<th>가격</th>
					<th class="ibgn">거래 상태</th>
				</tr>
			</tbody>
			
			<tbody>
				<%-- <c:forEach items="${list}" var="dto">	 --%>
					<tr>
						<td>${dto.num}</td>
						<td>${dto.category}</td>
						<td>
							<c:forEach begin="1" end="${dto.depth}">&ensp</c:forEach>
							<a href="./detail.sell?num=${dto.num}">${dto.title}</td>
						<td>${dto.price}</td>
						<td>${dto.state}</td>
					</tr>
			</tbody>
		</table>		
	</div>




	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>

</html>