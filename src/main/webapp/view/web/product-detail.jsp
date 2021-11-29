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
    <!-- ------------ HEADER----------------- -->
    <c:choose>
    	<c:when test ="${sessionScope.account.roleId != 1}">
        	<jsp:include page="header.jsp"></jsp:include>
    	</c:when>    
    	<c:otherwise>
        	<jsp:include page="/view/admin/a_header.jsp"></jsp:include>
    	</c:otherwise>
	</c:choose>
    <!-- ------------ END HEADER-------------------- -->
    
<div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <img src="${product.image }" alt="Image" class="img-fluid">
          </div>
          <div class="col-md-6">
            <h2 class="text-black">${product.name }</h2>
            <p>${product.des }</p>
            
            <p><strong class="text-primary h4">${product.price }đ</strong></p>
            <div class="mb-5">
              <form name="f1" class="product-quantity sm-margin-bottom-20"
								method="get" action="<c:url value="/cart-add"></c:url>">
								<input type="text" value="${product.id }" name="pId" hidden="">
								<input type='text' class="form-control text-center" name='quantity'
									value="1" id='qty' />
									<button type='button' class="btn btn-outline-primary js-btn-minus" name='subtract'
									onclick='javascript: document.getElementById("qty").value--;' value='-'>-</button>
									<button type='button' class="btn btn-outline-primary js-btn-plus" name='add'
									onclick='javascript: document.getElementById("qty").value++;'
									value='+'>+</button>
								
								
								<button type="submit" class="buy-now btn btn-sm btn-primary">Add
	to Cart</button>
				</form>

            </div>
            
            

          </div>
        </div>
      </div>
    </div>

    <div class="site-section block-3 site-blocks-2 bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 site-section-heading text-center pt-4">
            <h2>Featured Products</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="nonloop-block-3 owl-carousel">
            <c:forEach items="${relate }" var="r">
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="${r.image }" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="${pageContext.request.contextPath }/product/detail?id=${r.id}">${r.name }</a></h3>
                    
                    <p class="text-primary font-weight-bold">${r.price }đ</p>
                  </div>
                </div>
              </div>
              </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>

     <footer class="site-footer border-top">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
            <h3 class="footer-heading mb-4">Template</h3>
              <h3 class="font-weight-light  mb-0">
              <a href ="https://themewagon.com/themes/free-bootstrap-4-html5-ecommerece-website-template-shoppers/">Source</a>
              </h3>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="block-5 mb-5">
              <h3 class="footer-heading mb-4">Contact Info</h3>
              <ul class="list-unstyled">
                <li class="address">Đâu đó ở Việt Nam</li>
                <li class="phone"><a href="tel://23923929210">+84 988 056 221</a></li>
                <li class="email">huycd.b19cn304@stu.ptit.edu.vn</li>
              </ul>
            </div>

      
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" class="text-primary">Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

  <script src="${url}/js/jquery-3.3.1.min.js"></script>
  <script src="${url}/js/jquery-ui.js"></script>
  <script src="${url}/js/popper.min.js"></script>
  <script src="${url}/js/bootstrap.min.js"></script>
  <script src="${url}/js/owl.carousel.min.js"></script>
  <script src="${url}/js/jquery.magnific-popup.min.js"></script>
  <script src="${url}/js/aos.js"></script>
  <script src="${url}/js/main.js"></script>
    
  </body>
</html>