<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title> 상품 추가 </title>

<!--summernote jquery  -->
 <script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
 <!-- bootStrap -->	
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

 <!-- include summernote css/js-->
 <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
 <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
 
</head>
<body>

<h1 class="align-center"> Add Page</h1>
<section class="container-fluid col-lg-4">
	
	<div class="row">
		<form action="./add" method="POST" enctype="multipart/form-data">
		

			<div class="mb-3">
				<label for="title" class="form-label">사용자번호</label>
			  <input type="text" name="memberNum" class="form-control" id="num" >
			</div>


			<div class="mb-3">
			  <label for="title" class="form-label">상품 이름</label>
			  <input type="text" name="itemTitle" class="form-control" id="title" placeholder="제목 입력">
			</div>
			
			
			 <div id="addFiles">
			<button type="button" class="btn btn-danger" id="fileAdd">추가</button>
	
			</div>
				

			<div class="mb-3">
			  <label for="price" class="form-label">가격</label>
			  <input type="text" name="itemPrice" class="form-control" id="price" placeholder="가격 입력">
			</div>
			
			<div class="mb-3">
			  <label for="category" class="form-label">카테고리</label>
			  			  <input type="text" name="itemCategory" class="form-control" id="price" placeholder="가격 입력">
			  
		
			
			<div class="mb-3">
			  <label for="contents" class="form-label">상품 정보</label>
			  <textarea class="form-control" name="itemContents" id="contents" rows="3"></textarea>
			</div>

			
			<br><br><br>

			
			<div class="mb-3">
				<button type="submit" class="btn btn-success">등록</button>
			</div>

		</form>
	</div>
</section>

<!-- bootStrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>


<script src="/resources/js/itemfile.js"></script>
<script type="text/javascript">
	$("#contents").summernote();
</script>
	<c:import url="../template/trade/footer.jsp"></c:import>

</body>
</html>