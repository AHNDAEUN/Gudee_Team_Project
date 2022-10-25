<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> 구디마켓│중고거래📦 </title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
          crossorigin="anonymous" >

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    
    <style>
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
	</style>

  	<link rel="stylesheet" href="/resources/css/trade/header.css" />
    <link rel="stylesheet" href="/resources/css/trade/footer.css" />
    <link rel="stylesheet" href="/resources/css/trade/main.css" />
</head>
 
<c:import url="../template/trade/header.jsp"></c:import>

<body>


<div class="mainBody">
	<div class="mainWrap">
		<div id="visual">
			<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="/resources/images/trade/banner_1.png" class="d-block" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/resources/images/trade/banner_2.png" class="d-block" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/resources/images/trade/banner_3.png" class="d-block" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
		</div>
	</div>
</div>
    
    <!-- 인기 상품 -->
    <section class="main-item">
        <div class="container">
            <div class="row">
                <div class="item-text">
                    <a href="#" class="title-text">👍 인기 상품</a>
                    <h6 class="sub-text">다른 사람들은 이 상품을 보고 있어요!</h6>
                </div>
            </div>
            <div class="row featured-filter">
            <c:forEach var="item" items="${list}">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="featured-item">
                        <div class="featured-item-pic set-bg" data-setbg="/resources/images/trade/1_knit.jpg"
                        	 style="background-image: url(&quot;/resources/images/trade/1_knit.jpg&quot;);">
                        </div>
                        <div class="featured-item-text">
                            <h6><a href="../trade/detail?num=${item.itemNum}" class="item-name">${item.itemTitle}</a></h6>
                            <h5>${item.itemPrice}</h5>
                        </div>
                    </div>
                </div>
            </c:forEach>    
            </div>
        </div>
    </section>
    
    <!-- 인기 상품 -->
    <section class="main-item">
        <div class="container">
            <div class="row">
                <div class="item-text">
                    <a href="#" class="title-text">⏰ 최신 상품</a>
                    <h6 class="sub-text">방금 등록된 상품이에요!</h6>
                </div>
            </div>
            <div class="row featured-filter">
            <c:forEach var="item" items="${list}">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="featured-item">
                        <div class="featured-item-pic set-bg" data-setbg="/resources/images/trade/1_knit.jpg"
                        	 style="background-image: url(&quot;/resources/images/trade/1_knit.jpg&quot;);">
                        </div>
                        <div class="featured-item-text">
                            <h6><a href="../trade/detail?num=${item.itemNum}" class="item-name">${item.itemTitle}</a></h6>
                            <h5>${item.itemPrice}</h5>
                        </div>
                    </div>
                </div>
            </c:forEach>    
            </div>
        </div>
    </section>
    
	<c:import url="../template/trade/footer.jsp"></c:import>
</body>

</html>