<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Trade Main</title>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
		crossorigin="anonymous">
		
	<style type="text/css">
		/*---------------------
		  Featured
		-----------------------*/
		
		.featured {
			padding-top: 80px;
			padding-bottom: 40px;
		}
		
		.featured__controls {
			text-align: center;
			margin-bottom: 50px;
		}
		
		.featured__controls ul li {
			list-style: none;
			font-size: 18px;
			color: #1c1c1c;
			display: inline-block;
			margin-right: 25px;
			position: relative;
			cursor: pointer;
		}
		
		.featured__controls ul li.active:after {
			opacity: 1;
		}
		
		.featured__controls ul li:after {
			position: absolute;
			left: 0;
			bottom: -2px;
			width: 100%;
			height: 2px;
			background: #7fad39;
			content: "";
			opacity: 0;
		}
		
		.featured__controls ul li:last-child {
			margin-right: 0;
		}
		
		.featured__item {
			margin-bottom: 50px;
		}
		
		.featured__item:hover .featured__item__pic .featured__item__pic__hover {
			bottom: 20px;
		}
		
		.featured__item__pic {
			height: 270px;
			position: relative;
			overflow: hidden;
			background-position: center center;
		}
		
		.featured__item__pic__hover {
			position: absolute;
			left: 0;
			bottom: -50px;
			width: 100%;
			text-align: center;
			-webkit-transition: all, 0.5s;
			-moz-transition: all, 0.5s;
			-ms-transition: all, 0.5s;
			-o-transition: all, 0.5s;
			transition: all, 0.5s;
		}
		
		.featured__item__pic__hover li {
			list-style: none;
			display: inline-block;
			margin-right: 6px;
		}
		
		.featured__item__pic__hover li:last-child {
			margin-right: 0;
		}
		
		.featured__item__pic__hover li:hover a {
			background: #7fad39;
			border-color: #7fad39;
		}
		
		.featured__item__pic__hover li:hover a i {
			color: #ffffff;
			transform: rotate(360deg);
		}
		
		.featured__item__pic__hover li a {
			font-size: 16px;
			color: #1c1c1c;
			height: 40px;
			width: 40px;
			line-height: 40px;
			text-align: center;
			border: 1px solid #ebebeb;
			background: #ffffff;
			display: block;
			border-radius: 50%;
			-webkit-transition: all, 0.5s;
			-moz-transition: all, 0.5s;
			-ms-transition: all, 0.5s;
			-o-transition: all, 0.5s;
			transition: all, 0.5s;
		}
		
		.featured__item__pic__hover li a i {
			position: relative;
			transform: rotate(0);
			-webkit-transition: all, 0.3s;
			-moz-transition: all, 0.3s;
			-ms-transition: all, 0.3s;
			-o-transition: all, 0.3s;
			transition: all, 0.3s;
		}
		
		.featured__item__text {
			text-align: center;
			padding-top: 15px;
		}
		
		.featured__item__text h6 {
			margin-bottom: 10px;
		}
		
		.featured__item__text h6 a {
			color: #252525;
		}
		
		.featured__item__text h5 {
			color: #252525;
			font-weight: 700;
		}

		.carousel-item {
			background-color: cornflowerblue;
		}
	</style>	
		
		
</head>

<body>   
    <c:import url="./common/header.jsp"></c:import>
	
	<section class="container-fluid col-lg-8 mt-5">
		<div id="carouselExampleDark" class="carousel carousel-dark slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleDark"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleDark"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleDark"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
				<button type="button" data-bs-target="#carouselExampleDark"
					data-bs-slide-to="3" aria-label="Slide 4"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active" data-bs-interval="2000">
					<img src="/resources/images/trade/banner_1.png" class="d-block w-800"
						alt="">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleDark" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleDark" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</section>
    
    
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>BEST</h2>
                </div>
            </div>
            <div class="row featured__filter" id="MixItUp2D9833">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="/resources/images/trade/1_knit.jpg" style="background-image: url(&quot;/resources/images/trade/1_knit.jpg&quot;);">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">블랙 카라 니트</a></h6>
                            <h5>15,000원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="/resources/images/trade/1_set.jpg" style="background-image: url(&quot;/resources/images/trade/1_set.jpg&quot;);">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">트레이닝복 세트</a></h6>
                            <h5>20,000원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="/resources/images/trade/2_manggo.jpg" style="background-image: url(&quot;/resources/images/trade/2_manggo.jpg&quot;);">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">애플망고 1kg</a></h6>
                            <h5>30,000원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="images/trade/2_tomato.jpg" style="background-image: url(&quot;/resources/images/trade/2_tomato.jpg&quot;);">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">토마토 한박스</a></h6>
                            <h5>13,000원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="images/trade/3_pen.jpg" style="background-image: url(&quot;/resources/images/trade/3_pen.jpg&quot;);">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">형광펜 5개입</a></h6>
                            <h5>2,000원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="images/trade/3_desk.jpg" style="background-image: url(&quot;/resources/images/trade/3_desk.jpg&quot;);">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">데스크 매트 아이보리</a></h6>
                            <h5>60,000원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="images/trade/3_party.jpag" style="background-image: url(&quot;/resources/images/trade/3_party.jpg&quot;);">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">파티 풍선 세트</a></h6>
                            <h5>3,000원</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="images/trade/2_peach.jpg" style="background-image: url(&quot;/resources/images/trade/2_peach.jpg&quot;);">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">복숭아 10개</a></h6>
                            <h5>8,000원</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    



</body>

</html>