<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<!--summernote jquery  -->
<script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
 
 <!-- include summernote css/js-->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>


 <style>
</style>
</head>
<body>
<h1 class="align-center"> Update Page</h1>
<section class="container-fluid col-lg-4">
	
	<div class="row">
		<form action="./add" method="post">
			<input type="hidden" name="num" value="${itemDTO.itemNum}" >
			<div class="mb-3">
			  <label for="itemTitle" class="form-label">Title</label>
			  <input type="text" name="itemTitle" value="${itemDTO.itemTitle}" class="form-control" id="itemTitle" placeholder="제목 입력">
			</div>
			
			<div id="addFiles">
				<button type="button" class="btn btn-danger" id="fileAdd">파일 추가</button>

			</div>
			
			<div class="mb-3">
			  <label for="itemPrice" class="form-label">itemPrice</label>
			  <input type="text" name="itemPrice" value="${itemDTO.itemPrice}" disabled="disabled" class="form-control" id="itemPrice" placeholder="작성자 입력">
			</div>
			
			<div class="mb-3">
			  <label for="itemCategory" class="form-label">카테고리</label>
				<select name="itemCategory">
				 <option value="num1">하</option>
				 <option value="num2">하하</option>
				 <option value="num3">하하하</option>
				 <option value="num4">하하하하</option>
				 <option value="num5">하하하하하하</option>
				</select>
			</div>
			
			<div class="mb-3">
			  <label for="itemDueDate" class="form-label">거래 날짜</label>
              <p><input type="date" value="2022-9-28" min="2022-12-10" max="2022-12-25"></p>
			
			
			
			<div class="mb-3">
			  <label for="itemContents" class="form-label">Contents</label>
			  <textarea class="form-control" name="itemContents" id="itemContents" rows="3">${itemDTO.itemContents}</textarea>
			</div>
			
			
			

			<div class="mb-3">
				<button type="submit" class="btn btn-success">등록 </button>
			</div>
		</form>
	</div>
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/resources/js/board_files.js"> </script>
<script>
	$("#contents1").summernote();
</script>
</body>
</html>