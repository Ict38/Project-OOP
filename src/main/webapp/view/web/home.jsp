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

    <div class="site-blocks-cover" style="background-image: url(https://cdn.wallpapersafari.com/6/2/YbqA12.jpg);" data-aos="fade">
      <div class="container">
        <div class="row align-items-start align-items-md-center justify-content-end">
          <div class="col-md-5 text-center text-md-left pt-5 pt-md-0">
            <h1 class="mb-2">Dune</h1>
            <div class="intro-text text-center text-md-left">
              <p class="mb-4">Tuyệt phẩm kinh điển về khoa học viễn tưởng viết bởi Frank Herbert. </p>
              <p>
                <a href="${pageContext.request.contextPath }/product/detail?id=1052" class="btn btn-sm btn-primary">Xem Ngay</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section site-section-sm site-blocks-1">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="">
            <div class="icon mr-4 align-self-start">
              <span class="icon-truck"></span>
            </div>
            <div class="text">
              <h2 class="text-uppercase">Free Shipping</h2>
              <p>Free Ship 0 Đồng</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="100">
            <div class="icon mr-4 align-self-start">
              <span class="icon-refresh2"></span>
            </div>
            <div class="text">
              <h2 class="text-uppercase">Miễn Phí Hoàn Trả</h2>
              <p>Hoàn trả sản phẩm miễn phí nếu có bất kì vấn đề gì.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="200">
            <div class="icon mr-4 align-self-start">
              <span class="icon-help"></span>
            </div>
            <div class="text">
              <h2 class="text-uppercase">Chăm sóc Khách Hàng</h2>
              <p>Luôn bên bạn dù bạn ở nơi đâu</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section site-blocks-2">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 col-md-6 col-lg-4 mb-4 mb-lg-0" data-aos="fade" data-aos-delay="">
            <a class="block-2-item" href="${pageContext.request.contextPath}/product/category?cid=1">
              <figure class="image">
                <img src="https://kenh14cdn.com/thumb_w/640/pr/2020/1607432797539-0-111-669-1181-crop-1607432803997-63743074283293.jpg" alt="" class="img-fluid">
              </figure>
              <div class="text">
                <h3>Truyện Tranh</h3>
              </div>
            </a>
          </div>
          <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="100">
            <a class="block-2-item" href="${pageContext.request.contextPath}/product/category?cid=2">
              <figure class="image">
                <img src="https://c4.wallpaperflare.com/wallpaper/774/956/12/arrakis-science-fiction-paul-atreides-dune-series-digital-art-hd-wallpaper-preview.jpg" alt="" class="img-fluid">
              </figure>
              <div class="text">
                <h3>Tiểu Thuyết</h3>
              </div>
            </a>
          </div>
          <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="200">
            <a class="block-2-item" href="${pageContext.request.contextPath}/product/category?cid=3">
              <figure class="image">
                <img src="https://ict-imgs.vgcloud.vn/2021/01/21/12/mua-sach-300-bai-code-thieu-nhi-o-dau-2.jpg?w=600&h=315&fb=1" alt="" class="img-fluid">
              </figure>
              <div class="text">
                <h3>Tài Liệu</h3>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section block-3 site-blocks-2 bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 site-section-heading text-center pt-4">
            <h2>Sản phẩm tiêu biểu</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="nonloop-block-3 owl-carousel">
            <c:forEach items="${pList }" var="p">
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img  src="${p.image }" alt="Image placeholder" class="img-fluid">
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