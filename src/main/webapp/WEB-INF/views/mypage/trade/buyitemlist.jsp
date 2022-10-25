<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>마이페이지🎁│구디마켓│중고거래📦</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    
    <style>
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
	</style>
    
  	<link rel="stylesheet" href="/resources/css/trade/header.css" />
    <link rel="stylesheet" href="/resources/css/trade/footer.css" />
    <link rel="stylesheet" href="/resources/css/trade/myPage.css" />

</head>

<c:import url="../../template/trade/header.jsp"></c:import>

<body>
	<div class="myPageMainBody">
		<section class="mp-top">
			<div class="mp-container">
				<div class="mp-row">
	
					<!-- 사이드바 -->
					<div class="col-lg-3 col-md-5"> 
						<div class="sidebar">

							<!-- 회원정보 -->             
							<div class="sidebar-mp-mb">
								<h4 class="sidebar-mb-title">마이페이지🎁</h4>
								<div class="sidebar-mb-con">
									<img class ="mb-pic" alt="" src="/resources/images/trade/product/product-5.jpg">
									<h6 class="mp-mb-nk">닉네임 : </h6>
									<h6 class="mp-mb-nk">이름 : </h6>
								</div>	
								<a class="mp-mb-h" href="#">회원정보 수정</a>
							</div>

							<!-- 중고거래 -->
							<div class="sidebar-mp">
								<h4 class="sidebar-mp-title">중고거래📦</h4>
								<ul class="mp-ul">
									<li class="mp-li"><a href="/trade/sellitemlist" class="mp-a">내가 판매한 상품</a></li>
									<li class="mp-li"><a href="/trade/buyitemlist" class="mp-a">내가 구매한 상품</a></li>
									<li class="mp-li"><a href="/trade/reviewlist" class="mp-a">내가 작성한 후기</a></li>							
								</ul>
							</div>
						</div>                    
					</div>
					<!-- sidebar end -->
					
						
					<!-- main -->
					<div class="col-lg-9 col-md-7">
						
						<!-- 구매 -->
						<div class="mp-main">
							<div class="mp-m-main">
								<h6 class="mp-m-title">내가 구매한 상품</h6>
								<h6 class="mp-more-h"><a class="mp-more-a" href="buyitemlist">더보기</a></h6>
							</div>
							<div class="mp-table">
					            <table>
					                <thead class="mp-thead">
					                    <tr>
					                        <th class="mp-title">제목</th>
						                    <th class="mp-title">가격</th>
						                    <th class="mp-title">판매자</th>
						                    <th class="mp-title"></th>
			                            </tr>
						            </thead>
						            <tbody class="mp-m-tbody">
						            	<c:forEach items="${buyitemlist}" var="buyItem">
					                    <tr>
			                                <td class="mp-item">
							                    <img src="/resources/images/trade/cart/cart-1.jpg" alt="" class="mp-img">
							                    <h6><a href="../trade/detail?num=${buyItem.itemNum}" class="mp-imgtext">${buyItem.itemTitle}</a></h6>
					                        </td>
								            <td>
								                ${buyItem.itemPrice}
				                            </td>
											<td>
							                    ${buyItem.nickName}
				                            </td>
							                <td class="mp-etctext">
						 	                   <a href="#" class="mp-etc">리뷰작성</a>
			                                </td>
							            </tr>  
						            	</c:forEach>
						            </tbody>
						        </table>
						    </div>
						</div>
					</div>			
				</div>
			</div>	
		</section>
	</div>


	<c:import url="../../template/trade/footer.jsp"></c:import>
</body>
</html>