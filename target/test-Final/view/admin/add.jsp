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
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

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
    
     <jsp:include page="/view/admin/a_header.jsp"></jsp:include>
    	
    <!-- ------------ END HEADER-------------------- -->
    
<div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="mb-5">
            	${alert }
              <form name="f1" class="product-quantity sm-margin-bottom-20" accept-charset="utf-8"
								method="post" action="<c:url value="/add-product"></c:url>">
								<input type="text" value="${product.id }" name="pId" hidden="">
								Name:
								<input type='text' class="form-control text-center" name='name'
									value="${product.name }"  />
								Category:
								<input type='text' class="form-control text-center" name='cate'
									value="${product.category.id }" />
								Price:
								<input type='text' class="form-control text-center" name='price'
									value="${product.price }" />
								Full Description:
								<textarea  style="height:200px;width:500px;" form="f1" >${product.des }</textarea>
								Change The Description Here:
								<input type='text' class="form-control text-center" name='des'
									value="${product.des }" />
								Image:
								<input type='text' class="form-control text-center" name='image'
									value="${product.image }" />
								
								
								<button type="submit" class="buy-now btn btn-sm btn-primary">Add </button>
				</form>
				

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