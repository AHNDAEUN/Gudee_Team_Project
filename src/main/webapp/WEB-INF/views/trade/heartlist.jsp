<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>찜바구니🛍️│구디마켓│중고거래📦</title>
	
	<!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <style>
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');
	</style>
    
  	<link rel="stylesheet" href="/resources/css/trade/header.css" />
    <link rel="stylesheet" href="/resources/css/trade/footer.css" />
    <link rel="stylesheet" href="/resources/css/trade/heartlist.css" />
    
</head>

<body>
	
	<c:import url="../template/trade/header.jsp"></c:import>

<div class="heartListBody">	
	<section class="heartList spad">
        <div class="hl-container">
            <div class="hl-row">
                <div class="col-lg-12">
                    <div class="hl-table">
                        <table>
                            <thead>
                                <tr>
                                    <th class="hl-title">제목</th>
                                    <th>가격</th>
                                    <th>수량</th>
                                    <th>판매자</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody class="hl-tbody">
                            	<c:forEach items="${list}" var="item">
	                                <tr>
	                                    <td class="hl-item">
	                                        <img src="/resources/images/trade/cart/cart-1.jpg" alt="" class="hl-img">
	                                        <h5 class="hl-text">${item.itemNum}</h5>
	                                    </td>
	                                    <td class="hl-price">
	                                        ${item.itemPrice}
	                                    </td>
	                                    <td class="hl-quantity">
	                                        <div class="quantity">
	                                            <div class="pro-qty">
	                                                <span class="dec qtybtn">-</span>
	                                                <input type="text" value="1">
	                                                <span class="inc qtybtn">+</span>
	                                            </div>
	                                        </div>
	                                    </td>
	                                    <td class="hl-seller">
	                                        ${item.memberNum}
	                                    </td>
	                                    <td class="hl-close">
	                                        <span class="icon_close"></span>
	                                    </td>
	                                </tr>
	                        	</c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>	
</div>    

    <c:import url="../template/trade/footer.jsp"></c:import>
 
</body>
</html>