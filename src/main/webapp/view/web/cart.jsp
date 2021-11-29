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
    <jsp:include page="header.jsp"></jsp:include>
    <!-- ------------ END HEADER-------------------- -->
    <!-- ------------------- end of header ------------------------------------>
    
    
    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0"><a href="index.html">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Cart</strong></div>
        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row mb-5">
          <form class="col-md-12" method="post">
            <div class="site-blocks-table">
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th class="product-thumbnail">Image</th>
                    <th class="product-name">Product</th>
                    <th class="product-price">Price</th>
                    <th class="product-quantity">Quantity</th>
                    <th class="product-total">Total</th>
                    <th class="product-remove">Remove</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${sessionScope.cart}" var="map">
                  <tr>
                    <td class="product-thumbnail">
                      <img src="${map.value.product.image }" alt="Image" class="img-fluid">
                    </td>
                    <td class="product-name">
                      <h2 class="h5 text-black">${map.value.product.name }</h2>
                    </td>
                    <td>${map.value.product.price }đ</td>
                    <td>
                      <div class="input-group mb-3" style="max-width: 120px;">
                        <div class="input-group-prepend">
                          <button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
                        </div>
                        <input type="text" class="form-control text-center" value="${map.value.quantity }" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
                        <div class="input-group-append">
                          <button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
                        </div>
                      </div>

                    </td>
                   <c:set var="result" value="${map.value.quantity * map.value.product.price }"/>
                   
                    
                    <td>${result }</td>
                    <td><a href="${pageContext.request.contextPath}/cartx?pId=${map.value.product.id}" class="btn btn-primary btn-sm">X</a></td>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
          </form>
        </div>

        <div class="row">
          <div class="col-md-6">
            <div class="row mb-5">
              <div class="col-md-6 mb-3 mb-md-0">
                <button class="btn btn-primary btn-sm btn-block">Update Cart</button>
              </div>
              <div class="col-md-6"  >
              <a href="${pageContext.request.contextPath }/shop">
                <button class="btn btn-outline-primary btn-sm btn-block">Continue Shopping </button>
                </a>
              </div>
            </div>
            
          </div>
          <div class="col-md-6 pl-5">
            <div class="row justify-content-end">
              <div class="col-md-7">
                <div class="row">
                  <div class="col-md-12 text-right border-bottom mb-5">
                    <h3 class="text-black h4 text-uppercase">Hóa Đơn</h3>
                  </div>
                </div>
                <div class="row mb-5">
                  <div class="col-md-6">
                    <span class="text-black">Tổng</span>
                  </div>
                  <div class="col-md-6 text-right">
                  <c:set var="total" value="${0}" />
                  <c:forEach items="${sessionScope.cart}" var="map">
                  <c:set var="total" value="${total + map.value.quantity * map.value.product.price}" />
                   
                   </c:forEach>
                    <strong class="text-black">${total }đ</strong>
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-12">
                    <button class="btn btn-primary btn-lg py-3 btn-block" onclick="window.location='${pageContext.request.contextPath }/order'">Proceed To Checkout</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    
    <!-- ------------------- footer ------------------------------------>
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