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
	<c:set var="p_count" value="${0 }" />
		<c:forEach items="${productSeachByName }">
			<c:set var="p_count" value="${p_count + 1 }" />
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

    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0"><a href="${pageContext.request.contextPath}/shop">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Shop</strong></div>
        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">

        <div class="row mb-5">
          <div class="col-md-9 order-2">

            <div class="row">
              <div class="col-md-12 mb-5">
                <div class="float-md-left mb-4"><h2 class="text-black h5">Có ${p_count } sản có tên giống như cuốn sách bạn cần</h2></div>
                <div class="d-flex">
                </div>
              </div>
            </div>
            <div class="row mb-5">
			  
			  <c:forEach items="${productSeachByName}" var="p">
				<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                		<div class="block-4 text-center border">
                  			<figure class="block-4-image">
                    			<a href="${pageContext.request.contextPath }/product/detail?id=${p.id}"><img src="${p.image }" alt="Image placeholder" class="img-fluid"></a>
                  			</figure>
                  			<div class="block-4-text p-4">
                    			<h3><a href="${pageContext.request.contextPath }/product/detail?id=${p.id}">${p.name }</a></h3>
                    			<p class="text-primary font-weight-bold">${p.price }đ</p>
                  			</div>
                		</div>
              	</div>
				</c:forEach>
              
              


            </div>
             
          </div>

          <div class="col-md-3 order-1 mb-5 mb-md-0">
            <div class="border p-4 rounded mb-4">
              <h3 class="mb-3 h6 text-uppercase text-black d-block">Categories</h3>
              <ul class="list-unstyled mb-0">
              	<c:forEach items="${categories}" var="c">
					<li class="mb-1"><a href="${pageContext.request.contextPath}/product/category?cid=${c.id}" class="d-flex"><span>${c.name }</span></a></li>
				</c:forEach>
              </ul>
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