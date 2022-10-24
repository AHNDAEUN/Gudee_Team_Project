<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매글 수정➕│구디마켓│중고거래📦</title>

 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<!--summernote jquery  -->
<script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
 
 <!-- include summernote css/js-->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<c:import url="../template/trade/header.jsp"></c:import>
 <!-- Google Font -->
 <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    
 <style>
	 @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
 </style>
<style>
.update{

	position: relative;
    /* overflow: hidden; */
    padding-top: 190px;
    line-height: 170%;
    font-family: 'Noto Sans KR', sans-serif;}
</style>


</head>
<body>


<div class="update">


<section class="container-fluid col-lg-4">
	
	<div class="row">
		<form action="./update" method="POST" enctype="multipart/form-data">
		
		
			<input type="hidden" name="itemNum" value="${itemDTO.itemNum}">
			
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
						<input type="text" value="${itemDTO.itemTitle}" name="itemTitle" class="form-control" id="title" placeholder="">
					</div>
			

			<div class="mb-3">
			  <label for="price" class="form-label">가격을 입력하세요.</label>
			  <input type="text" name="itemPrice" value="${itemDTO.itemPrice}" class="form-control" id="price" placeholder="가격 입력">
			</div>



			<c:forEach items="${itemDTO.itemImageDTOs}" var="fileDTO">
			<div class="mb-3">
			<label for="files" class="form-label">File</label>
            <span class="form-control" >${fileDTO.fileName}</span>
            <button type="button" class="fileDelete" data-file-num="${fileDTO.fileNum}">삭제</button>        
            </div>
			</c:forEach>
			<div id="addFiles">
				<button type="button" class="btn btn-danger" id="fileAdd">추가</button>
		
				</div>
		
			
			<div class="mb-3">

			  <label for="contents" class="form-label">상품 설명을 작성해 주세요.</label>
			  <textarea class="form-control" name="itemContents" value="${itemDTO.itemContents}" id="contents" rows="3"></textarea>
			</div>

			
			<div class="mb-3">
				<button type="submit" class="btn btn-success">판매글 수정</button>
			</div>
		</form>
	</div>


</section>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

	<c:import url="../template/trade/footer.jsp"></c:import>
	<script>
	$("#contents").summernote();
</script>
<script src="/resources/js/itemfile.js"></script>

<script>
	setCount(${itemDTO.itemImageDTOs.size()});
</script>
</body>
</html>