<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url value="/template/shop_template" var="url"></c:url>
<!DOCTYPE html>
<html lang="vi">
  <head>
    <title>Book Face</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
    <link rel="stylesheet" href="${url}/fonts/icomoon/style.css">
    <link rel="stylesheet" href="${url}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${url}/css/magnific-popup.css">
    <link rel="stylesheet" href="${url}/css/jquery-ui.css">
    <link rel="stylesheet" href="${url}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${url}/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${url}/css/aos.css">
    <link rel="stylesheet" href="${url}/css/style.css">
    
  </head>
  <body>
  <c:set var="count" value="${0}" /> 
		<c:forEach items="${sessionScope.cart}"
			var="map">
			<c:set var="count" value="${count + map.value.quantity}" />
		</c:forEach>
  <div class="site-wrap">
    <header class="site-navbar" role="banner">
      <div class="site-navbar-top">
        <div class="container">
          <div class="row align-items-center">

            <div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
              <form action="${pageContext.request.contextPath}/product-search" class="site-block-top-search">
                <span class="icon icon-search2"></span>
                <input type="text" class="form-control border-0" name = "name" placeholder="Search">
              </form>
            </div>

            <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
              <div class="site-logo">
                <a href="${pageContext.request.contextPath}/home" class="js-logo-clone">Book Face</a>
              </div>
            </div>

            <div class="col-6 col-md-4 order-3 order-md-3 text-right">
              <div class="site-top-icons">
              	
                <ul>
                  <li> <p> Hello ${sessionScope.account.username }</p> </li> 
                  <li><a href="${pageContext.request.contextPath}/login-page"><span class="icon icon-person"></span></a></li>
                  <li>
                    <a href="${pageContext.request.contextPath}/cart" class="site-cart">
                      <span class="icon icon-shopping_cart"></span>
                      <span class="count">${count }</span>
                    </a>
                  </li> 
                  <li class="d-inline-block d-md-none ml-md-0"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
                </ul>
              </div> 
            </div>

          </div>
        </div>
      </div> 
      <nav class="site-navigation text-right text-md-center" role="navigation">
        <div class="container">
          <ul class="site-menu js-clone-nav d-none d-md-block">
            <li><a href="${pageContext.request.contextPath }/home">Home</a></li>
            <li class="has-children">
              <a href="${pageContext.request.contextPath }/shop">Category</a>
              <ul class="dropdown">
                <c:forEach items="${categories}" var="c">
					<li><a class="dropdown-item" href="${pageContext.request.contextPath}/product/category?cid=${c.id}">${c.name}</a></li>
				</c:forEach>
              </ul>
            </li>
            <li><a href="${pageContext.request.contextPath }/shop">Shop</a></li>
          </ul>
        </div>
      </nav>
    </header>
  