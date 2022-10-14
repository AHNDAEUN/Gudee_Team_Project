<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>전체 카테고리💚│구디마켓│중고거래📦</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    
    <style>
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
	</style>
    
  	<link rel="stylesheet" href="/resources/css/trade/header.css" />
    <link rel="stylesheet" href="/resources/css/trade/footer.css" />
    <link rel="stylesheet" href="/resources/css/trade/category.css" />
    
</head>

<c:import url="../template/trade/header.jsp"></c:import>

<body>

<div class="categoryBody">
    <section class="cate-top">
        <div class="cate-container">
            <div class="cate-row">

                <!-- 사이드바 -->
                <div class="col-lg-3 col-md-5"> 
                  
                	<!-- 카테고리 -->             
                    <div class="sidebar">
                        <div class="sidebar-cate">
                            <h4 class="sidebar-cate-title">전체 카테고리</h4>
                            <ul class="scate-ul">
                            	<li class="scate-li"><a href="/trade/category" class="scate-a">의류</a></li>
	                            <li class="scate-li"><a href="/trade/category" class="scate-a">식품류</a></li>
	                            <li class="scate-li"><a href="/trade/category" class="scate-a">도서/문구</a></li>
	                            <li class="scate-li"><a href="/trade/category" class="scate-a">뷰티/미용</a></li>
	                            <li class="scate-li"><a href="/trade/category" class="scate-a">생활/디지털</a></li>
	                            <li class="scate-li"><a href="/trade/category" class="scate-a">반려동물 용품</a></li>
	                            <li class="scate-li"><a href="/trade/category" class="scate-a">가구/인테리어</a></li>							
                            </ul>
                        </div>
                    </div>                    
                </div>
                
                
                <!-- 메인바디 -->
                <div class="col-lg-9 col-md-7">
                	<!-- 정렬 -->
                    <div class="filter-item">
                        <div class="sort-row">
                            <div class="filter-sort">                           
                                <ul id="filter" name="filter">
                                    <li class="filter-li" value="recent"><a href="/trade/category" class="filter-a">최신순</a></li>
                                    <li class="filter-li"><a href="/trade/category" class="filter-a">높은 가격순</a></li>
                                    <li class="filter-li"><a href="/trade/category" class="filter-a">낮은 가격순</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                    
                    <!-- 제품 목록 -->
                    <div class="item-row">                    
                    <c:forEach var="item" items="${list}">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product-item">
                                <div class="featured-item-pic">
                                	<c:forEach items="${item.itemImageDTOs}" var="fileDTO">
                                		<img alt="" src="../resources/upload/item/${fileDTO.fileName}">
                                	</c:forEach>
                                </div>

                                <div class="featured-item-text">
                                    <h6><a href="../trade/detail?num=${item.itemNum}" class="item-name">${item.itemTitle}</a></h6>
                                    <h5>${item.itemPrice}</h5>
                                </div>
                            </div>
                        </div>
					</c:forEach>
                    </div>                 
                    
                    
                    <!-- 페이지 이동 -->        
                    <div class="product-pagination">
                        <div class="col-lg-12">
                            <div>
                                <div class="cate-page">
                                    <nav aria-label="Page navigation category">
                                        <ul class="pagination">
	                                        <li class="page-item ${pager.pre ? '' : 'disabled' }">
										  		<a class="page-link" href="./list?page=${pager.startNum - 1 }&filter=${pager.filter}&search=${pager.search}" aria-label="Previous">
												   <span aria-hidden="true">&laquo;</span>
												</a>
										  	</li>
                                            <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                                                <li class="page-item">
                                                    <a class="page-link" href="./category?page=${i}&filter=${pager.filter}&search=${pager.search}">${i}</a>
                                                </li>
                                            </c:forEach>
                                            <li class="page-item ${pager.next ? '' : 'disabled' }">
											   <a class="page-link" href="./category?page=${pager.lastNum + 1 }&filter=${pager.filter}&search=${pager.search}" aria-label="Next">
											      <span aria-hidden="true">&raquo;</span>
											   </a>
											</li>
                                        </ul>
                                    </nav>
                                </div>

                                <!-- 로그인 시 글 쓰기 -->
                                <div class="cate-login">
                                    <c:choose>
                                    <c:when test="${not empty member}">
                                        <a href="./add" class="add-btn">글쓰기</a>							
                                    </c:when>
                                    <c:otherwise>
                                        
                                    </c:otherwise>
                                </c:choose>
                                </div>
                            </div>    
                        </div>  
                    </div>
	            </div>
	        </div>
		</div>
    </section>
</div>        

	<c:import url="../template/trade/footer.jsp"></c:import>
</body>

</html>