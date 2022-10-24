<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>판매글 등록➕│구디마켓│중고거래📦</title>

<!--summernote jquery  -->
 <script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
 <!-- bootStrap -->	
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

 <!-- include summernote css/js-->
 <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
 <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
 

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    
<style>
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
</style>

  <link rel="stylesheet" href="/resources/css/trade/header.css" />
<link rel="stylesheet" href="/resources/css/trade/footer.css" />
<link rel="stylesheet" href="/resources/css/trade/add.css" />

</head>
<body>

<c:import url="../template/trade/header.jsp"></c:import>

<div class="addBody">
	<section class="add-top">
		<div class="add-container">
			<div class="add-row">
				<form action="./add" method="POST" enctype="multipart/form-data">

					<h4 class="add-title">판매글 등록하기➕</h4>

					<div class="add-air"></div>
					<input type="hidden" name="itemNum" value="${itemDTO.itemNum}">
					<input type="hidden" id="memberNum" value="${itemDTO.memberNum }" name="memberNum">
					


				
					<div class="mb-3">
					<label for="category" class="form-label">카테고리</label>
					
					 <select name="itemCategory">
						<option name="itemCategory" value="의류" >의류</option>
						<option name="itemCategory" value="식품류">식품류</option>
						<option name="itemCategory" value="도서/문구">도서/문구</option>
						<option name="itemCategory" value="뷰티/미용">뷰티/미용</option>
						<option name="itemCategory" value="생활/디지털">생활/디지털</option>
						<option name="itemCategory" value="반려동물 용품">반려동물 용품</option>
						<option name="itemCategory" value="가구/인테리어">가구/인테리어</option>
						</select>
					</div>  

					<div class="mb-3">
						<label for="title" class="form-label">제목을 입력하세요.</label>
						<input type="text" name="itemTitle" class="form-control" id="title" placeholder="">
					</div>
					
					<div class="mb-3">
						<label for="price" class="form-label">가격을 입력하세요.</label>
						<input type="text" name="itemPrice" class="form-control" id="price" placeholder="">
					</div>
					
					<div class="add-air"></div>

					<div id="addFiles">
						<h6>상품을 설명할 상세 사진을 첨부해 주세요.</h6>	
						<button type="button" class="add-btn" id="fileAdd">사진 추가</button>
					</div>
						
					<div class="add-air"></div>
					
					<div class="mb-3">
						<label for="contents" class="form-label">상품 설명을 작성해 주세요.</label>
						<textarea class="form-control" name="itemContents" id="contents" rows="3"></textarea>
					</div>

					<div class="mb-3">
						<button type="submit" class="add-btn">판매글 등록</button>
					</div>

				</form>
			</div>
		</div>	
	</section>
</div>

<!-- bootStrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>


<script src="/resources/js/itemfile.js"></script>
<script type="text/javascript">
	$("#contents").summernote();
</script>
	<c:import url="../template/trade/footer.jsp"></c:import>

</body>
</html>